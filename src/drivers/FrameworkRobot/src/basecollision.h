//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++*
// basecollision.h
//--------------------------------------------------------------------------*
// Learning robot for SD
// Speed Dreams - Version 2.0.X
//--------------------------------------------------------------------------*
// Base class for custom collision detection 
// 
// File         : basecollision.h
// Created      : 2011.06.26
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
#ifndef _BASE_COLLISION_H_
#define _BASE_COLLISION_H_

#include "globaldefinitions.h"

//==========================================================================*
// Classe TBaseCollision
//--------------------------------------------------------------------------*
class TBaseCollision
{
	public:

	// Infos to possible Collision
	struct TCollInfo
	{
		int Flags;								 // Flags
		int LappersBehind;						 // Lappers behind?
		double MinLSideDist;                        
		double MinRSideDist;
		double MinLDist;						 // Min dist. left side
		double MinRDist;						 // Min dist. right side
		double CarDistLong;
		int NextSide;							 // Side of next curve
		int OppsAhead;							 // Opponents ahead?
		int OppsAtSide;							 // Opponents at side?
		double TargetSpeed;						 // Adjusted target speed
		double AvoidSide;						 // Avoid to side

		TCollInfo():							 // Default constructor
			Flags(0),
			LappersBehind(0),
			MinLSideDist(INT_MAX),
			MinRSideDist(INT_MAX),
			MinLDist(INT_MAX),
			MinRDist(INT_MAX),
			CarDistLong(INT_MAX),
			NextSide(0),
			OppsAhead(0),
			OppsAtSide(0),
			TargetSpeed(500),
			AvoidSide(0.0)
		{
		};
	};

		TBaseCollision();                        // Default constructor
		~TBaseCollision();                       // Destructor

		virtual bool CheckCollision(			 // Check possible collision
			PBaseOpponent Opp,					 // between this opponent
			PBaseOpponent MyCar);				 // and my car

		virtual double AvoidTo(
			const TCollInfo& Coll, 
			const PCarElt oCar, 
			TDriver& Me, 
			bool& DoAvoid);

	// Data
		double oDistance;						 // Distance of collision
		double oTime;							 // Time till collision

};
//==========================================================================*
#endif // _BASE_COLLISION_H_
//--------------------------------------------------------------------------*
// end of file basecollision.h
//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++*

