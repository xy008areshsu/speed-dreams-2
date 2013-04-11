//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++*
// baselane.h
//--------------------------------------------------------------------------*
// Learning robot for SD
// Speed Dreams - Version 2.0.X
//--------------------------------------------------------------------------*
// Base class for a custom lane
// 
// File         : baselane.h
// Created      : 2009.05.01
// Last changed : 2011.11.09
// Copyright    : © 2006-2011 Wolf-Dieter Beelitz
// eMail        : wdb@wdbee.de
// Version      : 1.00.001
//--------------------------------------------------------------------------*
// This program is free software; you can redistribute it and/or modify
// it under the terms of the GNU General Public License as published by
// the Free Software Foundation; either version 2 of the License, or
// (at your option) any later version.
//--------------------------------------------------------------------------*
#ifndef _BASE_LANE_H_
#define _BASE_LANE_H_

#include "basetrack.h"

//==========================================================================*
// Class TBaseLane
//--------------------------------------------------------------------------*
class TBaseLane
{
	public:
		// Common data of a point in the lane
		struct TPathPointPublic
		{
			TVec3d Middle;						 // Track specific center
			TVec3d Center;						 // Lane specific center
			TVec3d ToRight;						 // Lane specific toRight
			TVec3d Point;						 // Target point here
			float Crv;							 // Curvature in xy
			float CrvZ;						     // Curvature in z 
			float Offset;						 // Offset from centre point
			float WToL;						     // Lane specfic width to left
			float WToR;						     // Lane specfic width to right
			float WPitToL;						 // Pit specfic width to left
			float WPitToR;						 // Pit specfic width to right
			float Station;						 // Distance from startline
			float Friction;						 // Surface friction

			TVec3d CalculatePoint()				 // Calculate Point from offset
				const {return Center + ToRight * Offset;}
			TVec3d CalculatePoint(float Avoid)	 // Calculate Point for avoiding
				const {return Center + ToRight * Avoid;}
		};

		// Shortcut for Pointer to PathPointPublic:
		typedef TBaseLane::TPathPointPublic* PPPP;

		// Driver specific data of a point in the lane
		struct TPathPointPrivate
		{
			float Speed;						// Speed at this point
			float BrakeFrictionFactor;			// Learned friction factor
			float SpeedFrictionFactor;			// Learned friction factor
		};

		// Shortcut for Pointer to PathPointPrivate:
		typedef TBaseLane::TPathPointPrivate* PPPPV;

		TBaseLane();							 // Default constructor
		TBaseLane(const TBaseLane& BaseLane);	 // Copy constructor
		virtual ~TBaseLane();					 // Destructor

		virtual TBaseLane& operator=( // Assignment operator
			const TBaseLane& BaseLane);
		virtual void SetLane(		 // Assignmant worker
			const TBaseLane& BaseLane);
		virtual void StoreLearned();			 // Store learned factors
		virtual void RestoreLearned();			 // Restore learned factors
		virtual inline const TVec3d& Point( 	 // 3D-Point of index
			int Index) const 
			{return (PPPub[Index % Count]).Point;}; 
		virtual double Crv(						 // Curvature of index
			int Index) const;
		virtual double Offset(					 // Offset of index
			int Index) const;
		virtual const TVec2d Target(			 // 2D-Target of index
			int Index) const;

		virtual void Initialize(				 // Initialize lane
			TBaseDriver* Driver,				 // Driver
			TBaseTrack* TrackDesc,				 // Track description
			float Offset = 0.0f,				 // Fixed offset
			float ScaleBrake = 1.0f,			 // Scale brake
			float ScaleBumps = 1.0f,			 // Scale bumps
			float ScaleSpeed = 1.0f,			 // Scale speed
			float MaxToLeft = FLT_MAX,			 // Max width to left
			float MaxToRight = FLT_MAX);		 // Max width to right
		virtual void Curvatures();				 // Calculate curvatures in XY
		virtual void Bumps();					 // Calculate curvatures in Z
		virtual void EstimateTargetSpeed(		 // Estimate speed from curvatures
			float ScaleBumps = 1.0f,			 // Scale bumps
			float ScaleSpeed = 1.0f); 	 
		virtual void PropagateBraking(			 // Possible speed from braking
			float ScaleBrake = 1.0f,
			float ScaleBumps = 1.0f);		 
		virtual void SmoothLane();				 // Smooth lane clothoide like

		virtual bool SaveToFile(				 // Save to file
			const char* Filename);       

		virtual bool SaveLearnedToFile(			 // Save learned factors to file
			const char* Filename);       
		virtual bool LoadLearnedFromFile(
			const char* Filename);

		virtual float EstimateBraking(	         // Estimate possible speed
			double Crv0, double Crvz0,			 //   From curvatures here
			double Crv1,	double Crvz1,		 //   and at next lane point
			double Speed,						 //   possible speed here 
			double Dist,						 //   and distance to next point
			double Friction,					 //   Surface friction   
			double TrackRollAngle,				 //   Track roll angle
   	        double TrackTiltAngle,               //   Track tilt angle
			double ScaleBrake = HALFFRICTION,	 // Part of Track tuning
			double ScaleBumps = 1.0f);			 // Part of Track tuning

		virtual float EstimateSpeed(			 // Estimate possible speed
			double Crv0, double CrvZ,			 //   From curvatures
			double Friction,					 //   Surface friktion
			double TrackRollAngle,				 //   Track roll angle
			double TrackTiltAngle,               // Track tilt angle
			double ScaleBumps = 1.0f,			 // Part of Track tuning
			double ScaleSpeed = HALFFRICTION); 

		virtual void SmoothPathPoints(			 // Smooth path points
			int Step,							 // Step width for selection
			int Iterations);					 // Number of iterations

		virtual void Interpolate(				 // Interpolate unselected
			int Step);							 // Step width of selection

		virtual void AdjustPathPoint(			 // Adjust path point
			const PPPP PPP,						 // Point before previous
			const PPPP PP,						 // Previous point
			PPPP PC,							 // Current point
			const PPPP PN,						 // Next Point
			const PPPP PNN);					 // Point next to next

		virtual void ModifyPathPoint(			 // Modify path point
			TVec3d VPP,							 // Vector to PP
			const PPPP PP,						 // Previous Point
			double CrvP,						 // Curvature from PP
			double LenP,						 // Distance to PP
			PPPP PC,							 // Current Point
			double LenN,						 // Distance to PN
			double CrvN,						 // Curvature to PN
			const PPPP PN,						 // Nect point
			TVec3d VPN);						 // Vector to PN

		virtual void SetOffset(					 // Set new offset
			double Crv,							 // curvature at PC
			double Offset,						 // new target offset
			const PPPP PP,						 // previous point
			PPPP PC,							 // current point
			const PPPP PN);						 // next point

		double oBorderInner;					 // Safty margin inner side
		double oBorderOuter;					 // Safty margin outer side
		PBaseDriver oDriver;					 // Driver
		float oMargin;                           // Margin to side

		bool AvoidRacingline;					 // To disable smoothing
		bool SmoothRacingline;					 // To disable smoothing
		int Count;								 // Nbr of points in lane
		TPathPointPublic* PPPub;			 	 // Common parameters
		TPathPointPrivate* PPPrv;				 // Individual parameters
		TPathPointPrivate* PPLst;				 // Last parameters stored
		PBaseTrack TrackDesc;					 // Common track description
		PTrack Track;							 // SD track
		int LapsLearned;						 // Laps used for learning
};
//==========================================================================*
#endif // _BASE_LANE_H_
//--------------------------------------------------------------------------*
// end of file baselane.h
//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++*
