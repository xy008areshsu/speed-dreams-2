//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++*
// robotinterface.cpp
//--------------------------------------------------------------------------*
// Learning robot for SD
// Speed Dreams - Version 2.0.X
//--------------------------------------------------------------------------*
// Interface between robot and SD
// 
// File         : robotinterface.cpp
// Created      : 2011.06.16
// Last changed : 2011.11.09
// Copyright    : © 2006-2011 Wolf-Dieter Beelitz
// eMail        : wdb@wdbee.de
// Version      : 1.00.001
//--------------------------------------------------------------------------*
// V1.00.000:
// Initial interface for SD
// New features:
// - Allows to setup up to MAXNBBOTS drivers per robot module xml file
//	 TODO: read MAXNBBOTS from a robot's XML file
// - Allows to comment out drivers in the xml file not only at the end
// - Allows to use the new pure Speed Dreams Robot interface with C++
//--------------------------------------------------------------------------*
// This program is free software; you can redistribute it and/or modify
// it under the terms of the GNU General Public License as published by
// the Free Software Foundation; either version 2 of the License, or
// (at your option) any later version.
//--------------------------------------------------------------------------*
// Hints:
// 
// With the traditional TORCS interface a robot module has to have a function
// defined and exported that matches the name of the directory TORCS is 
// looking at for the robot dll/so.
// This causes us to allways compile a new robot module, even if we simply
// want an identical robot module for another directory, i.e. to have more
// than 10 drivers of the same car type.
//
// The new SD interface uses a fixed function name for the initial call to 
// the robot module. To get another robot module for other drivers in an 
// additional directory, you can just copy the dll/so and that's it.
// This allows all users without a compiler to create their own drivers
// based on a standard robot module and their own directories and xml files.
// 
// The new pure SD Robot Interface uses a "interface" instad of the older 
// extern "C" functions. The "interface" is defined in irobot.h
//--------------------------------------------------------------------------*

//#include <irobot.h>
//#include <idriver.h>

#include "globaldefinitions.h"
//#include "robotinterface.h"
#include "abstractdriver.h"

//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++*
// New pure Speed Dreams Robot Interface - Declaration of the outer side
// Robot module interface
//--------------------------------------------------------------------------*
// see robotinterface.h
//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++*
/*
//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++*
// New pure Speed Dreams Robot Interface - Declaration of the outer side
// Driver interface
//--------------------------------------------------------------------------*
class Driver : public IDriver
{
	public:

		virtual int InitFuncPt(
			int index,
			void *pt);

		virtual void InitTrack(
			int index,
			tTrack* track,
			void *carHandle,
			void **carParmHandle,
			tSituation *s);

		virtual void NewRace(
			int index,
			tCarElt* car,
			tSituation *s);

		virtual void Drive(
			int index,
			tCarElt* car,
			tSituation *s);

		virtual int PitCmd(
			int index,
			tCarElt* car,
			tSituation *s);

		virtual void EndRace(
			int index,
			tCarElt *car,
			tSituation *s);

		virtual void Shutdown(
			int index);

};
//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++*
*/
//==========================================================================*
// Prototypes of routines, provided for communication with SD using the 
// extended SD Interface
//--------------------------------------------------------------------------*
static int InitFuncPt
  (int index,
  void *pt);

static void InitTrack
  (int index,
  tTrack* track,
  void *carHandle,
  void **carParmHandle,
  tSituation *s);

static void NewRace
  (int index,
  tCarElt* car,
  tSituation *s);

static void Drive
  (int index,
  tCarElt* car,
  tSituation *s);

static int PitCmd
  (int index,
  tCarElt* car,
  tSituation *s);

static void EndRace
  (int index,
  tCarElt *car,
  tSituation *s);

static void Shutdown
  (int index);
//==========================================================================*

//==========================================================================*
// Constants and buffers for strings
//--------------------------------------------------------------------------*
const int BUFSIZE = 256;

// Max length of a drivers name
const int DRIVERLEN = 32;                 

// Default driver names
char defaultBotName[DRIVERLEN];

// Default driver descriptions
char defaultBotDesc[DRIVERLEN];

// Number of drivers defined in robot's xml-file
int NBBOTS = 0;                                  // Still unknown

// Buffer for driver's names defined in robot's xml-file
char* DrvNames = NULL; 

// Buffer for driver's descriptions defined in robot's xml-file
char* DrvDescs = NULL; 

// Buffer for driver's index  defined in robot's xml-file
int* DrvIndex = NULL;

// Robot's name
char BufName[BUFSIZE];                           // Buffer for robot's name
const char* RobName = BufName;                   // Pointer to robot's name

