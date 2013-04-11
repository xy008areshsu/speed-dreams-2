/***************************************************************************

    file                 : OsgRender.cpp
    created              : Mon Aug 21 20:13:56 CEST 2012
    copyright            : (C) 2012 Xavier Bertaux
    email                : bertauxx@yahoo.fr
    version              : $Id: OsgRender.cpp 2436 2010-05-08 14:22:43Z torcs-ng $

 ***************************************************************************/

/***************************************************************************
 *                                                                         *
 *   This program is free software; you can redistribute it and/or modify  *
 *   it under the terms of the GNU General Public License as published by  *
 *   the Free Software Foundation; either version 2 of the License, or     *
 *   (at your option) any later version.                                   *
 *                                                                         *
 ***************************************************************************/

#include <osgUtil/Optimizer>
#include <osg/MatrixTransform>
#include <osgDB/ReadFile>
#include <osgDB/WriteFile>
#include <osgDB/Registry>
#include <osg/Fog>
#include <osg/Light>
#include <osg/LightSource>
#include <osg/Camera>
#include <osgViewer/Viewer>

#include "OsgMain.h"
#include "OsgRender.h"
#include "OsgSky.h"
#include "OsgMath.h"

#include <glfeatures.h>	//gluXXX
#include <robottools.h>	//RtXXX()


static const double m_log01 = -log( 0.01 );
static const double sqrt_m_log01 = sqrt( m_log01 );
const GLfloat fog_exp2_density = sqrt_m_log01 / 11000;

SDSky *thesky = NULL;
tTrack *grTrack;

unsigned SDSkyDomeDistance = 0;
static unsigned SDNbCloudLayers = 0;

// Some private global variables.
//static int grDynamicWeather = 0;
static bool SDDynamicSkyDome = false;
static float SDSunDeclination = 0.0f;
static float SDMoonDeclination = 0.0f;
static float SDMax_Visibility = 0.0f;
static double SDVisibility = 0.0f;

#define MAX_BODIES	2
#define MAX_CLOUDS	3
#define NMaxStars	1000
#define NPLANETS		0	//No planets displayed
#define NB_BG_FACES	36	//Background faces
#define BG_DIST			1.0f
#define SKYDYNAMIC_THR	12000	//Skydynamic setting threshold. No dynamic sky below that.
#define CLEAR_CLOUD 1
#define MORE_CLOUD 6
#define SCARCE_CLOUD 5
#define COVERAGE_CLOUD 8

static osg::Vec3d *AStarsData = NULL;
static osg::Vec3d *APlanetsData = NULL;

static osg::ref_ptr<osg::Group> RealRoot = new osg::Group;

SDRender::SDRender(void)
{
}

SDRender::~SDRender(void)
{
}

/**
 * SDRender
 * Initialises a scene (ie a new view).
 * 
 * @return 0 if OK, -1 if something failed
 */
