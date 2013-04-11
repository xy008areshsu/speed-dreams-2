//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++*
// simpledriver.h
//--------------------------------------------------------------------------*
// Learning robot for SD
// Speed Dreams - Version 2.0.X
//--------------------------------------------------------------------------*
// Simple driver for tests
// 
// File         : simpledriver.h
// Created      : 2011.06.16
// Last changed : 2011.06.19
// Copyright    : © 2011 Wolf-Dieter Beelitz
// eMail        : wdb@wdbee.de
// Version      : 0.00.000
//--------------------------------------------------------------------------*
// V0.00.000:
//--------------------------------------------------------------------------*
// This program is free software; you can redistribute it and/or modify
// it under the terms of the GNU General Public License as published by
// the Free Software Foundation; either version 2 of the License, or
// (at your option) any later version.
//--------------------------------------------------------------------------*
#ifndef _SIMPLEDRIVER_H_
#define _SIMPLEDRIVER_H_

#include "globaldefinitions.h"
#include "commondata.h"
#include "abstractdriver.h"

//==========================================================================*
// TSimpleDriver
//--------------------------------------------------------------------------*
class TSimpleDriver : public TAbstractDriver
{
  public:
	TSimpleDriver();                             // Default constructor
	~TSimpleDriver();                            // Destructor

	// SD-Interface:
	virtual void InitTrack(                      // Initialize Track
	  tTrack* Track, 
	  void* CarHandle, 
	  void** CarParmHandle, 
	  tSituation* Situation);

	virtual void NewRace(                        // Start new Race 
	  tCarElt* Car, 
	  tSituation* Situation);

	virtual void Drive();                        // Drive while racing
	//virtual void DriveLast();                    // Reuse drive commands
	//virtual int PitCmd();                        // Handle pitstop
	//virtual void EndRace();                      // Stop race
	//virtual void Shutdown();                     // Cleanup

	//float SimpleSteering();

};
#endif // _SIMPLEDRIVER_H_
//--------------------------------------------------------------------------*
// end of file simpledriver.h
//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++*
