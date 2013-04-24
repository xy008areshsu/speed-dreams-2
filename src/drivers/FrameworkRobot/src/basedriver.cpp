//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++*
// basedriver.cpp
//--------------------------------------------------------------------------*
// Learning robot for SD
// Speed Dreams - Version 2.0.X
//--------------------------------------------------------------------------*
// Base class for a custom driver class
// 
// File         : basedriver.cpp
// Created      : 2009.05.01
// Last changed : 2011.11.09
// Copyright    : � 2006-2011 Wolf-Dieter Beelitz
// eMail        : wdb@wdbee.de
// Version      : 1.00.001
//--------------------------------------------------------------------------*
// V1.00.000:
// TBaseDriver is a base class for a custom driver
// Features:
// - 
//--------------------------------------------------------------------------*
// This program is free software; you can redistribute it and/or modify
// it under the terms of the GNU General Public License as published by
// the Free Software Foundation; either version 2 of the License, or
// (at your option) any later version.
//--------------------------------------------------------------------------*
#include "globaldefinitions.h"

#include "basedriver.h"
#include "basestrategy.h"
#include "basepit.h"
#include "linalg.h"

//==========================================================================*
// Statics
//--------------------------------------------------------------------------*
bool TBaseDriver::Qualifying = false;            // Is same for all drivers
float TBaseDriver::LengthMargin = 2.0;			 // Safty margin along track

char *WheelSect[4] =
{(char *) SECT_FRNTRGTWHEEL,
 (char *) SECT_FRNTLFTWHEEL,
 (char *) SECT_REARRGTWHEEL,
 (char *) SECT_REARLFTWHEEL};
//==========================================================================*

//==========================================================================*
// Buffers
//--------------------------------------------------------------------------*
#define BUFLEN 256
char TrackNameBuffer[BUFLEN];                    // Buffer for track name
char PathToWriteToBuffer[BUFLEN];                // for path we write to
char TrackLoadBuffer[BUFLEN];                    // Buffer for track load
bool start;
const tdble brakeSpeed = 35.0;
//==========================================================================*

//--------------------------------------------------------------------------*
// end of interface
//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++*
//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++*
// Implementation of the SD related interface functions
//--------------------------------------------------------------------------*

//==========================================================================*
// Called for every track change or new race.
// CarHandle is a file handle to the merged file of car category and cartype
// CarSettings points to a variable for a file handle with the car setup
//--------------------------------------------------------------------------*
void TBaseDriver::InitTrack
	(PTrack Track, PCarHandle CarHandle,
	PCarSettings *CarSettings, PSituation Situation)
{
	//GfOut("#>>> TBaseDriver::InitTrack()\n");

	oTrack = Track;								// save pointers
	oSituation = Situation;

	// Initialize race type array
	char* RaceType[] =
		{(char*)"practice", (char*)"qualify", (char*)"race"};

	// Initialize the base param path.
	char* BaseParamPath = (char*) RobotDir;

	// Get the name of the track
	strncpy(TrackNameBuffer,					// Copy name of track file
		strrchr(oTrack->filename, '/') + 1,		// from path and filename
		sizeof(TrackNameBuffer));				// regarding length of buffer
	*strrchr(TrackNameBuffer, '.') = '\0';		// Truncate at point
	oTrackName = TrackNameBuffer;				// Set pointer to buffer

	// Read/merge car parms
	// First all params out of the common files
	oMaxFuel = GfParmGetNum(CarHandle			// Tank capacity of car type
		, (char*) SECT_CAR, (char*) PRM_TANK
		, (char*) NULL, 100.0);
	GfOut("# Max fuel (SD)       = %.1f kg\n",oMaxFuel);

	PCarHandle Handle = NULL;					// initialize it!
	char Buf[1024];								// Multi purpose buffer

	// Default params for car type (e.g. .../ROBOT_DIR/sc-petrol/default.xml)
	snprintf(Buf,sizeof(Buf),"%s/%s/default.xml",
		BaseParamPath,oCarType);
	Handle = GfParmMergeFiles(Handle,Buf);

	// Override params for track (Pitting)
	snprintf(Buf,sizeof(Buf),"%s/tracks/%s.xml",
		BaseParamPath,oTrackName);
	Handle = GfParmMergeFiles(Handle,Buf);

	// Override params for car type with params of track
	snprintf(Buf,sizeof(Buf),"%s/%s/%s.xml",
		BaseParamPath,oCarType,oTrackName);
	Handle = GfParmMergeFiles(Handle,Buf);

	// Override params for car type on track with params of specific race type
	snprintf(Buf,sizeof(Buf),"%s/%s/%s-%s.xml",
		BaseParamPath,oCarType,oTrackName,RaceType[oSituation->_raceType]);
	Handle = GfParmMergeFiles(Handle,Buf);

	// Setup the car param handle to be returned
	*CarSettings = Handle;

	// Fixed offset to the middle of the track
	// To drive left set fixed offset to negative values (-0.5 = British) 
	// To drive right set fixed offset to positive values (+0.5 = Continental)
	oFixedOffset =
		GfParmGetNum(Handle,SectionPrivate,(char*)PRV_FIXEDOFFSET,0,oFixedOffset);
	GfOut("# Fixed offset        = %.2f\n",oFixedOffset);

	// To force allways pit stops, set it to 1
	oForcePitStop =
		GfParmGetNum(Handle,SectionPrivate,(char*)PRV_FORCEPITSTOP,0,0) > 0;
	if (oForcePitStop)
		GfOut("# Force pit stop      = On\n");

	oBrakeMinRadius =
		GfParmGetNum(Handle,SectionPrivate,(char*)PRV_MIN_BRAKE_RADIUS,0,oBrakeMinRadius);
	GfOut("# Min brake radius    = %.3f\n",oBrakeMinRadius);

	// To force check of braking power, set it to 1
	oUseMaxBrakePower =
		GfParmGetNum(Handle,SectionPrivate,(char*)PRV_USE_MAX_BRAKE,0,1) > 0;
	if (oUseMaxBrakePower)
		GfOut("# Use max brake power = On\n");

	oScaleBrake =
		GfParmGetNum(Handle,SectionPrivate,(char*)PRV_SCALE_BRAKE,0,oScaleBrake);
	GfOut("# Scale brake         = %.3f\n",oScaleBrake);

	oScaleBumps =
		GfParmGetNum(Handle,SectionPrivate,(char*)PRV_SCALE_BUMPS,0,oScaleBumps);
	GfOut("# Scale bumps         = %.3f\n",oScaleBumps);

	oScaleSpeed =
		GfParmGetNum(Handle,SectionPrivate,(char*)PRV_SCALE_SPEED,0,oScaleSpeed);
	GfOut("# Scale speed         = %.3f\n",oScaleSpeed);

	// To force the qualification mode in practice race set it to 1
	int TestQualifying =
		(int) GfParmGetNum(Handle,SectionPrivate,(char*)PRV_QUALIFICATION,0,0);
	if ((oSituation->_raceType == RM_TYPE_QUALIF)
		|| (TestQualifying > 0))
	{
		Qualifying = true;
		GfOut("# Qualifying          = True\n");
	}

	// Find side and sections of pits ...
	// ... Find side and sections of pits

	// Create track description
	oTrackDesc = new TBaseTrack();
	oTrackDesc->Initialize(oTrack);

	// Create pitting strategy
	oStrategy = new TBaseStrategy();
	oStrategy->oDriver = this;
	oStrategy->oMaxFuel = oMaxFuel;

	// Setup initial fuel for race ...
	float Fuel = GfParmGetNum(Handle,			// Estimate fuel consum
		SectionPrivate,
		(char*) PRV_FUELPER100KM,				// based on kg per 100 km
		(char*) NULL,
		TBaseStrategy::cMAX_FUEL_PER_METER * 100000);
	GfOut("# Fuel estimation     = %.1f kg\n",Fuel);

	// Setup reserve distance ...
	float Reserve = GfParmGetNum(Handle,		// Reserve in m
		SectionPrivate, (char*) PRV_RESERVE,
		(char*) NULL, 5000);
	GfOut("# Reserve             = %.0f m \n",Reserve);

	oStrategy->oReserve = Reserve;

	// Create a fueling and pitstop strategy
	oFuelAtRaceStart =
		oStrategy->SetFuelAtRaceStart			
		(oTrack,CarSettings,oSituation,Fuel);	
	GfOut("# FuelAtRaceStart     = %.1f kg\n",oFuelAtRaceStart);

	// ... Setup initial fuel for race

	if (Track->length < 2000)
		RtTeamManagerLaps(3);
	else if (Track->length < 3000)
		RtTeamManagerLaps(2);

	//GfOut("#<<< TBaseDriver::InitTrack()\n");
}
//==========================================================================*

//==========================================================================*
// Start a new race.
//--------------------------------------------------------------------------*
void TBaseDriver::NewRace(PtCarElt Car, PSituation Situation)
{
	//GfOut("#>>> TBaseDriver::NewRace()\n");
	oCar = Car;									// Save pointers to TORCS
	oCarHandle = CarCarHandle;					// data of car, car param
	oSituation = Situation;						// file and situation
	oMaxGear = CarGearNbr - 1;					// Save index of last gear

	OwnCarOppIndex();							// Find own opponent index

	InitCar();									// Initilize Car modells

	oStrategy->Init(this);						// Init strategy

	// Initialize radius of segments.
	oRadius = new float[oTrack->nseg];
	ComputeRadius();
/*
	int VZ = 1;
	if (strncmp(oTrackName,"spring",6)
		|| strncmp(oTrackName,"g-track-2",9)
		|| strncmp(oTrackName,"g-track-3",9)
		|| strncmp(oTrackName,"e-track-2",9)
		|| strncmp(oTrackName,"e-track-6",9)
		|| strncmp(oTrackName,"e-road",6)
		|| strncmp(oTrackName,"wheel-1",7))
		VZ = -1;
*/
	float FixedOffset = oFixedOffset * oTrack->width/2;
	FixedOffset = MAX((CarWidth-oTrack->width)/2,
		MIN((oTrack->width-CarWidth)/2,FixedOffset));

	oLane = new TBaseLane();
	oLane->Initialize(this, oTrackDesc, FixedOffset, 
		oScaleBrake, oScaleBumps, oScaleSpeed);
	oLane->SaveToFile("RL_MAIN.tk3");

	oTrackWidthLeft = oTrack->width/2 + FixedOffset;
	oTrackWidthRight = oTrack->width/2 - FixedOffset;

//	FixedOffset = -oTrack->width/2;
	FixedOffset = -oTrack->width/4;
	FixedOffset = MAX((CarWidth-oTrack->width)/2,
		MIN((oTrack->width-CarWidth)/2,FixedOffset));

	oLaneAvoidToLeft = new TBaseLane();
	oLaneAvoidToLeft->Initialize(this, oTrackDesc, FixedOffset,
		oScaleBrake, oScaleBumps, oScaleSpeed,
		FLT_MAX,0.0);
	oLaneAvoidToLeft->SaveToFile("RL_LEFT.tk3");

//	FixedOffset = oTrack->width/2;
	FixedOffset = oTrack->width/4;
	FixedOffset = MAX((CarWidth-oTrack->width)/2,
		MIN((oTrack->width-CarWidth)/2,FixedOffset));

	oLaneAvoidToRight = new TBaseLane();
	oLaneAvoidToRight->Initialize(this, oTrackDesc, FixedOffset,
		oScaleBrake, oScaleBumps, oScaleSpeed,
		0.0,FLT_MAX);
	oLaneAvoidToRight->SaveToFile("RL_RGHT.tk3");

//    double MaxPitDist = 0.0;
	if (oStrategy->oPit->HasPits())
	{
	    //GfOut("# ... adjust pit path %d ...\n",I);
        oPitSide = oStrategy->oPit->oPitLane.MakePath(oStrategy,oLane);
	    oStrategy->oDistToSwitch = oStrategy->oPit->oPitLane.PitDist() + 250;
	  //GfOut("\n\nDist to switch: %.02f\n\n", oStrategy->oDistToSwitch);
	}

	TeamInfo();                                  // Find team info

	SetPathAndFilenames();

	oLoadedLearned = oLane->LoadLearnedFromFile(oTrackLoad);
	if (oLoadedLearned)
	{
		oLane->EstimateTargetSpeed(oScaleBumps,oScaleSpeed);
		oLane->PropagateBraking(oScaleBrake,oScaleBumps);
		oLapsLearned = oLane->LapsLearned;
		GfOut("# LoadLearned (Laps: %d)\n",oLapsLearned);
	}

	//GfOut("#<<< TBaseDriver::NewRace()\n");
}
//==========================================================================*

