//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++*
// basecollision.cpp
//--------------------------------------------------------------------------*
// Learning robot for SD
// Speed Dreams - Version 2.0.X
//--------------------------------------------------------------------------*
// Base class for custom collision detection 
// 
// File         : basecollision.cpp
// Created      : 2011.06.26
// Last changed : 2011.11.09
// Copyright    : © 2006-2011 Wolf-Dieter Beelitz
// eMail        : wdb@wdbee.de
// Version      : 1.00.001
//--------------------------------------------------------------------------*
// This program is free software; you can redistribute it and/or modify
// it under the terms of the GNU General Public License as published by
// the Free Software Foundation; either version 2 of the License, or
// (at your option) any later version.
//--------------------------------------------------------------------------*

#include "globaldefinitions.h"

#include "basecollision.h"
#include "baseopponent.h"
#include "driver.h"

//==========================================================================*
// Default constructor
//--------------------------------------------------------------------------*
TBaseCollision::TBaseCollision()
{
};
//==========================================================================*

//==========================================================================*
// Destructor
//--------------------------------------------------------------------------*
TBaseCollision::~TBaseCollision()
{
};
//==========================================================================*

//==========================================================================*
// Check whether we should look at a possible collision
//--------------------------------------------------------------------------*
bool TBaseCollision::CheckCollision(PBaseOpponent Opp, PBaseOpponent Car)
{
	PCarElt OppCar = Opp->oCar;
	PCarElt MyCar = Car->oCar;

	TVec2d NextOppCorner;
	TVec2d NextCarCorner;

	double MinDistance = FLT_MAX;
//	double yaw = OppCar->_yaw;
	double yaw = Opp->oTrackYaw;

	TVec2d OppPosition(OppCar->pub.DynGCg.pos.x,OppCar->pub.DynGCg.pos.y);

	for (int I = 0; I < 4; I++)
	{
		//TVec2d Corner1(OppCar->pub.corner[I].x,OppCar->pub.corner[I].y);
		//GfOut("OC(%d): (%0.5f/%0.5f):%0.5f\n",I,Corner1.x,Corner1.y,Corner1.len());
		TVec2d Corner(
			cos(yaw) * OppCar->pub.corner[I].x - sin(yaw) * OppCar->pub.corner[I].y,
			sin(yaw) * OppCar->pub.corner[I].x + cos(yaw) * OppCar->pub.corner[I].y);
		//GfOut("OC(%d): (%0.5f/%0.5f):%0.5f\n",I,Corner.x,Corner.y,Corner.len());

		Corner = OppPosition + Corner;
		//GfOut("OC(%d): (%0.5f/%0.5f):%0.5f\n",I,Corner.x,Corner.y,(OppPosition - Corner).len());
		double Distance = Car->oMovement.Distance(Corner);
		if (MinDistance > Distance)
		{
			MinDistance = Distance;
			NextOppCorner = Corner;
		}

	}

	MinDistance = FLT_MAX;
	//yaw = MyCar->_yaw;
	yaw = Car->oTrackYaw;

	TVec2d CarPosition(MyCar->pub.DynGCg.pos.x,MyCar->pub.DynGCg.pos.y);
	for (int I = 0; I < 4; I++)
	{
		//TVec2d Corner2(MyCar->pub.corner[I].x,MyCar->pub.corner[I].y);
		//GfOut("MC(%d): (%0.5f/%0.5f):%0.5f\n",I,Corner2.x,Corner2.y,Corner2.len());
		TVec2d Corner(
			cos(yaw) * MyCar->pub.corner[I].x - sin(yaw) * MyCar->pub.corner[I].y,
			sin(yaw) * MyCar->pub.corner[I].x + cos(yaw) * MyCar->pub.corner[I].y);
		//GfOut("MC(%d): (%0.5f/%0.5f):%0.5f\n",I,Corner.x,Corner.y,Corner.len());

		Corner = CarPosition + Corner;
		//GfOut("MC(%d): (%0.5f/%0.5f):%0.5f\n",I,Corner.x,Corner.y,(CarPosition - Corner).len());
		double Distance = Opp->oMovement.Distance(Corner);
		if (MinDistance > Distance)
		{
			MinDistance = Distance;
			NextCarCorner = Corner;
		}

	}

	TStraight OppEdgeMovement(NextOppCorner,Opp->oMovement.D);
	TStraight CarEdgeMovement(NextCarCorner,Car->oMovement.D);
	TVec2d Collision = OppEdgeMovement.Intersect(CarEdgeMovement);

	oDistance = CarEdgeMovement.IntersectDist(OppEdgeMovement);
	if ((oDistance < 0) || (oDistance > FRONTCOLLDIST/2.0))
		return false;

	// Used for check of accuracy
	// TVec2d Collision2 = CarEdgeMovement.Intersect(OppEdgeMovement);
	// double Delta = (Collision-Collision2).len();
	// if (fabs(Delta) > 0.0000000001)
	// {
	//	GfOut("\n\n\nDelta: %0.5f\n\n\n",Delta);
	//	GfOut("P0: (%0.5f/%0.5f)\n",NextCarCorner.x,NextCarCorner.y);
	//	GfOut("D0: (%0.5f/%0.5f)\n",Car->oMovement.D.x,Car->oMovement.D.y);
	//	GfOut("P1: (%0.5f/%0.5f)\n",NextOppCorner.x,NextOppCorner.y);
	//	GfOut("D1: (%0.5f/%0.5f)\n",Opp->oMovement.D.x,Opp->oMovement.D.y);
	//	GfOut("C0: (%0.5f/%0.5f)\n",Collision.x,Collision.y);
	//	GfOut("C1: (%0.5f/%0.5f)\n",Collision2.x,Collision2.y);
	// }

	// The path has a crossing, but are we there at the same time?
	// GfOut("MCD: %0.2f m = %0.2f m\n",oDistance,(Collision-NextCarCorner).len());
	// GfOut("C: (%0.2f/%0.2f) (%0.2f/%0.2f)\n",NextCarCorner.x,NextCarCorner.y,Collision.x,Collision.y);

	double OppDistance = OppEdgeMovement.IntersectDist(CarEdgeMovement);
	// GfOut("OCD: %0.2f m = %0.2f m\n",OppDistance,(Collision-NextOppCorner).len());
	// GfOut("C: (%0.2f/%0.2f) (%0.2f/%0.2f)\n",NextOppCorner.x,NextOppCorner.y,Collision.x,Collision.y);

	double MyTimeOfArrival = oDistance/Car->oSpeed;
	double OppTimeOfArrival = OppDistance/Opp->oSpeed;
	double TimeDifference = fabs(MyTimeOfArrival - OppTimeOfArrival);
	double OverlappingTimeWindow = MAX(0.0,15.0 / MIN(Opp->oSpeed,Car->oSpeed));
	//GfOut("TD: %0.4f OV: %0.4f\n",TimeDifference,OverlappingTimeWindow);

	double SideDistance = fabs(Opp->oSideDist) - 2.0; // Car width
	double LongDistance = fabs(Opp->oDistance) - 5.0; // Car length

	//GfOut("SD: %0.2f LD: %0.2f MT: %0.2f OT: %0.2f DT:%0.3f TW:%0.3f\n",SideDistance,LongDistance,MyTimeOfArrival,OppTimeOfArrival,TimeDifference,OverlappingTimeWindow);
	if (((SideDistance < 1.5) && (LongDistance < 25.0))
		&& (TimeDifference < OverlappingTimeWindow)) 
		return true;

	return false;
};
//==========================================================================*

