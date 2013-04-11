/***************************************************************************

    file                 : OsgDome.cpp
    created              : Mon Aug 21 18:24:02 CEST 2012
    copyright            : (C) 2012 by Xavier Bertaux
    email                : bertauxx@yahoo.fr
    version              : $Id$

***************************************************************************/

/***************************************************************************
 *                                                                         *
 *   This program is free software; you can redistribute it and/or modify  *
 *   it under the terms of the GNU General Public License as published by  *
 *   the Free Software Foundation; either version 2 of the License, or     *
 *   (at your option) any later version.                                   *
 *                                                                         *
 ***************************************************************************/

#include <cmath>
#include <osg/Array>
#include <osg/Geode>
#include <osg/Geometry>
#include <osg/Node>
#include <osg/Math>
#include <osg/MatrixTransform>
#include <osg/Material>
#include <osg/ShadeModel>
#include <osg/PrimitiveSet>

#include "OsgVectorArrayAdapter.h"
#include "OsgDome.h"
#include "OsgMath.h"

using namespace osg;
using namespace osggraph;

static const float center_elev = 1.0;

namespace
{
struct DomeParam
{
    float radius;
    float elev;
} domeParams[] = {{.5, .8660}, {.8660, .5}, {0.9701, 0.2425}, {0.9960, 0.0885},
                  {1.0, 0.0}, {0.9922, -0.1240}};

const int numRings = sizeof(domeParams) / sizeof(domeParams[0]);
const int numBands = 12;
const int halfBands = numBands/2;
}

static const float upper_radius = 0.9701;
static const float upper_elev = 0.2425;

static const float middle_radius = 0.9960;
static const float middle_elev = 0.0885;

static const float lower_radius = 1.0;
static const float lower_elev = 0.0;

static const float bottom_radius = 0.9922;
static const float bottom_elev = -0.1240;

// Constructor
SDSkyDome::SDSkyDome( void ) 
{
    asl = 0;
}


// Destructor
SDSkyDome::~SDSkyDome( void ) 
{
}

namespace
{
struct GridIndex
{
    VectorArrayAdapter<Vec3Array> gridAdapter;
    Vec3Array& grid;
    GridIndex(Vec3Array& array, int rowStride, int baseOffset) :
        gridAdapter(array, rowStride, baseOffset), grid(array)
    {
    }
    unsigned short operator() (int ring, int band)
    {
        return (unsigned short)(&gridAdapter(ring, band) - &grid[0]);
    }
};
}
void SDSkyDome::makeDome(int rings, int bands, DrawElementsUShort& elements)
{
    std::back_insert_iterator<DrawElementsUShort> pusher
        = std::back_inserter(elements);
    GridIndex grid(*dome_vl, numBands, 1);
    for (int i = 0; i < bands; i += 2) 
    {
        *pusher = 0;  *pusher = grid(0, i);  *pusher = grid(0, i + 1);  

        for (int j = 0; j < rings - 1; ++j) 
        {
            *pusher = grid(j, i);  *pusher = grid(j, i + 1);
            *pusher = grid(j + 1, i + 1);
            *pusher = grid(j, i);  *pusher =  grid(j + 1, i + 1);
            *pusher =  grid(j + 1, i);
        }

        for (int j = rings - 1; j > 0; --j) 
        {
            *pusher = grid(j, i + 1);  *pusher = grid(j - 1, i + 1);
            *pusher = grid(j, (i + 2) % bands);
            *pusher = grid(j, (i + 2) % bands); *pusher = grid(j - 1, i + 1);
            *pusher = grid(j - 1, (i + 2) % bands);
        }
        
        *pusher = grid(0, i + 1);  *pusher = 0;
        *pusher = grid(0, (i + 2) % bands);
    }
}

osg::Node* SDSkyDome::build( double hscale, double vscale )
{
    osg::Geode* geode = new osg::Geode;

    osg::StateSet* stateSet = geode->getOrCreateStateSet();
    stateSet->setRenderBinDetails(-10, "RenderBin");

    osg::ShadeModel* shadeModel = new osg::ShadeModel;
    shadeModel->setMode(osg::ShadeModel::SMOOTH);
    stateSet->setAttributeAndModes(shadeModel);
    stateSet->setMode(GL_LIGHTING, osg::StateAttribute::OFF);
    stateSet->setMode(GL_FOG, osg::StateAttribute::OFF);
    stateSet->setMode(GL_DEPTH_TEST, osg::StateAttribute::OFF);
    stateSet->setMode(GL_CULL_FACE, osg::StateAttribute::OFF);
    stateSet->setMode(GL_BLEND, osg::StateAttribute::OFF);
    stateSet->setMode(GL_ALPHA_TEST, osg::StateAttribute::OFF);
    osg::Material* material = new osg::Material;
    stateSet->setAttribute(material);

    dome_vl = new osg::Vec3Array(1 + numRings * numBands);
    dome_cl = new osg::Vec3Array(1 + numRings * numBands);

    (*dome_vl)[0].set(0.0, 0.0, center_elev * vscale);
    osggraph::VectorArrayAdapter<Vec3Array> vertices(*dome_vl, numBands, 1);

    for ( int i = 0; i < numBands; ++i ) 
    {
        double theta = (i * 30) * SD_DEGREES_TO_RADIANS;
        double sTheta = hscale*sin(theta);
        double cTheta = hscale*cos(theta);
        for (int j = 0; j < numRings; ++j) 
        {
            vertices(j, i).set(cTheta * domeParams[j].radius,
                               sTheta * domeParams[j].radius,
                               domeParams[j].elev * vscale);
        }
    }

    DrawElementsUShort* domeElements = new osg::DrawElementsUShort(GL_TRIANGLES);
    makeDome(numRings, numBands, *domeElements);
    osg::Geometry* geom = new Geometry;
    geom->setName("Dome Elements");
    geom->setUseDisplayList(false);
    geom->setVertexArray(dome_vl.get());
    geom->setColorArray(dome_cl.get());
    geom->setColorBinding(osg::Geometry::BIND_PER_VERTEX);
    geom->setNormalBinding(osg::Geometry::BIND_OFF);
    geom->addPrimitiveSet(domeElements);
    geode->addDrawable(geom);

    repaint(osg::Vec3(1, 1, 1), osg::Vec3(1, 1, 1), osg::Vec3(1, 1, 1), 0.0, 5000.0 );
    dome_transform = new osg::MatrixTransform;
    dome_transform->addChild(geode);

    return dome_transform.get();
}

