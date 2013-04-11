INCLUDE(../../../cmake/macros.cmake)

#PROJECT(raceengine)

SET(RACEENGINE_SOURCES raceengine.cpp
                       racecareer.cpp raceupdate.cpp racenetwork.cpp racecars.cpp
                       raceinit.cpp racemain.cpp
                       racetrack.cpp raceresults.cpp racesimusimu.cpp 
                       racestate.cpp racesituation.cpp racemessage.cpp
                       raceutil.cpp
                       raceengine.h 
                       racecareer.h raceupdate.h racenetwork.h racecars.h
                       raceinit.h 
                       racetrack.h raceresults.h racesimusimu.h 
                       racestate.h racesituation.h racemessage.h
                       raceutil.h)

ADD_INTERFACE_INCLUDEDIR()

ADD_SDLIB_INCLUDEDIR(math portability robottools tgf tgfclient tgfdata
                     networking)

ADD_SDL_INCLUDEDIR()

IF(WIN32)
    # DLL export stuff under Windows (to avoid .def file)
    ADD_DEFINITIONS(-DRACEENGINE_DLL)
    
    # Ignore some run-time libs to avoid link time warnings and sometimes even crashes.
    SET(CMAKE_SHARED_LINKER_FLAGS_DEBUG "${CMAKE_SHARED_LINKER_FLAGS_DEBUG} /NODEFAULTLIB:msvcrt.lib")
ENDIF(WIN32)

# Disable developer warning
IF (COMMAND CMAKE_POLICY)
    CMAKE_POLICY(SET CMP0003 NEW)
ENDIF(COMMAND CMAKE_POLICY)

ADD_LIBRARY(raceengine SHARED ${RACEENGINE_SOURCES})

# Might not work with GCC 4.5 or + (non-robot modules crash at 1st reload = after 1 dlclose) 
#SET_TARGET_PROPERTIES(raceengine PROPERTIES VERSION ${VERSION} SOVERSION 0.0.0)

ADD_SDLIB_LIBRARY(raceengine
                  tgf tgfdata robottools
                  networking)

IF(WIN32)
    SD_INSTALL_FILES(BIN TARGETS raceengine)
ELSE(WIN32)
    SD_INSTALL_FILES(LIB lib TARGETS raceengine)
ENDIF(WIN32)

SD_INSTALL_FILES(DATA config FILES raceresults.xsl)

SD_INSTALL_FILES(DATA config USER config FILES raceengine.xml)

SD_INSTALL_FILES(INCLUDE FILES raceinit.h)

