//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++*
// baselane.cpp
//--------------------------------------------------------------------------*
// Learning robot for SD
// Speed Dreams - Version 2.0.X
//--------------------------------------------------------------------------*
// Base class for a custom lane
// 
// File         : baselane.cpp
// Created      : 2009.05.01
// Last changed : 2011.11.09
// Copyright    : © 2006-2011 Wolf-Dieter Beelitz
// eMail        : wdb@wdbee.de
// Version      : 1.00.001
//--------------------------------------------------------------------------*
// V1.00.000:
// TBaseLane provides a base class for a racingline
// Features:
// - Track based racingline (Driving middle of the road)
// - Track + fixed offset based racingline (To overtake or avoid)
// - Smoothed racingline (Simplified calculation)
// - Estimation of target speed (Regarding track roll angle)
// - Propagation of braking (Fast estimation without iterations)
//--------------------------------------------------------------------------*
// This program is free software; you can redistribute it and/or modify
// it under the terms of the GNU General Public License as published by
// the Free Software Foundation; either version 2 of the License, or
// (at your option) any later version.
//
// YOU SHOULD NOT CHANGE THE BASE CLASS, USE A DERIVED CLASS FOR YOUR CHANGES
//--------------------------------------------------------------------------*

#include "globaldefinitions.h"

#include "basedriver.h"
#include "baselane.h"
#include "linalg.h"

//==========================================================================*
// Default constructor
//--------------------------------------------------------------------------*
TBaseLane::TBaseLane():
	oDriver(NULL),
	oMargin(1.0),
	AvoidRacingline(false),
	SmoothRacingline(true),
	Count(0),
	PPPub(NULL),
	PPPrv(NULL),
	PPLst(NULL),
	TrackDesc(NULL),
	Track(NULL),
	LapsLearned(0)
{
}
//==========================================================================*

//==========================================================================*
// Copy constructor
//--------------------------------------------------------------------------*
TBaseLane::TBaseLane(const TBaseLane& BaseLane)
{
	SetLane(BaseLane);
}
//==========================================================================*

//==========================================================================*
// Destructor
//--------------------------------------------------------------------------*
TBaseLane::~TBaseLane()
{
	delete [] PPPub;
	delete [] PPPrv;
	delete [] PPLst;
}
//==========================================================================*

//==========================================================================*
// Assignment operator (Copy lane)
//--------------------------------------------------------------------------*
TBaseLane& TBaseLane::operator= (const TBaseLane& BaseLane)
{
	SetLane(BaseLane);
	return *this;
}
//==========================================================================*

//==========================================================================*
// Store learned factors
//--------------------------------------------------------------------------*
void TBaseLane::StoreLearned()
{
    memcpy(PPLst, PPPrv, Count * sizeof(*PPLst));
}
//==========================================================================*

//==========================================================================*
// Restore learned factors
//--------------------------------------------------------------------------*
void TBaseLane::RestoreLearned()
{
    memcpy(PPPrv, PPLst, Count * sizeof(*PPLst));
}
//==========================================================================*

//==========================================================================*
// Assignment worker (Sets lane)
//--------------------------------------------------------------------------*
void TBaseLane::SetLane(const TBaseLane& BaseLane)
{
	Count = BaseLane.Count;
	oMargin = BaseLane.oMargin;
	AvoidRacingline = BaseLane.AvoidRacingline;
	SmoothRacingline = BaseLane.SmoothRacingline;
	oDriver = BaseLane.oDriver;
	TrackDesc = BaseLane.TrackDesc;
	Track = BaseLane.Track;

	delete [] PPPub;
	PPPub = new TPathPointPublic[Count];
    memcpy(PPPub, BaseLane.PPPub, Count * sizeof(*PPPub));

	delete [] PPPrv;
	PPPrv = new TPathPointPrivate[Count];
    memcpy(PPPrv, BaseLane.PPPrv, Count * sizeof(*PPPrv));

	delete [] PPLst;
	PPLst = new TPathPointPrivate[Count];
    memcpy(PPLst, BaseLane.PPLst, Count * sizeof(*PPLst));
}
//==========================================================================*

