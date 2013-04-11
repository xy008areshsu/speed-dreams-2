//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++*
// straight.cpp
//--------------------------------------------------------------------------*
// Learning robot for SD
// Speed Dreams - Version 2.0.X
//--------------------------------------------------------------------------*
// Provides a straight for distance and collision calculations
// 
// File         : straight.cpp
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

#include "straight.h"

//==========================================================================*
// Default constructor
//--------------------------------------------------------------------------*
TStraight::TStraight()
{
};
//==========================================================================*

//==========================================================================*
// Point direction constructor
//--------------------------------------------------------------------------*
TStraight::TStraight(TVec2d Point, TVec2d Direction)
{
	P = Point;
	D = Direction;
	D.normalize();
};
//==========================================================================*

//==========================================================================*
// Two point constructor
//--------------------------------------------------------------------------*
TStraight::TStraight(TVec2d Point, double X, double Y)
{
	P = Point;
	D.x = X;
	D.y = Y;
	D.normalize();
};
//==========================================================================*

//==========================================================================*
// Destructor
//--------------------------------------------------------------------------*
TStraight::~TStraight()
{
};
//==========================================================================*

//==========================================================================*
// Distance from straight
//--------------------------------------------------------------------------*
double TStraight::Distance(TVec2d Point)
{
	TVec2d Delta = Point - P;
	double DL = D * Delta;
	TVec2d D2 = DL * D;
	TVec2d D3 = Delta - D2;

	return D3.len();
};
//==========================================================================*

//==========================================================================*
// Intersection point
//--------------------------------------------------------------------------*
/* DO NOT UST THIS WAY, IT DOES NOT WORK FOR THE SMALL ANGLES WE HAVE HERE 
   THE DIFFERENCE OF CALCULATION OF SP1 = S1.Intersect(S2) COMPARED TO
   SP2 = S2.Intersect(S1) IS GREATER THAN 10 m IN A TYPICAL SITUATION!
TVec2d TStraight::Intersect(TStraight& S)
{
	double T;
	double denom = (D.x * S.D.y - D.y * S.D.x);
	if (fabs(denom) <= 0.0000001)
		T = FLT_MAX;
	else
		T = (S.D.x * (P.y - S.P.y) - S.D.y * ( P.x - S.P.x)) / denom;
	
	return S.P + T * S.D;
};
*/
//==========================================================================*

//==========================================================================*
// Intersection point (High accuracy computation)
//--------------------------------------------------------------------------*
TVec2d TStraight::Intersect(TStraight& S)
{
	TVec2d P1(P.x + D.x,P.y + D.y);
	TVec2d P2(S.P.x + S.D.x,S.P.y + S.D.y);

	double a;
	double d = 
		(P1.x - P.x)*(P2.y - S.P.y) - (P2.x - S.P.x)*(P1.y - P.y);

	if (fabs(d) < 0.000001)
		a = FLT_MAX;
	else
		a = ((P2.x - P.x)*(P2.y - S.P.y) - (P2.x - S.P.x)*(P2.y - P.y))/d;

	TVec2d SP((P.x + a * (P1.x - P.x)),(P.y + a * (P1.y - P.y)));
	return SP;
};
//==========================================================================*

//==========================================================================*
// Intersection distance
//--------------------------------------------------------------------------*
/* DO NOT UST THIS WAY, IT DOES NOT WORK FOR THE SMALL ANGLES WE HAVE HERE 
   THE DIFFERENCE OF CALCULATION OF SP1 = S1.IntersectDist(S2) COMPARED TO
   SP2 = S2.IntersectDist(S1) IS GREATER THAN 10 m IN A TYPICAL SITUATION!
double TStraight::IntersectDist(TStraight& S)
{
	double denom = (D.x * S.D.y - D.y * S.D.x);
	if (fabs(denom) <= 0.0000001)
//	if (denom == 0.0)
		return FLT_MAX;

	return (S.D.x * (P.y - S.P.y) - S.D.y * ( P.x - S.P.x)) / denom;
};
*/
//==========================================================================*

//==========================================================================*
// Intersection distance
//--------------------------------------------------------------------------*
double TStraight::IntersectDist(TStraight& S)
{
	TVec2d P1(P.x + D.x,P.y + D.y);
	TVec2d P2(S.P.x + S.D.x,S.P.y + S.D.y);

	double a;
	double d = 
		(P1.x - P.x)*(P2.y - S.P.y) - (P2.x - S.P.x)*(P1.y - P.y);

	if (fabs(d) < 0.000001)
		a = FLT_MAX;
	else
		a = ((P2.x - P.x)*(P2.y - S.P.y) - (P2.x - S.P.x)*(P2.y - P.y))/d;

	double xs = (P.x + a * (P1.x - P.x));
	double ys = (P.y + a * (P1.y - P.y));

	return sqrt((P.x - xs)*(P.x - xs) + (P.y - ys)*(P.y - ys));
};
//==========================================================================*

//--------------------------------------------------------------------------*
// end of file straight.cpp
//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++*
