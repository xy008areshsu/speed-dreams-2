//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++*
// abstractdriver.cpp
//--------------------------------------------------------------------------*
// Learning robot for SD
// Speed Dreams - Version 2.0.X
//--------------------------------------------------------------------------*
// Abstract base class of a driver
// 
// File         : abstractdriver.cpp
// Created      : 2011.06.16
// Last changed : 2011.10.02
// Copyright    : © 2011 Wolf-Dieter Beelitz
// eMail        : wdb@wdbee.de
// Version      : 1.00.000
//--------------------------------------------------------------------------*
// V1.00.000:
// TAbstractDriver is a base class for a driver. It provides all the things
// that are needed to handle a driver by the robotinterface itself.
//--------------------------------------------------------------------------*
// This program is free software; you can redistribute it and/or modify
// it under the terms of the GNU General Public License as published by
// the Free Software Foundation; either version 2 of the License, or
// (at your option) any later version.
//--------------------------------------------------------------------------*

#include "globaldefinitions.h"
#include "abstractdriver.h"
#include "driver.h"

#define BUFLEN 256

//==========================================================================*
// Common variables (same instance for all drivers)
//--------------------------------------------------------------------------*
const char* TAbstractDriver::DefaultCarType = "car1-trb1";
int TAbstractDriver::NbrOfCars = 0;
const char* TAbstractDriver::RobotName = "discipulus";
const char* TAbstractDriver::RobotDir = "drivers/discipuli";
const char* TAbstractDriver::SectionPrivate = "discipuli private";
//==========================================================================*

//==========================================================================*
// SD-Interface: Initialize Track
//--------------------------------------------------------------------------*
void TAbstractDriver::InitTrack(
	PTrack Track, 
	PCarHandle CarHandle, 
	PCarSettings *CarParmHandle, 
	PSituation Situation)
{
	*CarParmHandle = NULL;                       // Still undefined
};
//==========================================================================*

//==========================================================================*
// SD-Interface: Start new Race 
//--------------------------------------------------------------------------*
void TAbstractDriver::NewRace(PtCarElt Car, PSituation Situation)
{
	oCar = Car;
	oSituation = Situation;
};
//==========================================================================*

//==========================================================================*
// SD-Interface: Handle pitstop
//--------------------------------------------------------------------------*
int	TAbstractDriver::PitCmd()
{
	return ROB_PIT_IM;                           // Ready to be serviced
};
//==========================================================================*

//==========================================================================*
// SD-Interface: Stop race
//--------------------------------------------------------------------------*
void TAbstractDriver::EndRace()
{
};
//==========================================================================*

//==========================================================================*
// SD-Interface: Cleanup
//--------------------------------------------------------------------------*
void TAbstractDriver::Shutdown()
{
};
//==========================================================================*

//==========================================================================*
// Default constructor
//--------------------------------------------------------------------------*
TAbstractDriver::TAbstractDriver():
    oCar(NULL),                                  // Data of own car
    oCarType(NULL),                              // Type name of own car
	oCurrSimTime(-10.0),                         // Current simulation time
    oDriverName(NULL),                           // Driver name
	oIndex(0),                                   // Index of own driver
    oRaceNumber(0),                              // Race number
	oRobotTyp(0),                                // Type of robot
    oTeamName(NULL)                              // Team name
{
};
//==========================================================================*

//==========================================================================*
// Destructor
//--------------------------------------------------------------------------*
TAbstractDriver::~TAbstractDriver()
{
	if (oCarType)
		free(oCarType);
	if (oTeamName)
		free(oTeamName);
};
//==========================================================================*

//==========================================================================*
// Update: Minimum is to store the pointers for later use
//--------------------------------------------------------------------------*
void TAbstractDriver::Update(PtCarElt Car, PSituation Situation)
{
	oCar = Car;                                  // Update pointers
	oSituation = Situation;
};
//==========================================================================*

//==========================================================================*
// IsStuck: Lets assume we are not stuck
//--------------------------------------------------------------------------*
bool TAbstractDriver::IsStuck()
{
	return false;
};
//==========================================================================*

//==========================================================================*
// Dummy
//--------------------------------------------------------------------------*
void TAbstractDriver::Unstuck()
{

};
//==========================================================================*

//==========================================================================*
// Allow to create drivers of inherited classes calling this function
//--------------------------------------------------------------------------*
PAbstractDriver TAbstractDriver::CreateDriver()
{
	return new TDriver;
};
//==========================================================================*

//==========================================================================*
// Set name of robot (and other appendant features)
//--------------------------------------------------------------------------*
void TAbstractDriver::SetBotName(void* RobotSettings, char* DriverName)
{
    // At this point SD gives us no information
    // about the name of the driver, the team and
    // our own car type!
    // Because we want it to set the name as defined
    // in the teams xml file and to load depending
    // setup files we have to find it out:

    oCarType = NULL;

    char SectionBuffer[BUFLEN];                  // Buffer

	snprintf(SectionBuffer,BUFLEN,               // Build name of
        "%s/%s/%d"                               // section from
	    ,ROB_SECT_ROBOTS,ROB_LIST_INDEX          // SD definitions and 
		,oIndex);                                // Index of driver

	char* Section = SectionBuffer;

	oCarType = strdup(GfParmGetStr               // Get pointer to
        (RobotSettings                           // car type
        ,Section                                 // defined in corresponding
        ,ROB_ATTR_CAR, DefaultCarType));         // section, default car type

	oDriverName = DriverName;                    // Get pointer to drv. name

	oTeamName = strdup(GfParmGetStr              // Get pointer to
      (RobotSettings                             // drivers team name
      , Section                                  // defined in corresponding
      , ROB_ATTR_TEAM, (char *) oCarType));      // section, default car type

	oRaceNumber = (int) GfParmGetNum             // Get pointer to
      (RobotSettings                             // race number
      , Section, ROB_ATTR_RACENUM                // defined in corresponding
      , (char *) NULL, (tdble) oIndex + 1);      // section, index as default

    GfOut("# Driver name : %s\n",oDriverName);
    GfOut("# Team name   : %s\n",oTeamName);
    GfOut("# Car type    : %s\n",oCarType);
    GfOut("# Race number : %d\n",oRaceNumber);
};
//==========================================================================*

//==========================================================================*
// SimpleDriver: Steering
//--------------------------------------------------------------------------*
float TAbstractDriver::SimpleSteering()
{
	float Angle = RtTrackSideTgAngleL(&CarPos) - CarPosAz;
	FLOAT_NORM_PI_PI(Angle);
	return Angle -= CarToMiddle / CarSegWidth;
};
//==========================================================================*

//--------------------------------------------------------------------------*
// end of file abstractdriver.cpp
//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++*
