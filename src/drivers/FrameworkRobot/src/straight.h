//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++*
// straight.h
//--------------------------------------------------------------------------*
// Learning robot for SD
// Speed Dreams - Version 2.0.X
//--------------------------------------------------------------------------*
// Provides a straight for distance and collision calculations
// 
// File         : straight.h
// Created      : 2011.06.26
// Last changed : 2011.06.26
// Copyright    : © 2006-2011 Wolf-Dieter Beelitz
// eMail        : wdb@wdbee.de
// Version      : 1.00.000
//--------------------------------------------------------------------------*
// This program is free software; you can redistribute it and/or modify
// it under the terms of the GNU General Public License as published by
// the Free Software Foundation; either version 2 of the License, or
// (at your option) any later version.
//--------------------------------------------------------------------------*
#ifndef _STRAIGHT_H_
#define _STRAIGHT_H_

#include "globaldefinitions.h"
#include "vec2d.h"

//==========================================================================*
// A straight
//--------------------------------------------------------------------------*
class TStraight
{
	public:
		TStraight();                             // Default constructor
		TStraight(								 // Point direction constr.
			TVec2d Point, TVec2d Direction);     
		TStraight(								 // Two point constructor
			TVec2d Point, double X, double Y);     
		~TStraight();                            // Destructor

		double Distance(TVec2d Point);			 // Distance from straight
		TVec2d Intersect(TStraight& Straight);	 // Intersection point
		double IntersectDist(TStraight& S);		 // Distance of intersection
												 // along S

	public:
		TVec2d D;								 // Direction
		TVec2d P;								 // Point

};
//==========================================================================*
#endif // _STRAIGHT_H_
//--------------------------------------------------------------------------*
// end of file straight.h
//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++*