//==========================================================================*
// 2D Target point of index
//--------------------------------------------------------------------------*
const TVec2d TBaseLane::Target(int Index) const
{
	return PPPub[Index % Count].Point.GetXY(); 
}
//==========================================================================*

//==========================================================================*
// Curvature at point of index
//--------------------------------------------------------------------------*
double TBaseLane::Crv(int Index) const
{
	return PPPub[Index % Count].Crv;
}
//==========================================================================*

//==========================================================================*
// Offset at point of index
//--------------------------------------------------------------------------*
double TBaseLane::Offset(int Index) const
{
	return PPPub[Index % Count].Offset;
}
//==========================================================================*

//==========================================================================*
// Initialize lane from track limiting width to left and right
//--------------------------------------------------------------------------*
void TBaseLane::Initialize(
	TBaseDriver* Driver, 
	TBaseTrack* Desc,
	float Offset,	
	float ScaleBrake,
	float ScaleBumps,
	float ScaleSpeed,
	float MaxToLeft,
	float MaxToRight)
{
	oDriver = Driver;
	TrackDesc = Desc;
	Track = TrackDesc->Track();
	Count = TrackDesc->Count;
	oMargin = (float) (0.4 + oDriver->oCar->_dimension_y/2);

	delete [] PPPub;
	PPPub = new TPathPointPublic[Count];

	delete [] PPPrv;
	PPPrv = new TPathPointPrivate[Count];

	delete [] PPLst;
	PPLst = new TPathPointPrivate[Count];
	
	float DeltaW = fabs(Offset);
    for (int I = 0; I < Count; I++)
    {
		const TBaseSection& Sec = (*TrackDesc)[I];

		PPPub[I].Middle = Sec.Center;
		PPPub[I].Center = Sec.Center;
		PPPub[I].ToRight = Sec.ToRight;
		PPPub[I].Station = Sec.Station;
		PPPub[I].Crv = 0;
		PPPub[I].CrvZ	= 0;
		PPPub[I].Offset = Offset;
		PPPub[I].Point = PPPub[I].CalculatePoint();
		PPPub[I].WToL = MIN(Sec.WidthToLeft,MaxToLeft);
		PPPub[I].WToR = MIN(Sec.WidthToRight,MaxToRight);
		PPPub[I].Friction = Sec.Friction;

		if (Offset != 0.0)
		{
			PPPub[I].Offset = 0.0;
			PPPub[I].Center = PPPub[I].Point;
			PPPub[I].WToL = MIN(Sec.WidthToLeft,Sec.WidthToLeft - DeltaW);
			PPPub[I].WToR = MIN(Sec.WidthToRight,Sec.WidthToRight - DeltaW);
		}

		PPPrv[I].Speed = 111.111f;				 // ~ 400 km/h
		PPPrv[I].SpeedFrictionFactor = 1.0;		 // Initial scale
		PPPrv[I].BrakeFrictionFactor = 1.0;		 // Initial scale

		PPLst[I].Speed = 111.111f;				 // ~ 400 km/h
		PPLst[I].SpeedFrictionFactor = 1.0;		 // Initial scale
		PPLst[I].BrakeFrictionFactor = 1.0;		 // Initial scale
    }

//	oBorderOuter = 0.25;						 // Safty margin outer side
//	oBorderInner = 0.10;						 // Safty margin inner side
	oBorderOuter = 0.00;						 // Safty margin outer side
	oBorderInner = 0.00;						 // Safty margin inner side

	if ((MaxToLeft != FLT_MAX) || (MaxToRight != FLT_MAX))
	{
		AvoidRacingline = true;
//		oBorderOuter = 0.15;					 // Safty margin outer side
		oBorderOuter = 0.00;					 // Safty margin outer side
		oBorderInner = 0.00;					 // Safty margin inner side
	}

	// If smoothing is not disabled, smooth it
	if (SmoothRacingline) 
		SmoothLane();

	Curvatures();
	Bumps();
	EstimateTargetSpeed(ScaleBumps,ScaleSpeed);
	PropagateBraking(ScaleBrake,ScaleBumps);
}
//==========================================================================*

