/***************************************************************************

    file        : raceengine.cpp
    copyright   : (C) 2010 by Jean-Philippe Meuret                        
    email       : pouillot@users.sourceforge.net   
    version     : $Id: raceengine.cpp 4584 2012-03-11 22:08:13Z pouillot $                                  

 ***************************************************************************/

/***************************************************************************
 *                                                                         *
 *   This program is free software; you can redistribute it and/or modify  *
 *   it under the terms of the GNU General Public License as published by  *
 *   the Free Software Foundation; either version 2 of the License, or     *
 *   (at your option) any later version.                                   *
 *                                                                         *
 ***************************************************************************/
 
/** @file    
    		The race engine implementation of its IRaceEngine interface
    @version    $Id: raceengine.cpp 4584 2012-03-11 22:08:13Z pouillot $
*/

#include <sstream>

#include <tgf.hpp>

#include <car.h> // tCarPitCmd.
#include <raceman.h>

#include <tgfdata.h>
#include <race.h>
#include <tracks.h>

#include "racesituation.h"
#include "racemain.h"
#include "raceinit.h"
#include "racestate.h"
#include "raceupdate.h"

#include "raceengine.h"


// The singleton.
RaceEngine* RaceEngine::_pSelf = 0;

RaceEngine& RaceEngine::self()
{
	if (!_pSelf)
		_pSelf = new RaceEngine;
	
	return *_pSelf;
}

RaceEngine::RaceEngine()
: _piUserItf(0), _piTrkLoader(0), _piPhysEngine(0), _pRace(new GfRace())
{
	GfData::initialize();
}

// Implementation of IRaceEngine.
void RaceEngine::reset(void)
{
	GfLogInfo("Resetting race engine.\n");

	// Cleanup everything in case no yet done.
	cleanup();
	
	// Internal init.
	::ReReset();

	// Load and initialize the track loader module.
	GfLogInfo("Loading Track Loader ...\n");
	std::ostringstream ossModLibName;
	const char* pszModName =
		GfParmGetStr(ReSituation::self().data()->_reParam, "Modules", "track", "");
	ossModLibName << GfLibDir() << "modules/track/" << pszModName << '.' << DLLEXT;
	GfModule* pmodTrkLoader = GfModule::load(ossModLibName.str());

	// Check that it implements ITrackLoader.
	if (pmodTrkLoader)
		_piTrkLoader = pmodTrkLoader->getInterface<ITrackLoader>();
	if (pmodTrkLoader && !_piTrkLoader)
	{
		GfModule::unload(pmodTrkLoader);
		return;
	}

	// Initialize GfTracks' track module interface (needed for some track infos).
	GfTracks::self()->setTrackLoader(_piTrkLoader);
}

void RaceEngine::cleanup(void)
{
	GfLogInfo("Cleaning up race engine.\n");

	// Internal cleanup.
	::ReCleanup();

	// Unload the track and then the Track loader module if not already done.
	if (_piTrkLoader)
	{
		// Unload the track.
		_piTrkLoader->unload();

		// Unload the Track loader module.
		GfModule* pmodTrkLoader = dynamic_cast<GfModule*>(_piTrkLoader);
		if (pmodTrkLoader)
		{
			GfModule::unload(pmodTrkLoader);
			_piTrkLoader = 0;
			GfTracks::self()->setTrackLoader(0);
		}
	}

    // Unload the Physics engine module if not already done.
	if (_piPhysEngine)
	{
		GfModule* pmodPhysEngine = dynamic_cast<GfModule*>(_piPhysEngine);
		if (pmodPhysEngine)
		{
			GfModule::unload(pmodPhysEngine);
			_piPhysEngine = 0;
		}
	}
}

void RaceEngine::shutdown(void)
{
	// Destroy the race engine itself.
	delete _pSelf;
	_pSelf = 0;

	// Shutdown the data layer.
	GfData::shutdown();
}

RaceEngine::~RaceEngine()
{
	cleanup();

	GfLogInfo("Shutting down race engine.\n");

	delete _pRace;
}

void RaceEngine::setUserInterface(IUserInterface& userItf)
{
	_piUserItf = &userItf;
}

void RaceEngine::initializeState(void *prevMenu)
{
	::ReStateInit(prevMenu);
}

void RaceEngine::updateState(void)
{
	::ReStateManage();
}

void RaceEngine::applyState(int state)
{
	::ReStateApply((void*)state);
}

void RaceEngine::selectRaceman(GfRaceManager* pRaceMan, bool bKeepHumans)
{
	::ReRaceSelectRaceman(pRaceMan, bKeepHumans);
}

