//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++*
// baseopponent.cpp
//--------------------------------------------------------------------------*
// Learning robot for SD
// Speed Dreams - Version 2.0.X
//--------------------------------------------------------------------------*
// Opponent handling
// 
// File         : baseopponent.cpp
// Created      : 2009.05.01
// Last changed : 2011.11.09
// Copyright    : © 2006-2011 Wolf-Dieter Beelitz
// eMail        : wdb@wdbee.de
// Version      : 1.00.001
//--------------------------------------------------------------------------*
// V1.00.000:
// TBaseOpponent is a base class for handling of opponents in a race
// Features:
// - Simple classification of opponents
//--------------------------------------------------------------------------*
// This program is free software; you can redistribute it and/or modify
// it under the terms of the GNU General Public License as published by
// the Free Software Foundation; either version 2 of the License, or
// (at your option) any later version.
//--------------------------------------------------------------------------*
#include <robottools.h>

#include "globaldefinitions.h"

#include "driver.h"
#include "basecollision.h"
#include "baseopponent.h"
#include "straight.h"
#include "parabel.h"

//==========================================================================*
// Pointer to my car as opponent
//--------------------------------------------------------------------------*
PBaseOpponent TBaseOpponent::cMyCar = NULL;
//==========================================================================*

//==========================================================================*
// Default constructor
//--------------------------------------------------------------------------*
TBaseOpponent::TBaseOpponent():
	oCar(NULL),
	oIndex(0),
	oTrack(NULL),
	oTrackWidth(0),
	oHalfTrackWidth(0),
	oTrackLength(0),
	oHalfTrackLength(0),
	oState(0),
	oSpeed(0),
	oCarDistLong(0),
	oCarDistLat(0),
	oDeltaSpeed(0),
	oDistance(0),
	oSideDist(0),
	oAvgAccLong(0),
	oAvgAccLat(0),
	oMyAvgAccLong(0),
	oMyAvgAccLat(0),
	oCarAvgAccLong(0),
	oCarAvgAccLat(0)
{
}
//==========================================================================*

//==========================================================================*
// Destructor
//--------------------------------------------------------------------------*
TBaseOpponent::~TBaseOpponent()
{
}
//==========================================================================*

//==========================================================================*
// Init
//--------------------------------------------------------------------------*
void TBaseOpponent::Initialise
  (const PTrack Track, const PSituation Situation, int Index)
{
	// store pointers to SD data
	oTrack = Track;
	oCar = Situation->cars[Index];               // Opponent's car

	oIndex = Index;                              // Opponent's car's index

	// Setup shortcuts
	oTrackWidth = oTrack->width;
	oHalfTrackWidth = oTrack->width/2.0;

	oTrackLength = oTrack->length;
	oHalfTrackLength = oTrack->length/2.0;
}
//==========================================================================*

//==========================================================================*
// Update
//
// ATTENTION oCar ist opponents car, so we can use our shortcuts!!!
//--------------------------------------------------------------------------*
void TBaseOpponent::Update(
  const PCarElt MyCar,							 // Pointer to my car
  double MyDirX, double MyDirY)                  // Speed of my car
{
	oState = OPP_IGNORE;                         // Init state to ignore

	if((CarState & RM_CAR_STATE_NO_SIMU) &&      // Omit cars out of race
		(CarState & RM_CAR_STATE_PIT) == 0 )     //   if not in pit
		return;

	// If the car is in the pitlane, set Bit-Flag
	if (CarState & RM_CAR_STATE_PIT) 
		oState += OPP_INPIT;

	// Opponent related calculations ...
	oTrackYaw = CarYaw - RtTrackSideTgAngleL(&CarTrackPos); 
	NORM_PI_PI(oTrackYaw);

/*
	// Get direction of motion in global coordinates
	oSpeed = MAX(0.001,hypot(CarSpeedX, CarSpeedY));
	oMovement.P.x = CarPubGlobPosX;
	oMovement.P.y = CarPubGlobPosY;
	oMovement.D.x = CarSpeedX / oSpeed;
	oMovement.D.y = CarSpeedY / oSpeed;
*/
	// Get direction of motion in track coordinates
	oSpeed = MAX(0.001,hypot(CarSpeedLong, CarSpeedLat));
	oMovement.P.x = CarDistFromStart;
	oMovement.P.y = CarToMiddle;
	oMovement.D.x = CarSpeedLong / oSpeed;
	oMovement.D.y = CarSpeedLat / oSpeed;

	// If this is my car, we do not have to calculate car - car related stuff
	if(oCar == MyCar)
	{
		cMyCar = this;
		return;
	}

	// Car-Car relative calculations ...

	// Ôther cars position relative to my car (global coords).
	double DistX = CarPubGlobPosX - MyCar->pub.DynGCg.pos.x;
	double DistY = CarPubGlobPosY - MyCar->pub.DynGCg.pos.y;

	// Relative position in local coords (coords of my car).
	oCarDistLong = MyDirX * DistX + MyDirY * DistY;
	oCarDistLat = MyDirY * DistX - MyDirX * DistY;

	// Speed difference
//	oDeltaSpeed = MAX(0.002,hypot(MyCar->_speed_X,MyCar->_speed_Y))
	oDeltaSpeed = MAX(0.002,hypot(MyCar->_speed_x,MyCar->_speed_y))
		 - oSpeed;

	// To speed up calculations we use distances based on the center of
	// cars. This has to be corrected later if the cars are near together! 

	// Calculate distance between the cars
	oDistance = CarDistFromStart				 // Use distance from Startline
		- MyCar->race.distFromStartLine;

	// Normalize distance to be shure it is behind or infront
	if (oDistance > oHalfTrackLength)
		oDistance -= oTrackLength;
	else if (oDistance < -oHalfTrackLength)
		oDistance += oTrackLength;

	oSideDist = CarToMiddle - MyCar->pub.trkPos.toMiddle;

	// Average acceleration of other car.
	oAvgAccLong = oAvgAccLong * 0.75 + CarPubGlobAccX * 0.25;
	oAvgAccLat = oAvgAccLat * 0.75 + CarPubGlobAccY * 0.25;
	oMyAvgAccLong = oMyAvgAccLong * 0.75 + MyCar->pub.DynGCg.acc.x * 0.25;
	oMyAvgAccLat = oMyAvgAccLat * 0.75 + MyCar->pub.DynGCg.acc.y * 0.25;
	oCarAvgAccLong = oMyAvgAccLong - oAvgAccLong;
	oCarAvgAccLat = oMyAvgAccLat - oAvgAccLat;

}
//==========================================================================*