//==========================================================================*
// Calculate curvature in 2D XY plane
//--------------------------------------------------------------------------*
void TBaseLane::Curvatures()
{
	for (int I = 0; I < Count; I++)
	{
		int	Pc = I % Count;						 // Current Point
		int	Pp = (Pc - 1 + Count) % Count;		 // Prev Point
		int	Pn = (Pc + 1) % Count;				 // Next Point

		PPPub[Pc].Crv = (float) Curv2D(
			PPPub[Pp].Point,
			PPPub[Pc].Point,
			PPPub[Pn].Point);
	}

	// Overwrite values at start to avoid slowdown caused by track errors
	PPPub[0].Crv = 0.0;
	PPPub[Count-1].Crv = 0.0;
}
//==========================================================================*

//==========================================================================*
// Calculate curvature in height profil
//--------------------------------------------------------------------------*
void TBaseLane::Bumps()
{
	int Step = 9;

	for (int I = 0; I < Count; I++)
	{
		int	Pc = I % Count;						 // Current Point
		int	Pp = (Pc - Step + Count) % Count;	 // Prev Point
		int	Pn = (Pc + Step) % Count;			 // Next Point

		PPPub[Pc].CrvZ = (float) (6 * CurvZ(
			PPPub[Pp].Point,
			PPPub[Pc].Point,
			PPPub[Pn].Point));
	}

	// Overwrite values at start to avoid slowdown caused by track errors
	for (int I = 0; I <= Step; I++)
	{
		PPPub[I].CrvZ = 0.0;
		PPPub[Count-1-I].CrvZ = 0.0;
	}
}
//==========================================================================*

//==========================================================================*
// Estimate target speed
//--------------------------------------------------------------------------*
void TBaseLane::EstimateTargetSpeed(float ScaleBumps, float ScaleSpeed)
{
	// Loop over the track
	for (int I = 0; I < Count; I++)
	{
		// Get the slope of the track surface
		double TrackRollAngle = atan2(PPPub[I].ToRight.z, 1);
		int Q = (I + 1) % Count;                // Next point
		TVec3d Delta = PPPub[I].Point - PPPub[Q].Point;
		double Distance = Length2D(Delta);
		double TrackTiltAngle = atan2(Delta.z, Distance);

		// Estimate the target speed based on curvature in XY and Z,
		// the friction and the slope
		PPPrv[I].Speed = EstimateSpeed(
			PPPub[I].Crv,
			PPPub[I].CrvZ,
			PPPub[I].Friction,
			TrackRollAngle,
			TrackTiltAngle, 
			ScaleBumps,
			PPPrv[I].SpeedFrictionFactor * ScaleSpeed);
//			ScaleSpeed * HALFFRICTION);
	}
/*
	// Loop over the track
	for (int I = 0; I < Count; I++)
	{
		GfOut("I: %04.4d EstSpeed: %0.3f\n",I,PPPrv[I].Speed * 3.6);
	}
*/
}
//==========================================================================*