//==========================================================================*
// Drive
//--------------------------------------------------------------------------*
bool TBaseDriver::Initialize()
{
	return true;
}
//==========================================================================*

//==========================================================================*
// Drive
//--------------------------------------------------------------------------*
void TBaseDriver::Drive()
{
	if(oCurrSpeed >=brakeSpeed)
		start = true;
	else if(oCurrSpeed <=1)
		start = false;

	if (!oInitialized)
		oInitialized = Initialize();

	oAccel = 1.0;                                // Assume full throttle
	oBrake = 0.0;                                // Assume no braking

	GearTronic();								 // Shift if needed
	Clutching();								 // Tread/Release clutch

	Avoiding();

	CheckTolerance();

	Steering();									 // Steering
	SpeedController();							 // Check speed

	if (oBrake == 0.0)
	{
		// Filters for throttle
		oAccel = FilterDrifting(oAccel);
		oAccel = FilterTCL(oAccel);
		oAccel = FilterTrack(oAccel);
	}
	else
	{
		// Filters for brake
		oBrake = FilterBrake(oBrake);
		oBrake = FilterABS(oBrake);
	}

	float Ratio = 0.0;
	if (oStrategy->StartPitEntry(Ratio))         // If entrering pit
	{
//		AvoidOffset(0.3f,-1.0f * oPitSide);	     // Bring us to the correct
	}
	else if (oStrategy->StopPitEntry(10))		 // back to track
	{
	}

	History();                                   // Backup current state
	SetCommand();                                // Tell SD what we want to do

    if (!Qualifying)                             // Don't use pit while
	{
		if (oForcePitStop)                       // If defined, try
			oStrategy->TestPitStop();            //   to stop in pit
		oStrategy->CheckPitState(0.6f);          //  qualifying
	}
}
//==========================================================================*

//==========================================================================*
// Pitstop
//--------------------------------------------------------------------------*
int TBaseDriver::PitCmd()
{
	oStanding = true;							// Standing, no unstucking!
	oUnstucking = false;						// Reset pending flag

	// Tell TORCS ...
	oCar->pitcmd.fuel = oStrategy->PitRefuel();	// ... how much to refuel
	oCar->pitcmd.repair = oStrategy->PitRepair(); // and to repair
	oCar->pitcmd.stopType = RM_PIT_REPAIR;		// Set repair flag


	if (oCar->pitcmd.repair > 0)				// If repairing, show
		GfOut("# %s repairing: %d damage\n",		// who and how much
		oDriverName,oCar->pitcmd.repair);

	if (oCar->pitcmd.fuel > 0.0)				// If refueling
		GfOut("# %s refueling: %.2f\n",			// show who and how much
		oDriverName,oCar->pitcmd.fuel);

	oFuelNeeded += oCar->pitcmd.fuel;
	oRepairNeeded += oCar->pitcmd.repair;

	return ROB_PIT_IM;							// Ready to be serviced
}
//==========================================================================*

//==========================================================================*
// End of the current race.
//--------------------------------------------------------------------------*
void TBaseDriver::EndRace()
{
	//GfOut("#>>> TBaseDriver::EndRace()\n");
	// This is called by TORCS-NG to make you release the pit!
	// This is never called by TORCS!
	//GfOut("#<<< TBaseDriver::EndRace()\n");
}
//==========================================================================*

//==========================================================================*
// Called before the module is unloaded.
//--------------------------------------------------------------------------*
void TBaseDriver::Shutdown()
{
	if (!oLoadedLearned)
	  oLane->SaveLearnedToFile(oTrackLoad);
	//GfOut("#>>> TBaseDriver::Shutdown()\n");
	RtTeamManagerDump();
	RtTeamManagerRelease();
	//GfOut("#<<< TBaseDriver::Shutdown()\n");
}
//==========================================================================*

//--------------------------------------------------------------------------*
// end of implementation of the SD related interface functions
//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++*
//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++*
// Implementation of the robot functions
//--------------------------------------------------------------------------*

//==========================================================================*
// Calculate the allowed range to avoid opponents
// The range is the distance from the racingline divided by the possible
// distance to the related track side.
// A range of 0.0 means stay on the racingline, while 1.0 means go to the
// side of the track.
//--------------------------------------------------------------------------*
void TBaseDriver::AvoidRange(double Scale, double TargetRange)
{
	// Calculate the remaining distance to the target range
	double Dist = TargetRange - oAvoidRange;
	double AbsDist = fabs(Dist);

	// Target (nearly) reached?
	if (AbsDist < 0.001)
	{   // Adjust avoiding range to target range and that's it
		oAvoidRange = TargetRange;
		oRangeVel = 0.0;
		return;
	}

	// Scale limits of change (accellerations/velocities)
//	double Accel = 0.03 * Scale/oTrack->width;  // Accelleration and max
	double Accel = 0.005 * Scale/oTrack->width;  // Accelleration and max
//	double VelMax = 2.00 * Scale/oTrack->width;  // velocity per sim. step
	double VelMax = 0.40 * Scale/oTrack->width;  // velocity per sim. step

	// Direction to accelerate to
	double RangeAccel = oAvoidRange < TargetRange ? Accel : -Accel;
//	if (oIndex == 1)
//	  GfOut("D: %0.6f RA: %0.6f RV: %0.6f XX: %0.6f\n",Dist,RangeAccel,oRangeVel,XX2Y(oRangeVel,Accel));

	// Check wether we have to decellerate again
    if (AbsDist <= XX2Y(oRangeVel,Accel))      
	{
		RangeAccel = XX2Y(oRangeVel,Dist);       // Needed accelleration
//		if (oIndex == 1)
//		  GfOut("D: %0.6f RA: %0.6f RV: %0.6f\n",Dist,RangeAccel,oRangeVel);
//		RangeAccel *= -1.0;
	}
	// Calculate the change velocity limited to +VelMax/-VelMax
	oRangeVel += RangeAccel;
	oRangeVel = MINMAX(VelMax,oRangeVel);
//	if (oIndex == 1)
//	  GfOut("RV: %0.5f\n",oRangeVel);

	// Calculate the new range
	double Range = oAvoidRange + oRangeVel;

	// Sanity check
	oAvoidRange = (float) MIN(1.0,MAX(0.0,Range));
//	if (oIndex == 1)
//	  GfOut("AVR: %0.6f RV: %0.6f A: %0.6f \n",oAvoidRange,oRangeVel,Accel);
}
//==========================================================================*

//==========================================================================*
// AvoidOffset calculates the offset to avoid opponents.
// The offset is the distance from the middle of the track to the side of
// the track divided by the half of the track width.
// An offset of 0.0 means go to the middle of the road, while -1.0 means 
// go to the left side of the track, and 1.0 to the right one.
//--------------------------------------------------------------------------*
void TBaseDriver::AvoidOffset(double Scale, double TargetOffset)
{
	if (TargetOffset)
		AvoidRange(1.01f*Scale,1.0);
	else
		AvoidRange(1.01f*Scale,0.0);

	double Dist = TargetOffset - oAvoidOffset;
	double AbsDist = fabs(Dist);

	// Target (nearly) reached?
	if (AbsDist < 0.001)
	{	// Adjust offset to the target offset and that's it
		oAvoidOffset = TargetOffset;
		oLatVel = 0.0;
		return;
	}

	// Scale limits of change of lateral movement (accellerations/velocities)
//	double Accel = 0.005 * Scale/oTrack->width; // Accelleration and
	double Accel = 0.002 * Scale/oTrack->width; // Accelleration and
//	double VelMax = 1.5 * Scale/oTrack->width;  // velocity per sim. step
	double VelMax = 0.4 * Scale/oTrack->width;  // velocity per sim. step

	// Direction to accelerate to
	double LatAccel = oAvoidOffset < TargetOffset ? Accel : -Accel;

	// Check wether decellerate
    if (AbsDist <= XX2Y(oLatVel,Accel))      
		LatAccel = XX2Y(oLatVel,Dist);           // Needed accelleration

	// Calculate the change velocity limited to +VelMax/-VelMax
	oLatVel += LatAccel;
	oLatVel = MINMAX(VelMax,oLatVel);

	// Calculate the new offset
	TargetOffset = oAvoidOffset + oLatVel;

	// Sanity check
	oAvoidOffset = (float) MINMAX(1,TargetOffset);
	//GfOut("oTO: %0.3f LV: %0.3f A: %0.5f \n",oAvoidOffset,oLatVel,Accel);
}
//==========================================================================*

//==========================================================================*
// Get target point offset
//--------------------------------------------------------------------------*
TVec2d TBaseDriver::GetTargetPoint(double LookAhead, double Offset)
{
	// Get index of the section of the target point
	int Index = (int) (CarDistFromStart			 // Current distance f. start
		+ LookAhead								 // Distance to look ahead
		+ oStartLookAhead);						 // Additional d. while start

	TVec2d Target;								 // Target point

	// The target point depends on the driving mode
	if (oMode == GET_PIT_RL)					 // Driving along pitlane?
	{
		return Target =							 // Use target from pit lane
			oStrategy->oPit->oPitLane.Target(Index);
	}
	else if (oMode == GET_ENT_RL)				 // Driving into pitlane?
	{
		Target =								 // Target from pit lane
			oStrategy->oPit->oPitLane.Target(Index);
		double DistToSpeedLimit =				 // Distance to pit lane
			oStrategy->oPit->oPitLane.DistToPitSpeedLimit(Index);
		Offset = SIGN(Offset) 					 // Offset interpolation
			* MINMAX(fabs(Offset),(DistToSpeedLimit - 100)/200.0 * fabs(Offset)); 
	}
	else if (oMode == GET_EXT_RL)				 // Driving out of pitlane?
	{
		Target =								 // Target from pit lane
			oStrategy->oPit->oPitLane.Target(Index);
		double DistFromSpeedLimit =				 // Distance from pit lane
			oStrategy->oPit->oPitLane.DistFromPitSpeedLimit(Index);
		Offset = SIGN(Offset) 					 // Offset interpolation
			* MINMAX(fabs(Offset),DistFromSpeedLimit/150.0 * fabs(Offset)); 
	}
	else
		Target = oLane->Target(Index);

	if (Offset == 0.0)						     // If near to pit
		return Target;							 //   that's it

	double T = oAvoidRange;						 // Scaling factor

	// Scaling the allowed target point for avoiding to left
	TVec2d AvoidTargetLeft = oLaneAvoidToLeft->Target(Index);
	AvoidTargetLeft.x = Target.x * (1-T) + AvoidTargetLeft.x * T;
	AvoidTargetLeft.y = Target.y * (1-T) + AvoidTargetLeft.y * T;

	// Scaling the allowed target point for avoiding to right
	TVec2d AvoidTargetRight = oLaneAvoidToRight->Target(Index);
	AvoidTargetRight.x = Target.x * (1-T) + AvoidTargetRight.x * T;
	AvoidTargetRight.y = Target.y * (1-T) + AvoidTargetRight.y * T;

	// Scaling target point currently used for avoiding
    T = (1.0 - Offset) * 0.5;
	Target.x = AvoidTargetRight.x * (1-T) + AvoidTargetLeft.x * T;
	Target.y = AvoidTargetRight.y * (1-T) + AvoidTargetLeft.y * T;

	return Target;
}
//==========================================================================*

