/***************************************************************************

    file                 : OsgSky.cpp
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

#include "OsgSky.h"
//#include "OsgCloudfield.h"
//#include "OsgNewcloud.h"

#include <osg/StateSet>
#include <osg/Depth>

// Constructor
SDSky::SDSky( void ) 
{
    effective_visibility = visibility = 10000.0;
    in_puff = false;
    puff_length = 0;
    puff_progression = 0;
    ramp_up = 0.15;
    ramp_down = 0.15;
    in_cloud  = -1;

    //dome = 0;
    sun = 0;
    moon = 0;
    planets = 0;
    stars = 0;
    pre_root = 0;
    //post_root = 0;
    
    //clouds_3d_enabled = false;
    //clouds_3d_density = 0.8;

    pre_root = new osg::Group;
    //pre_root->setNodeMask(simgear::BACKGROUND_BIT);
    osg::StateSet* preStateSet = new osg::StateSet;
    preStateSet->setAttribute(new osg::Depth(osg::Depth::LESS, 0.0, 1.0, false));
    pre_root->setStateSet(preStateSet);
    //cloud_root = new osg::Group;
    //cloud_root->setNodeMask(simgear::MODEL_BIT);

    pre_selector = new osg::Switch;
    pre_transform = new osg::Group;
    //_ephTransform = new osg::MatrixTransform;
}

// Destructor
SDSky::~SDSky( void )
{
    //delete dome;
    delete sun;
    delete moon;
    delete planets;
    delete stars;
    //delete pre_transform;
    //delete post_root;
}

// initialize the sky and connect the components to the scene graph at
// the provided branch
/*void SDSky::build( double h_radius_m, double v_radius_m,
                   double sun_size, double moon_size,
                   const SGEphemeris& eph )*/
void SDSky::build( std::string tex_path, double h_radius, double v_radius, double sun_size, double sun_dist,
      double moon_size, double moon_dist, int nplanets, osg::Vec3d *planet_data,
      int nstars, osg::Vec3d *star_data )
{
    /*dome = new SDSkyDome;
    pre_transform->addChild( dome->build( h_radius_m, v_radius_m ));*/

    //pre_transform->addChild(_ephTransform.get());
    planets = new SDStars;
    pre_transform->addChild( planets->build(nplanets, planet_data, h_radius));
    //_ephTransform->addChild( planets->build(eph.getNumPlanets(), eph.getPlanets(), h_radius));

    stars = new SDStars;
    pre_transform->addChild( stars->build(nstars, star_data, h_radius));
    //_ephTransform->addChild( stars->build(eph.getNumStars(), eph.getStars(), h_radius));
    
    moon = new SDMoon;
    pre_transform->addChild( moon->build( tex_path, moon_size));
    //_ephTransform->addChild( moon->build(tex_path, moon_size) );

    sun = new SDSun;
    pre_transform->addChild( sun->build( tex_path, moon_size));
    //_ephTransform->addChild( oursun->build(tex_path, sun_size, property_tree_node ) );

    pre_selector->addChild( pre_transform.get());
    pre_root->addChild( pre_selector.get());    
}

//bool SDSky::repaint( const SDSkyColor &sc, const SDEphemeris& eph )
bool SDSky::repaint( osg::Vec4d sky_color, osg::Vec4d fog_color, osg::Vec4d cloud_color, double sol_angle,
                       double moon_angle, int nplanets, osg::Vec3d *planet_data,
                       int nstars, osg::Vec3d *star_data )
{
    if ( effective_visibility > 1000.0 ) 
    {
		enable();
        /*dome->repaint( sc.adj_sky_color, sc.sky_color, sc.fog_color,
                       sc.sun_angle, effective_visibility );*/

        planets->repaint( sol_angle, nplanets, planet_data );
        stars->repaint( sol_angle, nstars, star_data);
        sun->repaint( sol_angle, effective_visibility );
        moon->repaint( moon_angle );

		/*for ( unsigned i = 0; i < cloud_layers.size(); ++i ) 
		{
            if (cloud_layers[i]->getCoverage() != SGCloudLayer::SG_CLOUD_CLEAR)
            {
                cloud_layers[i]->repaint( sc.cloud_color );
            }
		}*/
    } else 
    {
		// turn off sky
		disable();
    }
    /*SGCloudField::updateFog((double)effective_visibility,
                            osg::Vec4f(toOsg(sc.fog_color), 1.0f));*/
    return true;
}

