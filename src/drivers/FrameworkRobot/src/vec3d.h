//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++*
// vec3d.h
//--------------------------------------------------------------------------*
// Learning robot for SD
// Speed Dreams - Version 2.0.X
//--------------------------------------------------------------------------*
// Helper functions for 3D vectors
// 
// File         : vec3d.h
// Created      : 20.02.2007
// Last changed : 2011.06.21
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
#ifndef _VEC3D_H_
#define _VEC3D_H_

#include <v3_t.h>
#include <tgf.h>

#include "globaldefinitions.h"
#include "vec2d.h"

//==========================================================================*
// Deklaration der Klasse TVec3d
//--------------------------------------------------------------------------*
class TVec3d : public v3t<double>
{
  public:
	TVec3d() {};
	TVec3d(const v3t<double>& V) : v3t<double>(V) {};
	TVec3d(double X, double Y, double Z) : v3t<double>(X, Y, Z) {};
	TVec3d(const t3Dd& V) : v3t<double>(V.x, V.y, V.z) {};

	TVec3d& operator= (const v3t<double>& V)
	{
	  v3t<double>::operator=(V);
	  return *this;
	};

	TVec2d GetXY() const {return TVec2d(x, y);};
};
//==========================================================================*
#endif // _VEC3D_H_
//--------------------------------------------------------------------------*
// end of file vec3d.h
//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++*
