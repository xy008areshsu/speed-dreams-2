//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++*
// basestrategy.cpp
//--------------------------------------------------------------------------*
// Learning robot for SD
// Speed Dreams - Version 2.0.X
//--------------------------------------------------------------------------*
// Base class for a pit stop strategy
// 
// File         : basestrategy.cpp
// Created      : 2009.05.01
// Last changed : 2011.06.25
// Copyright    : © 2009-2011 Wolf-Dieter Beelitz
// eMail        : wdb@wdbee.de
// Version      : 1.00.000
//--------------------------------------------------------------------------*
// V1.00.000:
// TBaseStrategy is a base class for a pitting and refueling strategy
//--------------------------------------------------------------------------*
// This program is free software; you can redistribute it and/or modify
// it under the terms of the GNU General Public License as published by
// the Free Software Foundation; either version 2 of the License, or
// (at your option) any later version.
//--------------------------------------------------------------------------*
#include "globaldefinitions.h"

#include "driver.h"
#include "basestrategy.h"
#include "basepit.h"
#include "teammanager.h"

//==========================================================================*
// Constants
//--------------------------------------------------------------------------*
const float TBaseStrategy::cMAX_FUEL_PER_METER = 0.0008f;
const int TBaseStrategy::cPIT_DAMAGE = 5000;
const short int NEEDED_MAJOR_VERSION = 1;
const short int NEEDED_MINOR_VERSION = 1;
//==========================================================================*

//==========================================================================*
// Default constructor
//--------------------------------------------------------------------------*
TBaseStrategy::TBaseStrategy():
	oWasInPit(false),
    oFuelChecked(false),
    oFuelPerM(0.0f),
    oLastPitFuel(0.0f),
    oLastFuel(0.0f),
    oExpectedFuelPerM(0.0f),
    oRaceDistance(0.0f),
    oRemainingDistance(0.0f),
    oReserve(0.0f),
    oTrackLength(0.0f),
    oMaxFuel(0.0f)
{
}
//==========================================================================*

//==========================================================================*
// Destrcutor
//--------------------------------------------------------------------------*
TBaseStrategy::~TBaseStrategy()
{
	if (oPit != NULL)
	delete oPit;
}
//==========================================================================*

//==========================================================================*
// Initialize
//--------------------------------------------------------------------------*
void TBaseStrategy::Init(TBaseDriver *Driver)
{
  oDriver = Driver;
  oPit = new TPit(Driver);
}
//==========================================================================*

//==========================================================================*
// Is pit available?
//--------------------------------------------------------------------------*
bool TBaseStrategy::IsPitFree()
{
    bool IsFree = RtTeamIsPitFree(oDriver->oTeamIndex);
	if (IsFree)
		GfOut("#%s pit is free (%d)\n",oDriver->GetBotName(),oDriver->oTeamIndex);
	else
		GfOut("#%s pit is locked (%d)\n",oDriver->GetBotName(),oDriver->oTeamIndex);
    return IsFree;
}
//==========================================================================*

//==========================================================================*
// Decide to do a pit stop
//--------------------------------------------------------------------------*
bool TBaseStrategy::NeedPitStop()
{
  float FuelConsum;                              // Fuel consumption per m
  if (oFuelPerM == 0.0)                          // If still undefined
    FuelConsum = oExpectedFuelPerM;              //   use estimated value
  else                                           // If known
    FuelConsum = oFuelPerM;                      //   use it

  bool Result = RtTeamNeedPitStop(
	  oDriver->oTeamIndex, 
	  FuelConsum, 
	  RepairWanted(cPIT_DAMAGE));

  if (oDriver->oForcePitStop)                    // If defined, try
    Result = true;                               //   to stop in pit

  return Result;
};
//==========================================================================*