//==========================================================================*
// Classification of opponents
//--------------------------------------------------------------------------*
bool TBaseOpponent::Classify(
	const PCarElt MyCar)
{
	// Do not classify my car
	if (oCar == MyCar)
		return false;

	// Calculate needed distances and speed difference
	float LengthMargin = (float)
		LMARGIN + (CarLength + MyCar->_dimension_x) / 2;
	//float SideMargin = (float)
	//	SMARGIN + (CarWidth + MyCar->_dimension_y) / 2;
	double MySpeed = 
		MyCar->_speed_x;
	bool Slower = 
		oCar->_speed_x < MyCar->_speed_x;

	// Start with some basic measurements
	oState |= (oCarDistLat < 0)					 // Is Opp. left or right
		? OPP_LEFT : OPP_RIGHT;					 //   of me?
	oState |= (CarToMiddle < 0)					 // Is Opp. left or right
		? OPP_TRK_LEFT : OPP_TRK_RIGHT;			 //   of track

	// To look ahead min 50 m, S [m] = V [km/h] / 2
	double DistAhead = MAX(50,					 // Distance to look ahead
		1.8 * MySpeed);					 		 //   depending on my speed

	// Is opponent in relevant range
	if ((-BACKCOLLDIST < oDistance) && (oDistance < DistAhead))
	{
		// The order of the checks is driven by the priority
		// of the consequences.
		TBaseCollision Collision;

		if (Collision.CheckCollision(this,cMyCar))
		{
			oState |= OPP_COLL;
			//GfOut("Collision!\n");
		}

		// If in front but very near we assume it as at side
		if ((oDistance >= 0) && (oDistance < LengthMargin))
		{
			oState |= OPP_FRONT;
			oState |= OPP_SIDE;
			if (Slower)
				oState += OPP_SLOWER;
			else
				oState += OPP_FASTER;
		}
		// If behind but very near we assume it as at side
		else if ((oDistance < 0) && (-oDistance < LengthMargin))
		{
			oState |= OPP_REAR;
			oState |= OPP_SIDE;
			if (Slower)
				oState += OPP_SLOWER;
			else
				oState += OPP_FASTER;
		}
		// If in front and slower
		else if ((oDistance >= LengthMargin) && Slower)
		{
			oState |= OPP_FRONT;
			oState |= OPP_AHEAD;
			oState |= OPP_SLOWER;
		}
		// If in front and faster
		else if ((oDistance >= LengthMargin) && (!Slower))
		{
			oState |= OPP_FRONT;
			oState |= OPP_AHEAD;
			oState |= OPP_FASTER;
		}
		// If behind and faster
		else if ((-oDistance < LengthMargin) && (!Slower))
		{
			oState |= OPP_REAR;
			oState |= OPP_BEHIND;
			oState |= OPP_FASTER;
		}
		// Opponent is behind and slower
		else
		{
			oState |= OPP_REAR;
			oState |= OPP_BEHIND;
			oState |= OPP_SLOWER;
		}

		double T = 0.0;                                   // Time to catch up at present speeds
		if (oState & OPP_SLOWER)
		{
//			TParabel Q(oCarAvgAccLong, oDeltaSpeed, LengthMargin - oCarDistLong);
			TParabel Q(0.0, oDeltaSpeed, LengthMargin - oCarDistLong);

			if (Q.SmallestNonNegativeRoot(T))             // Solution possible?
			{
				if (T < 5.0)
				{
					oState |= OPP_CATCHING;
					//GfOut("TtoC:%0.2fs Acc:%0.2f DV:%0.2f DL:%0.2f\n",T,oCarAvgAccLong,oDeltaSpeed,LengthMargin - oCarDistLong);
				}
			}
			//else
			//	GfOut("NtoC:%0.2fs Acc:%0.2f DV:%0.2f DL:%0.2f\n",T,oCarAvgAccLong,oDeltaSpeed,LengthMargin - oCarDistLong);
		}
		//else
		//	GfOut("Fast:%0.2fs Acc:%0.2f DV:%0.2f DL:%0.2f\n",T,oCarAvgAccLong,oDeltaSpeed,LengthMargin - oCarDistLong);
	}

	return true;								 // Car was classified
};
//==========================================================================*

//--------------------------------------------------------------------------*
// end of file baseopponent.cpp
//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++*