//==========================================================================*
// Propagate braking 
//--------------------------------------------------------------------------*
void TBaseLane::PropagateBraking(float ScaleBrake, float ScaleBumps)
{
	// To find the possible target speed at the current position we have to 
	// look to the target speed of the next point. When we found the 
	// estimation for the current point, we go back to the point before.
	// This is a two lap loop, so we do not have to care about 
	// a good starting point for the estimation
	for (int I = ((2 * Count - 1)); I >= 0; I--)
	{
		int	P = I % Count;                      // Current point
		int Q = (P + 1) % Count;                // Next point

		// If estimated speed at point P is faster than at the following 
		// point Q we have to brake.
		if (PPPrv[P].Speed > PPPrv[Q].Speed)
		{
			// We need to know the target speed for Point P, so we have to 
			// estimate the possible deceleration at the way from P to Q. 
			// This depends on the length of the path between (Distance)
			// and the local curvature (Crv).
			//double Crv = (PPPub[P].Crv + PPPub[Q].Crv) * 0.5;
			TVec3d Delta = PPPub[P].Point - PPPub[Q].Point;
			double Distance = Length2D(Delta);

			// In case of high curvature we calculate the arc length 
			// as distance.
			//if (fabs(Crv) > 0.01)
			//	Distance = 2 * asin(0.5 * Distance * Crv) / Crv;

			// The possible deceleration depends on the slope of the local
			// track surface as well.
			double TrackRollAngle = atan2(PPPub[P].ToRight.z, 1);
			double TrackTiltAngle = atan2(Delta.z, Distance);

			//GfOut("Q: %d FF: %0.2f\n",Q,PPPrv[Q].FrictionFactor);
			// Estimate the target speed at the current point
			// using the learned friction factor
			float TargetSpeed = EstimateBraking(
				PPPub[P].Crv,
				PPPub[P].CrvZ,
				PPPub[Q].Crv,
				PPPub[Q].CrvZ,
				PPPrv[Q].Speed,
				Distance,
				PPPub[Q].Friction,
				TrackRollAngle,
				TrackTiltAngle,
//				PPPrv[Q].FrictionFactor * HALFFRICTION * ScaleBrake,
				PPPrv[Q].BrakeFrictionFactor * ScaleBrake,
				ScaleBumps);

			// If the estimated target speed is lower we have to limit it
			if (PPPrv[P].Speed > TargetSpeed)
				PPPrv[P].Speed = TargetSpeed;
		}
	}
}
//==========================================================================*

//==========================================================================*
// Smooth lane
//--------------------------------------------------------------------------*
void TBaseLane::SmoothLane()
{
  const int Iterations = 25;					 // Number of iterations
  int Step = 1;                                  // Initialize step width
  while (Step * 16 < Count)                      // Find largest step width
    Step *= 2;                                   // possible for the track

  while (Step > 0)								 // Repeat until step = 1
  {
	SmoothPathPoints(Step, Iterations);			 // Do the job
    Step >>= 1;									 // Half step width
  }
}
//==========================================================================*

