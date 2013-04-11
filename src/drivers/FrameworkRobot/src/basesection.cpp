//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++*
// basesection.cpp
//--------------------------------------------------------------------------*
// Learning robot for SD
// Speed Dreams - Version 2.0.X
//--------------------------------------------------------------------------*
// Base class for a custom description of a track section
// 
// File         : basesection.cpp
// Created      : 2009.05.01
// Last changed : 2011.06.25
// Copyright    : © 2009-2011 Wolf-Dieter Beelitz
// eMail        : wdb@wdbee.de
// Version      : 1.00.000
//--------------------------------------------------------------------------*
// V1.00.000:
// TBaseSection is the atomar part of a track description
//--------------------------------------------------------------------------*
// This program is free software; you can redistribute it and/or modify
// it under the terms of the GNU General Public License as published by
// the Free Software Foundation; either version 2 of the License, or
// (at your option) any later version.
//--------------------------------------------------------------------------*
#include "globaldefinitions.h"

#include "basesection.h"

//==========================================================================*
// Default constructor
//--------------------------------------------------------------------------*
TBaseSection::TBaseSection():
	Seg(NULL),
	Station(0),
	WidthToLeft(0),
	WidthToRight(0),
	T(0),
	Friction(0)
{
}
//==========================================================================*

//==========================================================================*
// Destructor
//--------------------------------------------------------------------------*
TBaseSection::~TBaseSection()
{
}
//==========================================================================*
// end of file basesection.cpp
//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++*