// Robot's private section name
char BufSection[BUFSIZE];                        // Buffer for robot's section
const char* PrivateSection = BufSection;         // Pointer to robot's section

// Robot's relative dir
char BufPathDirRel[BUFSIZE];                     // Robot's dir relative
const char* RobPathDirRel = BufPathDirRel;       // to installation dir

// Robot's relative xml-filename
char BufPathXMLRel[BUFSIZE];                     // Robot's xml-filename
const char* RobPathXMLRel = BufPathXMLRel;       // relative to install. dir

// Robot's absolute dir
char BufPathDir[BUFSIZE];                        // Robot's dir 

// Robot's absolute xml-filename
char BufPathXML[BUFSIZE];                        // Robot's xml-filename
const char* RobPathXML = BufPathXML;             // Pointer to xml-filename

// Filehandle Robot's xml file
void *RobotSettings;   

// Save start index offset from robot's xml file
int IndexOffset = 0;

// Marker for undefined drivers to be able to comment out drivers 
// in the robot's xml-file between others, not only at the end of the list
char undefined[] = "undefined";                  
//==========================================================================*

//==========================================================================*
// Robot's drivers of this modul and common data used by all drivers
//--------------------------------------------------------------------------*
TAbstractDriver** cDrivers = NULL;               // Array of pointers to dr.
int cRobotType;                                  // Type of the robot module
int cRobotIndex[MAXNBBOTS];                      // Stored robot index
//==========================================================================*

//==========================================================================*
// Get filehandle for robot's xml-file
//--------------------------------------------------------------------------*
void* GetFileHandle(const char* RobotName)
{
    strncpy(BufName, RobotName, BUFSIZE);        // Save robot's name
    snprintf(BufSection, BUFSIZE,                // Robot's private section
		"%s private",RobotName);                 // for use in XML files
    snprintf(BufPathDirRel, BUFSIZE,             // Robot's directory  
		"drivers/%s",RobotName);                 // relative to installation
    snprintf(BufPathXMLRel, BUFSIZE,             // Robot's xml-filename
		"drivers/%s/%s.xml",RobotName,RobotName);// relative to installation

	// Test local installation path
    snprintf(BufPathXML, BUFSIZE, "%s%s",         
		GetLocalDir(), RobPathXMLRel);
	snprintf(BufPathDir, BUFSIZE, "%s%s", 
		GetLocalDir(), RobPathDirRel);
	RobotSettings = GfParmReadFile
		(RobPathXML, GFPARM_RMODE_STD );

	if (!RobotSettings)
	{
	  // If not found, use global installation path
	  snprintf(BufPathXML, BUFSIZE, "%s%s", 
		  GetDataDir(), RobPathXMLRel);
  	  snprintf(BufPathDir, BUFSIZE, "%s%s", 
		  GetDataDir(), RobPathDirRel);
	  RobotSettings = GfParmReadFile
		  (RobPathXML, GFPARM_RMODE_STD );
	}
	return RobotSettings;
}
//==========================================================================*

//==========================================================================*
// Set parameters 
//--------------------------------------------------------------------------*
void SetParameters(int N, char const* DefaultCarType)
{
  NBBOTS = N;
  TAbstractDriver::NbrOfCars = N;                // Used nbr of cars
  TAbstractDriver::RobotName = BufName;          // Robot module name
  TAbstractDriver::RobotDir = BufPathDir;        // Path to dll
  TAbstractDriver::SectionPrivate = BufSection;
  TAbstractDriver::DefaultCarType = DefaultCarType; 
};
//==========================================================================*

//==========================================================================*
// Setup basic data for the robot
//--------------------------------------------------------------------------*
void SetUp()
{
	cRobotType = RTYPE_FRAMEWORK;
	SetParameters(NBBOTS, "car6-trb1");
};
//==========================================================================*

