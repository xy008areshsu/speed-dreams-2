/***************************************************************************

    file        : OsgViewer.cpp
    created     : Sun Jan 13 22:11:03 CEST 2013
    copyright   : (C) 2013 by Xavier Bertaux
    email       : bertauxx@yahoo.fr
    version     : $Id$

 ***************************************************************************/

/***************************************************************************
 *                                                                         *
 *   This program is free software; you can redistribute it and/or modify  *
 *   it under the terms of the GNU General Public License as published by  *
 *   the Free Software Foundation; either version 2 of the License, or     *
 *   (at your option) any later version.                                   *
 *                                                                         *
 ***************************************************************************/



#include <osg/Camera>
#include <tgfclient.h>
#include <graphic.h>



#include "OsgMain.h"
#include "OsgView.h"
//#include "OsgCar.h"

//static char buf[1024];
static char path[1024];
static char path2[1024];

SDView::SDView(osg::Camera * c, int x, int y, int width, int height,
               osg::Camera * mc)
{
    this->x =x;
    this->y =y;
    this->width= width;
    this->height = height;
    cam = c;

    mirrorCam = mc;
    hasChangedMirrorFlag = false;
    mirrorFlag = true;


    tdble fovFactor =1;
    tdble fixedFar =0;
    mirror = new SDCarCamMirror(
        this,
        -1,
        0,					// drawCurr
        1,					// drawBG
        50.0,				// fovy
        0.0,				// fovymin
        360.0,				// fovymax
        0.3,				// near
        fixedFar ? fixedFar : 300.0 * fovFactor, // far
        fixedFar ? 2*fixedFar/3 : 200.0 * fovFactor,	// fogstart
        fixedFar ? fixedFar : 300.0 * fovFactor	// fogend
    );
   // mirror->setProjection();




    id = 0;
    curCar = NULL;
    /*selectNextFlag = false;
    selectPrevFlag = false;
    mirrorFlag = 1;*/
    //memset(cams, 0, sizeof(cams));
    //viewRatio = 1.33;
    cars = 0;
    selectNextFlag=false;
    selectPrevFlag=false;
    mirrorFlag=false;
	
}

SDView::~SDView()
{
    delete cameras;
}

void SDView::switchMirror(void)
{
	mirrorFlag = 1 - mirrorFlag;
    hasChangedMirrorFlag = true;
	sprintf(path, "%s/%d", GR_SCT_DISPMODE, id);
	GfParmSetNum(grHandle, path, GR_ATT_MIRROR, NULL, (tdble)mirrorFlag);

	if (curCar->_driverType == RM_DRV_HUMAN) 
	{
		sprintf(path2, "%s/%s", GR_SCT_DISPMODE, curCar->_name);
		GfParmSetNum(grHandle, path2, GR_ATT_MIRROR, NULL, (tdble)mirrorFlag);
	}
	
	GfParmWriteFile(NULL, grHandle, "Graph");
}

void SDView::Init(tSituation *s)
{
    cameras = new SDCameras(this,s->_ncars);
    loadParams(s);
}

/* Update screen display */
void SDView::update(tSituation *s, const SDFrameInfo* frameInfo)
{
    /*if (!active)
	{
		return;
    }*/
	
	int carChanged = 0;
	if (selectNextFlag) 
	{
		for (int i = 0; i < (s->_ncars - 1); i++) 
		{
			if (curCar == s->cars[i]) 
			{
				curCar = s->cars[i + 1];
				carChanged = 1;
                GfOut("Car Next\n");
				break;
			}
		}
		
		selectNextFlag = false;
	}

	if (selectPrevFlag) 
	{
		for (int i = 1; i < s->_ncars; i++) 
		{
			if (curCar == s->cars[i]) 
			{
				curCar = s->cars[i - 1];
				carChanged = 1;
                GfOut("Car Previous\n");
				break;
			}
		}
		
		selectPrevFlag = false;
	}
	
	if (carChanged) 
	{
		sprintf(path, "%s/%d", GR_SCT_DISPMODE, id);
		GfParmSetStr(grHandle, path, GR_ATT_CUR_DRV, curCar->_name);
		loadParams (s);
        //board->setWidth(fakeWidth);
		GfParmWriteFile(NULL, grHandle, "Graph");
        //curCam->onSelect(curCar, s);
	}

    if(hasChangedMirrorFlag){
        hasChangedMirrorFlag =false;
        this->de_activateMirror();
    }

    //int	i;
   // int nb = s->_ncars;
    //viewer->update(s, &frameInfo);
   // tCarElt *car = getCurrentCar();
    cameras->update(curCar,s);
    mirror->update(curCar,s);
    mirror->setModelView();
}

void SDView::de_activateMirror(){
    if(mirrorFlag){
        if(cameras->getSelectedCamera()->getMirrorAllowed()){
            this->mirrorCam->setNodeMask(1);
        }else{
            this->mirrorCam->setNodeMask(0);
        }
    }else{
        this->mirrorCam->setNodeMask(0);
    }
}

Camera* SDView::getCamera(){
    return cameras->getSelectedCamera()->getGenericCamera();
}

void SDView::loadParams(tSituation *s)
{
	int camNum;
	int i;
	//class cGrCamera *cam;
	const char *carName;

	// Initialize the screen "current car" if not already done.
	sprintf(path, "%s/%d", GR_SCT_DISPMODE, id);
	
	if (!curCar) 
	{
		// Load the name of the "current driver", and search it in the race competitors.
		carName = GfParmGetStr(grHandle, path, GR_ATT_CUR_DRV, "");
		for (i = 0; i < s->_ncars; i++) 
		{
			if (!strcmp(s->cars[i]->_name, carName)) 
			{
				break;
			}
		}

		// Found : this is the "current driver".
		if (i < s->_ncars) 
		{
			curCar = s->cars[i];
		} else if (id < s->_ncars) 
		{
			curCar = s->cars[id];
		} else 
		{
			curCar = s->cars[0];
		}
		
		GfLogTrace("Screen #%d : Assigned to %s\n", id, curCar->_name);
	}

	// Load "current camera" settings (attached to the "current car").
	sprintf(path2, "%s/%s", GR_SCT_DISPMODE, curCar->_name);
	GfOut("Driver Name Camera = %s\n", curCar->_name);
	//curCamHead	= (int)GfParmGetNum(grHandle, path, GR_ATT_CAM_HEAD, NULL, 9);
	camNum	= (int)GfParmGetNum(grHandle, path, GR_ATT_CAM, NULL, 0);
	mirrorFlag	= (int)GfParmGetNum(grHandle, path, GR_ATT_MIRROR, NULL, (tdble)mirrorFlag);
	//curCamHead	= (int)GfParmGetNum(grHandle, path2, GR_ATT_CAM_HEAD, NULL, (tdble)curCamHead);
	camNum	= (int)GfParmGetNum(grHandle, path2, GR_ATT_CAM, NULL, (tdble)camNum);
	mirrorFlag	= (int)GfParmGetNum(grHandle, path2, GR_ATT_MIRROR, NULL, (tdble)mirrorFlag);
}