//==========================================================================*
// Get target point offset
//--------------------------------------------------------------------------*
TVec2d TBaseDriver::GetTargetPoint(int Index, double Offset)
{
	TVec2d Target;								 // Target point

	// The target point depends on the driving mode
	if (oMode == GET_PIT_RL)					 // Driving along pitlane?
	{
		return Target =							 // Use target from pit lane
			oStrategy->oPit->oPitLane.Target(Index);
	}
	else if (oMode == GET_ENT_RL)				 // Driving into pitlane?
	{
		Target =								 // Target from pit lane
			oStrategy->oPit->oPitLane.Target(Index);
		double DistToSpeedLimit =				 // Distance to pit lane
			oStrategy->oPit->oPitLane.DistToPitSpeedLimit(Index);
		Offset = SIGN(Offset) 					 // Offset interpolation
			* MINMAX(fabs(Offset),(DistToSpeedLimit - 100)/200.0 * fabs(Offset)); 
	}
	else if (oMode == GET_EXT_RL)				 // Driving out of pitlane?
	{
		Target =								 // Target from pit lane
			oStrategy->oPit->oPitLane.Target(Index);
		double DistFromSpeedLimit =				 // Distance from pit lane
			oStrategy->oPit->oPitLane.DistFromPitSpeedLimit(Index);
		Offset = SIGN(Offset) 					 // Offset interpolation
			* MINMAX(fabs(Offset),DistFromSpeedLimit/150.0 * fabs(Offset)); 
	}
	else
		Target = oLane->Target(Index);

	if (Offset == 0.0)						     // If near to pit
		return Target;							 //   that's it

	double T = oAvoidRange;						 // Scaling factor

	// Scaling the allowed target point for avoiding to left
	TVec2d AvoidTargetLeft = oLaneAvoidToLeft->Target(Index);
	AvoidTargetLeft.x = Target.x * (1-T) + AvoidTargetLeft.x * T;
	AvoidTargetLeft.y = Target.y * (1-T) + AvoidTargetLeft.y * T;

	// Scaling the allowed target point for avoiding to right
	TVec2d AvoidTargetRight = oLaneAvoidToRight->Target(Index);
	AvoidTargetRight.x = Target.x * (1-T) + AvoidTargetRight.x * T;
	AvoidTargetRight.y = Target.y * (1-T) + AvoidTargetRight.y * T;

	// Scaling target point currently used for avoiding
    T = (1.0 - Offset) * 0.5;
	Target.x = AvoidTargetRight.x * (1-T) + AvoidTargetLeft.x * T;
	Target.y = AvoidTargetRight.y * (1-T) + AvoidTargetLeft.y * T;

	return Target;
}
//==========================================================================*

//==========================================================================*
// Get target speed
//--------------------------------------------------------------------------*
double TBaseDriver::GetTargetSpeed(double Offset)
{
	double Speed;

	// The target speed depends on the driving mode
	if (oMode == GET_PIT_RL)					 // Driving along pitlane?
	{
		return Speed =							 // Use speed from pit lane
			oStrategy->oPit->oPitLane.PPPrv[oSecIndex].Speed;
	}
	else if (oMode == GET_ENT_RL)				 // Driving into pitlane?
	{
		Speed =									 // Speed from pit lane
			oStrategy->oPit->oPitLane.PPPrv[oSecIndex].Speed;
		double DistToSpeedLimit =                // Dist to pit lane
			oStrategy->oPit->oPitLane.DistToPitSpeedLimit(oSecIndex);
		Offset = SIGN(Offset) 					 // Offset interpolation
			* MINMAX(fabs(Offset),(DistToSpeedLimit - 100)/200.0 * fabs(Offset)); 
	}
	else if (oMode == GET_EXT_RL)				 // Driving out of pitlane?
	{
		Speed =									 // Speed from pit lane
			oStrategy->oPit->oPitLane.PPPrv[oSecIndex].Speed;
		double DistFromSpeedLimit =				 // Dist from pit lane
			oStrategy->oPit->oPitLane.DistFromPitSpeedLimit(oSecIndex);
		Offset = SIGN(Offset) 					 // Offset interpolation
			* MINMAX(fabs(Offset),DistFromSpeedLimit/150.0 * fabs(Offset)); 
	}
	else
		Speed = oLane->PPPrv[oSecIndex].Speed;

	if (Offset == 0.0)                           // If near to pit or
		return Speed;							 // racingline

	double T = oAvoidRange;						 // Scaling factor

	// Scaling the allowed speed for avoiding to left
	double AvoidSpeedLeft = 0.9f * oLaneAvoidToLeft->PPPrv[oSecIndex].Speed;
	AvoidSpeedLeft = (AvoidSpeedLeft * T + Speed * (1 - T));

	// Scaling the allowed speed for avoiding to right
	double AvoidSpeedRight = 0.9f * oLaneAvoidToLeft->PPPrv[oSecIndex].Speed;
	AvoidSpeedRight = (AvoidSpeedRight * T + Speed * (1 - T));

    T = (1.0 - Offset) * 0.5;

	// Scaling target speed currently used for avoiding
	double NewSpeed = AvoidSpeedLeft * T + AvoidSpeedRight * (1 - T);
//	GfOut("T:%0.2f S:%0.2f A:%0.2f N:%0.2f\n",T,Speed*3.6,AvoidSpeed*3.6,NewSpeed*3.6);
	
	return NewSpeed;
}
//==========================================================================*














//==========================================================================*
// Default constructor
//--------------------------------------------------------------------------*
TBaseDriver::TBaseDriver() : TAbstractDriver(),
	oTrackDesc(NULL),
	oLane(NULL),
	oLaneAvoidToLeft(NULL),
	oLaneAvoidToRight(NULL),
	oRadius(NULL),
	oStrategy(NULL)
{
	//GfOut("#>>> TBaseDriver::TBaseDriver()\n");
	oAvoidRange = 1.0;
	oAvoidOffset = 0.0;
	oBestLapTime = FLT_MAX;
	oLapsLearned = 0;

	oInitialized = false;

	// Setup basic parameters:
	oAbsDelta = 1.1f;
	oAbsScale = 0.5f;

    oClutchMax = 0.5f;
	oClutchDelta = 0.05f;
	oClutchRange = 0.82f;
	oClutchRelease = 0.345f;

	oTclRange = 10.0f;
	oTclSlip = 1.6f;

	oStartRPM = 500;
	oStartLookAhead = 25.0;


	oLastAccel = 0.0;
	oLastBrake = 0.0;
	oLastClutch = 1.0;
	oLastGear = 0;
	oLastSteer = 0.0;
	oLastSpeed = 0.0;
	oLastDist = 0.0;

    oLastLap = 1;
	oLastSecIndex = 0;
	oLastTargetSpeed = 0;


	oMaxGear = 0;

	oFixedOffset = 0.0;
	oRangeVel = 0.0;
	oLatVel = 0.0;

	oScaleBrake = HALFFRICTION;
	oScaleBumps = 1.00f;
	oScaleSpeed = HALFFRICTION;

	oScaleRefuel = 1.00f;

	oMass = 1000.0;

	oBrakeMinRadius = 50;
	oDecMax = -35.0;

	// Initialize state counters:
	oStuckCounter = 0;

	// Initialize state flags:
	oLetPass = false;
	//oLetPass = true;
	oStanding = false;
    oUnstucking = false;

	//Initialize statistics:
	oFuelNeeded = 0.0;							// Amount of fuel filled in
	oRepairNeeded = 0.0;						// Amount of repair needed

	// Initial sections
	oSecIndex = 0;

	// Motion survey:
	oMotionDetection = new T2DMotionDetection(1,128);	

	// Meteorology
	oWeatherCode = 0;

	// Learning
	oLoadedLearned = false;

	//GfOut("#<<< TBaseDriver::TBaseDriver()\n");
}
//==========================================================================*

//==========================================================================*
// Destructor
//--------------------------------------------------------------------------*
TBaseDriver::~TBaseDriver()
{
	//GfOut("#>>> TBaseDriver::~TBaseDriver()\n");

	if (oLane != NULL)
		delete oLane;
	if (oLaneAvoidToLeft != NULL)
		delete oLaneAvoidToLeft;
	if (oLaneAvoidToRight != NULL)
		delete oLaneAvoidToRight;

	if (oTrackDesc != NULL)
		delete oTrackDesc;

	if (oStrategy != NULL)
		delete oStrategy;

	if (oRadius != NULL)
		delete [] oRadius;

	//GfOut("# <<< TBaseDriver::~TBaseDriver()\n");
}
//==========================================================================*

//==========================================================================*
// Set path and filenames for racinglines
//--------------------------------------------------------------------------*
void TBaseDriver::SetPathAndFilenames()
{
  const char* PathToWriteTo = GetLocalDir();

  snprintf(PathToWriteToBuffer,sizeof(TrackLoadBuffer),
	  "%sdrivers/%s_common/learned/%s/%s",
    PathToWriteTo,RobotName,oDriverName,oCarType);
  oPathToWriteTo = PathToWriteToBuffer;
  if (GfDirCreate(oPathToWriteTo) == GF_DIR_CREATION_FAILED)
  {
	  //GfOut("#Unable to create path for racinglines: >%s<",oPathToWriteTo);
  };

  snprintf(TrackLoadBuffer,sizeof(TrackLoadBuffer),"%s/%d-%s.lrn",
    oPathToWriteTo,oWeatherCode,oTrackName);
  oTrackLoad = TrackLoadBuffer;                  // Set pointer to buffer
}
//==========================================================================*

//==========================================================================*
// Backup current state
//--------------------------------------------------------------------------*
void TBaseDriver::History()
{
	oLastAccel = oAccel;
	oLastBrake = oBrake;
	oLastClutch = oClutch;
	oLastGear = oGear;
	oLastSteer = oSteer;

	oLastSecIndex = oSecIndex;
	oLastTargetSpeed = oTargetSpeed;

	oLastSpeed = oCurrSpeed;
	oLastDist = CarDistanceRaced;

	oLastDriftAngle = oDriftAngle;
}
//==========================================================================*

//==========================================================================*
// Set command
//--------------------------------------------------------------------------*
void TBaseDriver::SetCommand()
{	
	if(start == true){
		oCar->ctrl.accelCmd = 0;
		oCar->ctrl.brakeCmd = 1.0;
		oCar->ctrl.clutchCmd = oClutch;
		oCar->ctrl.gear = oGear;
		oCar->ctrl.steer = oSteer;
		oCar->ctrl.lightCmd = RM_LIGHT_HEAD1 | RM_LIGHT_HEAD2;                     // All lights on
		for(int i = 0; i < 4; i++)
			oCar->priv.wheel[i].spinVel = 1;
	}

	else{
	oCar->ctrl.accelCmd = oAccel;
	oCar->ctrl.brakeCmd = oBrake;
	oCar->ctrl.clutchCmd = oClutch;
	oCar->ctrl.gear = oGear;
	oCar->ctrl.steer = oSteer;
    oCar->ctrl.lightCmd =                      // All lights on
	    RM_LIGHT_HEAD1 | RM_LIGHT_HEAD2;
}
	oCar->ctrl.telemetryMode = 3;

//    oCar->ctrl.lightCmd =                      // All front lights on
//	    RM_LIGHT_HEAD1 | RM_LIGHT_HEAD2;

//    GfOut("# A:%.2f B:%.2f C:%.2f G:%d S:%.2f TS:%.0f CS:%.0f DS:%.1f\n",oAccel,oBrake,oClutch,oGear,oSteer,oTargetSpeed*3.6f,oCurrSpeed*3.6f,(oTargetSpeed-oCurrSpeed)*3.6f);
//    GfOut("# A:%.2f B:%.2f TS:%.0f CS:%.0f DS:%.1f\n",oAccel,oBrake,oTargetSpeed*3.6f,oCurrSpeed*3.6f,(oTargetSpeed-oCurrSpeed)*3.6f);
}
//==========================================================================*

//==========================================================================*
// Get nearest opponent back faster
//--------------------------------------------------------------------------*
PBaseOpponent TBaseDriver::NearestBackFaster()
{
	double MinDistance = -FLT_MAX;
	PBaseOpponent Opponent = NULL;

	for (int I = 0; I < oNbrCars; I++)			 // Loop all cars
	{
		if (I != oOwnOppIdx)
		{
			if ((oOpponents[I].oState & OPP_REAR)
				&& (oOpponents[I].oState & OPP_FASTER))
			{
				if (MinDistance < oOpponents[I].oDistance)
				{
					MinDistance = oOpponents[I].oDistance;
					Opponent = &oOpponents[I];
				}
			}
		}
	}

	return Opponent;
};
//==========================================================================*

