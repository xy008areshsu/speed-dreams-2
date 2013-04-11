/***************************************************************************

    file                 : pref.cpp
    created              : Sat Apr 29 16:51:03 CEST 2000
    copyright            : (C) 2000 by Eric Espie
    email                : torcs@free.fr
    version              : $Id: pref.cpp 4518 2012-02-22 04:09:39Z mungewell $

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
    @version	$Id: pref.cpp 4518 2012-02-22 04:09:39Z mungewell $
*/

#include <tgfclient.h>
#include <playerpref.h>

#include "pref.h"
#include "human.h"

tControlCmd	CmdControlRef[] = {
    {HM_ATT_UP_SHFT,    GFCTRL_TYPE_JOY_BUT,       0, HM_ATT_UP_SHFT_MIN,    0.0, 0.0, HM_ATT_UP_SHFT_MAX,    1.0, NULL, 0.0, NULL, 0.0, NULL, 0.0, NULL, 0.0},
    {HM_ATT_DN_SHFT,    GFCTRL_TYPE_JOY_BUT,       1, HM_ATT_DN_SHFT_MIN,    0.0, 0.0, HM_ATT_DN_SHFT_MAX,    1.0, NULL, 0.0, NULL, 0.0, NULL, 0.0, NULL, 0.0},
    {HM_ATT_ASR_CMD,    GFCTRL_TYPE_JOY_BUT,       2, HM_ATT_ASR_MIN,        0.0, 0.0, HM_ATT_ASR_MAX,        1.0, NULL, 0.0, NULL, 0.0, NULL, 0.0, NULL, 0.0},
    {HM_ATT_ABS_CMD,    GFCTRL_TYPE_JOY_BUT,       3, HM_ATT_ABS_MIN,        0.0, 0.0, HM_ATT_ABS_MAX,        1.0, NULL, 0.0, NULL, 0.0, NULL, 0.0, NULL, 0.0},
    {HM_ATT_GEAR_R,     GFCTRL_TYPE_NOT_AFFECTED, -1, HM_ATT_GEAR_R_MIN,     0.0, 0.0, HM_ATT_GEAR_R_MAX,     1.0, NULL, 0.0, NULL, 0.0, NULL, 0.0, NULL, 0.0},
    {HM_ATT_GEAR_N,     GFCTRL_TYPE_NOT_AFFECTED, -1, HM_ATT_GEAR_N_MIN,     0.0, 0.0, HM_ATT_GEAR_N_MAX,     1.0, NULL, 0.0, NULL, 0.0, NULL, 0.0, NULL, 0.0},
    {HM_ATT_GEAR_1,     GFCTRL_TYPE_NOT_AFFECTED, -1, NULL, 0.0, 0.0, NULL, 0.0, NULL, 0.0, NULL, 0.0, NULL, 0.0, NULL, 0.0},
    {HM_ATT_GEAR_2,     GFCTRL_TYPE_NOT_AFFECTED, -1, NULL, 0.0, 0.0, NULL, 0.0, NULL, 0.0, NULL, 0.0, NULL, 0.0, NULL, 0.0},
    {HM_ATT_GEAR_3,     GFCTRL_TYPE_NOT_AFFECTED, -1, NULL, 0.0, 0.0, NULL, 0.0, NULL, 0.0, NULL, 0.0, NULL, 0.0, NULL, 0.0},
    {HM_ATT_GEAR_4,     GFCTRL_TYPE_NOT_AFFECTED, -1, NULL, 0.0, 0.0, NULL, 0.0, NULL, 0.0, NULL, 0.0, NULL, 0.0, NULL, 0.0},
    {HM_ATT_GEAR_5,     GFCTRL_TYPE_NOT_AFFECTED, -1, NULL, 0.0, 0.0, NULL, 0.0, NULL, 0.0, NULL, 0.0, NULL, 0.0, NULL, 0.0},
    {HM_ATT_GEAR_6,     GFCTRL_TYPE_NOT_AFFECTED, -1, NULL, 0.0, 0.0, NULL, 0.0, NULL, 0.0, NULL, 0.0, NULL, 0.0, NULL, 0.0},

    {HM_ATT_THROTTLE,   GFCTRL_TYPE_JOY_AXIS,      1, HM_ATT_THROTTLE_MIN,   0.0, 0.0, HM_ATT_THROTTLE_MAX,   1.0, HM_ATT_THROTTLE_SENS, 1.0, HM_ATT_THROTTLE_POW, 2.0, NULL, 0.0, NULL, 0.0},
    {HM_ATT_BRAKE,      GFCTRL_TYPE_JOY_AXIS,      1, HM_ATT_BRAKE_MIN,      0.0, 0.0, HM_ATT_BRAKE_MAX,      1.0, HM_ATT_BRAKE_SENS,    1.0, HM_ATT_BRAKE_POW,    2.0, NULL, 0.0, NULL, 0.0},
    {HM_ATT_LEFTSTEER,  GFCTRL_TYPE_JOY_AXIS,      0, HM_ATT_LEFTSTEER_MIN,  0.0, 0.0, HM_ATT_LEFTSTEER_MAX,  1.0, HM_ATT_STEER_SENS,    2.0, HM_ATT_LEFTSTEER_POW,    1.0, HM_ATT_STEER_SPD, 0.0, HM_ATT_STEER_DEAD, 0.0},
    {HM_ATT_RIGHTSTEER, GFCTRL_TYPE_JOY_AXIS,      0, HM_ATT_RIGHTSTEER_MIN, 0.0, 0.0, HM_ATT_RIGHTSTEER_MAX, 1.0, HM_ATT_STEER_SENS,    2.0, HM_ATT_RIGHTSTEER_POW,    1.0, HM_ATT_STEER_SPD, 0.0, HM_ATT_STEER_DEAD, 0.0},
    {HM_ATT_LIGHT1_CMD, GFCTRL_TYPE_NOT_AFFECTED, -1, HM_ATT_LIGHT1_MIN,     0.0, 0.0, HM_ATT_LIGHT1_MAX,     1.0, NULL, 0.0, NULL, 0.0, NULL, 0.0, NULL, 0.0},
    {HM_ATT_CLUTCH,     GFCTRL_TYPE_NOT_AFFECTED, -1, HM_ATT_CLUTCH_MIN,     0.0, 0.0, HM_ATT_CLUTCH_MAX,     1.0, HM_ATT_CLUTCH_SENS,    1.0, HM_ATT_CLUTCH_POW,    2.0, NULL, 0.0, NULL, 0.0},
    {HM_ATT_SPDLIM_CMD, GFCTRL_TYPE_NOT_AFFECTED, -1, HM_ATT_SPDLIM_MIN,     0.0, 0.0, HM_ATT_SPDLIM_MAX,     1.0, NULL, 0.0, NULL, 0.0, NULL, 0.0, NULL, 0.0},
    {HM_ATT_EBRAKE_CMD, GFCTRL_TYPE_JOY_BUT,      19, HM_ATT_EBRAKE_MIN,     0.0, 0.0, HM_ATT_EBRAKE_MAX,     0.0, NULL, 0.0, NULL, 0.0, NULL, 0.0, NULL, 0.0},
    {HM_ATT_HBOX_X,     GFCTRL_TYPE_NOT_AFFECTED, -1, NULL, 0.0, 0.0, NULL, 0.0, NULL, 0.0, NULL, 0.0, NULL, 0.0, NULL, 0.0},
    {HM_ATT_HBOX_Y,     GFCTRL_TYPE_NOT_AFFECTED, -1, NULL, 0.0, 0.0, NULL, 0.0, NULL, 0.0, NULL, 0.0, NULL, 0.0, NULL, 0.0},
    {HM_ATT_LEFTGLANCE, GFCTRL_TYPE_NOT_AFFECTED, -1, HM_ATT_L_GLANCE_MIN,   0.0, 0.0, HM_ATT_L_GLANCE_MAX,   0.0, NULL, 0.0, NULL, 0.0, NULL, 0.0, NULL, 0.0},
    {HM_ATT_RIGHTGLANCE,GFCTRL_TYPE_NOT_AFFECTED, -1, HM_ATT_R_GLANCE_MIN,   0.0, 0.0, HM_ATT_R_GLANCE_MAX,   0.0, NULL, 0.0, NULL, 0.0, NULL, 0.0, NULL, 0.0}
};

