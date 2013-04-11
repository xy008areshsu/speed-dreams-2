//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++*
// basetrack.cpp
//--------------------------------------------------------------------------*
// Learning robot for SD
// Speed Dreams - Version 2.0.X
//--------------------------------------------------------------------------*
// Base class for a custom track description
// 
// File         : basetrack.cpp
// Created      : 2009.05.01
// Last changed : 2011.06.22
// Copyright    : © 2009-2011 Wolf-Dieter Beelitz
// eMail        : wdb@wdbee.de
// Version      : 1.00.000
//--------------------------------------------------------------------------*
// V1.00.000:
// TBaseTrack is a base class for a custom track description to interpolate
// the SD track segment definitions to finer parts called sctions.
// The track description is used to initialize the racingline (TBaseLane).
// Features:
// - Fixed section length of 1 m to allow fast pickup section from position
//--------------------------------------------------------------------------*
// This program is free software; you can redistribute it and/or modify
// it under the terms of the GNU General Public License as published by
// the Free Software Foundation; either version 2 of the License, or
// (at your option) any later version.
//--------------------------------------------------------------------------*

#include "globaldefinitions.h"

#include "basetrack.h"
#include "basesection.h"

//==========================================================================*
// Constructor
//--------------------------------------------------------------------------*
TBaseTrack::TBaseTrack() :
	oTrack(NULL),
	oStepLen(1.0),
	oSections(NULL),
	Count(0)
{
}
//==========================================================================*

//==========================================================================*
// Destructor
//--------------------------------------------------------------------------*
TBaseTrack::~TBaseTrack()
{

}
//==========================================================================*

//==========================================================================*
// Initialize Track
//--------------------------------------------------------------------------*
void TBaseTrack::Initialize(tTrack* Track)
{
	if (oTrack != Track)
	{
		delete [] oSections;
		Count = 0;

		oTrack = Track;
		MakeDescription();
	}
}
//==========================================================================*

//==========================================================================*
// Create track description
//--------------------------------------------------------------------------*
void TBaseTrack::MakeDescription()
{
	tTrackSeg* Segm;							 // Current Segment;
	float Station;								 // Position along track
	TBaseSection* Section;						 // Section

	// ATTENTION: oTrack->seg is the last segement in front of the 
	// start line! But we want the first segment after it!
	Segm = oTrack->seg->next;					 // First segment

	// Find number of sections needed ...
	oStepLen = 1.0;								 // Lets take 1m per section
	Count = (int) (oTrack->length / oStepLen);	 // Nbr of sections in track

	// ... create sections array ...
	oSections = new TBaseSection[Count];		 // Create all sections

	Station = 0;								 // Position along track

	// ... initialize sections parameters from segment ...
	float SegmStart = Segm->lgfromstart;         // Distance from start line
	float StartWidth = Segm->startWidth;		 // Starting width
	float DeltaWidth =							 // Change of width
		StartWidth - Segm->endWidth;
	float Friction = Segm->surface->kFriction;	 // Surface friction

	for (int I = 0; I < Count; I++)			     // Loop all sections
	{											
		if (Station > Segm->lgfromstart + Segm->length)
		{	// If section is in a new SD segment
			Segm = Segm->next;					 // Use next segment
			SegmStart = Segm->lgfromstart;		 // update parameters
			StartWidth = Segm->startWidth;
			DeltaWidth = StartWidth - Segm->endWidth;
			Friction = Segm->surface->kFriction;
		}

		float T = Station - SegmStart;			 // Position in segment
		T /= Segm->length;						 // Relative to seg's length
		float W = StartWidth + T * DeltaWidth;	 // Width at current position
		W /= 2.0;								 // Half width to sides

		Section = &oSections[I];				 // next undefined section
		Section->Station = Station;				 // Save position along track
		Section->T = T;							 // Save position in segment
		Section->Seg = Segm;					 // Derived from segment
		Section->WidthToLeft = W;				 // Save initial width to
		Section->WidthToRight = W;				 //   left and right side
		Section->Friction = Friction;			 // Save surface friction
		NormalizeDir(Section);					 // Calculate Center/toRight

		Station = Station + oStepLen;			 // Next local position
	}
}
//==========================================================================*

//==========================================================================*
// Calculate Center and ToRight
//--------------------------------------------------------------------------*
void TBaseTrack::NormalizeDir(TBaseSection* Section)
{
	float T = Section->T;
	tTrackSeg* Segm = Section->Seg;

	double Zl = Segm->vertex[TR_SL].z 
		+ (Segm->vertex[TR_EL].z - Segm->vertex[TR_SL].z) * T;
	double Zr = Segm->vertex[TR_SR].z 
		+ (Segm->vertex[TR_ER].z - Segm->vertex[TR_SR].z) * T;
	double Zd = (Zr - Zl) / (Section->WidthToLeft + Section->WidthToRight);
	double Z = (Zr + Zl) / 2;

	if(Segm->type == TR_STR)
	{
		TVec3d Start = (TVec3d(Segm->vertex[TR_SL]) 
			+ TVec3d(Segm->vertex[TR_SR])) / 2;
		TVec3d End = (TVec3d(Segm->vertex[TR_EL]) 
			+ TVec3d(Segm->vertex[TR_ER])) / 2;
		Section->Center = Start + (End - Start) * T;
		Section->ToRight = -TVec3d(Segm->rgtSideNormal);
		Section->ToRight.z = Zd;
	}
	else
	{
		double VZ = Segm->type == TR_LFT ? 1 : -1;
		double DeltaAngle = VZ * T * Segm->length / Segm->radius;
		double Ang = Segm->angle[TR_ZS] - PI / 2 + DeltaAngle;
		double Cos = cos(Ang);
		double CosRad = VZ * Cos * Segm->radius;
		double Sin = sin(Ang);
		double SinRad = VZ * Sin * Segm->radius;
		Section->Center = 
			TVec3d(Segm->center.x + CosRad, Segm->center.y + SinRad, Z);
		Section->ToRight = TVec3d(Cos, Sin, Zd);
	}
}
//==========================================================================*

//--------------------------------------------------------------------------*
// end of file basetrack.cpp
//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++*
