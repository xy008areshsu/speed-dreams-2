/***************************************************************************

    file                 : musicplayer.cpp
    created              : Fri Dec 23 17:35:18 CET 2011
    copyright            : (C) 2011 Bernhard Wymann
    email                : berniw@bluewin.ch
    version              : $Id: musicplayer.cpp 5141 2013-02-15 20:24:24Z torcs-ng $

 ***************************************************************************/

/***************************************************************************
 *                                                                         *
 *   This program is free software; you can redistribute it and/or modify  *
 *   it under the terms of the GNU General Public License as published by  *
 *   the Free Software Foundation; either version 2 of the License, or     *
 *   (at your option) any later version.                                   *
 *                                                                         *
 ***************************************************************************/

#include "musicplayer.h"

#include <string.h>
#include <string>
#include <map>
#include <tgf.h>
#include "tgfclient.h"
#include <portability.h>
#include <sound.h>

#define MAX_MUSIC_PATH 1024

#if MENU_MUSIC
#include "oggsoundstream.h"
#include "openalmusicplayer.h"
 
static const char *musicDisabledStr = SND_VAL_MUSIC_STATE_DISABLED;

static bool enabled = true;
static char currentMusicfile[MAX_MUSIC_PATH] = {0};
//static char nextMusicfile[MAX_MUSIC_PATH] = {0};
static char defaultMusic[MAX_MUSIC_PATH] = {0}; //"data/music/main.ogg";
static float maxMusicVolume = 1.0;

#define NOMUSIC "None"
std::map<std::string,OpenALMusicPlayer*> mapOpenAlPlayers;
 
static SDL_mutex *mapMutex = NULL;

static void playMenuMusic(int /* value */);
static void pauseMenuMusic();
static void readConfig();

 static bool isEnabled()
 {
	// TODO - fix this (needs UI)
	return enabled;
}


// Path relative to CWD, e.g "data/music/main.ogg"
static SoundStream* getMenuSoundStream(char* oggFilePath)
{
	OggSoundStream* stream = new OggSoundStream(oggFilePath);
	return stream;
}


static OpenALMusicPlayer* getMusicPlayer(char* oggFilePath)
{
	OpenALMusicPlayer* player = NULL;
	
	SDL_LockMutex(mapMutex);
	const std::map<std::string, OpenALMusicPlayer*>::const_iterator itPlayers = mapOpenAlPlayers.find(oggFilePath);

	if (itPlayers == mapOpenAlPlayers.end()) {
		player = new OpenALMusicPlayer(getMenuSoundStream(oggFilePath));
		mapOpenAlPlayers[oggFilePath] = player;
		player->setvolume(maxMusicVolume);
		//player->fadein();
		player->start(); // Fade in
	} else {
		player = mapOpenAlPlayers[oggFilePath];
	}
	SDL_UnlockMutex(mapMutex);
	return player;
}

// TODO rethink...
static Uint32 sdlTimerFunc(Uint32 interval, void* /* pEvLoopPriv */)
{
	playMenuMusic(0);
	return 1;
}

// TODO clean this up
SDL_TimerID timerId = 0;
static void playMenuMusic(int /* value */)
{
	const int nextcallinms = 100;
	SDL_LockMutex(mapMutex);
	std::map<std::string, OpenALMusicPlayer*>::const_iterator itPlayers = mapOpenAlPlayers.begin();
	while(itPlayers != mapOpenAlPlayers.end()) {
		OpenALMusicPlayer* player = itPlayers->second;
	
		if (player) {
			player->playAndManageBuffer();
		}
		itPlayers++;
	}
	SDL_UnlockMutex(mapMutex);
	if(timerId == 0){
		timerId = SDL_AddTimer(nextcallinms, sdlTimerFunc, (void*)NULL);
	}
}
#endif
void initMusic()
{
#if MENU_MUSIC
	readConfig();
	if (isEnabled()) {
		mapMutex = SDL_CreateMutex();
		(void)getMusicPlayer(defaultMusic);
		strcpy(currentMusicfile,defaultMusic);
		playMenuMusic(0);
	}
#endif
}


