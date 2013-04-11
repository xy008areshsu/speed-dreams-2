//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++*
// parabel.h
//--------------------------------------------------------------------------*
// Learning robot for SD
// Speed Dreams - Version 2.0.X
//--------------------------------------------------------------------------*
// Parabel als quadratisches Polynom
// 
// File         : parabel.h
// Created      : 2007.11.25
// Last changed : 2011.09.25
// Copyright    : © 2007-2011 Wolf-Dieter Beelitz
// eMail        : wdb@wdbee.de
// Version      : 1.00.000
//--------------------------------------------------------------------------*
// This program is free software; you can redistribute it and/or modify
// it under the terms of the GNU General Public License as published by
// the Free Software Foundation; either version 2 of the License, or
// (at your option) any later version.
//--------------------------------------------------------------------------*
#ifndef _PARABEL_H_
#define _PARABEL_H_

#include "globaldefinitions.h"

//==========================================================================*
// Declaration of class TParabel
//--------------------------------------------------------------------------*
class TParabel
{
  public:
	TParabel();
	TParabel(double A, double B, double C);
	TParabel(double X, double Y, double VelY, double AccY);
	~TParabel();

	void Set(double A, double B, double C);
	void Set(double X, double Y, double VelY, double AccY);

	double CalcMin() const;
	double CalcY(double X) const;
	bool Solve(double Y, double& X0, double& X1) const;
	bool SmallestNonNegativeRoot(double& T) const;

	TParabel operator+ (const TParabel& Q) const;
	TParabel operator- (const TParabel& Q) const;

  private:
	double oA;
	double oB;
	double oC;
};
//==========================================================================*
#endif // _PARABEL_H_
//--------------------------------------------------------------------------*
// end of file parabel.h
//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++*
