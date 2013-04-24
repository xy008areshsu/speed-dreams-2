# Install script for directory: /home/ares/Developer/speed-dream-2.0/speed/src/interfaces

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
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/speed-dreams-2" TYPE FILE FILES
    "/home/ares/Developer/speed-dream-2.0/speed/src/interfaces/car.h"
    "/home/ares/Developer/speed-dream-2.0/speed/src/interfaces/graphic.h"
    "/home/ares/Developer/speed-dream-2.0/speed/src/interfaces/playerpref.h"
    "/home/ares/Developer/speed-dream-2.0/speed/src/interfaces/raceman.h"
    "/home/ares/Developer/speed-dream-2.0/speed/src/interfaces/replay.h"
    "/home/ares/Developer/speed-dream-2.0/speed/src/interfaces/robot.h"
    "/home/ares/Developer/speed-dream-2.0/speed/src/interfaces/telemetry.h"
    "/home/ares/Developer/speed-dream-2.0/speed/src/interfaces/track.h"
    "/home/ares/Developer/speed-dream-2.0/speed/src/interfaces/iraceengine.h"
    "/home/ares/Developer/speed-dream-2.0/speed/src/interfaces/iuserinterface.h"
    "/home/ares/Developer/speed-dream-2.0/speed/src/interfaces/igraphicsengine.h"
    "/home/ares/Developer/speed-dream-2.0/speed/src/interfaces/iphysicsengine.h"
    "/home/ares/Developer/speed-dream-2.0/speed/src/interfaces/itrackloader.h"
    "/home/ares/Developer/speed-dream-2.0/speed/src/interfaces/isoundengine.h"
    "/home/ares/Developer/speed-dream-2.0/speed/src/interfaces/camera.h"
    )
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