//==========================================================================*
// Release pit (for teammates)
//--------------------------------------------------------------------------*
void TAbstractStrategy::PitRelease()
{
  RtTeamReleasePit(oDriver->oTeamIndex);
  CarRaceCmd = 0;
};
//==========================================================================*

//==========================================================================*
// Refueling
//--------------------------------------------------------------------------*
float TBaseStrategy::PitRefuel()
{
  float FuelConsum;                              // Spritverbrauch kg/m
  float Fuel;                                    // Menge in kg

  GfOut("# Fuel consumption: %0.5f kg/m\n",oFuelPerM);
  if (oFuelPerM == 0.0)                          // Wenn kein Messwert
    FuelConsum = oExpectedFuelPerM;              //   vorliegt, schätzen
  else                                           // ansonsten
    FuelConsum = oFuelPerM;                      //   Messwert nehmen

  GfOut("# Fuel consumption: %0.5f kg/m\n",FuelConsum);
  FuelConsum *= oDriver->oScaleRefuel;           // ggf. ohne Windschatten!
  GfOut("# Fuel consumption: %0.5f kg/m\n",FuelConsum);

  oRemainingDistance =                           // Restliche Strecke des
    oRaceDistance - CarDistanceRaced;            //   Rennens ermitteln
  GfOut("# Remaining distance: %0.5f m\n",oRemainingDistance);

  Fuel =                                         // Bedarf an Treibstoff
    (oRemainingDistance + oReserve) * FuelConsum;// für restliche Strecke
  GfOut("# Fuel         : %0.5f kg\n",Fuel);
  GfOut("# Tank capacity: %0.5f kg\n",oMaxFuel);

  if (Fuel > oMaxFuel)                           // Wenn mehr als eine Tank-
  {                                              //   füllung benötigt wird
    if (Fuel / 2 < oMaxFuel)                     // Bei zwei Tankfüllungen
      Fuel = Fuel / 2;                           //   die Hälfte tanken
    else if (Fuel / 3 < oMaxFuel)                // Bei drei Tankfüllungen.
      Fuel = Fuel / 3;                           //   ein Drittel tanken
    else if (Fuel / 4 < oMaxFuel)                // Bei vier Tankfüllungen.
      Fuel = Fuel / 4;                           //   ein Viertel tanken
    else                                         // Bei fünf Tankfüllungen
      Fuel = Fuel / 5;                           //   ein Fünftel tanken
  }
  GfOut("# Fuel         : %0.5f kg\n",Fuel);

  if (Fuel > oMaxFuel - CarFuel)                 // Menge ggf. auf freien
    Fuel = oMaxFuel - CarFuel;                   // Tankinhalt begrenzen
  else                                           // ansonsten Bedarf
    Fuel = Fuel - CarFuel;                       // abzügl. Tankinhalt

  oLastPitFuel = (float) MAX(Fuel,0.0);          // Wenn genug da ist = 0.0
  GfOut("# Fuel         : %0.5f kg\n",oLastPitFuel);

  return oLastPitFuel;                           // Menge an TORCS melden
};
//==========================================================================*

//==========================================================================*
// Decide amount of damages to repair
//--------------------------------------------------------------------------*
int TBaseStrategy::RepairWanted(int AcceptedDamage)
{
  if (oCar->_dammage < AcceptedDamage)
	return 0;
  else if (oRemainingDistance > 5.5 * oTrackLength)
    return oCar->_dammage;
  else if (oRemainingDistance > 4.5 * oTrackLength)
    return MAX(0,oCar->_dammage - cPIT_DAMAGE);
  else if (oRemainingDistance > 3.5 * oTrackLength)
    return MAX(0,oCar->_dammage - cPIT_DAMAGE - 1000);
  else if (oRemainingDistance > 2.5 * oTrackLength)
    return MAX(0,oCar->_dammage - cPIT_DAMAGE - 2000);
  else
    return MAX(0,oCar->_dammage - cPIT_DAMAGE - 3000);
}
//==========================================================================*

