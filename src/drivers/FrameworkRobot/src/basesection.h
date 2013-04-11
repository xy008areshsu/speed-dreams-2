//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++*
// basesection.h
//--------------------------------------------------------------------------*
// Learning robot for SD
// Speed Dreams - Version 2.0.X
//--------------------------------------------------------------------------*
// Base class for a custom description of a track section
// 
// File         : basesection.h
// Created      : 2009.05.01
// Last changed : 2011.06.25
// Copyright    : © 2009-2011 Wolf-Dieter Beelitz
// eMail        : wdb@wdbee.de
// Version      : 1.00.000
//--------------------------------------------------------------------------*
// This program is free software; you can redistribute it and/or modify
// it under the terms of the GNU General Public License as published by
// the Free Software Foundation; either version 2 of the License, or
// (at your option) any later version.
//--------------------------------------------------------------------------*
#ifndef _BASE_SECTION_H_
#define _BASE_SECTION_H_

//==========================================================================*
// Class TBaseSection
//--------------------------------------------------------------------------*
class TBaseSection
{
	public:
		TBaseSection();							// Default constructor
		~TBaseSection();						// Destructor

		PTrackSeg Seg;							// Original Track segment.
		TVec3d Center;							// Centre
		TVec3d ToRight;							// To right
		float Station;							// Dist. f. start of Segment
		float WidthToLeft;						// Width to left.
		float WidthToRight;						// Width to right.
		float T;								// Local station in segment
		float Friction;							// Friction
};
//==========================================================================*
#endif // _BASE_SECTION_H_
//--------------------------------------------------------------------------*
// end of file basesection.h
//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++*