//==========================================================================*
// Estimate braking deceleration based on the target speed of the next point
//--------------------------------------------------------------------------*
float TBaseLane::EstimateBraking(
	double Crv0,								// Curvature in xy at P0
	double Crvz0,								// Curvature in z at P0
	double Crv1,								// Curvature in xy at P1
	double Crvz1,								// Curvature in z at P0
	double Speed,								// Speed
	double Dist,								// Distance P0 P1
	double Friction,							// Friction
	double TrackRollAngle,						// Track roll angle
	double TrackTiltAngle,                      // Track tilt angle
	double ScaleBrake,							// Part of Track tuning
	double ScaleBumps)							// Part of Track tuning
{
	// We have to respect the limit at front and rear wheels
	double Mu = Friction * ScaleBrake
		* MIN(oDriver->oTyreMuFront,oDriver->oTyreMuRear);

	// Some part of the friction is used for steering
	double MuSteer = Speed * Speed * fabs(Crv1) / G;
//	if (1/fabs(Crv1) > 200)
//		MuSteer = 0.0;

	// The remaining we can use for braking
	double MuBrake2 = MAX(0.01,Mu * Mu - MuSteer * MuSteer);

	// Estimate the part of bumps
	double AccelDown = G *
		MAX(0.1,MIN(1.0, (1 + 25 * ScaleBumps * (Crvz0 + Crvz1))));

	// Estimate the part of the aerodynamic downforce
	double AeroDown = sqrt(MuBrake2)
		* MIN(oDriver->oCaFrontWing + oDriver->oCaGroundEffect,
		oDriver->oCaRearWing + oDriver->oCaGroundEffect);

	// Estimate the part of the aerodynamic drag
	double AeroDrag = 
		(1.0 + oDriver->oCar->_dammage / 10000.0)// SD specific factor
		* oDriver->oCdBody				         // Drag of body of car
		+ oDriver->oCdWing;                      // Drag of wings

	// Estimate the part of the aerodynamic
	double AeroScale = oDriver->oMass/(AeroDown + AeroDrag);

	// Estimate angle between down and track normal
	double Cos = cos(TrackRollAngle) * cos(TrackTiltAngle);

	// Estimate the part of the usable force
	double Down = MuBrake2 * AccelDown * AeroScale 
		* (Cos - sin(TrackTiltAngle));

	// Calculate the exponent
	double Ex = exp(Dist * 2 / AeroScale);

	// Top secrete formula, do not publish to racers ;-D
	double TargetSpeed = sqrt(Down * ((1 + Speed*Speed/Down)*Ex - 1));

	// Estimate speed in the middle of the section
	double MidSpeed = (TargetSpeed + Speed)/2;

	// Check brake
	double BrakeDecel = ScaleBrake * oDriver->oBrakeForce / oDriver->oMass;
	double BrakeTargetSpeed = sqrt(MidSpeed * MidSpeed + 2 * BrakeDecel * Dist);
	double ResultTargetSpeed = MIN(TargetSpeed,BrakeTargetSpeed);

	// Sanity check
	return (float) MAX(ResultTargetSpeed,Speed);
}
//==========================================================================*

//==========================================================================*
// Estimate maximum of speed based on the local curvature and slope
//--------------------------------------------------------------------------*
float TBaseLane::EstimateSpeed(
	double Crv0,								// Curvature in xy at P
	double CrvZ,								// Curvature in z at P
	double Friction,							// Friction
	double TrackRollAngle,						// Track roll angle
	double TrackTiltAngle,                      // Track tilt angle
	double ScaleBumps,
	double ScaleSpeed)							// Part of Track
{
	// Estimate part of friction we can use for steering, because we
	// have to brake into the curve as well!
	double SteerFriction = Friction * ScaleSpeed;   

	double AbsCrv = MAX(0.0001,fabs(Crv0));      // Sanity check
	
	double Cos = cos(TrackRollAngle);
	double Sin = sin(TrackRollAngle);

	// Estimate the part of bumps
	double Accel = (1 + 50 * ScaleBumps * CrvZ) * Cos * cos(TrackTiltAngle);
	Accel = G * MAX(0.5,MIN(1.0, Accel));

	// First calculation for front tyres:
	double Mu = SteerFriction * oDriver->oTyreMuFront;
	double Den = MAX(0.00001,AbsCrv - 
		(oDriver->oCaFrontWing + oDriver->oCaGroundEffect/2) 
		* Mu / oDriver->oMass);

	double SpeedSqrFront = (Cos * Mu + Sin * SGN(Crv0)) * Accel / Den;

	// Next calculation for rear tyres:
	Mu = SteerFriction * oDriver->oTyreMuRear;
	Den = MAX(0.00001,AbsCrv - 
		(oDriver->oCaRearWing + oDriver->oCaGroundEffect/2) 
		* Mu / oDriver->oMass);

	double SpeedSqrRear = (Cos * Mu + Sin * SGN(Crv0)) * Accel / Den;

	return (float) sqrt(MIN(SpeedSqrFront,SpeedSqrRear));
}
//==========================================================================*