//==========================================================================*
// Get opponent we have to brake for
//--------------------------------------------------------------------------*
PBaseOpponent TBaseDriver::PossibleCollision()
{
	double MaxDeltaSpeed = 0.0;
	PBaseOpponent Opponent = NULL;

	for (int I = 0; I < oNbrCars; I++)			 // Loop all cars
	{
		if (I != oOwnOppIdx)
		{
			if (oOpponents[I].oState & OPP_COLL) 
			{
				if (MaxDeltaSpeed < oOpponents[I].oDeltaSpeed)
				{
					MaxDeltaSpeed = oOpponents[I].oDeltaSpeed;
					Opponent = &oOpponents[I];
				}
			}
		}
	}

	return Opponent;
};
//==========================================================================*

//==========================================================================*
// Get Nearest opponent in front being slower
//--------------------------------------------------------------------------*
PBaseOpponent TBaseDriver::NearestInFrontSlower()
{
	double MinDistance = FLT_MAX;
	PBaseOpponent Opponent = NULL;

	for (int I = 0; I < oNbrCars; I++)			 // Loop all cars
	{
		if (I != oOwnOppIdx)
		{
			if ((oOpponents[I].oState & OPP_FRONT)
				&& (oOpponents[I].oState & OPP_SLOWER))
			{
				if (MinDistance > oOpponents[I].oDistance)
				{
					MinDistance = oOpponents[I].oDistance;
					Opponent = &oOpponents[I];
				}
			}
		}
	}

	return Opponent;
};
//==========================================================================*

//==========================================================================*
// Get nearest opponent in front with small side distance
//--------------------------------------------------------------------------*
PBaseOpponent TBaseDriver::NearestInMyWaySlower()
{
	double MinDistance = FLT_MAX;
	PBaseOpponent Opponent = NULL;

	for (int I = 0; I < oNbrCars; I++)			 // Loop all cars
	{
		if (I != oOwnOppIdx)
		{
			if ((oOpponents[I].oState & OPP_FRONT)
				&& (oOpponents[I].oState & OPP_SLOWER))
			{
				if ((fabs(oOpponents[I].oSideDist) < 3.5)
				  && (MinDistance > oOpponents[I].oDistance))
				{
					MinDistance = oOpponents[I].oDistance;
					Opponent = &oOpponents[I];
				}
			}
		}
	}

	return Opponent;
};
//==========================================================================*

//==========================================================================*
// Get Nearest opponent at side
//--------------------------------------------------------------------------*
PBaseOpponent TBaseDriver::NearestAtSide()
{
	double MinDistance = FLT_MAX;
	PBaseOpponent Opponent = NULL;

	for (int I = 0; I < oNbrCars; I++)			 // Loop all cars
	{
		if (I != oOwnOppIdx)
		{
			if (oOpponents[I].oState & OPP_SIDE)
			{
				if (MinDistance > fabs(oOpponents[I].oSideDist))
				{
					MinDistance = fabs(oOpponents[I].oSideDist);
					Opponent = &oOpponents[I];
				}
			}
		}
	}

	return Opponent;
};
//==========================================================================*


//==========================================================================*
// Adjust target speed
//--------------------------------------------------------------------------*
double TBaseDriver::AdjustTargetSpeed(
	double MySpeed, double OppSpeed, double Distance)
{
	// Depending on the remaining distance we should adjust the 
	// target speed.
	double DeltaSpeed = MySpeed - OppSpeed;
	if (DeltaSpeed > -10.0)
	{
		// We are faster
		double EstimatedBrakeDistance = XX2Y(DeltaSpeed,1.5);
		//GfOut("DV: %0.1f BD: %0.1f OD: %0.1f MS: %0.1f OS: %0.1f\n",DeltaSpeed*3.6,EstimatedBrakeDistance,Distance,MySpeed*3.6,OppSpeed*3.6);
		if (EstimatedBrakeDistance > Distance - 10.0)
		{
			//GfOut("AS: %0.1f\n",(OppSpeed - 10.0)*3.6);
			return OppSpeed - 10.0;
		}
		else
		{
			return MySpeed;
		}
	}
	else
	{
		//GfOut("MS: %0.1f\n",MySpeed*3.6);
		return MySpeed;
	}
};
//==========================================================================*


//==========================================================================*
// Avoiding
//--------------------------------------------------------------------------*
void TBaseDriver::Avoiding()
{
	// In case we have to reduce our target speed caused by opponents we need
	// to know how fast we could drive beeing alone.
	oTargetSpeed = GetTargetSpeed(oAvoidOffset);
	double AdjustedSpeed = oTargetSpeed;
	//GfOut("#*Avoid offset: %0.2f TS:%0.2f AS:%0.2f D:%0.2f\n",
	//	oAvoidOffset,oTargetSpeed*3.6,AdjustedSpeed*3.6,(oTargetSpeed-AdjustedSpeed)*3.6);

	// First is to have a look at all opponents and classify them.
	// The classification is done using the OPP_Criteria defined in
	// globaldefinitions.h:
	//
	// The first group is the ranking (Position along the track):
	// OPP_FRONT: Opponent is in front of us
	// OPP_BACK:  Opponent is behind us
	// OPP_SIDE:  Opponent is at side of us
	// If OPP_SIDE is set, OPP_FRONT or OPP_BACK is set as well.
	//
	// The next group is the speed:
	//
	// OPP_FASTER: Oponent is faster
	// OPP_SLOWER: Oponent is slower
	// (Only opponents with OPP_BACK & OPP_SLOWER are good opponents!)
    //
	// The last group is the additional information:
	//
	// OPP_IGNORE: Opponent is out of the race
	// OPP_INPIT: Opponent stands in the pit
	// OPP_COLL: Opponent is near and we could collide with 
	for (int I = 0; I < oNbrCars; I++)			 // Loop all cars
		oOpponents[I].Classify(oCar);			 // Classify opponents

	// After classification we need to look at the most critical opponents
	SubsumeSituation();

	PBaseOpponent Opponent = NULL;               // Initialize it with NULL

	// Here we have to prioritize all the opponents.
	// Our options are to avoid to the side or to brake, but we don't like 
	// braking. So the option we would prefer is to avoid opponents to
	// overtake (and we have to avoid in case we are lapped).
	// Therefore we start with opponents being at side, because we are 
	// limited by them.
	// Get opponents at side 
	Opponent = NearestAtSide();
	if (Opponent)
	{
		// If there is an opponent at side, we get the car to find out where
		// it is. We do all our calculations based on the distance from the 
		// middle of the track, because we know it is near.
		//GfOut("NATS\n");
		PCarElt OpponentCar = Opponent->oCar;
		double OpponentOffset = OpponentCar->pub.trkPos.toMiddle;

		// To decide the direction where to avoid to we compare the distance
		// to the middle of the opponent with our own distance.
		// Keep in mind, that a car driving at the left outer side of the
		// track has the biggest offset (+(TrackWidth-CarWidth)/2) while a 
		// car driving at the right outer side has the smallest distance
		// (-(TrackWidth-CarWidth)/2).
		// To control our avoiding we use the AvoidOffset. It is the 
		// offset we have to steer to based on a scaling factor and the 
		// target offset. The scaling defines the acceleration allowed for
		// changing the offset. A target offset of 1 means go to the 
		// left outer side, -1 means go to the right outer side, and 0 is
		// go back to the middle.
		// We avoid being near 
//		GfOut("SideDist: %0.1f\n",fabs(Opponent->oSideDist));
		if (fabs(Opponent->oSideDist) < 6.0)
		{
//			GfOut("OpOff: %0.1f MyOff: %0.1f\n",OpponentOffset,CarToMiddle);
			if (OpponentOffset > CarToMiddle)
				AvoidOffset(1.0f,1.0f);			 // Avoid fast to the left
			else
				AvoidOffset(1.0f,-1.0f);		 // Avoid fast to the right
		}

		// If the opponet is near we have to look at the speed as well
		if ((Opponent->oState & OPP_COLL)
		  || (fabs(Opponent->oSideDist) < 2.5))
		{
//			GfOut("Coll 1\n");
			if ((Opponent->oState & OPP_FRONT)
				&& (Opponent->oState & OPP_SLOWER))
			{
				// Opponent is in front and slower, so we have to reduce
				// our target speed.
				AdjustedSpeed = (float) MAX(0.0,MIN(oTargetSpeed,
					Opponent->oSpeed - 10.0));
			}

			if ((Opponent->oState & OPP_FRONT)
				&& (Opponent->oState & OPP_FASTER))
			{
				// Opponent is in front and faster, so we can adjust
				// our target speed (which is not our current speed!).
				AdjustedSpeed = (float) MAX(0.0,MIN(oTargetSpeed,
					Opponent->oSpeed - 0.0));
			}
		}

		// In addition we should have a look to other opponents beeing
		// in front of us haveing a bigger distance from us but
		// being in the part of the track we have to use.
		// Get opponents in front with a small side distance.
		PBaseOpponent OpponentFront = NearestInMyWaySlower();
		if (OpponentFront)
		{
			//GfOut("NIWS\n");
			//GfOut("OppDist: %0.1f\n",OpponentFront->oDistance);
			//if (Opponent->oState & OPP_COLL)
			{
				//GfOut("Coll 2\n");
				// Depending on the remaining distance we should adjust the 
				// target speed.
				AdjustedSpeed = (float) AdjustTargetSpeed(
					oCurrSpeed, 
					OpponentFront->oSpeed, 
					OpponentFront->oDistance);
				AdjustedSpeed = MAX(0.0,MIN(AdjustedSpeed,oTargetSpeed));
			}
		}
	}

	// If there was no opponent at side we have to look at the opponent
	// being next of us in front
	if (!Opponent)
	{
		// Get opponents in front
		Opponent = NearestInFrontSlower();
		if (Opponent)
		{
			//GfOut("NIFS\n");
			PCarElt OpponentCar = Opponent->oCar;
			double OpponentOffset = OpponentCar->pub.trkPos.toMiddle;

			// If the opponent is near we have to adjust our speed
			if (Opponent->oState & OPP_COLL)
			{
				//GfOut("Coll: OppDist: %0.1f\n",Opponent->oDistance);
				AdjustedSpeed = (float) AdjustTargetSpeed(
					oCurrSpeed, 
					Opponent->oSpeed, 
					Opponent->oDistance);
				AdjustedSpeed = MAX(0.0,MIN(AdjustedSpeed,oTargetSpeed));
			}
			//else
			//	GfOut("OppDist: %0.1f\n",Opponent->oDistance);

			// We avoid being near to overtake
			if ((Opponent->oDistance < 50.0)			
			  && (Opponent->oState & OPP_CATCHING))
			{
				//GfOut("Overtake!\n");
				//GfOut("Overtake: %0.1f / %0.1f\n",OpponentOffset,CarToMiddle);
				// To decide the side to avoid to we have a look to the 
				// remaining distance at the outer side.
				// If the way becomes too narrow we swap the sides
//				int VZ = 1;
//				if (fabs(2*OpponentOffset/oTrack->width) > 0.75)
//					VZ = -1;

				//if (VZ * OpponentOffset > VZ * CarToMiddle)
				if (fabs(OpponentOffset) < 0.2)
					AvoidOffset(1.0f,SIGN(oAvoidOffset) * 1.0f); // Avoid to current side
				if (OpponentOffset > 0.0)
					AvoidOffset(1.0f,1.0f);		 // Avoid to left
				else
 					AvoidOffset(1.0f,-1.0f);	 // Avoid to right

				if ((Opponent->oDistance < 10.0) && (fabs(Opponent->oSideDist) < 2.0))			
				{
					//GfOut("ToLate!\n");
					double Factor = MAX(0.0,MIN(1.0,Opponent->oDistance/25.0));
					AdjustedSpeed = MAX(0.0,(1.0 - Factor) * 0.8 * Opponent->oSpeed + Factor*oTargetSpeed);
				}
			}
			else
			{
				//GfOut("Keep!\n");
				double Factor = MAX(0.0,MIN(1.0,Opponent->oDistance/25.0));
				AdjustedSpeed = MAX(0.0,(1.0 - Factor) * 0.95 * Opponent->oSpeed + Factor*oTargetSpeed);
			}
		}
	}

	// If the race has run for a distance of 10 m
	if (CarDistanceRaced > 10.0)
	{
		// Get opponent we could collide with
		Opponent = PossibleCollision();
		if (Opponent)
		{
			//GfOut("PC\n");
			AdjustedSpeed = (float) AdjustTargetSpeed(
				oCurrSpeed, 
				Opponent->oSpeed, 
				Opponent->oDistance);
			AdjustedSpeed = MAX(0.0,MIN(AdjustedSpeed,oTargetSpeed));
		}

	}

	// If there was no opponent in front we have to avoid, we have to 
	// look back for lappers to let them pass, at least if the race
	// has run for a distance of 500 m (to avoid errors while starting).
	if ((!Opponent) && (CarDistanceRaced > 500.0))
	{
		// Get opponents back faster
		Opponent = NearestBackFaster();
		if (Opponent)
		{
			PCarElt OpponentCar = Opponent->oCar;
			double OpponentOffset = OpponentCar->pub.trkPos.toMiddle;
			// We avoid if the opponents distance gets smaller than 10 m.
			if (Opponent->oDistance > -10.0)
			{
				if (OpponentOffset > CarToMiddle)
					AvoidOffset(0.5f,0.5f);	 // Avoid carefully to left
				else
					AvoidOffset(0.5f,-0.5f);	 // Avoid carefully to right
			}
		}
	}

	// If no opponent was to handle here, we go back to the racingline
	if ((!Opponent) && ((oCollFlags & OPP_SIDE) == 0))
		AvoidOffset(0.125,0.0);

	//GfOut("# Avoid offset: %0.2f TS:%0.2f AS:%0.2f D:%0.2f\n",
	//	oOffset,oTargetSpeed*3.6,AdjustedSpeed*3.6,(oTargetSpeed-AdjustedSpeed)*3.6);

	oTargetSpeed = (float) AdjustedSpeed;
};
//==========================================================================*