//==========================================================================*
// Handle module entry for Speed Dreams Interface V1.00 
// (new fixed name scheme)
//--------------------------------------------------------------------------*
int moduleWelcomeV1_00
  (const tModWelcomeIn* welcomeIn, tModWelcomeOut* welcomeOut)
{
	// Get filehandle for robot's xml-file
	void *RobotSettings = GetFileHandle(welcomeIn->name);

	// Let's look what we have to provide here
	if (RobotSettings)
	{
		char Buffer[BUFSIZE];
		char *Section = Buffer;

		snprintf(Buffer, BUFSIZE, "%s/%s/%d", 
			ROB_SECT_ROBOTS, ROB_LIST_INDEX, 0);

		// Try to get first driver from index 0
		const char *DriverName = GfParmGetStr( RobotSettings, 
			Section, (char *) ROB_ATTR_NAME, undefined);

		// Check wether index 0 is used as start index
		if (strncmp(DriverName,undefined,strlen(undefined)) != 0)
		{
			// Teams xml file uses index 0, 1, ..., N - 1
            IndexOffset = 0; 
		}
		else
		{
			// Teams xml file uses index 1, 2, ..., N
            IndexOffset = 1; 
		}

		// Loop over all possible drivers, clear all buffers, 
		// save defined driver names and desc.
	    int I;
		NBBOTS = 0;
		for (I = 0; I < MAXNBBOTS; I++)
		{
			snprintf(Section, BUFSIZE, "%s/%s/%d", 
				ROB_SECT_ROBOTS, ROB_LIST_INDEX, I + IndexOffset );
			const char *DriverName = GfParmGetStr( RobotSettings, Section, 
				(char *) ROB_ATTR_NAME,undefined);

	        if (strncmp(DriverName,undefined,strlen(undefined)) != 0)
			{   // This driver is defined in robot's xml-file
				NBBOTS++;
			}
		}

		DrvNames = (char *) malloc(NBBOTS*DRIVERLEN);
		memset(DrvNames, 0, NBBOTS*DRIVERLEN);
		DrvDescs = (char *) malloc(NBBOTS*DRIVERLEN);
		memset(DrvDescs, 0, NBBOTS*DRIVERLEN);
		DrvIndex = (int *) malloc(NBBOTS*sizeof(int));
		memset(DrvIndex, 0, NBBOTS*sizeof(int));

		// Loop over all possible drivers, clear all buffers, 
		// save defined driver names and desc.
	    int J = 0;
		for (I = 0; I < MAXNBBOTS; I++)
		{
			snprintf(Section, BUFSIZE, "%s/%s/%d", 
				ROB_SECT_ROBOTS, ROB_LIST_INDEX, I + IndexOffset );
			const char *DriverName = GfParmGetStr( RobotSettings, Section, 
				(char *) ROB_ATTR_NAME,undefined);

	        if (strncmp(DriverName,undefined,strlen(undefined)) != 0)
			{   // This driver is defined in robot's xml-file
				strncpy(&DrvNames[J*DRIVERLEN], DriverName, DRIVERLEN-1);
				snprintf(defaultBotDesc, DRIVERLEN, "%s %d",
					RobName, I+1);
			    const char *DriverDesc = GfParmGetStr(RobotSettings, Section, 
					(char *) ROB_ATTR_DESC, defaultBotDesc);
				strncpy(&DrvDescs[J*DRIVERLEN], DriverDesc, DRIVERLEN-1);
                // Store SD index in an array with the robot index
				DrvIndex[J] = I;
                // Store robot index in an array with the SD index
				cRobotIndex[I] = J;
				J++;
			}
		}
	}
	else
	{
		// Handle error here
 	    //GfOut("#Robot XML-Path not found: (%s) or (%s) %s\n\n",
		//	GetLocalDir(),GetDataDir(),RobPathXMLRel);

		NBBOTS = 0;
	    welcomeOut->maxNbItf = NBBOTS;
	    return -1;
	}

	// Create an array of NULL pointers
	cDrivers = new PAbstractDriver[NBBOTS];
	for (int I = 0; I < NBBOTS; I++)
		cDrivers[I] = NULL;

	// Handle additional settings for wellknown identities
	// ...
    SetUp();

	// Set max nb of interfaces to return.
	welcomeOut->maxNbItf = NBBOTS;

	return 0;
}
//==========================================================================*

//==========================================================================*
// Module entry point (new fixed name scheme).
// Extended for use with schismatic robots and checked interface versions
//--------------------------------------------------------------------------*
extern "C" int moduleWelcome
  (const tModWelcomeIn* welcomeIn, tModWelcomeOut* welcomeOut)
{
	// Adjust this for future interface versions
	if (welcomeIn->itfVerMajor > 1)
	{   
		// return moduleWelcomeV2_00(welcomeIn, welcomeOut);
	}
	else if (welcomeIn->itfVerMajor == 1)
	{
		return moduleWelcomeV1_00(welcomeIn, welcomeOut);
	}

	GfOut("\n\n\n");
	GfOut("#Unknown Interface Version: %d.%d\n\n\n",
  	      welcomeIn->itfVerMajor,welcomeIn->itfVerMinor);

	welcomeOut->maxNbItf = 0;

	return -1;
}
//==========================================================================*

