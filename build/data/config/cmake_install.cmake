# Install script for directory: /home/ares/Developer/speed-dream-2.0/speed/data/config

# Set the install prefix
IF(NOT DEFINED CMAKE_INSTALL_PREFIX)
  SET(CMAKE_INSTALL_PREFIX "/usr/local")
ENDIF(NOT DEFINED CMAKE_INSTALL_PREFIX)
STRING(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
IF(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  IF(BUILD_TYPE)
    STRING(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  ELSE(BUILD_TYPE)
    SET(CMAKE_INSTALL_CONFIG_NAME "Debug")
  ENDIF(BUILD_TYPE)
  MESSAGE(STATUS "Install configuration: \"${CMAKE_INSTALL_CONFIG_NAME}\"")
ENDIF(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)

# Set the component getting installed.
IF(NOT CMAKE_INSTALL_COMPONENT)
  IF(COMPONENT)
    MESSAGE(STATUS "Install component: \"${COMPONENT}\"")
    SET(CMAKE_INSTALL_COMPONENT "${COMPONENT}")
  ELSE(COMPONENT)
    SET(CMAKE_INSTALL_COMPONENT)
  ENDIF(COMPONENT)
ENDIF(NOT CMAKE_INSTALL_COMPONENT)

# Install shared libraries without execute permission?
IF(NOT DEFINED CMAKE_INSTALL_SO_NO_EXE)
  SET(CMAKE_INSTALL_SO_NO_EXE "1")
ENDIF(NOT DEFINED CMAKE_INSTALL_SO_NO_EXE)

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/config" TYPE FILE FILES
    "/home/ares/Developer/speed-dream-2.0/speed/data/config/logging.xml"
    "/home/ares/Developer/speed-dream-2.0/speed/data/config/raceengine.xml"
    "/home/ares/Developer/speed-dream-2.0/speed/data/config/screen.xml"
    "/home/ares/Developer/speed-dream-2.0/speed/data/config/graph.xml"
    "/home/ares/Developer/speed-dream-2.0/speed/data/config/sound.xml"
    )
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(READ /home/ares/Developer/speed-dream-2.0/speed/build/xmlversion_loc.txt XMLVERSION_EXE)
             SET(MINGW )
             IF(MINGW)
               SET(_LIBS_TO_INSTALL "/home/ares/Developer/speed-dream-2.0/speed/build/src/libs/tgf/libtgf.so")
               SET(OPTION_3RDPARTY_EXPAT true)
               IF(NOT OPTION_3RDPARTY_EXPAT)
                 LIST(APPEND _LIBS_TO_INSTALL "")
               ENDIF(NOT OPTION_3RDPARTY_EXPAT)
               # CMake configuration for MSYS Makefiles generator assumes that 3rd party dependencies are installed
               # in standard Linux folders, hence in the PATH ; so no need to install next to xmlversion exe.
               IF(NOT CMAKE_GENERATOR STREQUAL "MSYS Makefiles")
                 IF(OPTION_3RDPARTY_EXPAT)
                   LIST(APPEND _LIBS_TO_INSTALL "/usr/lib/x86_64-linux-gnu/../bin/libexpat.so")
                 ENDIF(OPTION_3RDPARTY_EXPAT)
                 LIST(APPEND _LIBS_TO_INSTALL "/usr/local/lib/libSDLmain.a;/usr/local/lib/../bin/libSDL.so")
                 GET_FILENAME_COMPONENT(_MINGW_BINDIR "/usr/bin/c++" PATH)
                 LIST(APPEND _LIBS_TO_INSTALL "${_MINGW_BINDIR}/libstdc++-6.dll" "${_MINGW_BINDIR}/libgcc_s_dw2-1.dll")
               ENDIF(NOT CMAKE_GENERATOR STREQUAL "MSYS Makefiles")
               GET_FILENAME_COMPONENT(XMLVERSION_DIR "${XMLVERSION_EXE}" PATH)
               MESSAGE(STATUS "xmlversion : Libs to install=${_LIBS_TO_INSTALL}")
               FILE(INSTALL DESTINATION "${XMLVERSION_DIR}" TYPE FILE FILES ${_LIBS_TO_INSTALL})
             ENDIF(MINGW)
             SET(SD_DATADIR_ABS "share/games/speed-dreams-2")
             IF(NOT IS_ABSOLUTE ${SD_DATADIR_ABS})
               GET_FILENAME_COMPONENT(SD_DATADIR_ABS "${CMAKE_INSTALL_PREFIX}/${SD_DATADIR_ABS}" ABSOLUTE)
             ENDIF()
             # Why this path correction here ? This needs a comment !
             SET(CUR_DESTDIR "$ENV{DESTDIR}")
             IF(CUR_DESTDIR MATCHES "[^/]")
               STRING(REGEX REPLACE "^(.*[^/])/*$" "\\1" CUR_DESTDIR_CORR "${CUR_DESTDIR}")
             ELSE(CUR_DESTDIR MATCHES "[^/]")
               SET(CUR_DESTDIR_CORR "")
             ENDIF(CUR_DESTDIR MATCHES "[^/]")
             FOREACH(FILE logging.xml;raceengine.xml;screen.xml;graph.xml;sound.xml)
               GET_FILENAME_COMPONENT(FILENAME ${FILE} NAME)
               EXECUTE_PROCESS(COMMAND "${XMLVERSION_EXE}" "${CUR_DESTDIR_CORR}${SD_DATADIR_ABS}/version.xml" "config/${FILENAME}" "config/${FILENAME}" "${CUR_DESTDIR_CORR}${SD_DATADIR_ABS}" RESULT_VARIABLE XMLVERSTATUS)
               IF(XMLVERSTATUS)
                 MESSAGE(FATAL_ERROR "Error: xmlversion failed : ${XMLVERSTATUS}")
               ENDIF(XMLVERSTATUS)
             ENDFOREACH()
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/config" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/data/config/raceresults.xsl")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for each subdirectory.
  INCLUDE("/home/ares/Developer/speed-dream-2.0/speed/build/data/config/raceman/cmake_install.cmake")

ENDIF(NOT CMAKE_INSTALL_LOCAL_ONLY)