//==========================================================================*
// Find own car in opponents list
//--------------------------------------------------------------------------*
void TBaseDriver::OwnCarOppIndex()
{
	oOwnOppIdx = -1;							// Mark as undefined

	oNbrCars = oSituation->_ncars;				// Save Nbr of cars in race
	for (int I = 0; I < oNbrCars; I++)			// Loop all cars
	{
		oOpponents[I].Initialise				// Initialize opponent's
			(oTrack,oSituation, I);				//   situation
		if (oSituation->cars[I] == oCar)		// Check if it is own car
			oOwnOppIdx = I;						//   save index
	}
}
//==========================================================================*

//==========================================================================*
// Init drive train
//--------------------------------------------------------------------------*
void TBaseDriver::InitDriveTrain()
{
	// Assume rear wheel drive
	oDriveTrainType = cDT_RWD;					 

	// But check it!
	char* TrainType =							 
		strdup(GfParmGetStr(oCarHandle, 
		(char*) SECT_DRIVETRAIN, 
		(char*) PRM_TYPE, 
		(char*) VAL_TRANS_RWD));

	// Change mode if not rear wheel driven
	if (strcmp(TrainType, VAL_TRANS_FWD) == 0)
		oDriveTrainType = cDT_FWD;			
	else if (strcmp(TrainType, VAL_TRANS_4WD) == 0)
		oDriveTrainType = cDT_4WD;				

	free(TrainType);							 // Cleanup (strdup)
}
//==========================================================================*

//==========================================================================*
// Get Team info
//--------------------------------------------------------------------------*
void TBaseDriver::TeamInfo()
{
  //RtTeamManagerShowInfo();
  oTeamIndex = RtTeamManagerIndex(oCar,oTrack,oSituation);
  RtTeamManagerDump();
}
//==========================================================================*

//==========================================================================*
// Initialize Car modells
//--------------------------------------------------------------------------*
void TBaseDriver::InitCar()
{
	oBrakeDiffInitial = 0.5f;					// Tolerance in m/s
//	oBrakeScale = 0.72f;						// Basic scale for braking
//	oBrakeScale = 0.5f;  						// Basic scale for braking
	oBrakeScale = 0.25f;  						// Basic scale for braking
//	oBrakeForceMax = 0.5f;						// Limit brake force
//	oBrakeForceMax = 0.75f;						// Limit brake force
	oBrakeForceMax = 0.95f;						// Limit brake force
	oBrakeForce = 0.0f;				   		    // Still undefined
	//oBrakeCoeff = 0.0f;
	oBrakeMaxTqFront = 0.0f;
	oBrakeMaxTqRear = 0.0f;

	oStartRPM = EngineRpmMaxTq;					// Target RPM for start

	oEmptyMass =								// Get car mass
		GfParmGetNum(oCarHandle,
		(char*) SECT_CAR, (char*) PRM_MASS, 
		(char*) NULL, 1000.0);

	oMaxFuel = GfParmGetNum(oCarHandle,			// Tank capacity of car type
		(char*) SECT_CAR, (char*) PRM_TANK,
		(char*) NULL, 100.0);

	oMass = oEmptyMass + oMaxFuel;

	InitBrake();								 // Brake
	InitCa();									 // Ca
	InitCw();									 // Cw
	InitDriveTrain();							 // Drive train
	InitTireMu();								 // Tyre friction
	InitWheelRadius();							 // Wheel radius

	oShiftMargin = 0.9f;                         // reduce shift frequency
	for (int I = 0; I < MAX_GEARS; I++)          // Setup target rpm for
		oShift[I] = CarRpmLimit * 0.974f;        // gear shifting

}
//==========================================================================*

//==========================================================================*
// Get last point 
//--------------------------------------------------------------------------*
TBaseLane::TPathPointPrivate* TBaseDriver::GetLastPoint()
{
	return &(oLane->PPPrv[oLastSecIndex]);
}
//==========================================================================*

//==========================================================================*
// Get current point 
//--------------------------------------------------------------------------*
TBaseLane::TPathPointPrivate* TBaseDriver::GetCurrPoint()
{
	return &(oLane->PPPrv[oSecIndex]);
}
//==========================================================================*

//==========================================================================*
// Update target speed
//--------------------------------------------------------------------------*
void TBaseDriver::UpdateTargetSpeed()
{
	if (!oLoadedLearned)
	{
		oLane->LapsLearned = ++oLapsLearned;

		if ((oCar->race.deltaBestLapTime < 0) || (CarLaps < 5))
		{
			oBestLapTime = oCar->race.bestLapTime;
			oLane->StoreLearned();
			//oLaneAvoidToLeft->StoreLearned();
			//oLaneAvoidToRight->StoreLearned();
			GfOut("# StoreLearned (Laps: %d)\n",oLapsLearned);
		}
		else
		{
			oLane->RestoreLearned();
		}
	}

	//GfOut("PropagateBraking\n");
	oLane->EstimateTargetSpeed(oScaleBumps,oScaleSpeed);
	//oLaneAvoidToLeft->EstimateTargetSpeed(oScaleBumps,oScaleSpeed);
	//oLaneAvoidToRight->EstimateTargetSpeed(oScaleBumps,oScaleSpeed);
	oLane->PropagateBraking();
	oLaneAvoidToLeft->PropagateBraking();
	oLaneAvoidToRight->PropagateBraking();
	oLastLap++;
}
//==========================================================================*

//==========================================================================*
// Update pointers and multiple used values
//--------------------------------------------------------------------------*
void TBaseDriver::Update(tCarElt* Car, tSituation* S)
{
	oCar = Car;                                 // Update pointers
	oSituation = S;

	oMass = oEmptyMass + CarFuel;				// Update car mass
	oStartLookAhead = (float) MAX(oStartLookAhead-0.05f,0.0);

	// Shortcuts
	oSecIndex = ((int) CarDistFromStart)		// Save current section index
		% oLane->Count;

	oCurrSpeed = (float)						 // Save currend speed
	  hypot(CarSpeedLong, CarSpeedLat);

	if (fabs(oCurrSpeed) < 1)					 // At slow speeds use
		oAngleSpeed = CarYaw;					 // direction of cars x-axis
	else										 // else dir. of movement
		oAngleSpeed = atan2(CarSpeedY, CarSpeedX);

	oTrackAngle =								 // Direction of track at the
		RtTrackSideTgAngleL(&CarTrackPos);		 // position of the car

	oDistFromStart = DistanceFromStartLine;		 // Cars distance from Start

	oDriftAngle = (float)						 // Actual drift angle
		atan2(CarSpeedY, CarSpeedX) - CarYaw;
	FLOAT_NORM_PI_PI(oDriftAngle);				 // normalized to -Pi .. +Pi

	// Get direction of motion
	double MySpd = MAX(0.01,hypot(CarSpeedX, CarSpeedY));
	double MyDomX = CarSpeedX / MySpd;
	double MyDomY = CarSpeedY / MySpd;

	// Update all opponents data
	for (int I = 0; I < oNbrCars; I++)
		oOpponents[I].Update(oCar,MyDomX, MyDomY);

	if (CarLaps > oLastLap)
	{
		UpdateTargetSpeed();
	}

	oStrategy->Update(oCar);					 // Update strategic params

	if ((oStrategy->oPit != NULL)
		&& oStrategy->oPit->HasPits())
	{
		if ((oStrategy->oPit->oPitLane.InPitSpeedLimit(oSecIndex))
			&& oStrategy->GoToPit())
			oMode = GET_PIT_RL;
		else if (!oStrategy->oWasInPit
			&& oStrategy->GoToPit())
			oMode = GET_ENT_RL;
		else if (oStrategy->oWasInPit)
			oMode = GET_EXT_RL;
		else
			oMode = GET_CAR_RL;
	}
	else
		oMode = GET_CAR_RL;

  oSideReduction = 1.0;
  if ((WheelSeg(REAR_RGT) != WheelSeg(REAR_LFT))
	|| (WheelSeg(FRNT_RGT) != WheelSeg(FRNT_LFT))
	|| (WheelSeg(REAR_RGT) != WheelSeg(FRNT_RGT))
	|| (WheelSeg(REAR_LFT) != WheelSeg(FRNT_LFT)))
  {
    float MinFriction = MIN(WheelSegFriction(REAR_RGT),
		WheelSegFriction(REAR_LFT));
	oSideReduction = (float) MIN(1.0,MinFriction / CarFriction);
  }
}
//==========================================================================*

//==========================================================================*
// Steering
//--------------------------------------------------------------------------*
float TBaseDriver::Steering()
{
	double LookAhead = 4.0f + 0.4f * oCurrSpeed; // Distance to target
	oTarget = GetTargetPoint(					 // Point to steer to
		LookAhead,oAvoidOffset);

	// Direction to steer to target
	oSteerAngle = (float) atan2(oTarget.y - CarPosY, oTarget.x - CarPosX); 
	oSteerAngle -= (float) CarYaw;				 // Car's rotation (z-axis) 
	FLOAT_NORM_PI_PI(oSteerAngle);				 // Normalize to -PI,+PI
	oSteer = oSteerAngle / SteerLock; 			 // Normalize to car
	oSteer = (float) MAX(-1.0,MIN(1.0,oSteer));
	return oSteer;								 
}
//==========================================================================*

//==========================================================================*
// Calculate mean wheel radius of driven wheels
//--------------------------------------------------------------------------*
void TBaseDriver::InitWheelRadius()
{
	int Count = 0;
	oWheelRadius = 0.0;

	if(HasDriveTrainFront)
	{
		oWheelRadius += WheelRad(FRNT_LFT) + WheelRad(FRNT_RGT);
		Count += 2;
	}

	if(HasDriveTrainRear)
	{
		oWheelRadius += WheelRad(REAR_LFT) + WheelRad(REAR_RGT);
		Count += 2;
	}
	oWheelRadius /= Count;
}
//==========================================================================*

//==========================================================================*
// Initialize tire mu
//--------------------------------------------------------------------------*
void TBaseDriver::InitTireMu()
{
	int I;

	oTyreMuFront = FLT_MAX;
	for (I = 0; I < 2; I++)
		oTyreMuFront = MIN(oTyreMuFront,
			GfParmGetNum(oCarHandle, WheelSect[I],
			(char*) PRM_MU, (char*) NULL, 1.0f));

	oTyreMuRear = FLT_MAX;
	for (I = 2; I < 4; I++)
		oTyreMuRear = MIN(oTyreMuRear,
			GfParmGetNum(oCarHandle, WheelSect[I],
			(char*) PRM_MU, (char*) NULL, 1.0f));

	oTyreMu = MIN(oTyreMuFront,oTyreMuRear);
}
//==========================================================================*

