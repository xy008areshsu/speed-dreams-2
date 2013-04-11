INCLUDE(../../../../cmake/macros.cmake)

SET(OSGGRAPH_HEADERS OsgVectorArrayAdapter.h OsgColor.h OsgAtomic.h
					 OsgReferenced.h OsgSharedPtr.h 
					 OsgSphere.h OsgSun.h OsgMoon.h OsgStars.h OsgSky.h
					 AccGeode.h AccException.h ReaderWriterACC.h
                     OsgLoader.h OsgScenery.h OsgRender.h OsgMath.h OsgMain.h
                     OsgView.h
                     OsgGraph.h OsgCar.h OsgWheel.h OsgBrake.h OsgScreens.h OsgCamera.h)
			
SET(OSGGRAPH_SOURCES OsgSphere.cpp OsgSun.cpp OsgMoon.cpp OsgStars.cpp OsgSky.cpp
					 AccGeode.cpp AccException.cpp ReaderWriterACC.cpp
                     OsgLoader.cpp OsgBackground.cpp OsgScenery.cpp 
                     OsgView.cpp OsgRender.cpp
                     OsgMath.cpp OsgMain.cpp OsgGraph.cpp OsgCar.cpp OsgWheel.cpp
                     OsgBrake.cpp OsgScreens.cpp OsgCamera.cpp)

ADD_INTERFACE_INCLUDEDIR()
ADD_SDLIB_INCLUDEDIR(portability math tgf tgfclient robottools)

ADD_SDL_INCLUDEDIR()
ADD_OSG_INCLUDEDIR()

IF(COMMAND CMAKE_POLICY)
    CMAKE_POLICY(SET CMP0003 NEW)
ENDIF(COMMAND CMAKE_POLICY)

IF(WIN32)
    # DLL export stuff under Windows (to avoid .def file)
    ADD_DEFINITIONS(-DOSGGRAPH_DLL)
ENDIF(WIN32)

IF(MSVC)
   # Ignore some run-time libs to avoid link time warnings and sometimes even crashes.
    SET(CMAKE_SHARED_LINKER_FLAGS_DEBUG "${CMAKE_SHARED_LINKER_FLAGS_DEBUG} /NODEFAULTLIB:msvcrt.lib")
ENDIF(MSVC)

# Note: Other sources and headers needed for having them available in IDEs.
ADD_LIBRARY(osggraph SHARED ${OSGGRAPH_SOURCES} ${OSGGRAPH_HEADERS} ${OSGGRAPH_OTHER_SOURCES})

# Might not work with GCC 4.5 or + (non-robot modules crash at 1st reload = after 1 dlclose) 
#SET_TARGET_PROPERTIES(osggraph PROPERTIES VERSION ${VERSION} SOVERSION 0.0.0)

IF(UNIX OR MINGW)
    SET_TARGET_PROPERTIES(osggraph PROPERTIES PREFIX "")
ENDIF(UNIX OR MINGW)

ADD_OSG_LIBRARY(osggraph)
ADD_SDL_LIBRARY(osggraph)
ADD_OPENGL_LIBRARY(osggraph)

ADD_SDLIB_LIBRARY(osggraph tgf tgfclient robottools)

SD_INSTALL_FILES(LIB modules/graphic TARGETS osggraph)
