//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++*
// basestrategy.h
//--------------------------------------------------------------------------*
// Learning robot for SD
// Speed Dreams - Version 2.0.X
//--------------------------------------------------------------------------*
// Base class for a pit stop strategy
// 
// File         : basestrategy.h
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
#ifndef _BASE_STRATEGY_H_
#define _BASE_STRATEGY_H_

#include "globaldefinitions.h"
#include "basedriver.h"

//==========================================================================*
// Class TAbstractStrategy
//--------------------------------------------------------------------------*
class TAbstractStrategy
{
  public:
	enum
	{
	  PIT_NONE,
	  PIT_BEFORE,
	  PIT_PREPARE,
	  PIT_ENTER,
	  PIT_ASKED,
	  PIT_SERVICE,
	  PIT_EXIT_WAIT,
	  PIT_EXIT,
	  PIT_GONE
	};

	int	oState;		                             // Current pitting state
    bool oGoToPit;                               // Pit stop needed

    PtCarElt oCar;                               // SD data of car
	PTrack oTrack;                               // SD data of track
	PPit oPit;									 // My pit
	PBaseDriver oDriver;						 // My driver

	double oDistToSwitch;                        // Distance from pit to 
												 // decide to go to pit
	TAbstractStrategy()
	  :oState(PIT_NONE),oGoToPit(false),oCar(NULL),oTrack(NULL),oPit(NULL){};
	virtual ~TAbstractStrategy(){};

	virtual bool IsPitFree() = 0;
	virtual bool NeedPitStop() = 0;
	virtual float PitRefuel() = 0;
	virtual int PitRepair() = 0;
	virtual int RepairWanted
	  (int AcceptedDamage) = 0;
	virtual float SetFuelAtRaceStart
	  (PTrack Track, PCarSettings *CarSettings, PSituation Situation, float Fuel) = 0;
	virtual void Update
	  (PtCarElt Car) = 0;

    virtual void CheckPitState(float PitScaleBrake) = 0;
	virtual bool GoToPit() = 0;
	virtual bool StartPitEntry(float& Ratio) = 0;
	virtual bool StopPitEntry(float Offset) = 0;

	virtual void TestPitStop(){oGoToPit = true;};
	virtual void PitRelease();
	virtual int GetState(){return oState;};
	virtual bool OutOfPitlane(){return oState < PIT_ENTER;};
};
//==========================================================================*

//==========================================================================*
// Simple strategy for pit stop and refueling
//--------------------------------------------------------------------------*
class TBaseStrategy
  : public TAbstractStrategy
{
  public:
	bool oWasInPit;             // Was car in pit while driving in pitlane?
    bool oFuelChecked;          // Fuel consumption checked?
    float oFuelPerM;            // Mean fuel consumption in kg/m
    float oLastPitFuel;         // Amount of fuel filled in
    float oLastFuel;            // Fuel contained while crossing start line
    float oExpectedFuelPerM;    // Estimated fuel needed for the race in kg/m
	int oPitTicker;             // Detect overrunner
    float oRaceDistance;        // Distance to race
    float oRemainingDistance;   // Remaining distance to race
    float oReserve;             // Reserve in m
    float oTrackLength;         // Length of the track in m
    float oMaxFuel;             // Capacity of fuel tank in kg
	float oStartFuel;           // Fuel at start

	TBaseStrategy();			// Default constructor
	~TBaseStrategy();			// Destructor

    virtual void Init(PBaseDriver Driver);

	bool IsPitFree();
	bool NeedPitStop();
	float PitRefuel();
	int PitRepair(); 
	int RepairWanted
	  (int AcceptedDamage);
	float SetFuelAtRaceStart
	  (PTrack Track, PCarSettings *CarSettings, PSituation Situation, float Fuel);
	void Update
	  (PtCarElt Car);

    void CheckPitState(float PitScaleBrake);
	bool GoToPit();
	bool StartPitEntry(float& Ratio);
	bool StopPitEntry(float Offset);

	static const float cMAX_FUEL_PER_METER;	// [kg/m] Estimated fuel cons.
	static const int cPIT_DAMAGE;			// Limit for accepted damages
};
//==========================================================================*
#endif // _BASE_STRATEGY_H_
//--------------------------------------------------------------------------*
// end of file basestrategy.h
//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++*