//==========================================================================*
// Initialize brake
//--------------------------------------------------------------------------*
void TBaseDriver::InitBrake()
{
	GfOut("\n\n\n");
    float DiameterFront = 
		GfParmGetNum(oCarHandle, (char*) SECT_FRNTRGTBRAKE, 
			PRM_BRKDIAM, (char*)NULL, 0.2f);
    float DiameterRear = 
		GfParmGetNum(oCarHandle, (char*) SECT_REARRGTBRAKE, 
			PRM_BRKDIAM, (char*)NULL, 0.2f);
	GfOut("# Brake diameter    : %0.3f m / %0.3f m\n",DiameterFront,DiameterRear);

	float AreaFront = 
		GfParmGetNum(oCarHandle, (char*) SECT_FRNTRGTBRAKE, 
			PRM_BRKAREA, (char*)NULL, 0.002f);
	float AreaRear = 
		GfParmGetNum(oCarHandle, (char*) SECT_REARRGTBRAKE, 
			PRM_BRKAREA, (char*)NULL, 0.002f);
	GfOut("# Brake area        : %0.5f m2 / %0.5f m2\n",AreaFront,AreaRear);

	float MuFront
		= GfParmGetNum(oCarHandle, (char*) SECT_FRNTRGTBRAKE, 
			PRM_MU, (char*)NULL, 0.30f);
	float MuRear
		= GfParmGetNum(oCarHandle, (char*) SECT_REARRGTBRAKE, 
			PRM_MU, (char*)NULL, 0.30f);
	GfOut("# Brake mu          : %0.5f / %0.5f\n",MuFront, MuRear);

	float Rep =
		GfParmGetNum(oCarHandle, (char*) SECT_BRKSYST, 
			PRM_BRKREP, (char*)NULL, 0.5);
	GfOut("# Brake repartition : %0.2f\n",Rep);

	float Press =
		GfParmGetNum(oCarHandle, (char*) SECT_BRKSYST, 
			PRM_BRKPRESS, (char*)NULL, 1000000);
	GfOut("# Brake pressure    : %0.0f\n",Press);
    
    float BrakeCoeffFront = (float) (DiameterFront * 0.5 * AreaFront * MuFront);
    float BrakeCoeffRear = (float) (DiameterRear * 0.5 * AreaRear * MuRear);
	GfOut("# Brake coefficient : %0.7f / %0.7f\n",BrakeCoeffFront,BrakeCoeffRear);

	oBrakeMaxTqFront = /* oBrakeForceMax * */ BrakeCoeffFront * Press * Rep;
	GfOut("# Brake torque front: %0.2f\n",oBrakeMaxTqFront);

	oBrakeMaxTqRear = /* oBrakeForceMax * */ BrakeCoeffRear * Press * (1 - Rep);
	GfOut("# Brake torque rear : %0.2f\n",oBrakeMaxTqRear);

	oBrakeForce = oBrakeMaxTqFront * (WheelRad(FRNT_LFT) + WheelRad(FRNT_RGT)) 
		+ oBrakeMaxTqRear * (WheelRad(REAR_LFT) + WheelRad(REAR_RGT)); 
	GfOut("# Brake force       : %0.2f\n",oBrakeForce);

	GfOut("\n\n\n");
}
//==========================================================================*

//==========================================================================*
// Initialize Ca
//--------------------------------------------------------------------------*
void TBaseDriver::InitCa()
{
	float FrontWingArea =
		GfParmGetNum(oCarHandle, (char*) SECT_FRNTWING,
			(char*) PRM_WINGAREA, (char*) NULL, 0.0);
	float FrontWingAngle =
		GfParmGetNum(oCarHandle, (char*) SECT_FRNTWING,
			(char*) PRM_WINGANGLE, (char*) NULL, 0.0);
	float RearWingArea =
		GfParmGetNum(oCarHandle, (char*) SECT_REARWING,
			(char*) PRM_WINGAREA, (char*) NULL, 0.0f);
	float RearWingAngle =
		GfParmGetNum(oCarHandle, (char*) SECT_REARWING,
			(char*) PRM_WINGANGLE, (char*) NULL, 0.0f);

	FrontWingArea = FrontWingArea * sin(FrontWingAngle);
	RearWingArea = RearWingArea * sin(RearWingAngle);
	oCdWing = (float) (1.23 * (FrontWingArea + RearWingArea));

	float CL =
		GfParmGetNum(oCarHandle, (char*) SECT_AERODYNAMICS,
			(char*) PRM_FCL, (char*) NULL, 0.0f)
		+ GfParmGetNum(oCarHandle, (char*) SECT_AERODYNAMICS,
			(char*) PRM_RCL, (char*) NULL, 0.0f);

	float H = 0.0;
	for (int I = 0; I < 4; I++)
		H += GfParmGetNum(oCarHandle, WheelSect[I],
			(char*) PRM_RIDEHEIGHT, (char*) NULL, 0.20f);

	H *= 1.5;
	H = H*H;
	H = H*H;
	H = (float) (2.0 * exp(-3.0 * H));
	oCa = H * CL + 4.0f * oCdWing;
	oCaFrontWing = 4 * 1.23f * FrontWingArea;
	oCaRearWing = 4 * 1.23f * RearWingArea;
	oCaGroundEffect = H * CL;
}
//==========================================================================*

//==========================================================================*
// Initialize Cw
//--------------------------------------------------------------------------*
void TBaseDriver::InitCw()
{
	float Cx =
		GfParmGetNum(oCarHandle,
			(char*) SECT_AERODYNAMICS, (char*) PRM_CX, (char*) NULL, 0.0f);
	float FrontArea =
		GfParmGetNum(oCarHandle,
		(char*) SECT_AERODYNAMICS, (char*) PRM_FRNTAREA, (char*) NULL, 0.0f);

	oCdBody = 0.645f * Cx * FrontArea;
}
//==========================================================================*

//==========================================================================*
// Get gear ratio
//--------------------------------------------------------------------------*
double TBaseDriver::GearRatio()
{
	return CarGearRatio[UsedGear + CarGearOffset];
}
//==========================================================================*

//==========================================================================*
// Get gear ratio of previous gear
//--------------------------------------------------------------------------*
double TBaseDriver::PrevGearRatio()
{
	return CarGearRatio[UsedGear + CarGearOffset-1];
}
//==========================================================================*

//==========================================================================*
// Get gear ratio of next gear
//--------------------------------------------------------------------------*
double TBaseDriver::NextGearRatio()
{
	return CarGearRatio[UsedGear + CarGearOffset+1];
}
//==========================================================================*

//==========================================================================*
// Start automatic
//--------------------------------------------------------------------------*
float TBaseDriver::StartAutomatic()
{
	if (CarGearCmd == 1)
	{
		if (CarRpm < oStartRPM)
			oClutch += 0.9f * oStartRPM/CarRpm * oClutchDelta;
		else if (CarRpm > 1.1f * oStartRPM)
			oClutch -= oClutchDelta * oClutchRelease;
	}

	return MIN(oClutch,oClutchMax);
}
//==========================================================================*

//==========================================================================*
// Simplified clutch controller
//--------------------------------------------------------------------------*
void TBaseDriver::Clutching()
{
	float ClutchMax = oClutchMax;
	if (oSituation->_raceState & RM_RACE_PRESTART)
	{
		oClutch = oClutchMax * 1.39f;
		return;
	}

	if(oClutch > 0)
	{
		if ((oGear < 2) && (CarDistanceRaced < 100.0f))
		{
			if (oUnstucking)
				ClutchMax = (float) MIN(0.8f,StartAutomatic());
			else
				ClutchMax = StartAutomatic();
		}
		oClutch = (float) MIN(ClutchMax,oClutch);
		if(oClutch == ClutchMax)
		{
			if(GearRatio() * CarSpeedLong
				/ (oWheelRadius * CarRpm) > oClutchRange)
			{
				oClutch = ClutchMax - 0.01f;
			}
		}
		else
		{
			oClutch -= oClutchDelta;
			oClutch = (float) MAX(0.0,oClutch);
		}
	}
}
//==========================================================================*

//==========================================================================*
// Turn if driving backwards unexpectedly
//--------------------------------------------------------------------------*
void TBaseDriver::Turning()
{
/*
  if (!oUnstucking && (DistanceRaced > 25))
  {
    double Angle = oLanePoint.Angle - CarYaw;    // Direction moving to
    DOUBLE_NORM_PI_PI(Angle);                    // normalize it

    if((oGear > 0)                               // If a gear is selected
//      && (fabs(Angle) > 75 * PI / 180))          // but irregular direction
      && (fabs(Angle) > 45 * PI / 180))          // but irregular direction
    {
	  if (oTurnCounter == 0)
	  {
        if(Angle * CarToMiddle < 0)                // Lets turn
  	    {
          oTurnCounter = 100;
          oGear = -1;
          oAccel = 0.5;
          oBrake = 0;
//		  oLastSteer = (float) (-SGN(Angle) * 1.0);
          oSteer = (float) (-SGN(Angle) * 1.0);
		  //GfOut("#*Angle: %gCarToMiddle: %g (%g): %g\n",Angle,CarToMiddle,Angle * CarToMiddle,oSteer);
		}
	  }
	  else
	  {
        oSteer = oLastSteer;
        oTurnCounter -= 1;
		oTurnCounter = MAX(oTurnCounter,0);
	    //GfOut("# Angle: %gCarToMiddle: %g (%g): %g\n",Angle,CarToMiddle,Angle * CarToMiddle,oSteer);
	  }
    }
	else
      oTurnCounter = 0;

    if((oGear > 0) && (CarSpeedLong < -0.01))    // Rolling back?
    {                                            // Shift down and start
      oGear = 1;
      oBrake = CarSpeedLong < -0.5 ? 0.25 : 0;
      oAccel = 0.25;
    }

    if ((oGear == 1)                             // If starting
	  && (CarSpeedLong < 10)                     //   and slow
	  && (fabs(CarSpeedLong) >= 0.01)            //   but moving
	  && (oAccel == 1.0 && oBrake == 0))         //   and acc. (not braking)
    {                                            // use clutch
      double rpm = CarRpm;
      oClutch = (850 - rpm) / 400;
      if(CarSpeedLong < 0.05)
        oClutch = 0.5;

      oClutch = MAX(0, MIN(oClutch, 0.9));       // Normalize
      //if (DistanceRaced < 100.0)
      //  GfOut("# c:%g rpm:%g T:%g s S:%g m\n",oClutch,RADS2RPM(CarRpm),CurrSimTime,DistanceRaced);
    }
  }
*/
}
//==========================================================================*

//==========================================================================*
// S�GCuASL ;D
// = Simplified sequential gear controller using adaptive shift levels
//--------------------------------------------------------------------------*
void TBaseDriver::GearTronic()
{
	if (IsTickover)
	{
		oGear = 1;
	}
	else
	{
		if((UsedGear < oMaxGear)
			&& (GearRatio() * CarSpeedLong / oWheelRadius > NextRpm))
		{
			oUnstucking = false;
			TreadClutch;
			oGear = NextGear;
		}
		else if(UsedGear > 1)
		{
			double PrevRpm =
			oShift[UsedGear-1] * oShiftMargin
				* GearRatio() / PrevGearRatio();

			if(GearRatio() * CarSpeedLong / oWheelRadius < PrevRpm)
			{
				TreadClutch;
				oGear = PrevGear;
			}
		}
	}
}
//==========================================================================*

//==========================================================================*
// Compute the radius
//--------------------------------------------------------------------------*
void TBaseDriver::ComputeRadius()
{
	float LastTurnArc = 0.0f;
	int LastSegType = TR_STR;

	tTrackSeg *CurrentSeg, *StartSeg = oTrack->seg;
	CurrentSeg = StartSeg;

	do {
		if (CurrentSeg->type == TR_STR) 
		{
			LastSegType = TR_STR;
			oRadius[CurrentSeg->id] = FLT_MAX;
		} 
		else 
		{
			if (CurrentSeg->type != LastSegType)
			{
				float Arc = 0.0f;
				tTrackSeg *S = CurrentSeg;
				LastSegType = CurrentSeg->type;

				while (S->type == LastSegType && Arc < PI / 2.0f)
				{
					Arc += S->arc;
					S = S->next;
				}
				LastTurnArc = (float) (Arc /(PI / 2.0f));
			}
			oRadius[CurrentSeg->id] = (CurrentSeg->radius + CurrentSeg->width/2.0f)/LastTurnArc;
		}
		CurrentSeg = CurrentSeg->next;
	} 
	while (CurrentSeg != StartSeg);

}
//==========================================================================*