const int NbCmdControl = sizeof(CmdControlRef) / sizeof(CmdControlRef[0]);

typedef struct
{
    const char	*settings;
    const char	*parmName;
} tCtrl;


static tCtrl	controlList[] = {
    {HM_SECT_JSPREF,    HM_VAL_JOYSTICK},
    {HM_SECT_KEYBPREF,  HM_VAL_KEYBOARD},
    {HM_SECT_MOUSEPREF, HM_VAL_MOUSE}
};
static const int nbControl = sizeof(controlList) / sizeof(controlList[0]);

const std::string Yn[] = {HM_VAL_YES, HM_VAL_NO};

void
HmReadPrefs(const int index)
{
	const char	*prm;
	const char	*defaultSettings;
	char	sstring[1024];
	tCtrlRef	*ref;
	const int	idx = index - 1;
	tControlCmd	*cmdCtrl;

	cmdCtrl = HCtx[idx]->cmdControl = (tControlCmd *) calloc (NbCmdControl, sizeof (tControlCmd));
	memcpy(cmdCtrl, CmdControlRef, NbCmdControl * sizeof (tControlCmd));

	sprintf(sstring, "%s%s", GfLocalDir(), HM_PREF_FILE);
	PrefHdle = GfParmReadFile(sstring, GFPARM_RMODE_REREAD | GFPARM_RMODE_CREAT);
	sprintf(sstring, "%s/%s/%d", HM_SECT_PREF, HM_LIST_DRV, index);
	prm = GfParmGetStr(PrefHdle, sstring, HM_ATT_TRANS, HM_VAL_AUTO);
	if (!strcmp(prm, HM_VAL_AUTO))
		HCtx[idx]->transmission = eTransAuto;
	else if (!strcmp(prm, HM_VAL_SEQ))
		HCtx[idx]->transmission = eTransSeq;
	else if (!strcmp(prm, HM_VAL_HBOX))
		HCtx[idx]->transmission = eTransHbox;
	else
		HCtx[idx]->transmission = eTransGrid;

	/* Parameters Settings */
	//ABS on/off
	prm = GfParmGetStr(PrefHdle, sstring, HM_ATT_ABS, Yn[HCtx[idx]->paramAbs].c_str());
	HCtx[idx]->paramAbs = (prm == Yn[0]);
	
	//ASR on/off
	prm = GfParmGetStr(PrefHdle, sstring, HM_ATT_ASR, Yn[HCtx[idx]->paramAsr].c_str());
	HCtx[idx]->paramAsr = (prm == Yn[0]);
	
	//Controls
	prm = GfParmGetStr(PrefHdle, HM_SECT_PREF, HM_ATT_CONTROL, controlList[2].parmName);
	prm = GfParmGetStr(PrefHdle, sstring, HM_ATT_CONTROL, prm);
	int i;
	for (i = 0; i < nbControl; i++) {
		if (!strcmp(prm, controlList[i].parmName))
			break;
	}//for i
	
	if (i == nbControl)
		i = 2;
	
	if (i == 0 && !joyPresent)
		i = 2;
	
	defaultSettings = controlList[i].settings;
	
	/* Command Settings */
	GfOut("Command settings :\n");
	for (int cmd = 0; cmd < NbCmdControl; cmd++) {
		
		prm = GfctrlGetNameByRef(cmdCtrl[cmd].type, cmdCtrl[cmd].val);
		prm = GfParmGetStr(PrefHdle, defaultSettings, cmdCtrl[cmd].name, prm);
		prm = GfParmGetStr(PrefHdle, sstring, cmdCtrl[cmd].name, prm);
		if (!prm || strlen(prm) == 0) {
			cmdCtrl[cmd].type = GFCTRL_TYPE_NOT_AFFECTED;
			GfOut("  %s\t: None (-1)\n", cmdCtrl[cmd].name);
			continue;
		}
		
		ref = GfctrlGetRefByName(prm);
		cmdCtrl[cmd].type = ref->type; // GFCTRL_TYPE_XX
		cmdCtrl[cmd].val = ref->index; // Index for joy. axis, buttons ; 1-bytes ASCII code for keys.
		GfOut("  %s\t: %s\n", cmdCtrl[cmd].name, prm);
	
		/* min value < max value */
		if (cmdCtrl[cmd].minName) {
			cmdCtrl[cmd].min = (float)GfParmGetNum(PrefHdle, defaultSettings, cmdCtrl[cmd].minName, (char*)NULL, (tdble)cmdCtrl[cmd].min);
			cmdCtrl[cmd].min = cmdCtrl[cmd].minVal = (float)GfParmGetNum(PrefHdle, sstring, cmdCtrl[cmd].minName, (char*)NULL, (tdble)cmdCtrl[cmd].min);
		}//if minName
	
		/* max value > min value */
		if (cmdCtrl[cmd].maxName) {
			cmdCtrl[cmd].max = (float)GfParmGetNum(PrefHdle, defaultSettings, cmdCtrl[cmd].maxName, (char*)NULL, (tdble)cmdCtrl[cmd].max);
			cmdCtrl[cmd].max = (float)GfParmGetNum(PrefHdle, sstring,		 cmdCtrl[cmd].maxName, (char*)NULL, (tdble)cmdCtrl[cmd].max);
		}//if maxName
	
		/* 0 < sensitivity */
		if (cmdCtrl[cmd].sensName) {
			cmdCtrl[cmd].sens = (float)GfParmGetNum(PrefHdle, defaultSettings, cmdCtrl[cmd].sensName, (char*)NULL, (tdble)cmdCtrl[cmd].sens);
			cmdCtrl[cmd].sens = (float)GfParmGetNum(PrefHdle, sstring,		 cmdCtrl[cmd].sensName, (char*)NULL, (tdble)cmdCtrl[cmd].sens);
			if (cmdCtrl[cmd].sens <= 0.0)
				cmdCtrl[cmd].sens = 1.0e-6;
		}//if sensName
	
		/* 0 < power (1 = linear) */
		if (cmdCtrl[cmd].powName) {
			cmdCtrl[cmd].pow = (float)GfParmGetNum(PrefHdle, defaultSettings, cmdCtrl[cmd].powName, (char*)NULL, (tdble)cmdCtrl[cmd].pow);
			cmdCtrl[cmd].pow = (float)GfParmGetNum(PrefHdle, sstring,		 cmdCtrl[cmd].powName, (char*)NULL, (tdble)cmdCtrl[cmd].pow);
		}//if powName

		/* 0 <= sensitivity to car speed */
		if (cmdCtrl[cmd].spdSensName) {
			cmdCtrl[cmd].spdSens = (float)GfParmGetNum(PrefHdle, defaultSettings, cmdCtrl[cmd].spdSensName, (char*)NULL, (tdble)cmdCtrl[cmd].spdSens);
			cmdCtrl[cmd].spdSens = (float)GfParmGetNum(PrefHdle, sstring,		 cmdCtrl[cmd].spdSensName, (char*)NULL, (tdble)cmdCtrl[cmd].spdSens);
			if (cmdCtrl[cmd].spdSens < 0.0)
				cmdCtrl[cmd].spdSens = 0.0;
		}//if spdSendName

		/* 0 =< dead zone < max value - min value (not used for on/off controls like keyboard / mouse buttons / joystick buttons) */
		if (cmdCtrl[cmd].deadZoneName) {
			cmdCtrl[cmd].deadZone = (float)GfParmGetNum(PrefHdle, defaultSettings, cmdCtrl[cmd].deadZoneName, (char*)NULL, (tdble)cmdCtrl[cmd].deadZone);
			cmdCtrl[cmd].deadZone = (float)GfParmGetNum(PrefHdle, sstring,		 cmdCtrl[cmd].deadZoneName, (char*)NULL, (tdble)cmdCtrl[cmd].deadZone);
			if (cmdCtrl[cmd].deadZone < 0.0)
				cmdCtrl[cmd].deadZone = 0.0;
			else if (cmdCtrl[cmd].deadZone > 1.0)
				cmdCtrl[cmd].deadZone = 1.0;
		}//if deadZoneName
	
		if (cmdCtrl[cmd].min > cmdCtrl[cmd].max)
			std::swap(cmdCtrl[cmd].min, cmdCtrl[cmd].max);
	
		//cmdCtrl[cmd].deadZone = (cmdCtrl[cmd].max - cmdCtrl[cmd].min) * cmdCtrl[cmd].deadZone;
		
		if (cmdCtrl[cmd].type == GFCTRL_TYPE_MOUSE_AXIS)
			HCtx[idx]->mouseControlUsed = 1;
		
	}//for cmd

	prm = GfParmGetStr(PrefHdle, defaultSettings, HM_ATT_REL_BUT_NEUTRAL, Yn[HCtx[idx]->relButNeutral].c_str());
	prm = GfParmGetStr(PrefHdle, sstring, HM_ATT_REL_BUT_NEUTRAL, prm);
	HCtx[idx]->relButNeutral = (prm == Yn[0]);
	
	prm = GfParmGetStr(PrefHdle, defaultSettings, HM_ATT_SEQSHFT_ALLOW_NEUTRAL, Yn[HCtx[idx]->seqShftAllowNeutral].c_str());
	prm = GfParmGetStr(PrefHdle, sstring, HM_ATT_SEQSHFT_ALLOW_NEUTRAL, prm);
	HCtx[idx]->seqShftAllowNeutral = (prm == Yn[0]);

	prm = GfParmGetStr(PrefHdle, defaultSettings, HM_ATT_SEQSHFT_ALLOW_REVERSE, Yn[HCtx[idx]->seqShftAllowReverse].c_str());
	prm = GfParmGetStr(PrefHdle, sstring, HM_ATT_SEQSHFT_ALLOW_REVERSE, prm);
	HCtx[idx]->seqShftAllowReverse = (prm == Yn[0]);
	
	prm = GfParmGetStr(PrefHdle, sstring, HM_ATT_AUTOREVERSE, Yn[HCtx[idx]->autoReverse].c_str());
	HCtx[idx]->autoReverse = (prm == Yn[0]);
}//HmReadPrefs