//==========================================================================*
// Avoid to side
//--------------------------------------------------------------------------*
double TBaseCollision::AvoidTo(
  const TCollInfo& Coll, 
  const PCarElt oCar, 
  TDriver& Me, 
  bool& DoAvoid)
{
  double AvoidTo = 0.0;                          // Undefined side

  // First priority: Anyone at side?
  if (Coll.OppsAtSide)                           // Opponents at side?
  {
    int Flags = Coll.OppsAtSide;                 // Get corresponding flags
    double Offset;                               // Calc target by offset

    AvoidTo = (Flags & OPP_LEFT) ? 1.0 : -1.0;   // Go away from opponent
    if (Flags == (OPP_LEFT | OPP_RIGHT))         // Opps on both sides?
	{                                            //   Then use middle
	  Offset = 0.5 *                             // Offset is an estimate
		(Coll.MinRSideDist - Coll.MinLSideDist)  //   of where this is.
		- CarToMiddle;
	  //GfOut("Go between0: %g\n",Offset);
	}
	else if (Coll.OppsAhead)                     // Opponents in front?
	{ // Choose side that has potential of overtaking the car ahead
	  if ((Coll.OppsAhead == OPP_LEFT)           // Opponent ahead is left  
		&& (Flags == OPP_RIGHT))                   //   an another right? 
	  {
		Offset = -(Coll.MinLDist - 0.5)          // Take remaining place           
		  - CarToMiddle;
		//GfOut("Go between1: %g\n",Offset);
	  }
	  else if ((Coll.OppsAhead == OPP_RIGHT)       // Opponent ahead is right
		&& (Flags == OPP_LEFT))                    //   and another left?
	  {
		Offset = (Coll.MinRDist - 0.5)           // Take remaining place           
		  - CarToMiddle;
		//GfOut("Go between2: %g\n",Offset);
	  }
	  else if (Coll.OppsAhead == OPP_LEFT)         // Opponent ahead is left
	  {
	    if (Coll.MinLSideDist < 3.0) 
		{
	      Offset = 0.5 *                         // Take remaining place           
		    (3 - Coll.MinLSideDist)              
		    - CarToMiddle;
		  //GfOut("Go to right2: %g\n",Offset);
		}
		else
		{
          //GfOut("AvoidTo1: %g\n",AvoidTo);
	      return AvoidTo;                        // Do not Avoid
		}
	  }
	  else if (Coll.OppsAhead == OPP_RIGHT)        // Opponent ahead is right
	  {
	    if (Coll.MinRSideDist < 3.0)
		{
	      Offset = 0.5 *                         // Take remaining place           
		    (Coll.MinRSideDist - 3)                 
		    - CarToMiddle;
		  //GfOut("Go to left2: %g\n",Offset);
		}
		else
		{
          //GfOut("AvoidTo2: %g\n",AvoidTo);
	      return AvoidTo;                        // Do not Avoid
		}
	  }
	  else
	  {
        //GfOut("AvoidTo3: %g\n",AvoidTo);
	    return AvoidTo;                          // Do not Avoid
	  }
	}
    else
	{
	  if ((Coll.MinLSideDist < 2.5) || (Coll.MinRSideDist < 2.5))
        DoAvoid = true;                          // Avoid to side
/*
      if (DoAvoid)
        GfOut("DoAvoid AvoidTo4: %g\n",AvoidTo);
	  else
        GfOut("AvoidTo4: %g\n",AvoidTo);
*/
	  return AvoidTo;                             
	}

    DoAvoid = true;                              // Avoid to side
//    Offset = Me.CalcPathTarget                   // Use offset to
//      (DistanceFromStartLine, Offset);           //   find target
    //GfOut("DoAvoid Offset1: %g\n",Offset);
    return Offset; 
  }
  else // No opponents at side ...
  {
    int Flags; 
    double Offset = -1.0;                        // Calc target by offset
    
	// Second priority: Go to side depending on preview
	if (Coll.AvoidSide < 0)
	{
	    Flags = OPP_LEFT;
		Offset = Coll.AvoidSide;
		//GfOut("Go to right: %g\n",Offset);
	}
	else if (Coll.AvoidSide > 0)
	{
	    Flags = OPP_RIGHT;
		Offset = Coll.AvoidSide;
		//GfOut("Go to left: %g\n",Offset);
	}
	// Third priority: Anyone behind?
	else if (Coll.LappersBehind)                 // Lappers behind?
	{
	  Flags = Coll.LappersBehind;                // Get corresponding flags
	  if (Flags == (OPP_LEFT | OPP_RIGHT))
	  { // lapping cars on both sides behind!
	    Flags =                                  // Use the side defined
		  (Coll.NextSide < 0) ? OPP_LEFT : OPP_RIGHT;//   by collision
		Offset = (Flags & OPP_LEFT) ? 1.0 : -1.0;
		//GfOut("LappersBehind: %g\n",Offset);
	  }
	}
	// Fourth priority: More than one ahead?
    else if (Coll.OppsAhead == (OPP_LEFT | OPP_RIGHT))
    { // cars on both sides ahead, so avoid closest (or slowest) car
      Flags = (Coll.MinLDist < Coll.MinRDist) ? OPP_LEFT : OPP_RIGHT; 
	  Offset = (Flags & OPP_LEFT) ? 1.0 : -1.0;
      //GfOut("(Coll.OppsAhead == (F_LEFT | F_RIGHT)): %g\n",Offset);
	}
	// Fifth priority: Anyone ahead? 
    else if (Coll.OppsAhead)
	{ // cars on one side ahead
      Flags = Coll.OppsAhead;
	  Offset = (Flags & OPP_LEFT) ? 1.0 : -1.0;
      //GfOut("(Coll.OppsAhead): %g\n",Offset);
	}
	else 
	{
      //GfOut("AvoidTo5: %g\n",AvoidTo);
      return AvoidTo;                            // Do not avoid
	}

	DoAvoid = true;                              // Flag avoid
    //GfOut("DoAvoid Offset2: %g\n",Offset);
    return Offset;                               // Use offset to find target
  }
}
//==========================================================================*
//--------------------------------------------------------------------------*
// end of file basecollision.cpp
//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++*