void SDRender::Init(osgViewer::Viewer *viewer)
{
    char buf[256];
    void *hndl = grTrackHandle;

    std::string path = "/opt/share/games/speed-dreams-2/data/";
  /* thesky = new SDSky;
    GfOut("SDSky class\n");
    int grSkyDomeDistance = 12000;

    int NStars = NMaxStars;
    //if (AStarsData)
        delete [] AStarsData;
    AStarsData = new osg::Vec3d[NStars];
    for(int i= 0; i < NStars; i++)
    {
        AStarsData[i][0] = SDRandom() * PI;
        AStarsData[i][1] = SDRandom() * PI;
        AStarsData[i][2] = SDRandom();
    }//for i

    GfLogInfo("  Stars (random) : %d\n", NStars);

    int NPlanets = 0;
    APlanetsData = NULL;

    const int timeOfDay = (int)grTrack->local.timeofday;
    const double domeSizeRatio = SDSkyDomeDistance / 80000.0;

   // thesky->build(path, SDSkyDomeDistance, SDSkyDomeDistance, 2000 * domeSizeRatio, SDSkyDomeDistance, 2000 * domeSizeRatio, SDSkyDomeDistance,
    //                                             NPlanets, APlanetsData, NStars, AStarsData );
    //GfOut("Build SKY\n");
  /*  GLfloat sunAscension = grTrack->local.sunascension;
    SDSunDeclination = (float)(15 * (double)timeOfDay / 3600 - 90.0);

    thesky->setSD( DEG2RAD(SDSunDeclination));
    thesky->setSRA( sunAscension );

    GfLogInfo("  Sun : time of day = %02d:%02d:%02d (declination = %.1f deg), "
              "ascension = %.1f deg\n", timeOfDay / 3600, (timeOfDay % 3600) / 60, timeOfDay % 60,
              SDSunDeclination, RAD2DEG(sunAscension));

    if ( SDSunDeclination > 180 )
        SDMoonDeclination = 3.0 + (rand() % 40);
    else
        SDMoonDeclination = (rand() % 270);

    //SDMoonDeclination = grUpdateMoonPos(timeOfDay);
    SDMoonDeclination = (rand() % 270);

    const float moonAscension = grTrack->local.sunascension;

    thesky->setMD( DEG2RAD(SDMoonDeclination) );
    thesky->setMRA( DEG2RAD(moonAscension) );

    GfLogInfo("  Moon : declination = %.1f deg, ascension = %.1f deg\n",
              SDMoonDeclination, moonAscension);

    // Set up the light source to the Sun position.
    sgCoord sunPosition;
    //TheSky->getSunPos(&sunPosition);
    //light->setPosition(sunPosition.xyz);

    // Initialize the whole sky dome.
    osg::Vec3 viewPos;
    //sgSetVec3(viewPos, grWrldX/2, grWrldY/2, 0);
    //TheSky->repositionFlat( viewPos, 0, 0);*/

  /*  RealRoot = dynamic_cast<osg::Group*>(viewer->getSceneData());
    osg::StateSet* rootStateSet = RealRoot->getOrCreateStateSet();
    RealRoot->setStateSet(rootStateSet);
	osg::Group* lightGroup = new osg::Group;

    //SDUpdateLight();
	
    osg::Light* myLight2 = new osg::Light;
    myLight2->setLightNum(1);
    myLight2->setPosition(osg::Vec4(-100.0f, -100.0f, -3220.0f, 1.0f));
    myLight2->setAmbient(osg::Vec4(0.2f, 0.2f, 0.2f, 1.0f));
    myLight2->setDiffuse(osg::Vec4(0.8f, 0.8f, 0.8f, 1.0f));
    myLight2->setSpecular(osg::Vec4(0.2f, 0.2f, 0.2f, 1.0f));
    myLight2->setConstantAttenuation(0.9f);
    
    //GfOut("Light\n");
    osg::LightSource* sunLight = new osg::LightSource;   
    //sunLight->getLight()->setDataVariance(Object::DYNAMIC);
    sunLight->setLight(myLight2);
    sunLight->setLocalStateSetModes(osg::StateAttribute::ON); 
    sunLight->setStateSetModes(*rootStateSet, osg::StateAttribute::ON);
    lightGroup->addChild(sunLight);

    //GfOut("SunLight");

	osg::Group *skyGroup = new osg::Group;
	osg::StateSet* skySS = skyGroup->getOrCreateStateSet();
	skySS->setMode(GL_LIGHT0, osg::StateAttribute::OFF);
    skyGroup->addChild(thesky->getPreRoot());
    //sunLight->addChild(skyGroup);
    /*mRoot->addChild(sceneGroup);
    mRoot->addChild(sunLight);*/

   /* osg::Group *mRoot = new osg::Group;
    mRoot->addChild(RealRoot);
    mRoot->addChild(sunLight);
    mRoot->addChild(lightGroup);

    osg::Fog* mFog = new osg::Fog;
    mFog->setMode( osg::Fog::EXP2 );
    mFog->setColor( osg::Vec4( 0.8, 0.8, 0.8, 1) );
    mFog->setDensity( fog_exp2_density );
    //rootStateSet->SetState->setMode( mFog, osg::StateAttribute::ON );
    rootStateSet->setAttributeAndModes(mFog);
    rootStateSet->setMode( GL_FOG, osg::StateAttribute::ON );
    viewer->setSceneData(mRoot);

    GfOut("LE POINTEUR %d\n",m_carroot.get());*/

  	//return 0;
}//SDRender::Init

