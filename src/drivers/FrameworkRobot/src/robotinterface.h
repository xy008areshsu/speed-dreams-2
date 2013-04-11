#ifndef _ROBOT_INTERFACE_H_
#define _ROBOT_INTERFACE_H_

#include <irobot.h>

#include <tgf.hpp>

// DLL exported symbols declarator for Windows.
#ifdef WIN32
# ifdef ROBOTMODULE_DLL
#  define ROBOTMODULE_API __declspec(dllexport)
# else
#  define ROBOTMODULE_API __declspec(dllimport)
# endif
#else
# define ROBOTMODULE_API
#endif

// The C interface of the module
extern "C" int ROBOTMODULE_API openGfModule(
	const char* pszShLibName, void* hShLibHandle);
extern "C" int ROBOTMODULE_API closeGfModule();

class RobotModule : public GfModule, public IRobot
{
	public:

		//! Welcome
		virtual int Welcome(
			const tModWelcomeIn* welcomeIn, 
			tModWelcomeOut* welcomeOut);

		//! Initialise
		virtual int Initialize(
			tModInfo *ModInfo);

		//! Terminate
		virtual int Terminate();


		// Accessor to the singleton.
		static RobotModule& self();

		// Destructor.
		virtual ~RobotModule();

 protected:

		// Protected constructor to avoid instanciation outside (but friends)
		RobotModule(const std::string& strShLibName, void* hShLibHandle);
	
		// Make the C interface functions nearly member functions
		friend int openGfModule(const char* pszShLibName, void* hShLibHandle);
		friend int closeGfModule();

		// The singleton
		static RobotModule* _pSelf;


};
#endif /* _ROBOT_INTERFACE_H_ */ 
