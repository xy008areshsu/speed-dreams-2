//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++*
// baseopponent.h
//--------------------------------------------------------------------------*
// Learning robot for SD
// Speed Dreams - Version 2.0.X
//--------------------------------------------------------------------------*
// Opponent handling
// 
// File         : baseopponent.h
// Created      : 2009.05.01
// Last changed : 2011.06.25
// Copyright    : © 2009-2011 Wolf-Dieter Beelitz
// eMail        : wdb@wdbee.de
// Version      : 1.00.000
//--------------------------------------------------------------------------*
// This program is free software; you can redistribute it and/or modify
// it under the terms of the GNU General Public License as published by
// the Free Software Foundation; either version 2 of the License, or
// (at your option) any later version.
//--------------------------------------------------------------------------*
#ifndef _BASE_OPPONENT_H_
#define _BASE_OPPONENT_H_

#include "globaldefinitions.h"
#include "straight.h"

//==========================================================================*
// Class TBaseOpponent
//--------------------------------------------------------------------------*
class TBaseOpponent
{
	public:
		TBaseOpponent();                         // Default constructor
		~TBaseOpponent();                        // Destructor

		virtual void Initialise(                 // Initialize opponent
			const PTrack Track,
			const PSituation Situation,
			int Index);

		virtual void Update(                     // Update opponents data
			const PCarElt MyCar,
			double MyDirX, double MyDirY);

		virtual bool Classify(                   // Classification of opponents
			const PCarElt MyCar);

		// Data:
		//

		// Pointer to my car as opponent
		static PBaseOpponent cMyCar;

		// Opponents car
		PCarElt oCar;							 // Opponents car
		int oIndex;								 // Opponents cars index
		//
		// Track
		PTrack oTrack;						     // SD data for track
		double oTrackWidth;                      // Shortcut for track width
		double oHalfTrackWidth;                  // .. for track width/2
		double oTrackLength;                     // Shortcut for track length
		double oHalfTrackLength;				 // .. for track length/2
		//
		// Classification result
		int oState;								 // State of opponent
		//
		// Opponent related data
		double oSpeed;   						 // Speed of opponent
		TStraight oMovement;
		double oTrackYaw;						 // Track related yaw

		double oAvoidLatchTime;
		double oMinDistLong;


		//
		// Opponent - MyCar related data
		double oCarDistLong;					 // Dist. along my cars X
		double oCarDistLat;						 // and my cars Y axis

		double oCatchAccTime;	
		double oCatchDecel;						 // Decelleration
		double oCatchSpeed;						 // Speed 
		double oCatchTime;						 // Time

		double oDeltaSpeed;						 // Difference of speed
		double oDistance;						 // Distance between cars
		double oSideDist;						 // Distance to side
		
		double oAvgAccLong;
		double oAvgAccLat;
		double oMyAvgAccLong;
		double oMyAvgAccLat;
		double oCarAvgAccLong;
		double oCarAvgAccLat;

};
//==========================================================================*
#endif // _BASE_OPPONENT_H_
//--------------------------------------------------------------------------*
// end of file baseopponent.h
//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++*
