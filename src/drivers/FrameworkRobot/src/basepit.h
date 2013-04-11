//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++*
// basepit.h
//--------------------------------------------------------------------------*
// Learning robot for SD
// Speed Dreams - Version 2.0.X
//--------------------------------------------------------------------------*
// Base class for a pit stop strategy
// 
// File         : basepit.h
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
#ifndef _BASE_PIT_H_
#define _BASE_PIT_H_

#include "globaldefinitions.h"
#include "basedriver.h"
#include "basetrack.h"
#include "baselane.h"
#include "basestrategy.h"

//==========================================================================*
// Klasse TPitLane
//--------------------------------------------------------------------------*
class TPitLane : public TBaseLane
{
  public:
	PtCarElt oCar;                               // TORCS data of car

	double oPitDist;                             // Distance to decide
	double oPitEndPos;                           // End of speed limit
    double oPitEntryStartPos;                    // Start of pitlane entry
    double oPitEntryEndPos;                      // End of pitlane entry
	double oPitExitStartPos;                     // Start of pitlane exit
	double oPitExitEndPos;                       // End of pitlane exit
	double oPitStartPos;                         // Start of speed limit
	double oPitStopPos;                          // Position of pit
	double oStoppingDist;                        // Stopping distance
	double oPitStopOffset;                       // Offset from TORCS point
	int oPitSide;                                // Side of pits

	int	oStopIdx;                                // Index of section of pit
	double oStopPos;                             // Position to stop

	double ToSplinePos(double TrackPos) const;   //

	virtual void Init(PtCarElt Car);             // Initialize oCar
    virtual int MakePath(                        // Build pitlane
	  TAbstractStrategy* Strategy,
	  TBaseLane* BasePath);

	virtual bool InPitSection(double TrackPos) const;
	virtual bool InPitSpeedLimit(double TrackPos) const;
	virtual bool CanStop(double TrackPos) const;
	virtual bool Overrun(double TrackPos) const;

	virtual double DistToPitEntry(double TrackPos) const;
	virtual double DistToPitStop(double TrackPos, bool Pitting) const;
	virtual double DistToPitSpeedLimit(double TrackPos) const;
	virtual double DistFromPitSpeedLimit(double TrackPos) const;
	virtual double PitDist(){return oPitDist;};
	virtual double StoppingDist(){return oStoppingDist;};
};
//==========================================================================*

//==========================================================================*
// Klasse TPit
//--------------------------------------------------------------------------*
class TPit
{
  public:
	PTrack oTrack;                               // TORCS track data
	PCarElt oCar;                                // TORCS car data
//	TPitLane oPitLane[gNBR_RL];                  // Pitlanes
	TPitLane oPitLane;                           // Pitlane
	tTrackOwnPit *oMyPit;			             // Pointer to my pit.
	tTrackPitInfo *oPitInfo;	                 // General pit info.

	bool oPitStop;					             // Pitstop planned.
	bool oInPitLane;			 		         // We are still in the pitlane.
	float oPitEntry;				  	         // Distance to start line of the pit entry.
	float oPitExit;					             // Distance to the start line of the pit exit.
	double oDistToPitEnd;                        // Remaining len of pitlane

	float oSpeedLimitSqr;			             // Pit speed limit squared.
	float oSpeedLimit;				             // Pit speed limit.
	float oPitSpeedLimitSqr;			         // The original speedlimit squared.

	float oPitTimer;					         // Timer for pit timeouts.

	static const float SPEED_LIMIT_MARGIN;

	TPit(TBaseDriver *Driver);
	~TPit();

	virtual void SetPitstop(bool oPitStop);
	virtual bool GetPitstop()
	  {return oPitStop;}

	virtual void SetInPit(bool InPitLane)
	  {this->oInPitLane = InPitLane;}
	virtual bool GetInPit()
	  {return oInPitLane;}

	virtual float GetPitOffset(float Offset, float FromStart);

	virtual bool IsBetween(float FromStart);
	virtual bool IsTimeout(float Distance);

	virtual float ToSplineCoord(float X);
	virtual float GetSpeedLimitBrake(float SpeedSqr);

	virtual void Update();

	virtual bool HasPits()
	  {return oMyPit != NULL;}

};
//==========================================================================*
#endif // _BASE_PIT_H_
//--------------------------------------------------------------------------*
// end of file basepit.h
//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++*