//==========================================================================*
// Compute the allowed speed on a segment.
//--------------------------------------------------------------------------*
float TBaseDriver::AllowedSpeed(PTrackSeg Seg)
{
	float Mu = Seg->surface->kFriction * oTyreMu * 0.5f;
	float R = oRadius[Seg->id];
	R = (float) MAX(1.0, R);
	return (float) MIN(100.0f,sqrt((Mu * G * R)
		/ (1.0f - MIN(1.0f, R * oCa * Mu/oMass))));
}
//==========================================================================*

//==========================================================================*
// Calculate distance to end of segment 
//--------------------------------------------------------------------------*
float TBaseDriver::DistToSegEnd()
{
	if (CarSeg->type == TR_STR)
		return CarSeg->length - CarToStart;
	else
		return (CarSeg->arc - CarToStart) * CarSeg->radius;
}
//==========================================================================*

//==========================================================================*
// Calculate distance to brake to allowed speed
//--------------------------------------------------------------------------*
float TBaseDriver::BrakeDist(float AllowedSpeed, float Mu)
{
	float c = Mu * G;
	float d = (oCa*Mu + oCdBody)/oMass;
	float v1sqr = oCurrSpeed * oCurrSpeed;
	float v2sqr = AllowedSpeed * AllowedSpeed;
	return (-log((c + v2sqr*d)/(c + v1sqr*d))/(2.0f*d));
}
//==========================================================================*

//==========================================================================*
// Simple braking
//--------------------------------------------------------------------------*
float TBaseDriver::Braking()
{
	if (oCurrSpeed > 1.0)
	{
		PTrackSeg Seg;
		float Mu;
		float MaxLookAheadDistance;
		float LookAheadDistance;
		float TargetSpeed;

		Seg = CarSeg;
		Mu = CarFriction;
		MaxLookAheadDistance = oCurrSpeed * oCurrSpeed / (2.0f * Mu * G);

		TargetSpeed = AllowedSpeed(Seg);
		if (TargetSpeed < oCurrSpeed)
		{
			return (float) MIN(0.9f, (oCurrSpeed - TargetSpeed));
		}

		LookAheadDistance = DistToSegEnd();
		Seg = Seg->next;

		while (LookAheadDistance < MaxLookAheadDistance)
		{
			TargetSpeed = AllowedSpeed(Seg);
			if (TargetSpeed < oCurrSpeed)
			{
				if (BrakeDist(TargetSpeed, Mu) > LookAheadDistance)
					return 0.9f;
			}
			LookAheadDistance += Seg->length;
			Seg = Seg->next;
		}
		return 0.0;
	}
	return 0.0;
}
//==========================================================================*

//==========================================================================*
// Check speed, control brake press
//--------------------------------------------------------------------------*
void TBaseDriver::SpeedController()
{
	double Diff = oCurrSpeed - oLastTargetSpeed - 2.0;
	if (oLastBrake > 0)
	{
		if (Diff > 2.0)
		{
			BrakeEarlier(2*Diff);
		}
//		else if (Diff < -1.0)
		else if (Diff < 0.5)
		{
			// We can brake later
			BrakeLater(-0.5*MAX(0.5,Diff));
		}
	}

	Diff = oCurrSpeed - oTargetSpeed;
	if (Diff > 0.0)
	{
		oAccel = 0;
		oBrake = (float) MIN(oBrakeForceMax,Diff * Diff / oBrakeScale);
	}
}
//==========================================================================*

//==========================================================================*
// Start braking earlier
//--------------------------------------------------------------------------*
void TBaseDriver::BrakeEarlier(double Scale)
{
	if (oLoadedLearned)
		return;

	double Den = MAX(1.0,oLapsLearned);
	Scale *= 1.0/Den;
	Scale = MAX(0.01,MIN(30.0,Scale));

	int K = (oSecIndex + oLane->Count - 15) % oLane->Count;
	
	TBaseLane::TPathPointPrivate* PPP;
	for (int I = 0; I < 15; I++)
	{
		K = (K + 1) % oLane->Count;
		PPP = &(oLane->PPPrv[K]);
		PPP->BrakeFrictionFactor *= 
			(float) ((100 - Scale)/100.0);
		PPP->BrakeFrictionFactor = 
			(float) MAX(0.5,MIN(2.0,PPP->BrakeFrictionFactor));
	}
	//GfOut("%4.4d +B: %.2f(%.4f)\n",oLastSecIndex,Scale,PPP->BrakeFrictionFactor);
}
//==========================================================================*

//==========================================================================*
// Start braking later
//--------------------------------------------------------------------------*
void TBaseDriver::BrakeLater(double Scale)
{
	if (oLoadedLearned)
		return;

	double Den = MAX(1.0,oLapsLearned);
	Scale *= 1.0/Den;
	Scale = MAX(0.01,MIN(30.0,Scale));

	int K = (oSecIndex + oLane->Count - 15) % oLane->Count;
	
	TBaseLane::TPathPointPrivate* PPP;
	for (int I = 0; I < 15; I++)
	{
		K = (K + 1) % oLane->Count;
		PPP = &(oLane->PPPrv[K]);
		PPP->BrakeFrictionFactor *= (float) ((100 + Scale)/100.0);
	}
	//GfOut("%4.4d -B: %.2f(%.4f)\n",oLastSecIndex,Scale,PPP->BrakeFrictionFactor);
}
//==========================================================================*

//==========================================================================*
// ABS
//--------------------------------------------------------------------------*
float TBaseDriver::FilterABS(float Brake)
{
	if(CarSpeedLong < 10)
		return Brake;

	double Slip = 0.0;

	for (int I = 0; I < 4; I++)
		Slip += WheelSpinVel(I) * WheelRad(I);

	Slip = 4.0 * CarSpeedLong / Slip;

	if (Slip > oAbsDelta)
	{
		Brake *= oAbsScale;
		BrakeEarlier(2 * Slip / oAbsDelta);
	}

	return Brake;
}
//==========================================================================*

//==========================================================================*
// Filter Brake while drifting
//--------------------------------------------------------------------------*
float TBaseDriver::FilterBrake(float Brake)
{
	// If braking, decrease braking force while drifting
	if((CarSpeedLong > SLOWSPEED) && (Brake > 0.0))
	{
		double DriftAngle = MAX(MIN(oDriftAngle * 2, PI),-PI);
		Brake *= (float) MAX(0.1, cos(DriftAngle));
	}
	return Brake;
}
//==========================================================================*

//==========================================================================*
// Filter Traction Control
//--------------------------------------------------------------------------*
float TBaseDriver::FilterTCL(float Accel)
{

	//if (CarDistanceRaced < 50)				// Not at start
	//	return Accel;

	if(fabs(CarSpeedLong) < 0.001)				// Only if driving faster
		return Accel;

	double Spin = 0;							// Initialize spin
	double Wr = 0;								// wheel radius
	int Count = 0;								// count impellers

	if(HasDriveTrainFront)						// If front wheels
	{											//   are impellers
		Spin += WheelSpinVel(FRNT_LFT);			// Summarize spin
		Spin += WheelSpinVel(FRNT_RGT);			// of both wheels
		Wr += WheelRad(FRNT_LFT)+WheelRad(FRNT_RGT); // measure radius
		Count += 2;								// and count both
	}

	if(HasDriveTrainRear)						// If rear wheels
	{											//   are impellers
		Spin += WheelSpinVel(REAR_LFT);			// Summarize spin
		Spin += WheelSpinVel(REAR_RGT);			// of both wheels
		Wr += WheelRad(REAR_LFT)+WheelRad(REAR_RGT); // measure radius
		Count += 2;								// and count both
	}
	Spin /= Count;								// Calculate spin
	Wr /= Count;								// and radius

	double Slip = Spin * Wr - CarSpeedLong;		// Calculate slip
	if (Slip > oTclSlip)						// Decrease accel if needed
	{
		float MinAccel = (float) (0.05 * Accel);
		Accel -= (float) MIN(Accel, (Slip - oTclSlip)/oTclRange);
		Accel = MAX(MinAccel,Accel);
	}
/*
	//GfOut("# Friction: %g\n",CarSeg->surface->kFriction);
	if ((CarFriction < 1.0) && (fabs(CarSeg->radius) < 50))
	{
		if (Accel > oLastAccel * 1.02)
			Accel = (float) MIN(Accel,MAX(0.1,oLastAccel*1.02));
		oLastAccel = Accel;
	}
	else if (CarFriction < 1.0)
	{
		if (Accel > oLastAccel * 1.10)
			Accel = (float) MIN(Accel,MAX(0.1,oLastAccel*1.10));
		oLastAccel = Accel;
	}
*/
	return Accel;
}
//==========================================================================*

//==========================================================================*
// Filter Let Pass
//--------------------------------------------------------------------------*
float TBaseDriver::FilterLetPass(float Accel)
{
	// If we should let an other bot pass, decrease accelleration
	if (oLetPass)
	{
		Accel = (float) MIN(Accel, 0.5);
	}

	return Accel;
}
//==========================================================================*

//==========================================================================*
// Filter Drifting
//--------------------------------------------------------------------------*
float TBaseDriver::FilterDrifting(float Accel)
{
  if(CarSpeedLong < SLOWSPEED)
    return oAccel = Accel;

  // Decrease accelleration while drifting
  double DriftAngle = MAX(MIN(oDriftAngle * 1.75, PI - 0.01),-PI + 0.01);
  if (oDriftAngle > oLastDriftAngle)
    Accel /= (float) (150 * ( 1 - cos(DriftAngle)));
  else
    Accel /= (float) (50 * ( 1 - cos(DriftAngle)));

  oAccel = (float) MIN(1.0,Accel);

  return oAccel;
}
//==========================================================================*

//==========================================================================*
// Drive slower
//--------------------------------------------------------------------------*
void TBaseDriver::DriveSlower(double Scale, int Length)
{
	if (oLoadedLearned)
		return;
	double Den = MAX(1.0,oLapsLearned);
	Scale *= 1.0/Den;
	Scale = MAX(0.01,MIN(10.0,Scale));

	int K = (oSecIndex + oLane->Count - Length) % oLane->Count;
	// We have to drive slower
	for (int I = 0; I < Length; I++)
	{
		K = (K + 1) % oLane->Count;
	    TBaseLane::TPathPointPrivate* PPP = &(oLane->PPPrv[K]);
		PPP->SpeedFrictionFactor *= (float) ((100 - 0.2 * Scale)/100.0);
		PPP->SpeedFrictionFactor = (float) MAX(0.3,MIN(3.0,PPP->SpeedFrictionFactor));
	}
	// GfOut("%4.4d -S: %.2f(%.4f)\n",oLastSecIndex,oDifference,PPP->SpeedFrictionFactor);
}
//==========================================================================*

//==========================================================================*
// Drive faster
//--------------------------------------------------------------------------*
void TBaseDriver::DriveFaster(double Scale)
{
	if (oLoadedLearned)
		return;

	double Den = MAX(1.0,oLapsLearned);
	Scale *= 1.0/Den;
	Scale = MAX(0.01,MIN(10.0,Scale));

	int K = (oSecIndex + oLane->Count - 20) % oLane->Count;
	for (int I = 0; I < 20; I++)
	{
		K = (K + 1) % oLane->Count;
	    TBaseLane::TPathPointPrivate* PPP = &(oLane->PPPrv[K]);
		PPP->SpeedFrictionFactor *= (float) ((100 + 0.1 * Scale)/100.0);
		PPP->SpeedFrictionFactor = (float) MAX(0.3,MIN(3.0,PPP->SpeedFrictionFactor));
	}
	//GfOut("%4.4d +S: %.2f(%.4f)\n",oLastSecIndex,oDifference,PPP->SpeedFrictionFactor);
}
//==========================================================================*

