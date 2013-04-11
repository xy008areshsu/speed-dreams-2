/***************************************************************************

    file        : human.h
    created     : Sat May 10 19:12:46 CEST 2003
    copyright   : (C) 2003 by Eric Espie
    email       : eric.espie@torcs.org   
    version     : $Id: human.h 5193 2013-02-24 10:38:40Z wdbee $

 ***************************************************************************/

/***************************************************************************
 *                                                                         *
 *   This program is free software; you can redistribute it and/or modify  *
 *   it under the terms of the GNU General Public License as published by  *
 *   the Free Software Foundation; either version 2 of the License, or     *
 *   (at your option) any later version.                                   *
 *                                                                         *
 ***************************************************************************/
 
/** @file    
    		
    @author	<a href=mailto:torcs@free.fr>Eric Espie</a>
    @version	$Id: human.h 5193 2013-02-24 10:38:40Z wdbee $
*/

#ifndef _HUMAN_H_
#define _HUMAN_H_

#include <vector>

#include <car.h>


typedef enum { eTransAuto, eTransSeq, eTransGrid, eTransHbox } eTransmission;

typedef enum { eRWD, eFWD, e4WD } eDriveTrain;

typedef struct HumanContext
{
    int			nbPitStops;
    int			lastPitStopLap;
    bool 		autoReverseEngaged;
    tdble		shiftThld[MAX_GEARS+1];
    tdble		gear;
    tdble		distToStart;
    float		clutchTime;
    float		maxClutchTime;
    float		clutchdelay;
    float		antiLock;
    float		antiSlip;
    int			lap;
    float		prevLeftSteer;
    float		prevRightSteer;
    float		paccel;
    float		pbrake;
    bool		manual;
    eTransmission	transmission;
    int			nbPitStopProg;
    bool		paramAsr;
    bool		paramAbs;
    bool		relButNeutral;
    bool		seqShftAllowNeutral;
    bool		seqShftAllowReverse;
    bool		autoReverse;
    eDriveTrain	driveTrain;
    bool		autoClutch;
    tControlCmd		*cmdControl;
    bool		mouseControlUsed;
    int			lightCmd;

	// simuV4 ...
    bool		useESP;
    float		brakeRep;
    float		brakeCorr;
    float		brakeFront;
    float		brakeRear;
    float		brakeLeft;
    float		brakeRight;
	// ... simuV4

} tHumanContext;

extern std::vector<tHumanContext*> HCtx;

extern bool joyPresent;

#endif /* _HUMAN_H_ */ 