//==========================================================================*
// Smooth path points
//--------------------------------------------------------------------------*
void TBaseLane::SmoothPathPoints(int Step, int Iterations)
{
	// Do some iterations
	for (int I = 0; I < Iterations; I++)
	{
		// Select points based on step width
		// Initial selection of a set of points
		PPPP PPP = NULL;						 // Point before the previous
		PPPP PP = &PPPub[Count - 2 * Step];      // Previous point
		PPPP PC = &PPPub[Count - Step];          // Current point
		PPPP PN = &PPPub[0];					 // Next Point
		PPPP PNN = &PPPub[Step];				 // Point next to the next

		// Loop over the track
		int	K = 2 * Step;
		int	N = (Count + Step - 1) / Step;
		for (int J = 0; J < N; J++)
		{
			// Select next set of points
			PPP = PP;
			PP = PC;
			PC = PN;
			PN = PNN;
			PNN = &PPPub[K];

			// Smoth current point
			AdjustPathPoint(PPP, PP, PC, PN, PNN);

			K += Step;
			// Avoid overlapping use of selected points
			if (K >= Count)
				K = 0;
		}
	}

	Interpolate(Step);						 // Smooth unselected points
}
//==========================================================================*

//==========================================================================*
// Smooth unselected points between iterations
//--------------------------------------------------------------------------*
void TBaseLane::Interpolate(int Step)
{
	if (Step > 1)
	{
		// Initial set of points
		PPPP PPP = 0;
		PPPP PP = &PPPub[((Count - 1) / Step) * Step];
		PPPP PC = &PPPub[0];
		PPPP PN = &PPPub[Step];

		int J = 2 * Step;
		// Loop over all points
		for (int I = 0; I < Count; I += Step)
		{
			// Get next set of points
			PPP = PP;
			PP = PC;
			PC = PN;
			PN = &PPPub[J];

			J += Step;
			// Avoid overlapping use of points
			if (J >= Count)
				J = 0;

			// Get vectors
			TVec3d VPP = PPP->Point;
			TVec3d VP = PP->Point;
			TVec3d VC = PC->Point;
			TVec3d VN = PN->Point;

			// Calculate the curvatures
			double CrvP = Curv2D(VPP, VP, VC);
			double CrvN = Curv2D(VP, VC, VN);

			// Avoid overlapping use of points
			if (I + Step > Count)
				Step = Count - I;

			// Adjust all points PI between
			for (int K = 1; K < Step; K++)
			{
				PPPP PI = &(PPPub[(I + K) % Count]);
				double LenP = (PI->CalculatePoint() - VP).len();
				double LenN = (PI->CalculatePoint() - VN).len();
				ModifyPathPoint(VP, PP, CrvP, LenP, PI, LenN, CrvN, PN, VN);
			}
		}
	}
	else 
	{
		// Smooth all values (Step = 1)
		// Setup initial points
		PPPP PP = 0;
		PPPP PC = &PPPub[Count - 1];
		PPPP PN = &PPPub[0];

		int J = 1;
		// Three loops over all points
		for (int I = 0; I < 3 * Count; I++)
		{
			// Get next set of points
			PP = PC;
			PC = PN;
			PN = &PPPub[J];
			// Smoothing
			PC->Offset = (PP->Offset + PC->Offset + PN->Offset)/3;

			J = (J+1) % Count; // Restrict index to the track
		}
	}
}
//==========================================================================*

//==========================================================================*
// Smooth a path point
//--------------------------------------------------------------------------*
void TBaseLane::AdjustPathPoint(
  const PPPP PPP, 
  const PPPP PP, 
  PPPP PC,
  const PPPP PN, 
  const PPPP PNN)
{
	// Get the vectors to the points
	TVec3d VPP = PPP->Point;  
	TVec3d VP = PP->Point;
	TVec3d VC = PC->Point;
	TVec3d VN = PN->Point;
	TVec3d VNN = PNN->Point;

	// Calculate the curvatures and the distances
	double CrvP = Curv2D(VPP, VP, VC);
	double LenP = hypot(VC.x - VP.x, VC.y - VP.y);
	double LenN = hypot(VN.x - VC.x, VN.y - VC.y);
	double CrvN = Curv2D(VC, VN, VNN);

	// Do the job
	ModifyPathPoint(VP, PP, CrvP, LenP, PC, LenN, CrvN, PN, VN);
}
//==========================================================================*