//==========================================================================*
// Define amount of damages to repair
//--------------------------------------------------------------------------*
int TBaseStrategy::PitRepair()
{
  oState = PIT_EXIT;
  oWasInPit = true;
  return RepairWanted(0);
}
//==========================================================================*

//==========================================================================*
// Decide fuel at start
//--------------------------------------------------------------------------*
float TBaseStrategy::SetFuelAtRaceStart
  (PTrack Track, PCarSettings *CarSettings, PSituation Situation, float Fuel)
{
  oTrack = Track;                                // Save TORCS pointer

  oTrackLength = oTrack->length;                 // Länge der Strecke merken
  oRaceDistance =                                // Gesamtlänge des Rennens
    oTrackLength * Situation->_totLaps;          //   berechnen
  oRemainingDistance =                           // Restliche Strecke des
    oRaceDistance + oReserve;                    //   Rennens ermitteln
  Fuel = (float)
    (Fuel * oRemainingDistance / 100000.0);      // Gesamtbedarf in kg

  oExpectedFuelPerM = Fuel / oRemainingDistance; // Verbrauch in kg/m

  oMaxFuel =
	GfParmGetNum(*CarSettings,TDriver::SectionPrivate,    // Maximal möglicher
	(char *) PRV_MAX_FUEL,(char*) NULL,oMaxFuel);//   Tankinhalt
  GfOut("# Max fuel (private)  = %.1f kg\n",oMaxFuel);

  oStartFuel = 0.0;                              // initialisieren         
  oStartFuel =            
	GfParmGetNum(*CarSettings,TDriver::SectionPrivate,    // Tankinhalt beim Start
	PRV_START_FUEL,(char*) NULL,oStartFuel);     
  if (oStartFuel > 0.0)
	  GfOut("# Start fuel (private)= %.1f kg\n",oStartFuel);

  if ((!TDriver::Qualifying)                     // Fürs Rennen 
	  && (oStartFuel > 0))
  {
    oLastFuel = oStartFuel;                      // volltanken
    GfParmSetNum(*CarSettings,SECT_CAR,PRM_FUEL, // Gewünschte Tankfüllung
      (char*) NULL, oLastFuel);                  //   an TORCS melden
    return oLastFuel;    
  }

  if (Fuel == 0)                                 // Wenn nichts bekannt ist,
    Fuel = oMaxFuel;                             // Volltanken

  oLastFuel = Fuel;                              // Erforderlicher Treibstoff
  if (Fuel > oMaxFuel)                           // Wenn mehr als eine Tank-
  {                                              //   füllung benötigt wird
    if (Fuel / 2 < oMaxFuel)                     // Bei zwei Tankfüllungen
      oLastFuel = Fuel / 2;                      //   die Hälfte tanken
    else if (Fuel / 3 < oMaxFuel)                // Bei drei Tankfüllungen.
      oLastFuel = Fuel / 3;                      //   ein Drittel tanken
    else if (Fuel / 4 < oMaxFuel)                // Bei vier Tankfüllungen.
      oLastFuel = Fuel / 4;                      //   ein Viertel tanken
    else                                         // Bei fünf Tankfüllungen
      oLastFuel = Fuel / 5;                      //   ein Fünftel tanken
  };

//  if (!TDriver::Qualification) // Corcscrew
//    oLastFuel = oMaxFuel;      //

  oLastFuel = MIN(oLastFuel, oMaxFuel);          // Überlaufen verhindern
  GfParmSetNum(*CarSettings,
    (char *) SECT_CAR,
    (char *) PRM_FUEL,                           // Gewünschte Tankfüllung
    (char *) NULL, oLastFuel);                   //   an TORCS melden

  return oLastFuel;
};
//==========================================================================*

//==========================================================================*
// Go to pit
//--------------------------------------------------------------------------*
bool TBaseStrategy::GoToPit()
{
  return ((oState >= PIT_PREPARE) && (oState <= PIT_GONE));
};
//==========================================================================*