void shutdownMusic()
{
#if MENU_MUSIC
	if(timerId != 0){
		SDL_RemoveTimer(timerId);
		timerId = 0;
	}
	SDL_LockMutex(mapMutex);
	std::map<std::string, OpenALMusicPlayer*>::const_iterator itPlayers = mapOpenAlPlayers.begin();
	while(itPlayers != mapOpenAlPlayers.end()) {
		OpenALMusicPlayer* player = itPlayers->second;
		player->stop();
		player->rewind();
		itPlayers++;
	}
	itPlayers = mapOpenAlPlayers.begin();
	while(itPlayers != mapOpenAlPlayers.end()) {
		OpenALMusicPlayer* player = itPlayers->second;
		delete player;
		itPlayers++;
	}
	mapOpenAlPlayers.clear();
	SDL_UnlockMutex(mapMutex);
	SDL_DestroyMutex(mapMutex);
	mapMutex = NULL;


#endif
}
#if MENU_MUSIC
void pauseMenuMusic()
{

		if(timerId != 0){
		SDL_RemoveTimer(timerId);
		timerId = 0;
		}
		SDL_LockMutex(mapMutex);
		std::map<std::string, OpenALMusicPlayer*>::const_iterator itPlayers = mapOpenAlPlayers.begin();
		while(itPlayers != mapOpenAlPlayers.end()) {
			OpenALMusicPlayer* player = itPlayers->second;
			player->pause();
			itPlayers++;
		}
		SDL_UnlockMutex(mapMutex);
		

}
#endif
void playMusic(char* filename)
{
#if MENU_MUSIC
	if (isEnabled()) {
		OpenALMusicPlayer* player = NULL;
		if(filename != NULL) {
			if(0 == strcmp(NOMUSIC,filename)){
				strcpy(currentMusicfile,filename);
				pauseMenuMusic();
				return;
			}
			if(0 != strcmp(currentMusicfile,filename)){
				player = getMusicPlayer(currentMusicfile);
				player->fadeout();
				strcpy(currentMusicfile,filename);
				GfLogInfo("Music changing to: %s \n", filename);
				player = getMusicPlayer(filename);
				player->fadein();
			}
		} else {
			if(0 != strcmp(currentMusicfile,defaultMusic)){
				player = getMusicPlayer(currentMusicfile);
				player->fadeout();
				strcpy(currentMusicfile,defaultMusic);
				GfLogInfo("Music changing to: %s \n", defaultMusic);
				player = getMusicPlayer(defaultMusic);
				player->fadein();
			}
		}
		if(player) {
			player->resume(0);
		}
		playMenuMusic(0);
	}
#endif
}

void setDefaultMusic(const char* filename)
{
#if MENU_MUSIC
	if(0 != filename){
		if(strlen(filename) < MAX_MUSIC_PATH){
			if(0 != strcmp(defaultMusic,filename)){
				strcpy(defaultMusic,filename);
				GfLogInfo("Default Music changing to: %s \n", filename);
			}
		} else {
			// log error
			GfLogError("Default Music File Path too long. [  %s  ]\n", filename);
		}
	} else {
		defaultMusic[0] = 0;
		GfLogInfo("Default Music changing to: %s \n", "NULL");
	}
#endif
}

#if MENU_MUSIC
static void readConfig()
{
	// Check if we want music (sound.xml).
	char fnbuf[1024];
	sprintf(fnbuf, "%s%s", GfLocalDir(), SND_PARAM_FILE);
	void *paramHandle = GfParmReadFile(fnbuf, GFPARM_RMODE_REREAD | GFPARM_RMODE_CREAT);
	const char *musicenabled = GfParmGetStr(paramHandle, SND_SCT_MUSIC, SND_ATT_MUSIC_STATE, musicDisabledStr);

	float music_volume = GfParmGetNum(paramHandle, SND_SCT_MUSIC, SND_ATT_MUSIC_VOLUME, "%", 100.0f);
	if (music_volume>100.0f) {
		music_volume = 100.0f;
	} 
	else if (music_volume < 0.0f) {
		music_volume = 0.0f;
	}
	maxMusicVolume = music_volume/100.0f;

	if (0 == strcmp(musicenabled, SND_VAL_MUSIC_STATE_ENABLED)) {
		enabled = true;
	} else {
		enabled = false;
	}
	const char* defmusic = GfParmGetStr(paramHandle, SND_SCT_MUSIC, SND_ATT_MUSIC_DEFAULT_MUSIC, "data/music/main.ogg");
	setDefaultMusic(defmusic);

	//TODO: Remove this hack after plib is deprecated
	// Using plib for the sound effects sometimes crashes when OpenAL already has the sound device
	const char* isplib = GfParmGetStr(paramHandle, SND_SCT_SOUND, SND_ATT_SOUND_STATE, "");
	if (!strcmp(isplib, "plib")) {
		enabled = false;
		GfLogInfo("Music player disabled for PLIB\n");
	}
	//TODO end of section to Remove

	GfLogInfo("(Re-)Initializing music player \n");
	GfParmReleaseHandle(paramHandle);
	paramHandle = NULL;
}
#endif

void setMusicVolume(float vol)
{
#if MENU_MUSIC
	if (vol < 0)
		vol = 0.0f;
	else if (vol > 1.0f)
		vol = 1.0f;
	
	maxMusicVolume = vol;

	GfLogInfo("Music maximum volume set to %.2f\n", maxMusicVolume);
#endif
}