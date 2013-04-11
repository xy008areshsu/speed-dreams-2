//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++*
// motiondetection.h
//--------------------------------------------------------------------------*
// Learning robot for SD
// Speed Dreams - Version 2.0.X
//--------------------------------------------------------------------------*
// Helper class for motion detection
// 
// File         : motiondetection.h
// Created      : 2011.06.21
// Last changed : 2011.06.21
// Copyright    : © 2011 Wolf-Dieter Beelitz
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
#ifndef _2D_MOTION_DETECTION_H_
#define _2D_MOTION_DETECTION_H_

#include <math.h>
#include "globaldefinitions.h"

//==========================================================================*
// Forewarding
//--------------------------------------------------------------------------*
class T2DMotionDetection;
typedef T2DMotionDetection* P2DMotionDetection;
//==========================================================================*

//==========================================================================*
// T2DMotionDetection
//--------------------------------------------------------------------------*
class T2DMotionDetection {
  private:
    bool oAutoNorm;                              // Automatisch normalisieren
    bool oDirty;                                 // Normalisierung nötig
    int oNSysFoo;                                // Länge der Systemfunktion
    float oSignalX[256];                         // Ringpuffer für X-Signal
    float oSignalY[256];                         // Ringpuffer für Y-Signal
    float oSysFoo[256];                          // Systemfunktion
    unsigned char oSigIndex;                     // Ringpufferstartindex

    float Get(int Index);                       
    void Put(int Index, float Value);

  public:
	  T2DMotionDetection                         // Standardkonstruktor
	    (unsigned int N = 1, unsigned int K = 0);// Länge und Verzögerung

    float MovedDistance                          // Calculated distance
      (float X, float Y);                        // moved

    void Normalize();                            // SysFoo normieren

    int Length();                                // Länge der Systemfunktion

    bool AutoNorm();                             // Autoamtisch normalisieren
    void Reset();                                // Clear buffers
    float SysFoo(int Index);                     // Systemfunktion

};
//==========================================================================*
#endif // _2D_MOTION_DETECTION_H_
//--------------------------------------------------------------------------*
// end of file motiondetection.h
//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++*
