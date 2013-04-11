# Install script for directory: /home/ares/Developer/speed-dream-2.0/speed/data/cars/models/36gp-milano-12c36

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
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/cars/36gp-milano-12c36" TYPE FILE FILES
    "/home/ares/Developer/speed-dream-2.0/speed/data/cars/models/36gp-milano-12c36/36gp-milano-12c36.xml"
    "/home/ares/Developer/speed-dream-2.0/speed/data/cars/models/36gp-milano-12c36/readme.txt"
    "/home/ares/Developer/speed-dream-2.0/speed/data/cars/models/36gp-milano-12c36/steerwheelhr.acc"
    "/home/ares/Developer/speed-dream-2.0/speed/data/cars/models/36gp-milano-12c36/driverR0.acc"
    "/home/ares/Developer/speed-dream-2.0/speed/data/cars/models/36gp-milano-12c36/driverR6.acc"
    "/home/ares/Developer/speed-dream-2.0/speed/data/cars/models/36gp-milano-12c36/driverR3.acc"
    "/home/ares/Developer/speed-dream-2.0/speed/data/cars/models/36gp-milano-12c36/driverR1.acc"
    "/home/ares/Developer/speed-dream-2.0/speed/data/cars/models/36gp-milano-12c36/wheel0.acc"
    "/home/ares/Developer/speed-dream-2.0/speed/data/cars/models/36gp-milano-12c36/wheelr3.acc"
    "/home/ares/Developer/speed-dream-2.0/speed/data/cars/models/36gp-milano-12c36/wheelr2.acc"
    "/home/ares/Developer/speed-dream-2.0/speed/data/cars/models/36gp-milano-12c36/driverL3.acc"
    "/home/ares/Developer/speed-dream-2.0/speed/data/cars/models/36gp-milano-12c36/wheelr1.acc"
    "/home/ares/Developer/speed-dream-2.0/speed/data/cars/models/36gp-milano-12c36/36gp-milano-12c36.acc"
    "/home/ares/Developer/speed-dream-2.0/speed/data/cars/models/36gp-milano-12c36/wheel3.acc"
    "/home/ares/Developer/speed-dream-2.0/speed/data/cars/models/36gp-milano-12c36/driverL2.acc"
    "/home/ares/Developer/speed-dream-2.0/speed/data/cars/models/36gp-milano-12c36/driverL4.acc"
    "/home/ares/Developer/speed-dream-2.0/speed/data/cars/models/36gp-milano-12c36/driverL0.acc"
    "/home/ares/Developer/speed-dream-2.0/speed/data/cars/models/36gp-milano-12c36/driverL1.acc"
    "/home/ares/Developer/speed-dream-2.0/speed/data/cars/models/36gp-milano-12c36/driver.acc"
    "/home/ares/Developer/speed-dream-2.0/speed/data/cars/models/36gp-milano-12c36/driverL6.acc"
    "/home/ares/Developer/speed-dream-2.0/speed/data/cars/models/36gp-milano-12c36/wheel2.acc"
    "/home/ares/Developer/speed-dream-2.0/speed/data/cars/models/36gp-milano-12c36/driverR4.acc"
    "/home/ares/Developer/speed-dream-2.0/speed/data/cars/models/36gp-milano-12c36/steerwheel.acc"
    "/home/ares/Developer/speed-dream-2.0/speed/data/cars/models/36gp-milano-12c36/wheelr0.acc"
    "/home/ares/Developer/speed-dream-2.0/speed/data/cars/models/36gp-milano-12c36/driverR2.acc"
    "/home/ares/Developer/speed-dream-2.0/speed/data/cars/models/36gp-milano-12c36/driverR5.acc"
    "/home/ares/Developer/speed-dream-2.0/speed/data/cars/models/36gp-milano-12c36/driverL5.acc"
    "/home/ares/Developer/speed-dream-2.0/speed/data/cars/models/36gp-milano-12c36/wheel1.acc"
    "/home/ares/Developer/speed-dream-2.0/speed/data/cars/models/36gp-milano-12c36/36gp-milano-12c36.png"
    "/home/ares/Developer/speed-dream-2.0/speed/data/cars/models/36gp-milano-12c36/12c36-rpm.png"
    "/home/ares/Developer/speed-dream-2.0/speed/data/cars/models/36gp-milano-12c36/shadow.png"
    "/home/ares/Developer/speed-dream-2.0/speed/data/cars/models/36gp-milano-12c36/wheel3d-3.png"
    "/home/ares/Developer/speed-dream-2.0/speed/data/cars/models/36gp-milano-12c36/12c36-kmh.png"
    "/home/ares/Developer/speed-dream-2.0/speed/data/cars/models/36gp-milano-12c36/wheel3d-0.png"
    "/home/ares/Developer/speed-dream-2.0/speed/data/cars/models/36gp-milano-12c36/wheel3d-1.png"
    "/home/ares/Developer/speed-dream-2.0/speed/data/cars/models/36gp-milano-12c36/wheel3d-2.png"
    "/home/ares/Developer/speed-dream-2.0/speed/data/cars/models/36gp-milano-12c36/36gp-milano-12c36-preview.jpg"
    "/home/ares/Developer/speed-dream-2.0/speed/data/cars/models/36gp-milano-12c36/36gp-milano-12c36.wav"
    )
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

