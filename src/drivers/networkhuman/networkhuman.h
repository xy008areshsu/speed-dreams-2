/***************************************************************************

    file        : human.h
    created     : Sat May 10 19:12:46 CEST 2003
    copyright   : (C) 2003 by Eric Espie
    email       : eric.espie@torcs.org   
    version     : $Id: networkhuman.h 5071 2012-12-20 23:01:35Z torcs-ng $

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
    @version	$Id: networkhuman.h 5071 2012-12-20 23:01:35Z torcs-ng $
*/

#ifndef _NETWORKHUMAN_H_
#define _NETWORKHUMAN_H_

#include <vector>

#include <car.h>


typedef enum { eTransAuto, eTransSeq, eTransGrid, eTransHbox } eTransmission;

typedef enum { eRWD, eFWD, e4WD } eDriveTrain;

typedef struct HumanContext
{
    int		NbPitStops;
    int		LastPitStopLap;
    int 	AutoReverseEngaged;
    tdble	shiftThld[MAX_GEARS+1];
    tdble	Gear;
    tdble	distToStart;
    float	clutchtime;
    float	clutchdelay;
    float	ABS;
    float	AntiSlip;
    int		lap;
    float	prevLeftSteer;
    float	prevRightSteer;
		float paccel;
		float pbrake;
    int		manual;
    int		Transmission;
    int		NbPitStopProg;
    int		ParamAsr;
    int		ParamAbs;
    int		RelButNeutral;
    int		SeqShftAllowNeutral;
    int		SeqShftAllowReverse;
    int		AutoReverse;
    int		drivetrain;
		int   autoClutch;
    tControlCmd	*CmdControl;
    int		MouseControlUsed;
    int		lightCmd;
} tHumanContext;


extern std::vector<tHumanContext*> HCtx;

extern int joyPresent;

#endif /* _NETWORKHUMAN_H_ */ 



