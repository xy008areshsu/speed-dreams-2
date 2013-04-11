//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++*
// basedriver.h
//--------------------------------------------------------------------------*
// Learning robot for SD
// Speed Dreams - Version 2.0.X
//--------------------------------------------------------------------------*
// Base class for a custom driver class
// 
// File         : basedriver.h
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
#ifndef _BASE_DRIVER_H_
#define _BASE_DRIVER_H_

#include <track.h>
#include <car.h>
#include <robot.h>

#include "globaldefinitions.h"

#include "baseopponent.h"
#include "motiondetection.h"
#include "basetrack.h"
#include "baselane.h"
#include "basecollision.h"
#include "abstractdriver.h"

//==========================================================================*
// Declaration of the base class
//--------------------------------------------------------------------------*
class TBaseDriver : public TAbstractDriver
{
	// Data
	public:
		// Avoiding
		double oAvoidRange;						 // Allowed distance and
		double oAvoidOffset;					 // used dist. f. racingline

		// Speed control
		double oTargetSpeed;					 // Possible speed at next
												 // target point
		double oLastTargetSpeed;				 // Same at last sim. time

		double oBestLapTime;                     // Best lap time up to now
		int oLapsLearned;						 // Laps used for learning


	// Functions
	public:
		// Avoiding
		void AvoidOffset(
			double Scale, 
			double Target);
		void AvoidRange(
			double Scale, 
			double Target);

		// Collisions
		void EvaluateCollisionFlags(
			int I,
			TBaseCollision::TCollInfo& Coll,
			double Crv,
			double& MinCatchTime,
			double& MinCatchAccTime,
			double& MinVCatTime,
			bool& IsLapper);

		// Steering
		TVec2d GetTargetPoint(					 // Target point to steer to
			double LookAhead,					 // Current look ahead dist.
			double AvoidOffset);				 // Current avoid offset
		TVec2d GetTargetPoint(
			int Index, 
			double Offset);

		// Speed control
		double GetTargetSpeed(					 // Get target speed at next
			double Offset);						 // target point



	public:
		TBaseDriver();                           // Default constructor
		~TBaseDriver();                          // Destructor

	// TORCS-Interface:
	void InitTrack(                               // Initialize Track
	    PTrack track, 
		PCarHandle CarHandle,
	    PCarSettings *CarParmHandle,
	    PSituation Situation);
	void NewRace(                                 // Start new Race
	    PtCarElt Car, 
		PSituation Situation);
	void Drive();                                // Drive while racing
	int	PitCmd();                                // Handle pitstop
	void EndRace();                              // Stop race
	void Shutdown();                             // Cleanup

    void Update                                  // Update data
	    (PtCarElt Car, PSituation Situation);
	void UpdateTargetSpeed();

	PBaseOpponent NearestBackFaster();
	PBaseOpponent NearestInMyWaySlower();
	PBaseOpponent NearestInFrontSlower();
	PBaseOpponent NearestAtSide();
	PBaseOpponent PossibleCollision();

	void Avoiding();
    void SubsumeSituation();

	TBaseLane::TPathPointPrivate* GetCurrPoint();// Get current sections path point
	TBaseLane::TPathPointPrivate* GetLastPoint();// Get last sections path point

	float StartAutomatic();                      // Clutch controller for start
	void Clutching();                            // Clutch controller
	double GearRatio();                          // Get gear ratio
    void GearTronic();                           // GearTronic

	bool Initialize();							 // Initialize driver
	void InitBrake();							 // Initialize brake
    void InitCar();                              // Initialize Car
	void InitCa();                               // Initialize Ca
	void InitCw();                               // Initialize Cw
    void InitDriveTrain();                       // Initialize drive train
	void InitTireMu();                           // Initailize tire mu
    void InitWheelRadius();                      // Calculate mean wheel radius

	bool IsStuck();                              // Stehen wir vor einem Hindernis
	double NextGearRatio();                      // Get next gear ratio
	double PrevGearRatio();                      // Get prev gear ratio

    float BrakeDist(float AllowedSpeed, float Mu);
	float DistToSegEnd();
	void ComputeRadius();
	float AllowedSpeed(PTrackSeg Seg);

	float Braking();
	void SpeedController();                      // Check speed

	float Steering();                            // Steering

	void TeamInfo();                             // Get team infos

	void Turning();                              // Turn if needed

	void Unstuck();                              // Rangieren

	void YawControl();                           // Controll yawing

    inline PTrack Track();                       // Get Pointer to TORCS track data
    inline PtCarElt Car();                       // Get Pointer to TORCS car data

    void OwnCarOppIndex();                       // Get own index

	void BrakeEarlier(double Scale);
	void BrakeLater(double Scale);
	void DriveSlower(
		double Scale, int Length = 20);
	void DriveFaster(double Scale);

	float FilterABS(float Brake);
	float FilterBrake(float Brake);

	float FilterDrifting(float Accel);
    float FilterLetPass(float Accel);
	float FilterTCL(float Accel);
	float FilterTrack(float Accel);
	
	void CheckTolerance();

	void SetPathAndFilenames();
	void History();								 // Backup current state
	void SetCommand();							 // Setup new SD command

	double AdjustTargetSpeed(
		double MySpeed, double OppSpeed, double Distance);

	inline char* GetBotName();

//protected:

	// State values to update SD commands and old values for it
	float oAccel;								// Accelleration
	float oLastAccel;							// Last accelleration
	float oBrake;								// Braking
	float oLastBrake;							// Last braking
	float oClutch;								// Clutching
	float oLastClutch;							// Last clutching
	float oSteer;								// Steering
	float oLastSteer;							// Last steering
	int oGear;									// Gear
	int oLastGear;								// Last used gear