//==========================================================================*
// Check Tolerance
//--------------------------------------------------------------------------*
void TBaseDriver::CheckTolerance()
{
	double Crv = oLane->Crv(oSecIndex);
	double Offset = oLane->Offset(oSecIndex);

	TVec2d Target = GetTargetPoint(oSecIndex,oAvoidOffset);
	TVec2d Middle(oLane->PPPub[oSecIndex].Middle); 

	oDifference = 
		SIGN(Crv)*(SIGN(Offset)*(Middle-Target).len() + CarToMiddle);

	if (fabs(Crv) < 0.003)
		oDifference = 0.0;

	double Dist = fabs(CarToMiddle);
	if (fabs(oDriftAngle) > PI/8)
	{
		DriveSlower(2.0);
	}
	else if (Dist > (oTrack->width - CarWidth)/2 + 1.0)
	{
		DriveSlower(-oDifference);
	}
	else if (oDifference < -2.0)
	{
		DriveSlower(-0.5*oDifference);
	}
	else if (oDifference > -0.5)
	{
		DriveFaster(MAX(2.0,fabs(oDifference)));
	}
}
//==========================================================================*

//==========================================================================*
// Filter Track
//--------------------------------------------------------------------------*
float TBaseDriver::FilterTrack(float Accel)
{
	if (CarDistanceRaced < 50)
		return Accel;

	if (oDifference < -1.0)						 // Check offset difference
	{
		Accel *= (float)						 //   Decrease acceleration
			(MAX(1.0 - (fabs(oDifference) - 1.0) * 0.8, 0.2));
	}

	Accel *= oSideReduction;

	return Accel;
}
//==========================================================================*

//==========================================================================*
// Detect blocking obstacles
//--------------------------------------------------------------------------*
bool TBaseDriver::IsStuck()
{
	float Diff;									// Distance from old point

	if ((oStuckCounter > 3)						// Less then six ticks
		&& (oStuckCounter < 6))					//   left? 
		oCar->_brakeCmd = 1.0;					//   Stop driving back
	else
		oCar->_brakeCmd = 0.0;

	if (oStuckCounter > 0)						// Driving back?
	{											//   If so, clear buffer
		oMotionDetection->Reset();
		oStuckCounter--;						//   decrement counter
		//GfOut("# Driving back! %d\n",oStuckCounter);
		return true;							//   and drive
	}

	// Check motion
	Diff = oMotionDetection->MovedDistance
		(float(CarPubGlobPosX),float(CarPubGlobPosY));

	if (Diff < 0.5)								// If distance is to small
	{											//   assume obstacle
		if (oStuckCounter == 0)
		{
			oStuckCounter = -UNSTUCK_COUNTER;	// Set counter
			//GfOut("# Set! %d\n",oStuckCounter);
		}

		if (oStanding)							// But if flag is set
		{										//   it is planned!
			//GfOut("# Standing! %d\n",oStuckCounter);
			oMotionDetection->Reset();   		// Clear buffers
			return false;						//   and signal ok
		}
		else if (oUnstucking)					// But if flag is set
		{										//   it is possible
			if (oStuckCounter < 0)				//
			{
				oMotionDetection->Reset();
				oStuckCounter++;				// Increment counter
				if (oStuckCounter == 0)
				{
					oStuckCounter = UNSTUCK_COUNTER; // Set counter
					//GfOut("# Stuck1! %d\n",oStuckCounter);
					return true;				// give signal stuck
				}
				//GfOut("# Unstucking! %d\n",oStuckCounter);
				return false;					//   and signal ok
			}
			else								// still stuck
			{
				if (oCurrSpeed > 1.0)
					return false;

				oStuckCounter = UNSTUCK_COUNTER;// Set counter
				//GfOut("# Stuck1! %d\n",oStuckCounter);
				return true;					// give signal stuck
			}
		}
		else									// if not
		{
			if (oCurrSpeed > 1.0)
				return false;

			oStuckCounter = UNSTUCK_COUNTER;	// Set counter
			//GfOut("# Stuck! %d\n",oStuckCounter);
			return true;						// give signal stuck
		}
	}
	else
		oStanding = false;						// Reset flag

	return false;								// No obstacle
}
//==========================================================================*

//==========================================================================*
// Unstuck
//--------------------------------------------------------------------------*
void TBaseDriver::Unstuck()
{
	float LookAhead = 10.0f + 0.33f * oCurrSpeed;
	oTarget = GetTargetPoint(LookAhead,0.0);        

	// Direction to steer to target
	oSteerAngle = (float) atan2(oTarget.y - CarPosY, oTarget.x - CarPosX);

	oSteerAngle -= (float) CarYaw;				// Car's rotation (z-axis) 
	FLOAT_NORM_PI_PI(oSteerAngle);				// Normalize to -PI,+PI

	oAngle = CarSteerCmd = 
		(float) -(oSteerAngle/CarSteerLock);	// Steering
	CarGearCmd = -1;							// Reverse gear
	CarBrakeCmd = 0.0;							// Unlock brake
	CarAccelCmd = 1.0;							// Open the throttle
	CarClutchCmd = 0.0;							// Release clutch
	oUnstucking = true;							// Set flag
}
//==========================================================================*

//==========================================================================*
// Subsume situation
//--------------------------------------------------------------------------*
void TBaseDriver::SubsumeSituation()
{
	oCollFlags = 0;

	for (int I = 0; I < oNbrCars; I++)			 // Loop all cars
	{
		TBaseOpponent& Opp = oOpponents[I];
//		PCarElt OppCar = Opp.oCar;				 // SD opponents car data
		int OppInfo = Opp.oState;				 // Information ab. opponent

		oCollFlags |= OppInfo;		             // Subsume collision flags
		if (OppInfo & OPP_FRONT)				 // Is opponent in front
		{
			if (oMinDistLong > Opp.oCarDistLong)
				oMinDistLong = Opp.oCarDistLong;
		}
	}
}
//==========================================================================*
/*
//==========================================================================*
// Evaluate collision flags
//--------------------------------------------------------------------------*
void TBaseDriver::EvaluateCollisionFlags(
  int I,
  TBaseCollision::TCollInfo& Coll,
  double Crv,
  double& MinCatchTime,
  double& MinCatchAccTime,
  double& MinVCatTime,
  bool& IsLapper)
{
	TBaseOpponent& Opp = oOpponents[I];
	PCarElt OppCar = Opp.oCar;					 // SD opponents car data
	int OppInfo = Opp.oState;					 // Information ab. opponent
												 // collected classification
	Coll.Flags |= OppInfo;		                 // subsume collision flags

	if (OppInfo & OPP_FRONT)					 // Is opponent in front
	{
		if (oMinDistLong > Opp.oCarDistLong)
			oMinDistLong = Opp.oCarDistLong;

		if ((OppInfo & OPP_COLL)
			&& (Opp.oCatchDecel > 12.5 * CarFriction))
			Coll.TargetSpeed = MIN(Coll.TargetSpeed, Opp.oCatchSpeed);

		if (OppInfo & (OPP_COLL | OPP_CATCHING))
			MinCatchTime = MIN(MinCatchTime, Opp.oCatchTime);

		if (OppInfo & OPP_CATCHING_ACC)
			MinCatchAccTime = MIN(MinCatchAccTime, Opp.oCatchAccTime);

		if (Opp.oCarDiffVelLong < 0)
		{
			double VCatTime =
				-(Opp.oCarDistLong - Opp.oMinDistLong) 
				/ Opp.oCarDiffVelLong;

			if (VCatTime > 0)
				MinVCatTime = MIN(MinVCatTime, VCatTime);
		}


	bool IgnoreTeamMate;
	if (oTeamEnabled) 
	{
	  IgnoreTeamMate =
	    OppInfo.GotFlags(F_TEAMMATE)
	    && (CarLaps < OppCar->_laps
	    || CarDamage + 1000 >= OppInfo.TeamMateDamage);
	}
	else
	{
	  IgnoreTeamMate = false;
	}

		Opp.oAvoidLatchTime = 
			MAX(0, Opp.oAvoidLatchTime - oSituation->deltaTime);

//		double MaxSpdCrv = Param.Fix.CalcMaxSpeedCrv();
		double MaxSpdCrv = 1/500.0;
		double ColTime = fabs(Crv) > MaxSpdCrv ? 2.0 : 2.4;
		double CatTime = fabs(Crv) > MaxSpdCrv ? 3.0 : 8.0;
		double CacTime = fabs(Crv) > MaxSpdCrv ? 3.0 : 8.0;

		bool Catching =
			((Opp.oCatchTime < ColTime) && (OppInfo & OPP_COLL))
			|| ((Opp.oCatchTime < CatTime) && (OppInfo & OPP_CATCHING))
			|| ((Opp.oCatchAccTime < CacTime) && (OppInfo & OPP_CATCHING_ACC));

//	if (!IgnoreTeamMate &&
//		if ((Opp.oAvoidLatchTime > 0) || Catching || (OppInfo & OPP_DANGEROUS))
		if ((Opp.oAvoidLatchTime > 0) || Catching)
		{
			double ToL, ToR;

			GetPathToLeftAndRight(OppCar, ToL, ToR);
			ToL += OppInfo.State.TrackVelLat * OppInfo.CatchTime;
			ToR -= OppInfo.State.TrackVelLat * OppInfo.CatchTime;
			bool SpaceL = ToL > OppInfo.State.MinDistLat + 0.75;// + 0.25;
			bool SpaceR = ToR > OppInfo.State.MinDistLat + 0.75;// + 0.25;
			bool AvoidL = OppInfo.State.CarDistLat < 0 && SpaceR;
			bool AvoidR = OppInfo.State.CarDistLat > 0 && SpaceL;

			if (Catching)
				OppInfo.AvoidLatchTime = fabs(Crv) < MaxSpdCrv ? 0.5 : 0.1;

			if (fabs(Crv) < MaxSpdCrv)
			{
				if (!AvoidL && !AvoidR)
				{
					AvoidL = !SpaceL && SpaceR;
					AvoidR = !SpaceR && SpaceL;
				}
			}

			if (AvoidL)
			{
				Coll.OppsAhead |= F_LEFT;
				Coll.MinLDist = MIN(OppInfo.State.CarAvgVelLong, Coll.MinLDist);
			}
			else if (AvoidR)
			{
				Coll.OppsAhead |= F_RIGHT;
				Coll.MinRDist = MIN(OppInfo.State.CarAvgVelLong, Coll.MinRDist);
			}
		}
	}

	if (OppInfo & OPP_SIDE)						 // Is Opponent at side
	{
		Coll.OppsAtSide |= OppInfo.State.CarDistLat < 0 ? OPP_LEFT : OPP_RIGHT;
		if (OppInfo.State.CarDistLat < 0)
			Coll.MinLSideDist = MIN(Coll.MinLSideDist,-OppInfo.State.CarDistLat - OppInfo.State.MinDistLat);
		else
			Coll.MinRSideDist = MIN(Coll.MinRSideDist,OppInfo.State.CarDistLat - OppInfo.State.MinDistLat);
	}

	if (oTeamEnabled) 
	{
		oTreatTeamMateAsLapper =
			OppInfo.GotFlags(OPP_TEAMMATE | OPP_REAR)
			&& OppInfo.State.RelPos > -50
			&& ((CarLaps < OppCar->_laps)
			|| (CarDamage > OppInfo.TeamMateDamage + 1000));
	}
	else
	{
		oTreatTeamMateAsLapper = false;
	}

	if (oTeamEnabled) 
	{
		if (oStayTogether > 50
			&& OppInfo.GotFlags(OPP_TEAMMATE | OPP_REAR)
			&& OppInfo.State.RelPos > -oStayTogether
			&& CarDamage + 1000 > OppInfo.TeamMateDamage)
		{
			Coll.LappersBehind |= OppInfo.State.CarDistLat < 0 ? OPP_LEFT : OPP_RIGHT;
			IsLapper = true;
		}

		if (oTreatTeamMateAsLapper)
		{
			Coll.LappersBehind |= OppInfo.State.CarDistLat < 0 ? OPP_LEFT : OPP_RIGHT;
			IsLapper = true;
		}
	}
}
//==========================================================================*
*/

//--------------------------------------------------------------------------*
// end of file basedriver.cpp
//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++*
