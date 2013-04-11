//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++*
// vec2d.h
//--------------------------------------------------------------------------*
// Learning robot for SD
// Speed Dreams - Version 2.0.X
//--------------------------------------------------------------------------*
// Helper functions for 2D vectors
// 
// File         : vec2d.h
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
#ifndef _VEC2D_H_
#define _VEC2D_H_

#include <v2_t.h>
#include <v3_t.h>
#include <tgf.h>

#include "globaldefinitions.h"

//==========================================================================*
// Deklaration der Klasse TVec2d
//--------------------------------------------------------------------------*
class TVec2d : public v2t<double>
{
  public:
	TVec2d() {}
	TVec2d( const v2t<double>& v ) : v2t<double>(v) {}
	TVec2d( double x, double y ) : v2t<double>(x, y) {};
	TVec2d( const v3t<double>& v ) : v2t<double>() {x = v.x; y = v.y;};

	TVec2d&	operator=( const v2t<double>& v )
	{
		v2t<double>::operator=(v);
		return *this;
	}
};
//==========================================================================*
#endif // _VEC2D_H_
//--------------------------------------------------------------------------*
// end of file vec2d.h
//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++*