/*void grUpdateLight( void )
{
    const float sol_angle = (float)TheSky->getSA();
    const float moon_angle = (float)TheSky->getMA();
    float sky_brightness = (float)(1.0 + cos(sol_angle)) / 2.0f;

    if (grTrack->local.rain > 0) // TODO: Different values for each rain strength value ?
    {
        BaseFogColor[0] = 0.42f;
        BaseFogColor[1] = 0.44f;
        BaseFogColor[2] = 0.50f;

        sky_brightness = (float)pow(sky_brightness, 0.5f);
    }
    else
    {
        BaseFogColor[0] = 0.84f;
        BaseFogColor[1] = 0.84f;
        BaseFogColor[2] = 1.00f;
    }

    SkyColor[0] = BaseSkyColor[0] * sky_brightness;
    SkyColor[1] = BaseSkyColor[1] * sky_brightness;
    SkyColor[2] = BaseSkyColor[2] * sky_brightness;
    SkyColor[3] = BaseSkyColor[3];
    grUpdateFogColor(sol_angle);

    sd_gamma_correct_rgb( SkyColor );

    // 3a)cloud and fog color
    CloudsColor[0] = FogColor[0] = BaseFogColor[0] * sky_brightness;
    CloudsColor[1] = FogColor[1] = BaseFogColor[1] * sky_brightness;
    CloudsColor[2] = FogColor[2] = BaseFogColor[2] * sky_brightness;
    CloudsColor[3] = FogColor[3] = BaseFogColor[3];

    //grUpdateFogColor(sol_angle);
    sd_gamma_correct_rgb( CloudsColor );


    float *sun_color = TheSky->get_sun_color();

    if (sol_angle > 1.0)
    {
        if (grVisibility > 1000 && cloudsTextureIndex < 8)
        {
            CloudsColor[0] = CloudsColor[0] * sun_color[0];
            CloudsColor[1] = CloudsColor[1] * sun_color[1];
            CloudsColor[2] = CloudsColor[2] * sun_color[2];
        }
        else
        {
            CloudsColor[0] = CloudsColor[0] * sun_color[0];
            CloudsColor[1] = CloudsColor[1] * sun_color[0];
            CloudsColor[2] = CloudsColor[2] * sun_color[0];
        }
    }

    sd_gamma_correct_rgb( CloudsColor );

    // 3b) repaint the sky (simply update geometrical, color, ... state, no actual redraw)
    TheSky->repaint(SkyColor, FogColor, CloudsColor, sol_angle, moon_angle,
                    NPlanets, APlanetsData, NStars, AStarsData);

    // 3c) update the main light position (it's at the sun position !)
    sgCoord solpos;
    TheSky->getSunPos(&solpos);
    ssgGetLight(0)-> setPosition(solpos.xyz);

    // 3c) update scene colors.
    if (SDVisibility > 1000 && cloudsTextureIndex < 8)
    {
        SceneAmbiant[0] = (sun_color[0]*0.25f + CloudsColor[0]*0.75f) * sky_brightness;
        SceneAmbiant[1] = (sun_color[1]*0.25f + CloudsColor[1]*0.75f) * sky_brightness;
        SceneAmbiant[2] = (sun_color[2]*0.25f + CloudsColor[2]*0.75f) * sky_brightness;
        SceneAmbiant[3] = 1.0;

        SceneDiffuse[0] = (sun_color[0]*0.25f + FogColor[0]*0.75f) * sky_brightness;
        SceneDiffuse[1] = (sun_color[1]*0.25f + FogColor[1]*0.75f) * sky_brightness;
        SceneDiffuse[2] = (sun_color[2]*0.25f + FogColor[2]*0.75f) * sky_brightness;
        SceneDiffuse[3] = 1.0;

        SceneSpecular[0] = sun_color[0] * sky_brightness;
        SceneSpecular[1] = sun_color[1] * sky_brightness;
        SceneSpecular[2] = sun_color[2] * sky_brightness;
        SceneSpecular[3] = 1.0;
    }
    else
    {
        SceneAmbiant[0] = (sun_color[0]*0.25f + CloudsColor[0]*0.75f) * sky_brightness;
        SceneAmbiant[1] = (sun_color[0]*0.25f + CloudsColor[1]*0.75f) * sky_brightness;
        SceneAmbiant[2] = (sun_color[0]*0.25f + CloudsColor[2]*0.75f) * sky_brightness;
        SceneAmbiant[3] = 1.0;

        SceneDiffuse[0] = (sun_color[0]*0.25f + FogColor[0]*0.75f) * sky_brightness;
        SceneDiffuse[1] = (sun_color[0]*0.25f + FogColor[1]*0.75f) * sky_brightness;
        SceneDiffuse[2] = (sun_color[0]*0.25f + FogColor[2]*0.75f) * sky_brightness;
        SceneDiffuse[3] = 1.0;

        SceneSpecular[0] = sun_color[0] * sky_brightness;
        SceneSpecular[1] = sun_color[0] * sky_brightness;
        SceneSpecular[2] = sun_color[0] * sky_brightness;
        SceneSpecular[3] = 1.0;
    }
}//grUpdateLight

void grUpdateFogColor(double sol_angle)
{
    double rotation;

    // first determine the difference between our view angle and local
    // direction to the sun
    rotation = -(TheSky->getSR() + SGD_PI);
    while ( rotation < 0 )
    {
        rotation += SD_2PI;
    }
    while ( rotation > SD_2PI )
    {
        rotation -= SD_2PI;
    }

    // revert to unmodified values before usign them.
    //
    float *sun_color = TheSky->get_sun_color();

    sd_gamma_correct_rgb( BaseFogColor );

    // Calculate the fog color in the direction of the sun for
    // sunrise/sunset effects.
    //
    float s_red =   (BaseFogColor[0] + 2 * sun_color[0] * sun_color[0]) / 3;
    float s_green = (BaseFogColor[1] + 2 * sun_color[1] * sun_color[1]) / 3;
    float s_blue =  (BaseFogColor[2] + 2 * sun_color[2] * sun_color[2]) / 3;

    // interpolate beween the sunrise/sunset color and the color
    // at the opposite direction of this effect. Take in account
    // the current visibility.
    //
    float av = TheSky->getVisibility();
    if (av > 45000)
       av = 45000;

    float avf = 0.87 - (45000 - av) / 83333.33;
    float sif = 0.5 - cos( sol_angle * 2)/2;

    if (sif < 1e-4)
       sif = 1e-4;

    float rf1 = fabs((rotation - SD_PI) / SD_PI);             // 0.0 .. 1.0
    float rf2 = avf * pow(rf1 * rf1, 1 /sif);
    float rf3 = 0.94 - rf2;

    FogColor[0] = rf3 * BaseFogColor[0] + rf2 * s_red;
    FogColor[1] = rf3 * BaseFogColor[1] + rf2 * s_green;
    FogColor[2] = rf3 * BaseFogColor[2] + rf2 * s_blue;
    sd_gamma_correct_rgb( FogColor );

    // make sure the colors have their original value before they are being
    // used by the rest of the program.
    //
    sd_gamma_correct_rgb( BaseFogColor );
}*/
