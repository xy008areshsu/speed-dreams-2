//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++*
// abstractdriver.h
//--------------------------------------------------------------------------*
// Learning robot for SD
// Speed Dreams - Version 2.0.X
//--------------------------------------------------------------------------*
// Abstract base class of a driver
// 
// File         : abstractdriver.h
// Created      : 2011.06.16
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
#ifndef _ABSTRACTDRIVER_H_
#define _ABSTRACTDRIVER_H_

#include "globaldefinitions.h"

//==========================================================================*
// TAbstractDriver
//--------------------------------------------------------------------------*
class TAbstractDriver  
{
  public:
	TAbstractDriver();                           // Default constructor
	virtual ~TAbstractDriver();                  // Destructor
	static PAbstractDriver CreateDriver();       // For inherited classes

	// SD-Interface:
	virtual void InitTrack(                      // Initialize Track
		PTrack Track, 
		PCarHandle CarHandle,
		PCarSettings *CarParmHandle,
		PSituation Situation);

	virtual void NewRace(                        // Start new Race 
		PtCarElt Car, 
		PSituation Situation);

	virtual void Drive() = 0;					 // Drive while racing
	virtual int	PitCmd();						 // Handle pitstop
	virtual void EndRace();						 // Stop race
	virtual void Shutdown();					 // Cleanup

	// Extended Speed Dreams interface
	virtual void Update(						 // Update data
		PtCarElt Car, 
		PSituation Situation);
	virtual bool IsStuck();						 // Are we stuck at an obstacle? 
	virtual void Unstuck();						 // Overcome obstacles

    // Basic utilities for driving:
	virtual float SimpleSteering();				 // Simple steering angle

    // Basic utilities for the robot interface:
	void SetBotName(                             // Set name of robot
	  void* RobotSettings,                       // File handle
	  char* DriverName);                         // driver's name

	PtCarElt oCar;                               // SD data for own car
	PSituation oSituation;                       // SD data for situation

	char* oCarType;                              // Type name of own car
	double oCurrSimTime;                         // Current simulation time
	char* oDriverName;                           // Driver name
	int oIndex;                                  // Index of own driver
	int oRaceNumber;                             // Race number
	int oRobotTyp;                               // Type of robot
	char* oTeamName;                             // Team name


	static int NbrOfCars;                        // Nbr of cars driven by
	                                             // by this robot

	static const char* RobotName;                // Name of the robot module
	static const char* RobotDir;                 // Sub path to dll
	static const char* SectionPrivate;           // Robot section in xml file
	static const char* DefaultCarType;           // Default car type
};
#endif // _ABSTRACTDRIVER_H_
//--------------------------------------------------------------------------*
// end of file abstractdriver.h
//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++*