bool SDSky::reposition( osg::Vec3 view_pos, osg::Vec3 zero_elev, osg::Vec3 view_up, double lon, double lat, double alt, double spin, double gst, double dt )
{
    double angle = gst * 15;
    //double angleRad = SGMiscd::deg2rad(angle);

    //osg::Vec3f zero_elev, view_up;
    //double lon, lat, alt;

    /*SGGeod geodZeroViewPos = SGGeod::fromGeodM(st.pos_geod, 0);
    zero_elev = toVec3f( SGVec3d::fromGeod(geodZeroViewPos) );

    SGQuatd hlOr = SGQuatd::fromLonLat(st.pos_geod);
    view_up = toVec3f(hlOr.backTransform(-SGVec3d::e3()));

    lon = st.pos_geod.getLongitudeRad();
    lat = st.pos_geod.getLatitudeRad();
    alt = st.pos_geod.getElevationM();*/

    //dome->reposition( zero_elev, alt, lon, lat, st.spin );

    /*osg::Matrix m = osg::Matrix::rotate(angleRad, osg::Vec3(0, 0, -1));
    m.postMultTranslate(toOsg(st.pos));
    _ephTransform->setMatrix(m);

    double sun_ra = eph.getSunRightAscension();
    double sun_dec = eph.getSunDeclination();
    sun->reposition( sun_ra, sun_dec, st.sun_dist, lat, alt, st.sun_angle );

    double moon_ra = getMoonRightAscension();
    double moon_dec = getMoonDeclination();
    moon->reposition( moon_ra, moon_dec, st.moon_dist );*/

    /*for ( unsigned i = 0; i < cloud_layers.size(); ++i ) 
    {
        if ( cloud_layers[i]->getCoverage() != SGCloudLayer::SG_CLOUD_CLEAR ) 
        {
            cloud_layers[i]->reposition( zero_elev, view_up, lon, lat, alt, dt);
        } else
          cloud_layers[i]->getNode()->setAllChildrenOff();
    }*/

    return true;
}

/*void SDSky::add_cloud_layer( SDCloudLayer * layer )
{
    cloud_layers.push_back(layer);
    cloud_root->addChild(layer->getNode());

    layer->set_enable3dClouds(clouds_3d_enabled);
}

const SDCloudLayer * SDSky::get_cloud_layer (int i) const
{
    return cloud_layers[i];
}

SDCloudLayer *SDSky::get_cloud_layer (int i)
{
    return cloud_layers[i];
}

int SDSky::get_cloud_layer_count () const
{
    return cloud_layers.size();
}

double SDSky::get_3dCloudDensity() const 
{
    return SGNewCloud::getDensity();
}

void SDSky::set_3dCloudDensity(double density)
{
    SDNewCloud::setDensity(density);
}

float SDSky::get_3dCloudVisRange() const 
{
    return SGCloudField::getVisRange();
}

void SDSky::set_3dCloudVisRange(float vis)
{
    SDCloudField::setVisRange(vis);
    for ( int i = 0; i < (int)cloud_layers.size(); ++i ) 
    {
        cloud_layers[i]->get_layer3D()->applyVisRange();
    }
}

void SDSky::texture_path( const string& path ) 
{
	tex_path = SGPath( path );
}*/

void SDSky::modify_vis( float alt, float time_factor ) 
{
    float effvis = visibility;

    /*for ( int i = 0; i < (int)cloud_layers.size(); ++i )
    {
		float asl = cloud_layers[i]->getElevation_m();
		float thickness = cloud_layers[i]->getThickness_m();
        float transition = cloud_layers[i]->getTransition_m();*/

		double ratio = 1.0;

        /*if ( cloud_layers[i]->getCoverage() == SGCloudLayer::SG_CLOUD_CLEAR ) 
        {
	    	// less than 50% coverage -- assume we're in the clear for now
	    	ratio = 1.0;
        } else if ( alt < asl - transition ) 
        {
	    	// below cloud layer
	    	ratio = 1.0;
		} else if ( alt < asl ) 
		{
	    	// in lower transition
	    	ratio = (asl - alt) / transition;
		} else if ( alt < asl + thickness ) 
		{
	    	// in cloud layer
	    	ratio = 0.0;
		} else if ( alt < asl + thickness + transition ) 
		{
	    	// in upper transition
	    	ratio = (alt - (asl + thickness)) / transition;
		} else 
		{
	    	// above cloud layer
	    	ratio = 1.0;
		}

        if ( cloud_layers[i]->getCoverage() == SGCloudLayer::SG_CLOUD_CLEAR ||
             cloud_layers[i]->get_layer3D()->defined3D) 
        {
        } else if ( (cloud_layers[i]->getCoverage() == 
                     SGCloudLayer::SG_CLOUD_FEW)
                    || (cloud_layers[i]->getCoverage() ==
                        SGCloudLayer::SG_CLOUD_SCATTERED) )
        {
            float temp = ratio * 2.0;
            if ( temp > 1.0 ) { temp = 1.0; }
            cloud_layers[i]->setAlpha( temp );
        } else 
        {
            cloud_layers[i]->setAlpha( 1.0 );
            effvis *= ratio;
        }*/

        if ( effvis <= 25.0 ) 
        {
            effvis = 25.0;
        }

    //}

    effective_visibility = effvis;
}