//==========================================================================*
// Optimize
//--------------------------------------------------------------------------*
void TBaseLane::ModifyPathPoint(
	TVec3d VPP,									 // Vector to PP
	const PPPP PP,								 // Previous Point
	double CrvP,								 // Curvature from PP
	double LenP,								 // Distance to PP
	PPPP PC,									 // Current Point
	double LenN,								 // Distance to PN
	double CrvN,								 // Curvature to PN
	const PPPP PN,								 // Nect point
	TVec3d VPN)									 // Vector to PN
{
	double Offset = PC->Offset;                  // Old offset at PC
	double Crv = (LenN * CrvP + LenP * CrvN)     // Calculate curvature
		/ (LenP + LenN);						 // at current point

	if (Crv != 0.0)								 // If not at a straight
	{
		// Set the new offset to be the intersection point at the current 
		// position at the track (line Center->ToRight) and the connection
		// line between the prevoius and the next point 
		// (line VPP->(VPN - VPP)
		IntersectionPoint2D(PC->Center, PC->ToRight, VPP, VPN - VPP, Offset);

		// Restrict the change of offset to a small change of the curvature
		double DeltaCrv = Curv2D
			(VPP, PC->Center + PC->ToRight * (Offset + DELTA_OFFSET), VPN);

		Offset += DELTA_OFFSET * Crv / DeltaCrv;
	}

	SetOffset(Crv, Offset, PP, PC, PN);            // Set new offset
}
//==========================================================================*

//==========================================================================*
// Set new offset to the current point
//--------------------------------------------------------------------------*
void TBaseLane::SetOffset(
	double Crv,									 // curvature at PC
	double Offset,								 // new target offset
	const PPPP PP,								 // previous point
	PPPP PC,									 // current point
	const PPPP PN)								 // next point
{
	double WL = -PC->WToL + oMargin;             // Way to left
	double WR = PC->WToR - oMargin;              // Way to right

	// Restrict the new offset to the limits
	if (Crv >= 0)								 // turn to left
	{
		Offset = MAX(Offset,WL + oBorderInner);
		Offset = MIN(Offset,WR - oBorderOuter);
	}
	else										 // turn to right
	{
		Offset = MIN(Offset,WR - oBorderInner);
		Offset = MAX(Offset,WL + oBorderOuter);
	}

	// Setup new offset to the current point
	PC->Offset = (float) Offset;
  
	// Refresh the internal data
	PC->Point = PC->CalculatePoint();
	PC->Crv = (float) Curv2D(PP->Point, PC->Point, PN->Point);
}
//==========================================================================*

//==========================================================================*
// Save lane to file
//--------------------------------------------------------------------------*
bool TBaseLane::SaveToFile(const char* Filename)
{
#ifdef mysecure
  FILE* F;
  int err = myfopen(&F, Filename, "w");
#else
  FILE* F = fopen(Filename, "w");
#endif
  if (F == 0)
    return false;

  fprintf(F, "%d\n",Count);
  fprintf(F, "%g\n",oDriver->oTrack->length);
  fprintf(F, "%g\n",1.0);

  for (int I = 0; I < Count; I++)
  {
	TPathPointPublic& P = PPPub[I];				 // Points in this lane
	const TVec3d& C = P.Center;
	const TVec3d& N = P.ToRight;
	fprintf(F, "%d\t%g\t%g\t%g\t%g\t%g\t%g\t%g\t%g\t%g\t%g\t%g\n",
	  I,C.x, C.y, C.z, N.x, N.y, N.z, P.WToL, P.Offset, P.WToR,
	  P.Point.x, P.Point.y);
  }

  fclose(F);

  return true;
}
//==========================================================================*

