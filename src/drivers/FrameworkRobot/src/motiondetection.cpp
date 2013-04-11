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
#include "motiondetection.h"

//==========================================================================*
// Konstruktor
//--------------------------------------------------------------------------*
T2DMotionDetection::T2DMotionDetection(unsigned int N, unsigned int K) :
  oAutoNorm(false),
  oDirty(false),
  oNSysFoo(0),
  oSigIndex(0)
{
  unsigned int I;

  if (N < 1)                                     // Keine Division durch 0!
    N = 1;
  if (N + K > 255)                               // Gesamtlänge begrenzen,
    N = 255 - K;                                 //   Verzögerung erhalten!

  for (I = 0; I < 256; I++)
  {
    oSignalX[I] = 0.0;
    oSignalY[I] = 0.0;
    oSysFoo[I] = 0.0;
  };

  for (I = K; I < K + N; I++)                    // Systemfunktion generieren
    oSysFoo[I] = 1.0f / N;

  oNSysFoo = N + K;                              // Länge der Systemfunktion
};
//==========================================================================*

//==========================================================================*
// SysFoo auslesen
//--------------------------------------------------------------------------*
float T2DMotionDetection::Get(int Index)
{
  return oSysFoo[Index];
};
//==========================================================================*

//==========================================================================*
// SysFoo setzen
//--------------------------------------------------------------------------*
void T2DMotionDetection::Put(int Index, float Value)
{
  oDirty = true;                                 // Änderungen erfordern
  oSysFoo[Index] = Value;                        // ggf. eine Normalisierung
  if (oAutoNorm)                                 // Wenn aktiviert,
    Normalize();                                   //   automatisch normieren
};
//==========================================================================*

//==========================================================================*
// Normalize Motion Detection
//--------------------------------------------------------------------------*
void T2DMotionDetection::Normalize()
{

  int I;
  float Sum;

  if (oDirty)                                    // Falls eforderlich
  {                                              // auf Summe = 1.0
    Sum = 0.0;                                   // normieren
    for (I = 0; I < 256; I++)
      Sum += oSysFoo[I];
    for (I = 0; I < 256; I++)
      oSysFoo[I] /= Sum;

    oDirty = false;                              // Normierung Erledigt
  }
};
//==========================================================================*

//==========================================================================*
// Faltung der Systemfunktion mit dem Eingangsimpuls
//--------------------------------------------------------------------------*
float T2DMotionDetection::MovedDistance(float X, float Y)
{
  int I;
  unsigned char J;

  oSignalX[oSigIndex] = 0.0;                     // Alte Werte löschen
  oSignalY[oSigIndex] = 0.0;                     // Alte Werte löschen
  oSigIndex++;                                   // Start im Ringpuffer
  J = oSigIndex;                                 // Faltungsindex
  for (I = 0; I < oNSysFoo; I++)                 // Über die Länge der
  {                                              //   Faltung
    oSignalX[J] += oSysFoo[I] * X;
    oSignalY[J] += oSysFoo[I] * Y;
    J++;
//	if (J > 255)
//	  J = 0;
  };

  // Aktuelles Ausgangssignal
  return (float) hypot(oSignalX[oSigIndex] - X,oSignalY[oSigIndex] - Y); 
};
//==========================================================================*

//==========================================================================*
// Reset buffer
//--------------------------------------------------------------------------*
void T2DMotionDetection::Reset()
{
  for (int I = 0; I < oNSysFoo; I++)
  {
    oSignalX[I] = 0.0;
    oSignalY[I] = 0.0;
  }
};
//==========================================================================*

//--------------------------------------------------------------------------*
// end of file motiondetection.cpp
//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++*
