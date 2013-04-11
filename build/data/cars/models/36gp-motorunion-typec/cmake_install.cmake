# Install script for directory: /home/ares/Developer/speed-dream-2.0/speed/data/cars/models/36gp-motorunion-typec

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
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/cars/36gp-motorunion-typec" TYPE FILE FILES
    "/home/ares/Developer/speed-dream-2.0/speed/data/cars/models/36gp-motorunion-typec/36gp-motorunion-typec.xml"
    "/home/ares/Developer/speed-dream-2.0/speed/data/cars/models/36gp-motorunion-typec/readme.txt"
    "/home/ares/Developer/speed-dream-2.0/speed/data/cars/models/36gp-motorunion-typec/steerwheelhr.acc"
    "/home/ares/Developer/speed-dream-2.0/speed/data/cars/models/36gp-motorunion-typec/driverR0.acc"
    "/home/ares/Developer/speed-dream-2.0/speed/data/cars/models/36gp-motorunion-typec/driverR6.acc"
    "/home/ares/Developer/speed-dream-2.0/speed/data/cars/models/36gp-motorunion-typec/driverR3.acc"
    "/home/ares/Developer/speed-dream-2.0/speed/data/cars/models/36gp-motorunion-typec/driverR1.acc"
    "/home/ares/Developer/speed-dream-2.0/speed/data/cars/models/36gp-motorunion-typec/wheel0.acc"
    "/home/ares/Developer/speed-dream-2.0/speed/data/cars/models/36gp-motorunion-typec/wheelr3.acc"
    "/home/ares/Developer/speed-dream-2.0/speed/data/cars/models/36gp-motorunion-typec/wheelr2.acc"
    "/home/ares/Developer/speed-dream-2.0/speed/data/cars/models/36gp-motorunion-typec/driverL3.acc"
    "/home/ares/Developer/speed-dream-2.0/speed/data/cars/models/36gp-motorunion-typec/wheelr1.acc"
    "/home/ares/Developer/speed-dream-2.0/speed/data/cars/models/36gp-motorunion-typec/36gp-motorunion-typec.acc"
    "/home/ares/Developer/speed-dream-2.0/speed/data/cars/models/36gp-motorunion-typec/wheel3.acc"
    "/home/ares/Developer/speed-dream-2.0/speed/data/cars/models/36gp-motorunion-typec/driverL2.acc"
    "/home/ares/Developer/speed-dream-2.0/speed/data/cars/models/36gp-motorunion-typec/driverL4.acc"
    "/home/ares/Developer/speed-dream-2.0/speed/data/cars/models/36gp-motorunion-typec/driverL0.acc"
    "/home/ares/Developer/speed-dream-2.0/speed/data/cars/models/36gp-motorunion-typec/driverL1.acc"
    "/home/ares/Developer/speed-dream-2.0/speed/data/cars/models/36gp-motorunion-typec/driver.acc"
    "/home/ares/Developer/speed-dream-2.0/speed/data/cars/models/36gp-motorunion-typec/driverL6.acc"
    "/home/ares/Developer/speed-dream-2.0/speed/data/cars/models/36gp-motorunion-typec/wheel2.acc"
    "/home/ares/Developer/speed-dream-2.0/speed/data/cars/models/36gp-motorunion-typec/driverR4.acc"
    "/home/ares/Developer/speed-dream-2.0/speed/data/cars/models/36gp-motorunion-typec/steerwheel.acc"
    "/home/ares/Developer/speed-dream-2.0/speed/data/cars/models/36gp-motorunion-typec/wheelr0.acc"
    "/home/ares/Developer/speed-dream-2.0/speed/data/cars/models/36gp-motorunion-typec/driverR2.acc"
    "/home/ares/Developer/speed-dream-2.0/speed/data/cars/models/36gp-motorunion-typec/driverR5.acc"
    "/home/ares/Developer/speed-dream-2.0/speed/data/cars/models/36gp-motorunion-typec/driverL5.acc"
    "/home/ares/Developer/speed-dream-2.0/speed/data/cars/models/36gp-motorunion-typec/wheel1.acc"
    "/home/ares/Developer/speed-dream-2.0/speed/data/cars/models/36gp-motorunion-typec/typec-kmh.png"
    "/home/ares/Developer/speed-dream-2.0/speed/data/cars/models/36gp-motorunion-typec/shadow.png"
    "/home/ares/Developer/speed-dream-2.0/speed/data/cars/models/36gp-motorunion-typec/wheel3d-3.png"
    "/home/ares/Developer/speed-dream-2.0/speed/data/cars/models/36gp-motorunion-typec/wheel3d-0.png"
    "/home/ares/Developer/speed-dream-2.0/speed/data/cars/models/36gp-motorunion-typec/36gp-motorunion-typec.png"
    "/home/ares/Developer/speed-dream-2.0/speed/data/cars/models/36gp-motorunion-typec/wheel3d-1.png"
    "/home/ares/Developer/speed-dream-2.0/speed/data/cars/models/36gp-motorunion-typec/wheel3d-2.png"
    "/home/ares/Developer/speed-dream-2.0/speed/data/cars/models/36gp-motorunion-typec/typec-rpm.png"
    "/home/ares/Developer/speed-dream-2.0/speed/data/cars/models/36gp-motorunion-typec/36gp-motorunion-typec-preview.jpg"
    "/home/ares/Developer/speed-dream-2.0/speed/data/cars/models/36gp-motorunion-typec/36gp-motorunion-typec.wav"
    )
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

