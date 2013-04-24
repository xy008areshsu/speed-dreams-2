# Install script for directory: /home/ares/Developer/speed-dream-2.0/speed/data/data/objects

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
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/data/objects" TYPE FILE FILES
    "/home/ares/Developer/speed-dream-2.0/speed/data/data/objects/tree5.ac"
    "/home/ares/Developer/speed-dream-2.0/speed/data/data/objects/land.ac"
    "/home/ares/Developer/speed-dream-2.0/speed/data/data/objects/wheel2.ac"
    "/home/ares/Developer/speed-dream-2.0/speed/data/data/objects/background-sky.ac"
    "/home/ares/Developer/speed-dream-2.0/speed/data/data/objects/tree15.ac"
    "/home/ares/Developer/speed-dream-2.0/speed/data/data/objects/bridge-arch.ac"
    "/home/ares/Developer/speed-dream-2.0/speed/data/data/objects/tree17.ac"
    "/home/ares/Developer/speed-dream-2.0/speed/data/data/objects/bridge.ac"
    "/home/ares/Developer/speed-dream-2.0/speed/data/data/objects/tree4.ac"
    "/home/ares/Developer/speed-dream-2.0/speed/data/data/objects/forest3.ac"
    "/home/ares/Developer/speed-dream-2.0/speed/data/data/objects/tree10.ac"
    "/home/ares/Developer/speed-dream-2.0/speed/data/data/objects/tree14.ac"
    "/home/ares/Developer/speed-dream-2.0/speed/data/data/objects/tree8.ac"
    "/home/ares/Developer/speed-dream-2.0/speed/data/data/objects/wheel1-src.ac"
    "/home/ares/Developer/speed-dream-2.0/speed/data/data/objects/needle.ac"
    "/home/ares/Developer/speed-dream-2.0/speed/data/data/objects/tree2.ac"
    "/home/ares/Developer/speed-dream-2.0/speed/data/data/objects/tree3.ac"
    "/home/ares/Developer/speed-dream-2.0/speed/data/data/objects/wheel0.ac"
    "/home/ares/Developer/speed-dream-2.0/speed/data/data/objects/wheel2-src.ac"
    "/home/ares/Developer/speed-dream-2.0/speed/data/data/objects/tree1.ac"
    "/home/ares/Developer/speed-dream-2.0/speed/data/data/objects/stand-wall.ac"
    "/home/ares/Developer/speed-dream-2.0/speed/data/data/objects/stand-main.ac"
    "/home/ares/Developer/speed-dream-2.0/speed/data/data/objects/stadium1.ac"
    "/home/ares/Developer/speed-dream-2.0/speed/data/data/objects/tree9.ac"
    "/home/ares/Developer/speed-dream-2.0/speed/data/data/objects/wheel1.ac"
    "/home/ares/Developer/speed-dream-2.0/speed/data/data/objects/tree13.ac"
    "/home/ares/Developer/speed-dream-2.0/speed/data/data/objects/treeg1.ac"
    "/home/ares/Developer/speed-dream-2.0/speed/data/data/objects/tree7.ac"
    "/home/ares/Developer/speed-dream-2.0/speed/data/data/objects/tree6.ac"
    "/home/ares/Developer/speed-dream-2.0/speed/data/data/objects/tree12.ac"
    "/home/ares/Developer/speed-dream-2.0/speed/data/data/objects/wheel3-src.ac"
    "/home/ares/Developer/speed-dream-2.0/speed/data/data/objects/wheel3.ac"
    "/home/ares/Developer/speed-dream-2.0/speed/data/data/objects/ad1.ac"
    "/home/ares/Developer/speed-dream-2.0/speed/data/data/objects/wheel0-src.ac"
    "/home/ares/Developer/speed-dream-2.0/speed/data/data/objects/tree16.ac"
    "/home/ares/Developer/speed-dream-2.0/speed/data/data/objects/forest1.ac"
    "/home/ares/Developer/speed-dream-2.0/speed/data/data/objects/stand-inter.ac"
    "/home/ares/Developer/speed-dream-2.0/speed/data/data/objects/tree11.ac"
    "/home/ares/Developer/speed-dream-2.0/speed/data/data/objects/building1.ac"
    "/home/ares/Developer/speed-dream-2.0/speed/data/data/objects/building2.ac"
    "/home/ares/Developer/speed-dream-2.0/speed/data/data/objects/forest2.ac"
    "/home/ares/Developer/speed-dream-2.0/speed/data/data/objects/wheel0.acc"
    "/home/ares/Developer/speed-dream-2.0/speed/data/data/objects/wheel3.acc"
    "/home/ares/Developer/speed-dream-2.0/speed/data/data/objects/wheel2.acc"
    "/home/ares/Developer/speed-dream-2.0/speed/data/data/objects/wheel1.acc"
    )
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