	// Clutch and gear related data
	float oClutchMax;               
	float oClutchRange;
	float oClutchDelta;
	float oClutchRelease;
	int oMaxGear;								// Last gear available
	float oStartRPM;
	float oShift[MAX_GEARS];                     // Shift levels
	float oShiftMargin;                          // Shift back margin

	// Pointers to SD data 
	PTrack oTrack;                               // SD data for track
	PCarHandle oCarHandle;                       // Handle of car parameter file

	// Racingline related data
	char* oTrackName;                            // Name of the track
	TBaseTrack* oTrackDesc;
	TBaseLane* oLane;
	TBaseLane* oLaneAvoidToLeft;
	TBaseLane* oLaneAvoidToRight;

	// Flags
	bool oInitialized;
	int oCollFlags;

	// Initialize radius of segments.
	float* oRadius;
	
	double oDifference;

	// Basic robot features
	enum // drive types
	{
		cDT_RWD, cDT_FWD, cDT_4WD,
	};

	enum
	{
	  GET_CAR_RL,								 // Use normal racingline
	  GET_ENT_RL,								 // Use pit racingline for entry
	  GET_PIT_RL,								 // Use pit racingline + speed limit
	  GET_EXT_RL								 // Use pit racingline for exit
	};

	// Basic robot variables
	double oWheelRadius;                         // Mean wheel radius
	int	oDriveTrainType;                         // Drive train type
	float oMaxFuel;                              // Tank capacity
	float oTyreMuFront;
	float oTyreMuRear;
	float oTyreMu;
	float oMass;
	float oEmptyMass;
	float oCdBody;
	float oCdWing;
	float oCa;
	float oCaFrontWing;
	float oCaRearWing;
	float oCaGroundEffect;

	//TTrackDescription oTrackDesc;                // Track description
	TBaseOpponent oOpponents[cMAX_OPP];		         // Infos about other cars
	int oOwnOppIdx;                              // Own index in opponents array
	int oNbrCars;                                // Nbr of cars in race

	float oFuelAtRaceStart;                      // Fuel filled in at race start 

    bool oAlone;                                 // No opponent near
	bool oUnstucking;                            // Mode to get unstuck
    bool oForcePitStop;                          // Mode to test pit stops

	int oSecIndex;                               // Index of current section
	int oLastSecIndex;                           // Index of last section
	int oLastLap;                                // Last lap;

	float oLastDist;                             // Last distance raced
	float oLastSpeed;                            // Last speed
	float oCurrSpeed;                            // Current speed
	float oAngleSpeed;                           // Direction of current speed
	float oTrackAngle;                           // Direction of track
	float oDriftAngle;                           // Drift angle
	float oLastDriftAngle;                       // Last drift angle
	float oDistFromStart;                        // Position along track
    float oSteerAngle;                           // Direction to steer to
	float oCmpLookAhead;
	float oAngle;

	float oAbsDelta;
	float oAbsScale;

	float oTclRange;
	float oTclSlip;

	float oBrakeDiffInitial;	
	float oBrakeScale;
	float oBrakeForceMax;
	float oBrakeForce;
	//float oBrakeCoeff;
	float oBrakePowerMax;
	float oBrakeMaxTqFront;
	float oBrakeMaxTqRear;
	bool oUseMaxBrakePower;
	float oBrakeMinRadius;
	float oDecMax;

	float oScaleBrake;
	float oScaleBumps;
	float oScaleSpeed;

	float oScaleRefuel;

	float oStartLookAhead;
	bool oLetPass;
	bool oStanding;
	float oSideReduction;
	int oMode;
	TVec2d oTarget;                              // Target to steer to
	float oFixedOffset;                          // Fixed offset for tests
	float oTrackWidthLeft;
	float oTrackWidthRight;
	double oRangeVel;
	double oLatVel;

	int oStuckCounter;
	P2DMotionDetection oMotionDetection;	

	int oTeamIndex;

	// Statistics:
	float oFuelNeeded;							// Amount of fuel filled in
	float oRepairNeeded;						// Amount of repair needed

//private:
	PSimpleStrategy oStrategy;                   // Pit strategy
	int oPitSide;
	double oMinDistLong;
	int oWeatherCode;                            // Track specific weather
	char* oPathToWriteTo;                        // Path we can write to
	char* oTrackLoad;
	bool oLoadedLearned;

//  public:
	static bool Qualifying;                      // Flag qualifying
	static float LengthMargin;
};
//==========================================================================*

//==========================================================================*
// Get name of robot
//--------------------------------------------------------------------------*
char* TBaseDriver::GetBotName()
  {return oDriverName;};
//==========================================================================*
/*
//==========================================================================*
// Get Team
//--------------------------------------------------------------------------*
TTeamManager::TTeam* TBaseDriver::GetTeam()
{
  return oTeam;
}
//==========================================================================*
*/

//==========================================================================*
// Get Pointer to TORCS data of track
//--------------------------------------------------------------------------*
PTrack TBaseDriver::Track()
  {return oTrack;};
//==========================================================================*

//==========================================================================*
// Get Pointer to TORCS data of car
//--------------------------------------------------------------------------*
PtCarElt TBaseDriver::Car()
  {return oCar;};
//==========================================================================*
#endif // _BASE_DRIVER_H_
//--------------------------------------------------------------------------*
// end of file basedriver.h
//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++*