//==========================================================================*
// Save learned factors to file
//--------------------------------------------------------------------------*
bool TBaseLane::SaveLearnedToFile(const char* Filename)
{
  int RobotType = 1;    // Framework
  int FileType = 2;     // Learned
  int MajorVersion = 1; 
  int MinorVersion = 0;

  FILE* F = fopen(Filename, "wb");
  size_t writeSize;
  if (F == 0)
    return false;

  writeSize = fwrite(&RobotType,sizeof(int),1,F);
  if( writeSize < 1)
    return false;

  writeSize = fwrite(&FileType,sizeof(int),1,F);
  if( writeSize < 1)
    return false;

  writeSize = fwrite(&MajorVersion,sizeof(int),1,F);
  if( writeSize < 1)
    return false;

  writeSize = fwrite(&MinorVersion,sizeof(int),1,F);
  if( writeSize < 1)
    return false;

  int Weather = oDriver->oWeatherCode;
  writeSize = fwrite(&Weather,sizeof(int),1,F);
  if( writeSize < 1)
    return false;

  writeSize = fwrite(&LapsLearned,sizeof(int),1,F);
  if( writeSize < 1)
    return false;

  writeSize = fwrite(&Count,sizeof(int),1,F);
  if( writeSize < 1)
    return false;

  for (int I = 0; I < Count; I++)
  {
	writeSize = fwrite(&(PPLst[I]),sizeof(TBaseLane::TPathPointPrivate),1,F);
  }

  fclose(F);

  return true;
}
//==========================================================================*

//==========================================================================*
// Load learned factors from file
//--------------------------------------------------------------------------*
bool TBaseLane::LoadLearnedFromFile(const char* Filename)
{
  int RobotType = 1;    // Framework
  int FileType = 2;     // Learned
  int MajorVersion = 1; 
  int MinorVersion = 0;
  int Value;

  FILE* F = fopen(Filename, "rb");
  size_t readSize;
  if (F == 0)
    return false;

  readSize = fread(&Value,sizeof(int),1,F);
  if( readSize < 1 )
  {
  	fclose(F);
	return false;
  }
  if (Value != RobotType)
  {
    fclose(F);
    return false;
  }

  readSize = fread(&Value,sizeof(int),1,F);
  if( readSize < 1 )
  {
  	fclose(F);
	return false;
  }
  if (Value != FileType)
  {
    fclose(F);
    return false;
  }

  readSize = fread(&Value,sizeof(int),1,F);
  if( readSize < 1 )
  {
  	fclose(F);
	return false;
  }
  if (Value != MajorVersion)
  {
    fclose(F);
    return false;
  }

  readSize = fread(&Value,sizeof(int),1,F);
  if( readSize < 1 )
  {
  	fclose(F);
	return false;
  }
  if (Value != MinorVersion)
  {
    fclose(F);
    return false;
  }

  int Weather = oDriver->oWeatherCode;
  readSize = fread(&Value,sizeof(int),1,F);
  if( readSize < 1 )
  {
  	fclose(F);
	return false;
  }
  if (Value != Weather)
  {
    fclose(F);
    return false;
  }

  readSize = fread(&LapsLearned,sizeof(int),1,F);
  if( readSize < 1 )
  {
  	fclose(F);
	return false;
  }

  readSize = fread(&Value,sizeof(int),1,F);
  if( readSize < 1 )
  {
  	fclose(F);
	return false;
  }
  if (Value != Count)
  {
    fclose(F);
    return false;
  }

  for (int I = 0; I < Count; I++)
  {
    readSize = fread(&(PPPrv[I]),sizeof(TBaseLane::TPathPointPrivate),1,F);
    if(readSize < 1)
    {
      fclose(F);
      return false;
    }
  }

  fclose(F);

  return true;
}
//==========================================================================*

//--------------------------------------------------------------------------*
// end of file baselane.cpp
//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++*