void RaceEngine::restoreRace(void* hparmResults)
{
	::ReRaceRestore(hparmResults);
}

void RaceEngine::configureRace(bool bInteractive)
{
	::ReRaceConfigure(bInteractive);
}

//************************************************************
void RaceEngine::startNewRace()
{
	::ReStartNewRace();
}

void RaceEngine::resumeRace()
{
	::ReResumeRace();
}

//************************************************************
void RaceEngine::startRace()
{
	// TODO: Process error status ?
	(void)::ReRaceRealStart();
}

void RaceEngine::abandonRace()
{
	::ReRaceAbandon();
}

void RaceEngine::abortRace()
{
	::ReRaceAbort();
}

void RaceEngine::skipRaceSession()
{
	::ReRaceSkipSession();
}

void RaceEngine::restartRace()
{
	::ReRaceRestart();
}

//************************************************************
void RaceEngine::start(void)
{
	::ReStart();
}

void RaceEngine::stop(void)
{
	::ReStop();
}

#ifdef DEBUG
void RaceEngine::step(double dt)
{
	::ReOneStep(dt);
}
#endif

//************************************************************
GfRace* RaceEngine::race()
{
	return _pRace;
}

const GfRace* RaceEngine::race() const
{
	return _pRace;
}

// TODO: Remove when safe dedicated setters ready.
tRmInfo* RaceEngine::inData()
{
	return ReSituation::self().data(); // => ReInfo
}

const tRmInfo* RaceEngine::outData() const
{
	return ::ReOutputSituation();
}

// Accessor to the user interface.
IUserInterface& RaceEngine::userInterface()
{
	return *_piUserItf;
}

// Physics engine management.
bool RaceEngine::loadPhysicsEngine()
{
    // Load the Physics engine module if not already done.
	if (_piPhysEngine)
		return true;

	// 1) Get the physics engine name from user settings (default: Simu V2.1)
	static const char* pszDefaultModName = RM_VAL_MOD_SIMU_V2_1;
	std::string strModName =
		GfParmGetStr(ReSituation::self().data()->_reParam, "Modules", "simu", pszDefaultModName);

	// 2) Check if the module is really there, and fall back to the default one if not
	//    Note : The default module is supposed to be always there.
	std::ostringstream ossModLibName;
	ossModLibName << GfLibDir() << "modules/simu/" << strModName << '.' << DLLEXT;
	if (!GfFileExists(ossModLibName.str().c_str()))
	{
		GfLogWarning("User settings %s physics engine module not found ; "
					 "falling back to %s\n", strModName.c_str(), pszDefaultModName);
		strModName = pszDefaultModName;
		ossModLibName.str("");
		ossModLibName << GfLibDir() << "modules/simu/" << strModName << '.' << DLLEXT;
	}

	// 3) Load it.
	std::ostringstream ossLoadMsg;
	ossLoadMsg << "Loading physics engine (" << strModName<< ") ...";
	if (_piUserItf)
		_piUserItf->addLoadingMessage(ossLoadMsg.str().c_str());

	GfModule* pmodPhysEngine = GfModule::load(ossModLibName.str());
	if (pmodPhysEngine)
		_piPhysEngine = pmodPhysEngine->getInterface<IPhysicsEngine>();
	if (pmodPhysEngine && !_piPhysEngine)
		GfModule::unload(pmodPhysEngine);

	return _piPhysEngine ? true : false;
}

void RaceEngine::unloadPhysicsEngine()
{
    // Unload the Physics engine module if not already done.
	if (!_piPhysEngine)
		return;
	
	GfModule* pmodPhysEngine = dynamic_cast<GfModule*>(_piPhysEngine);
	if (pmodPhysEngine)
		GfModule::unload(pmodPhysEngine);
	_piPhysEngine = 0;
}

// Accessor to the track loader.
ITrackLoader& RaceEngine::trackLoader()
{
	return *_piTrkLoader;
}

// Accessor to the physics engine.
IPhysicsEngine& RaceEngine::physicsEngine()
{
	return *_piPhysEngine;
}


//************************************************************
// WIP : dedicated situation setters.

bool RaceEngine::setSchedulingSpecs(double fSimuRate, double fOutputRate)
{
	return ::ReSetSchedulingSpecs(fSimuRate, fOutputRate);
}

void RaceEngine::accelerateTime(double fMultFactor)
{
	ReSituation::self().accelerateTime(fMultFactor);
}

void RaceEngine::setPitCommand(int nCarIndex, const struct CarPitCmd* pPitCmd)
{
	ReSituation::self().setPitCommand(nCarIndex, pPitCmd);
}
