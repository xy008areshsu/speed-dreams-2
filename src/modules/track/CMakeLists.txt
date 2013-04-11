INCLUDE(../../../cmake/macros.cmake)

SET(TRACK_SOURCES track.cpp track3.cpp track4.cpp trackitf.cpp trackutil.cpp)
SET(TRACK_HEADERS trackitf.h trackinc.h)

ADD_INTERFACE_INCLUDEDIR()
ADD_PLIB_INCLUDEDIR()
ADD_SDLIB_INCLUDEDIR(math tgf portability robottools)

IF(WIN32)
    # DLL export stuff under Windows (to avoid .def file)
    ADD_DEFINITIONS(-DTRACK_DLL)
ENDIF(WIN32)

IF(MSVC)
    # Ignore some run-time libs to avoid link time warnings and sometimes even crashes.
    SET(CMAKE_SHARED_LINKER_FLAGS_DEBUG "${CMAKE_SHARED_LINKER_FLAGS_DEBUG} /NODEFAULTLIB:msvcrt.lib")
ENDIF(MSVC)

# Note: Headers needed for having them available in IDEs.
ADD_LIBRARY(track SHARED ${TRACK_SOURCES} ${TRACK_HEADERS})

# Might not work with GCC 4.5 or + (non-robot modules crash at 1st reload = after 1 dlclose) 
#SET_TARGET_PROPERTIES(track PROPERTIES VERSION ${VERSION} SOVERSION 0.0.0)

IF(UNIX OR MINGW)
    SET_TARGET_PROPERTIES(track PROPERTIES PREFIX "")
ENDIF(UNIX OR MINGW)

ADD_PLIB_LIBRARY(track ul sg)

ADD_SDLIB_LIBRARY(track portability tgf robottools)

SD_INSTALL_FILES(LIB modules/track TARGETS track)
