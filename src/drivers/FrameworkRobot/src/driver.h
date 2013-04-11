//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++*
// driver.h
//--------------------------------------------------------------------------*
// Learning robot for SD
// Speed Dreams - Version 2.0.X
//--------------------------------------------------------------------------*
// Class of a custom driver
// 
// File         : driver.h
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
#ifndef _DRIVER_H_
#define _DRIVER_H_

#include <track.h>
#include <car.h>
#include <robot.h>

#include "globaldefinitions.h"

#include "basedriver.h"

//==========================================================================*
// Declaration of class TDriver
//--------------------------------------------------------------------------*
class TDriver : public TBaseDriver
{
	public:
		TDriver();     						     // Default constructor
		~TDriver();								 // Destructor
};
//==========================================================================*

#endif // _DRIVER_H_
//--------------------------------------------------------------------------*
// end of file driver.h
//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++*