//==========================================================================*
// Start entry procedure to pit?
//--------------------------------------------------------------------------*
bool TBaseStrategy::StartPitEntry(float& Ratio)
{
  float DLong, DLat;                             // Dist to Pit
  RtDistToPit(oCar,oTrack,&DLong,&DLat);
//  if (GoToPit() && (DLong < oPit->oPitLane->PitDist()))
  if (GoToPit())
  {
//    Ratio = (float) (1.0 - MAX(0.0,(DLong-100)/oPit->oPitLane->PitDist()));
    Ratio = 1.0f;
    return true;
  }
  else
    return false;
};
//==========================================================================*

//==========================================================================*
// Stop entry procedure to pit?
//--------------------------------------------------------------------------*
bool TBaseStrategy::StopPitEntry(float Offset)
{
  float DLong, DLat;                             // Dist to Pit
  RtDistToPit(oCar,oTrack,&DLong,&DLat);
  if (oWasInPit && (DLong - oTrackLength) > -Offset)
  {
    return true;
  }
  else
  {
    oWasInPit = false;
    return false;
  }
};
//==========================================================================*

//==========================================================================*
// Update Data
//--------------------------------------------------------------------------*
void TBaseStrategy::Update(PtCarElt Car)
{
  double CurrentFuelConsum;                      // Current fuel consum
  float DL;                                      // Distance longitudinal
  float DW;                                      // Distance lateral

  oCar = Car;                                    // Save pointer

  RtDistToPit                                    // Get distance to pit
   (Car,oTrack,&DL,&DW);

  if (DL < 0)                                    // Make DL be >= 0.0
	DL = DL + oTrack->length;                    // to have it to front

  if ((DL < oDistToSwitch) && (DL > 50) && (!oFuelChecked))
  { // We passed the line to check our fuel consume!
    if (CarLaps > 1)                             // Start at lap 2
    {                                            //   to get values
      CurrentFuelConsum =                        // Current consume =
        (oLastFuel                               // Last tank capacity
        + oLastPitFuel                           // + refueled
        - oCar->priv.fuel)                       // - current capacity
        / oTrackLength;                          // related to track length

      if (oFuelPerM == 0.0)                      // At first time we use
        oFuelPerM = (float) CurrentFuelConsum;    //   our initial estimation
      else                                       // later
        oFuelPerM = (float)                      //   we get the mean
          ((oFuelPerM*CarLaps+CurrentFuelConsum) //   of what we needed till now
		  / (CarLaps + 1));

    };

    oLastFuel = oCar->priv.fuel;                 // Capacity at this estimation
    oLastPitFuel = 0.0;                          // Refueled
    oFuelChecked = true;                         // We did the estimation in this lap

    if (!oGoToPit)                               // If decision isn'd made
	{
  	  oGoToPit = NeedPitStop();                  // Check if we sholud have a pitstop
      //if (oGoToPit) GfOut("Drv:%d/%d GoToPit\n",CarDriverIndex,CarLaps);
	}
  }
  else if (DL < 50)                              // I we are out of the window
  {                                              // to estimate
    oFuelChecked = false;                        // reset flag
  };
};
//==========================================================================*