//==========================================================================*
// Module entry point (new fixed name scheme).
// Tells SD, who we are, how we want to be called and 
// what we are able to do.
//--------------------------------------------------------------------------*
extern "C" int moduleInitialize(tModInfo *ModInfo)
{
	// Clear all structures.
	memset(ModInfo, 0, NBBOTS*sizeof(tModInfo));

	// Setup data for all drivers of the robot
	int I;
	for (I = 0; I < NBBOTS; I++) 
	{
		ModInfo[I].name = &DrvNames[I*DRIVERLEN];// Tell customisable name
		ModInfo[I].desc = &DrvDescs[I*DRIVERLEN];// Tell customisable desc.
		ModInfo[I].fctInit = InitFuncPt;         // Common used functions
		ModInfo[I].gfId = ROB_IDENT;             // Robot identity
		ModInfo[I].index =						 // Drivers index
			DrvIndex[I+IndexOffset]; 
	}
	return 0;
}
//==========================================================================*

//==========================================================================*
// Module exit point (new fixed name scheme).
//--------------------------------------------------------------------------*
extern "C" int moduleTerminate()
{
	GfOut("\n");
	GfOut("#Terminated %s\n",RobName);

	for (int I = 0; I < NBBOTS; I++)
	{
		if (cDrivers[I] != NULL)
			delete cDrivers[I];
	}
	delete [] cDrivers;

	if (DrvNames)
		free(DrvNames); 

	if (DrvDescs)
		free(DrvDescs);
	
	if (DrvIndex)
		free(DrvIndex); 

	return 0;
}
//==========================================================================*

//==========================================================================*
// SD: Initialization
//
// After clarification of the general calling (calling this func.), 
// we tell SD our functions to provide the requested services:
//--------------------------------------------------------------------------*
static int InitFuncPt(int Index, void *Pt)
{
	tRobotItf *Itf = (tRobotItf *)Pt;            // Get typed pointer

	Itf->rbNewTrack = InitTrack;                 // Store function pointers 
	Itf->rbNewRace  = NewRace;
	Itf->rbDrive    = Drive;
	Itf->rbPitCmd   = PitCmd;
	Itf->rbEndRace  = EndRace;
	Itf->rbShutdown = Shutdown;
	Itf->index      = Index;                     // Store index

	int RobotIndex = cRobotIndex[Index];

	cDrivers[RobotIndex] = 
		TAbstractDriver::CreateDriver();

	cDrivers[RobotIndex]->oIndex =               // Setup drivers index
		Index-IndexOffset;

	cDrivers[RobotIndex]->SetBotName(            // Store customized name
		RobotSettings,                           // Robot's xml-file
		&DrvNames[(RobotIndex)*DRIVERLEN]);      // not drivers xml-file!  

	return 0;
}
//==========================================================================*

//==========================================================================*
// SD: New track
//--------------------------------------------------------------------------*
static void InitTrack(int Index,
  tTrack* Track, void *CarHandle, void **CarParmHandle, tSituation *S)
{
	int RobotIndex = cRobotIndex[Index];

	cDrivers[RobotIndex]->InitTrack
		(Track,CarHandle,CarParmHandle,S);
}
//==========================================================================*

//==========================================================================*
// SD: New Race starts
//--------------------------------------------------------------------------*
static void NewRace(int Index, tCarElt* Car, tSituation *S)
{
	int RobotIndex = cRobotIndex[Index];

	cDrivers[RobotIndex]->NewRace(Car, S);
	cDrivers[RobotIndex]->oCurrSimTime = -10.0;
}
//==========================================================================*

//==========================================================================*
// SD: Drive
//
// Attention: This procedure is called very frequent and fast in succession!
// Therefore we don't throw debug messages here!
// To find basic bugs, it may be usefull to do it anyhow!
//--------------------------------------------------------------------------*
static void Drive(int Index, tCarElt* Car, tSituation *S)
{
    int RobotIndex = cRobotIndex[Index];

	//GfOut("#>>> TAbstractDriver::Drive\n");
    cDrivers[RobotIndex]->oCurrSimTime =         // Update current time
		S->currentTime; 

	cDrivers[RobotIndex]->Update(Car,S);         // Update info about opp.

	if (cDrivers[RobotIndex]->IsStuck())         // Check if we are stuck  
 	    cDrivers[RobotIndex]->Unstuck();         //   Unstuck 
	else                                         // or
		cDrivers[RobotIndex]->Drive();           //   Drive
	//GfOut("#<<< TAbstractDriver::Drive\n");
}
//==========================================================================*

