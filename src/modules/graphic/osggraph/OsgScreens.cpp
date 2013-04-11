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

#include <tgfclient.h>


#include <osgViewer/Viewer>
#include <osgViewer/GraphicsWindow>
#include <osg/GraphicsContext>

#include "OsgScreens.h"

SDScreens::SDScreens()
{
    viewer = new osgViewer::Viewer();
}

void SDScreens::Init(int x,int y, int width, int height, osg::ref_ptr<osg::Group> m_sceneroot){


    //int grWinx = x;
    //int grWiny = y;
    int grWinw = width;
    int grWinh = height;

    osg::Camera * mirrorCam = new osg::Camera;

    view = new SDView(viewer->getCamera(),0,0,grWinw,grWinh,mirrorCam);

    viewer->setThreadingModel(osgViewer::Viewer::CullThreadPerCameraDrawThreadPerContext);
    osg::ref_ptr<osgViewer::GraphicsWindowEmbedded> gw = viewer->setUpViewerAsEmbeddedInWindow(0, 0, grWinw, grWinh);
    //view->getOsgView()->setUpViewInWindow(0, 0, grWinw, grWinh,0);
    viewer->getCamera()->setName("Cam one");
    viewer->getCamera()->setViewport(new osg::Viewport(0, 0, grWinw, grWinh));
    viewer->getCamera()->setGraphicsContext(gw);
    viewer->getCamera()->setComputeNearFarMode(osg::CullSettings::DO_NOT_COMPUTE_NEAR_FAR);
    //viewer->getCamera()->setProjectionMatrixAsPerspective(67.5f, static_cast<double>((float)grWinw / (float)grWinh), 0.1f, 12000.0f);


    mirrorCam->setGraphicsContext(gw);
    mirrorCam->setClearMask( GL_DEPTH_BUFFER_BIT | GL_COLOR_BUFFER_BIT);
    //mirrorCam->setClearMask( GL_COLOR_BUFFER_BIT );
    mirrorCam->setReferenceFrame( osg::Camera::ABSOLUTE_RF );
    //mirrorCam->setClearMask( GL_DEPTH_BUFFER_BIT );
   // mirrorCam->setRenderOrder( osg::Camera::POST_RENDER );
    //mirrorCam->setComputeNearFarMode(osg::CullSettings::DO_NOT_COMPUTE_NEAR_FAR);
    //mirrorCam->setProjectionMatrixAsPerspective(67.5f, static_cast<double>((float)grWinw / (float)grWinh), 0.1f, 12000.0f);


    root = new osg::Group;
    root->addChild(m_sceneroot);
    root->addChild(mirrorCam);
    mirrorCam->addChild(m_sceneroot);
    //viewer->addSlave(mirrorCam);//,osg::Matrix(),osg::Matrix(),true);


    viewer->setSceneData(root);
    //viewer->realize();
}

void SDScreens::InitCars(tSituation *s)
{
    view->Init(s);
}

void SDScreens::update(tSituation * s,SDFrameInfo* fi)
{
    view->update(s,fi);

    if (!viewer->done())
        viewer->frame();
}

SDScreens::~SDScreens()
{
    root.release();

    //viewer->getSceneData();
    //delete viewer->getSceneData();
    delete view;
    delete viewer;
}




