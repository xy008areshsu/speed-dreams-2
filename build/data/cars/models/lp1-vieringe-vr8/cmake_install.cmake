# Install script for directory: /home/ares/Developer/speed-dream-2.0/speed/data/cars/models/lp1-vieringe-vr8

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
    SET(CMAKE_INSTALL_CONFIG_NAME "")
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
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/cars/lp1-vieringe-vr8" TYPE FILE FILES
    "/home/ares/Developer/speed-dream-2.0/speed/data/cars/models/lp1-vieringe-vr8/lp1-vieringe-vr8.xml"
    "/home/ares/Developer/speed-dream-2.0/speed/data/cars/models/lp1-vieringe-vr8/readme.txt"
    "/home/ares/Developer/speed-dream-2.0/speed/data/cars/models/lp1-vieringe-vr8/lp1-vieringe-vr8.acc"
    "/home/ares/Developer/speed-dream-2.0/speed/data/cars/models/lp1-vieringe-vr8/lp1-vieringe-vr8-works.png"
    "/home/ares/Developer/speed-dream-2.0/speed/data/cars/models/lp1-vieringe-vr8/wheel3d-espada.png"
    "/home/ares/Developer/speed-dream-2.0/speed/data/cars/models/lp1-vieringe-vr8/lp1-vieringe-vr8-espada.png"
    "/home/ares/Developer/speed-dream-2.0/speed/data/cars/models/lp1-vieringe-vr8/shadow.png"
    "/home/ares/Developer/speed-dream-2.0/speed/data/cars/models/lp1-vieringe-vr8/lp1-vieringe-vr8-works2.png"
    "/home/ares/Developer/speed-dream-2.0/speed/data/cars/models/lp1-vieringe-vr8/lp1-vieringe-vr8-espada2.png"
    "/home/ares/Developer/speed-dream-2.0/speed/data/cars/models/lp1-vieringe-vr8/lp1-vieringe-vr8.png"
    "/home/ares/Developer/speed-dream-2.0/speed/data/cars/models/lp1-vieringe-vr8/wheel3d-works.png"
    "/home/ares/Developer/speed-dream-2.0/speed/data/cars/models/lp1-vieringe-vr8/wheel3d-precure.png"
    "/home/ares/Developer/speed-dream-2.0/speed/data/cars/models/lp1-vieringe-vr8/wheel3d-works2.png"
    "/home/ares/Developer/speed-dream-2.0/speed/data/cars/models/lp1-vieringe-vr8/wheel3d.png"
    "/home/ares/Developer/speed-dream-2.0/speed/data/cars/models/lp1-vieringe-vr8/lp1-vieringe-vr8-precure.png"
    "/home/ares/Developer/speed-dream-2.0/speed/data/cars/models/lp1-vieringe-vr8/wheel3d-espada2.png"
    "/home/ares/Developer/speed-dream-2.0/speed/data/cars/models/lp1-vieringe-vr8/lp1-vieringe-vr8-precure2.png"
    "/home/ares/Developer/speed-dream-2.0/speed/data/cars/models/lp1-vieringe-vr8/wheel3d-precure2.png"
    "/home/ares/Developer/speed-dream-2.0/speed/data/cars/models/lp1-vieringe-vr8/lp1-vieringe-vr8-preview.jpg"
    "/home/ares/Developer/speed-dream-2.0/speed/data/cars/models/lp1-vieringe-vr8/v808.wav"
    )
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