//==========================================================================*
// SD: Pitstop (Car is in pit!)
//--------------------------------------------------------------------------*
static int PitCmd(int Index, tCarElt* Car, tSituation *S)
{
	int RobotIndex = cRobotIndex[Index];
	return cDrivers[RobotIndex]->PitCmd();
}
//==========================================================================*

//==========================================================================*
// SD: Race ended
//--------------------------------------------------------------------------*
static void EndRace(int Index, tCarElt *Car, tSituation *S)
{
	int RobotIndex = cRobotIndex[Index];
	printf("EndRace\n");
	cDrivers[RobotIndex]->EndRace();
}
//==========================================================================*

//==========================================================================*
// SD: Cleanup
//--------------------------------------------------------------------------*
static void Shutdown(int Index)
{
	int RobotIndex = cRobotIndex[Index];
	cDrivers[RobotIndex]->Shutdown();
}
//==========================================================================*

/*
//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++*
// New Pure Speed Dreams Robot Interface Implementation
//--------------------------------------------------------------------------*

// The RobotModule singleton.
RobotModule* RobotModule::_pSelf = 0;

int openGfModule(const char* pszShLibName, void* hShLibHandle)
{
	// Instanciate the (only) module instance.
	RobotModule::_pSelf = new RobotModule(pszShLibName, hShLibHandle);

	// Register it to the GfModule module manager if OK.
	if (RobotModule::_pSelf)
		GfModule::register_(RobotModule::_pSelf);

	// Report about success or error.
	return RobotModule::_pSelf ? 0 : 1;
}

int closeGfModule()
{
	// Unregister it from the GfModule module manager.
	if (RobotModule::_pSelf)
		GfModule::unregister(RobotModule::_pSelf);
	
	// Delete the (only) module instance.
	delete RobotModule::_pSelf;
	RobotModule::_pSelf = 0;

	// Report about success or error.
	return 0;
}

RobotModule& RobotModule::self()
{
	// Pre-condition : 1 successfull openGfModule call.
	return *_pSelf;
}

RobotModule::RobotModule(const std::string& strShLibName, void* hShLibHandle)
: GfModule(strShLibName, hShLibHandle)
{
}

RobotModule::~RobotModule()
{
}


//==========================================================================*
// Welcome
//--------------------------------------------------------------------------*
int RobotModule::Welcome(
	const tModWelcomeIn* welcomeIn, 
	tModWelcomeOut* welcomeOut)
{
	return moduleWelcome(welcomeIn, welcomeOut);
};
//==========================================================================*

//==========================================================================*
// Initialise
//--------------------------------------------------------------------------*
int RobotModule::Initialize(
	tModInfo *ModInfo)
	
{
	return moduleInitialize(ModInfo);
};
//==========================================================================*

//==========================================================================*
// Terminate
//--------------------------------------------------------------------------*
int RobotModule::Terminate()
{
	return moduleTerminate();
};
//==========================================================================*

//==========================================================================*
// Initialise the function pointers for Speed Dreams
//--------------------------------------------------------------------------*
int Driver::InitFuncPt(int index, void *pt)
{
	return InitFuncPt(index, pt);
};
//==========================================================================*

//==========================================================================*
// Initialise the track
//--------------------------------------------------------------------------*
void Driver::InitTrack(int index, tTrack* track, void *carHandle, 
  void **carParmHandle,	tSituation *s)
{
	InitTrack(index, track, carHandle, carParmHandle, s);
};
//==========================================================================*

//==========================================================================*
// Start a new race
//--------------------------------------------------------------------------*
void Driver::NewRace(int index,	tCarElt* car, tSituation *s)
{
	NewRace(index, car, s);
};
//==========================================================================*

//==========================================================================*
// Drive
//--------------------------------------------------------------------------*
void Driver::Drive(int index, tCarElt* car,	tSituation *s)
{
	Drive(index, car, s);
};
//==========================================================================*

//==========================================================================*
// Get pit command
//--------------------------------------------------------------------------*
int Driver::PitCmd(int index, tCarElt* car, tSituation *s)
{
	return PitCmd(index, car, s);
};
//==========================================================================*

//==========================================================================*
// End of race for the driver
//--------------------------------------------------------------------------*
void Driver::EndRace(int index,	tCarElt *car, tSituation *s)
{
	EndRace(index, car, s);
};
//==========================================================================*

//==========================================================================*
// Clean up
//--------------------------------------------------------------------------*
void Driver::Shutdown(int index)
{
	Shutdown(index);
};
//==========================================================================*
// end of implementation of the new pure Speed Dreams Robot Interface
//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++*
*/
//--------------------------------------------------------------------------*
// end of file robotinterface.cpp
//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++*
