//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++*
// basetrack.h
//--------------------------------------------------------------------------*
// Learning robot for SD
// Speed Dreams - Version 2.0.X
//--------------------------------------------------------------------------*
// Base class for a custom track description
// 
// File         : basetrack.h
// Created      : 2009.05.01
// Last changed : 2011.06.21
// Copyright    : © 2009-2011 Wolf-Dieter Beelitz
// eMail        : wdb@wdbee.de
// Version      : 1.00.000
//--------------------------------------------------------------------------*
// This program is free software; you can redistribute it and/or modify
// it under the terms of the GNU General Public License as published by
// the Free Software Foundation; either version 2 of the License, or
// (at your option) any later version.
//--------------------------------------------------------------------------*
#ifndef _BASE_TRACK_H_
#define _BASE_TRACK_H_

#include "basesection.h"

//==========================================================================*
// Class TBaseTrack
//--------------------------------------------------------------------------*
class TBaseTrack
{
	public:
		tTrack*	oTrack;							 // SD data of track
		float oStepLen;							 // Distance betw. PathPoints  
		TBaseSection* oSections;				 // Sections of track

		virtual void MakeDescription();			 // Make track description
		virtual void NormalizeDir(				 // Normalize direction of
			TBaseSection* Sec);					 // Section

		TBaseTrack();
		virtual ~TBaseTrack();
		virtual inline const 
			TBaseSection& operator[]	         // section of index
			(int Index) const 
			{return oSections[Index % Count];}; 
		virtual void Initialize(tTrack* Track);	 // Initialise track
		inline PTrack Track(){return oTrack;};

		int Count;								 // Nbr of sections

};
//==========================================================================*
#endif // _BASE_TRACK_H_
//--------------------------------------------------------------------------*
// end of file basetrack.h
//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++*
