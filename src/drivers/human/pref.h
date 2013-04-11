/***************************************************************************

    file                 : pref.h
    created              : Sat Apr 29 16:52:41 CEST 2000
    copyright            : (C) 2000 by Eric Espie
    email                : torcs@free.fr
    version              : $Id: pref.h 3750 2011-07-28 02:55:05Z mungewell $

 ***************************************************************************/

/***************************************************************************
 *                                                                         *
 *   This program is free software; you can redistribute it and/or modify  *
 *   it under the terms of the GNU General Public License as published by  *
 *   the Free Software Foundation; either version 2 of the License, or     *
 *   (at your option) any later version.                                   *
 *                                                                         *
 ***************************************************************************/
 
#ifndef _PREF_H_
#define _PREF_H_

#include <string>

typedef struct {
    const char	*name;		/* Name of the control */
    int		type;		/* Type of control (analog, joy button, keyboard) */
    int		val;		/* control index */
    const char	*minName;	/* Name of the min attribute */
    float	min;		/* min value for analog control */
    float	minVal;		/* another min value for analog control*/
    const char	*maxName;	/* Name of the max attribute */
    float	max;		/* max value for analog control */
    const char	*sensName;	/* Name of the sens attribute */
    float	sens;		/* sensitivity of control */
    const char	*powName;	/* Name of the pow attribute */
    float	pow;		/* power of curve command = pow(control, power) */
    const char	*spdSensName;	/* Name of the speed sensitivity attribute */
    float	spdSens;	/* speed sensitivity */
    const char	*deadZoneName;	/* Name of the dead zone attribute */
    float	deadZone;	/* dead zone (% of the available zone) */
} tControlCmd;

extern void	*PrefHdle;
extern const int NbCmdControl;
extern const std::string Yn[];

#define	CMD_UP_SHFT	0
#define	CMD_DN_SHFT	1
#define	CMD_ASR		2
#define	CMD_ABS		3
#define	CMD_GEAR_R	4
#define	CMD_GEAR_N	5
#define	CMD_GEAR_1	6
#define	CMD_GEAR_2	7
#define	CMD_GEAR_3	8
#define	CMD_GEAR_4	9
#define	CMD_GEAR_5	10
#define	CMD_GEAR_6	11
#define CMD_THROTTLE	12
#define CMD_BRAKE	13
#define CMD_LEFTSTEER	14
#define CMD_RIGHTSTEER	15
#define CMD_LIGHT1	16
#define CMD_CLUTCH	17
#define CMD_SPDLIM	18
#define CMD_EBRAKE	19
#define	CMD_HBOX_X	20
#define	CMD_HBOX_Y	21
#define CMD_LEFTGLANCE	22
#define CMD_RIGHTGLANCE	23

#define CMD_END_OF_LIST 23	/* Change this to same value as last item */

extern void HmReadPrefs(const int index);

#endif /* _PREF_H_ */ 