static void sd_fade_to_black(osg::Vec3 sky_color[], float asl, int count) 
{
    const float ref_asl = 10000.0f;
    const float d = exp( - asl / ref_asl );
    for(int i = 0; i < count ; i++)
        sky_color[i] *= d;
}

inline void clampColor(osg::Vec3& color)
{
    color.x() = osg::clampTo(color.x(), 0.0f, 1.0f);
    color.y() = osg::clampTo(color.y(), 0.0f, 1.0f);
    color.z() = osg::clampTo(color.z(), 0.0f, 1.0f);
}

bool SDSkyDome::repaint( const osg::Vec3f& sun_color, const osg::Vec3f& sky_color,
                    const osg::Vec3f& fog_color, double sun_angle, double vis )
{
   	osg::Vec3f outer_param, outer_diff;
    osg::Vec3f middle_param, middle_diff;

    if (sun_angle > 80) 
    {
        double sunAngleFactor = 10.0 - fabs(90.0 - sun_angle);
        static const osg::Vec3f outerConstant(1.0 / 20.0, 1.0 / 40.0, -1.0 / 30.0);
        static const osg::Vec3f middleConstant(1.0 / 40.0, 1.0 / 80.0, 0.0);
        outer_param = sunAngleFactor * outerConstant;
        middle_param = sunAngleFactor * middleConstant;
		outer_diff = (1.0 / 6.0) * outer_param;
		middle_diff = (1.0 / 6.0) * middle_param;
    } else 
    {
        outer_param = osg::Vec3f(0, 0, 0);
		middle_param = osg::Vec3f(0, 0, 0);
		outer_diff = osg::Vec3f(0, 0, 0);
		middle_diff = osg::Vec3f(0, 0, 0);
    }
    
    osg::Vec3f outer_amt = outer_param;
    osg::Vec3f middle_amt = middle_param;

    const double cvf = osg::clampBelow(vis, 45000.0);
    const double vis_factor = osg::clampTo((vis - 1000.0) / 2000.0, 0.0, 1.0);
    const float upperVisFactor = 1.0 - vis_factor * (0.7 + 0.3 * cvf/45000);
    const float middleVisFactor = 1.0 - vis_factor * (0.1 + 0.85 * cvf/45000);

    (*dome_cl)[0] = toOsg(sky_color);
    osggraph::VectorArrayAdapter<Vec3Array> colors(*dome_cl, numBands, 1);
    const double saif = sun_angle/SD_PI;
    static const osg::Vec3f blueShift(0.8, 1.0, 1.2);
    const osg::Vec3f skyFogDelta = sky_color - fog_color;
    const osg::Vec3f sunSkyDelta = sun_color - sky_color;
    
    for (int i = 0; i < halfBands+1; i++) 
    {
        osg::Vec3f diff = mult(skyFogDelta, blueShift);
        diff *= (0.8 + saif - ((halfBands-i)/10));
        colors(2, i) = toOsg(sky_color - upperVisFactor * diff);
        colors(3, i) = toOsg(sky_color - middleVisFactor * diff + middle_amt);
        colors(4, i) = toOsg(fog_color + outer_amt);
        //colors(0, i) = simgear::math::lerp(toOsg(sky_color), colors(2, i), .3942);
        //colors(1, i) = simgear::math::lerp(toOsg(sky_color), colors(2, i), .7885);
        for (int j = 0; j < numRings - 1; ++j)
            clampColor(colors(j, i));
        outer_amt -= outer_diff;
        middle_amt -= middle_diff;
    }

    for (int i = halfBands+1; i < numBands; ++i)
        for (int j = 0; j < 5; ++j)
            colors(j, i) = colors(j, numBands - i);

    sd_fade_to_black(&(*dome_cl)[0], asl * center_elev, 1);
    
    for (int i = 0; i < numRings - 1; ++i)
        sd_fade_to_black(&colors(i, 0), (asl+0.05f) * domeParams[i].elev,
                      numBands);

    for ( int i = 0; i < numBands; i++ )
        colors(numRings - 1, i) = toOsg(fog_color);
        
    dome_cl->dirty();
    
    return true;
}

bool SDSkyDome::reposition( const osg::Vec3f& p, double _asl,
                       double lon, double lat, double spin ) 
{
    asl = _asl;

    osg::Matrix T, LON, LAT, SPIN;

    T.makeTranslate( toOsg(p) );
    LON.makeRotate(lon, osg::Vec3(0, 0, 1));
    LAT.makeRotate(90.0 * SD_DEGREES_TO_RADIANS - lat, osg::Vec3(0, 1, 0));
    SPIN.makeRotate(spin, osg::Vec3(0, 0, 1));

    dome_transform->setMatrix( SPIN*LAT*LON*T );
    
    return true;
}
