//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++*
// linalg.h
//--------------------------------------------------------------------------*
// Learning robot for SD
// Speed Dreams - Version 2.0.X
//--------------------------------------------------------------------------*
// Helper functions for linear algebra
// 
// File         : linalg.h
// Created      : 20.02.2007
// Last changed : 2011.06.24
// Copyright    : © 2007-2011 Wolf-Dieter Beelitz
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
#ifndef _LINALG_H_
#define _LINALG_H_

#include "globaldefinitions.h"

//==========================================================================*
// Typdefinition für die Darstellung der Koordinaten
//--------------------------------------------------------------------------*
typedef double TFloat;                             // 64 Bit
typedef double Double;                             // 64 Bit
typedef int Int;                                   // 32 signed integer
typedef unsigned int UInt;                         // 32 unsigned integer
typedef unsigned int Cardinal;                     // 32 unsigned integer
typedef bool Boolean;                              // bool
typedef float Tdble;                               // 32 Bit
typedef float* PTdble;                             // 32 Bit array
typedef void* Pointer;                             // Zeiger
typedef char* PChar;                               // String
//==========================================================================*

//==========================================================================*
// Typdefinition 2D Vektor und 3D Vektor
//--------------------------------------------------------------------------*
typedef struct
{
  TFloat x, y;
}
TV2D;
typedef TV2D* PV2D;

typedef t3Dd T3Dd;
typedef t3Dd* P3Dd;
typedef t3Dd TV3D;
typedef t3Dd* PV3D;
//==========================================================================*

//==========================================================================*
// Prototypen
//--------------------------------------------------------------------------*
Tdble Sqr(const double Value);
// 2D:
TV2D Add(const TV2D &LHS, const TV2D &RHS);
TV2D Assign(const TV2D &Vector);
Tdble CosAlpha(const TV2D &LHS, const TV2D &RHS);
Tdble CosAlpha(const TV2D &LHS, const TV2D &RHS, const TV2D &C);
Tdble Dir(const TV2D &LHS, const TV2D &RHS);
Tdble Dist(const TV2D &LHS, const TV2D &RHS);
TV2D Divide(const TV2D &Vector, const Tdble &Value);
Tdble Len(const TV2D &Vector);
TV2D Neg(const TV2D &Vector);
TV2D Normalize(const TV2D &Vector);
TV2D Mult(Tdble &Factor, const TV2D &Vector);
Tdble Mult(const TV2D &LHS, const TV2D &RHS);
TV2D Rot(const TV2D &Vector, const TV2D &Center, Tdble &Arc);
Int Sign(Int &Value);
Tdble Sign(Tdble &Value);
TV2D Sub(const TV2D &LHS, const TV2D &RHS);

// 3D:
TV3D Add(const TV3D &LHS, const TV3D &RHS);
TV3D Assign(const TV3D &Vector);
Tdble Dist(const TV3D &LHS, const TV3D &RHS);
TV3D Divide(const TV3D &Vector, const Tdble &Value);
Tdble Len(const TV3D &Vector);
TV3D Neg(const TV3D &Vector);
TV3D Normalize(const TV3D &Vector);
TV3D Mult(Tdble &Factor, const TV3D &Vector);
Tdble Mult(const TV3D &LHS, const TV3D &RHS);
TV3D CrossProd(const TV3D &LHS, const TV3D &RHS);
TV3D RotZ(const TV3D &Vector, const TV3D &Center, Tdble &Arc, Tdble &DZ);
TV3D Sub(const TV3D &LHS, const TV3D &RHS);

// Mixed
Tdble Dist(const TV2D &LHS, const TV2D &RHS);

// TVec3d
double Dist(const TVec3d &LHS, const TVec3d &RHS);
double Length2D(const TVec3d &Delta);
double Curv(double X1, double Y1, double X2, double Y2, double X3, double Y3);
double Curv2D(const TVec3d& P1, const TVec3d& P2, const TVec3d& P3);
double CurvZ(const TVec3d& P1, const TVec3d& P2, const TVec3d& P3);
bool IntersectionPoint(double p0x, double p0y,
	double v0x, double v0y, 
	double p1x, double p1y, 
	double v1x, double v1y, 
	double& t);
bool IntersectionPoint(const TVec2d& p0, const TVec2d& v0, 
	const TVec2d& p1, const TVec2d& v1, 
	double& t);
bool IntersectionPoint2D(const TVec3d& p0, const TVec3d& v0, 
	const TVec3d& p1, const TVec3d& v1, 
	double& t);

//==========================================================================*
#endif // _LINALG_H_
//--------------------------------------------------------------------------*
// end of file linalg.h
//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++*