//==========================================================================*
// State (Sequential logic system)
//--------------------------------------------------------------------------*
void TBaseStrategy::CheckPitState(float PitScaleBrake)
{
  if (oPit == NULL)                              // No Pit no service 
    return;
  if (!oPit->HasPits())
    return;

  double TrackPos = RtGetDistFromStart(oCar);    // Distance to pit

  switch(oState)                                 // Check state
  {
	case PIT_NONE:
      // We are somewhere on the track, nothing has happend yet
	  if ((!oPit->oPitLane.InPitSection(TrackPos)) && oGoToPit)
	  { // if we are not parallel to the pits and get the flag,
		// let's stop in the pits.
		oState = PIT_BEFORE;
	  }
	  break;

	case PIT_BEFORE:
      // We are somewhere on the track and got the flag to go to pit
	  if (oFuelChecked && oGoToPit)
	  { // If we reache pit entry and flag is still set
	    // switch to the pitlane
		oState = PIT_PREPARE;
	  }
	  break;

	case PIT_PREPARE:
      // We are near the pit entry on the track and got the flag to go to pit
	  if (oPit->oPitLane.InPitSection(TrackPos) && oGoToPit)
	  { // If we reach pit entry and flag is still set
	    // switch to the pitlane
		oState = PIT_ENTER;
	  }
	  break;

	case PIT_ENTER:
      // We are on the pitlane and drive to our pit
 	  if (!oPit->oPitLane.CanStop(TrackPos))
	  { // We have to wait, till we reached the point to stop
	    if (oDriver->oCurrSpeed < 3)
		{
	      CarAccelCmd =                          // a little throttle
			  MAX(0.05f,CarAccelCmd);
	      CarBrakeCmd = 0.0;                     // Start braking
		  //GfOut("#PIT_ENTER: Wait %g (%g)\n",TrackPos,oDriver->CurrSpeed());
		}
		else
		  //GfOut("#PIT_ENTER: Wait %g\n",TrackPos);
		break;
	  }

	  // We reached the poit to stopp
	  oState = PIT_ASKED;
  	  //GfOut("#PIT_ENTER: %g\n",TrackPos);

 	  // falls through...

	case PIT_ASKED:
	  // We are still going to the pit
	  if (oPit->oPitLane.CanStop(TrackPos))
	  { // If we can stop a this position we start pit procedure
  	    //GfOut("#PIT_ASKED: CanStop %g (%g)\n",TrackPos,oDriver->CurrSpeed());
		oDriver->oStanding = true;               // For motion survey!
        oPitTicker = 0;                          // Start service timer
	    CarAccelCmd = 0;                         // release throttle
	    CarBrakeCmd = 1.0;                       // Start braking
	    CarRaceCmd = RM_CMD_PIT_ASKED;           // Tell TORCS to service us! To test oPitTicker comment out
	    oState = PIT_SERVICE;                    
	  }
	  else
	  { // We can't stop here (to early or to late)
	    if (oPit->oPitLane.Overrun(TrackPos))
		{ // if to late
			//GfOut("#Overrun 1: %g\n",TrackPos);
		  PitRelease();
	      oState = PIT_EXIT_WAIT;
	      // pit stop finished, need to exit pits now.
		}
		else
		{
		  //GfOut("#ToShort 1: %g\n",TrackPos);
	      if (oDriver->oCurrSpeed < 3)
		  {
	        CarAccelCmd =                        // a little throttle
			  MAX(0.05f,CarAccelCmd);
	        CarBrakeCmd = 0.0;                   // Start braking
		  }
		}
	  }
	  break;

	case PIT_SERVICE:
      // Wait to reach standstill to get service from TORCS
	  oDriver->oStanding = true;                 // Keep motion survey quiet
	  oPitTicker++;                              // Check time to start service
	  if (oPitTicker > 10)                       // Check Timer
	  { // If we have to wait
		// GfOut("#oPitTicker: %d\n",oPitTicker);
		tTeamDriver* TeamDriver = RtTeamDriverByCar(oCar); 
		short int Major = RtTeamManagerGetMajorVersion();
		short int Minor = RtTeamManagerGetMinorVersion();
		if ((TeamDriver)
		  && ((Major > NEEDED_MAJOR_VERSION) 
		    || ((Major = NEEDED_MAJOR_VERSION) && (Minor >= NEEDED_MINOR_VERSION))))
		{
			//GfOut("#Pitting issues %s\n",oDriver->GetBotName());
			//GfOut("#StillToGo : %.2f m\n",TeamDriver->StillToGo);
			//GfOut("#MoreOffset: %.2f m\n",TeamDriver->MoreOffset);
			//GfOut("#TooFastBy : %.2f m/s\n",TeamDriver->TooFastBy);

			// Learn from the response
			if (fabs(TeamDriver->StillToGo) > 0.0)
			{
	          //CarSteerCmd = 0.0;                 // Straight on
			  if (fabs(CarSpeedLong) < 1.0)
			  {
	            CarAccelCmd =                    // a little throttle
			      MAX(0.005f,CarAccelCmd);
	            CarBrakeCmd = 0.0;                 // No braking
  			    //GfOut("#Accel     : %.2f\n",CarAccelCmd);
			  }
			  else
			  {
	            CarBrakeCmd = 0.1f;              // Braking
  			    //GfOut("#Brake     : %.2f\n",CarBrakeCmd);
			  }
	          CarClutchCmd = 0.5;                // Press clutch
			  if (TeamDriver->StillToGo > 0)
	            CarGearCmd = 1;                  // First gear
			  else
	            CarGearCmd = -1;                 // reverse gear
			}
			else
			{
// 			    GfOut("#Stopped\n");
	            CarAccelCmd = 0.0;               // Stop throttle
	            CarBrakeCmd = 1.0;               // Lock brake
	            CarClutchCmd = 0.0;              // Release clutch
	            CarGearCmd = 1;                  // First gear
			}
		}

  	    if (oPitTicker > 300)                    // Check Timer
		{ // If we have to wait too long
	      PitRelease();                          // Something went wrong, we have 
	      oState = PIT_EXIT_WAIT;                // to leave and release pit for teammate
		}
	  }
	  else if (oPit->oPitLane.Overrun(TrackPos))
	  { // If we couldn't stop in place
		  //GfOut("#Overrun 2: %g\n",TrackPos);
	    PitRelease();                            // We have to release the pit
	    oState = PIT_EXIT_WAIT;                  // for teammate
	  }
	  else
	  { // There is nothing that hampers TORCS to service us
  	    //GfOut("#PIT_SERVICE: %g (%g)\n",TrackPos,oDriver->CurrSpeed());
		CarLightCmd = 0;                         // No lights on
        CarAccelCmd = 0;                         // No throttle
	    CarBrakeCmd = 1.0;                       // Still braking
	    CarRaceCmd = RM_CMD_PIT_ASKED;           // Tell TORCS to service us! To test oPitTicker comment out
        // oState is set to next state in PitRepair()!
		// If TORCS doesn't service us, no call to PitRepair() is done!
		// We run into timeout! (oPitTicker)
	  }
	  break;

	case PIT_EXIT_WAIT:
      // We are still in the box
	  oDriver->oStanding = true;                 // Keep motion survey quiet
	  CarLightCmd = RM_LIGHT_HEAD1;              // Only big lights on           
	  oState = PIT_EXIT;
	  break;

	case PIT_EXIT:
      // We are still in the box
	  oDriver->oStanding = true;                 // Keep motion survey quiet
      oGoToPit = false;                          // Service is finished, lets go
	  CarAccelCmd = 0.5;                         // Press throttle
	  CarBrakeCmd = 0;                           // Release brake
	  PitRelease();                              // Release pit for teammate
	  if (oDriver->oCurrSpeed > 5)
	    oState = PIT_GONE;                          
	  break;

	case PIT_GONE:
      // We are on our path back to the track
	  if (!oPit->oPitLane.InPitSection(TrackPos))
	  { // If we reached the end of the pitlane
        CarLightCmd = RM_LIGHT_HEAD1 |           // All lights on
			RM_LIGHT_HEAD2;                      
		oState = PIT_NONE;                       // Switch to default mode 
	  }
 	  break;
  }
}
//==========================================================================*
// end of file unitstrategy.cpp
//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++*
