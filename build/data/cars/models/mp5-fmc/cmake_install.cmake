# Install script for directory: /home/ares/Developer/speed-dream-2.0/speed/data/cars/models/mp5-fmc

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
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/cars/mp5-fmc" TYPE FILE FILES
    "/home/ares/Developer/speed-dream-2.0/speed/data/cars/models/mp5-fmc/mp5-fmc.xml"
    "/home/ares/Developer/speed-dream-2.0/speed/data/cars/models/mp5-fmc/readme.txt"
    "/home/ares/Developer/speed-dream-2.0/speed/data/cars/models/mp5-fmc/driverR0.acc"
    "/home/ares/Developer/speed-dream-2.0/speed/data/cars/models/mp5-fmc/driverR6.acc"
    "/home/ares/Developer/speed-dream-2.0/speed/data/cars/models/mp5-fmc/driverR3.acc"
    "/home/ares/Developer/speed-dream-2.0/speed/data/cars/models/mp5-fmc/driverR1.acc"
    "/home/ares/Developer/speed-dream-2.0/speed/data/cars/models/mp5-fmc/wheel0.acc"
    "/home/ares/Developer/speed-dream-2.0/speed/data/cars/models/mp5-fmc/driverL3.acc"
    "/home/ares/Developer/speed-dream-2.0/speed/data/cars/models/mp5-fmc/wheel3.acc"
    "/home/ares/Developer/speed-dream-2.0/speed/data/cars/models/mp5-fmc/driverL2.acc"
    "/home/ares/Developer/speed-dream-2.0/speed/data/cars/models/mp5-fmc/driverL4.acc"
    "/home/ares/Developer/speed-dream-2.0/speed/data/cars/models/mp5-fmc/driverL0.acc"
    "/home/ares/Developer/speed-dream-2.0/speed/data/cars/models/mp5-fmc/driverL1.acc"
    "/home/ares/Developer/speed-dream-2.0/speed/data/cars/models/mp5-fmc/driver.acc"
    "/home/ares/Developer/speed-dream-2.0/speed/data/cars/models/mp5-fmc/driverL6.acc"
    "/home/ares/Developer/speed-dream-2.0/speed/data/cars/models/mp5-fmc/wheel2.acc"
    "/home/ares/Developer/speed-dream-2.0/speed/data/cars/models/mp5-fmc/driverR4.acc"
    "/home/ares/Developer/speed-dream-2.0/speed/data/cars/models/mp5-fmc/steerwheel.acc"
    "/home/ares/Developer/speed-dream-2.0/speed/data/cars/models/mp5-fmc/driverR2.acc"
    "/home/ares/Developer/speed-dream-2.0/speed/data/cars/models/mp5-fmc/driverR5.acc"
    "/home/ares/Developer/speed-dream-2.0/speed/data/cars/models/mp5-fmc/mp5-fmc.acc"
    "/home/ares/Developer/speed-dream-2.0/speed/data/cars/models/mp5-fmc/driverL5.acc"
    "/home/ares/Developer/speed-dream-2.0/speed/data/cars/models/mp5-fmc/wheel1.acc"
    "/home/ares/Developer/speed-dream-2.0/speed/data/cars/models/mp5-fmc/shadow.rgb"
    "/home/ares/Developer/speed-dream-2.0/speed/data/cars/models/mp5-fmc/mp5-fmc-freerun.png"
    "/home/ares/Developer/speed-dream-2.0/speed/data/cars/models/mp5-fmc/mp5-fmc.png"
    "/home/ares/Developer/speed-dream-2.0/speed/data/cars/models/mp5-fmc/wheel3d-3.png"
    "/home/ares/Developer/speed-dream-2.0/speed/data/cars/models/mp5-fmc/wheel3d-0.png"
    "/home/ares/Developer/speed-dream-2.0/speed/data/cars/models/mp5-fmc/mp5-fmc-adenauer.png"
    "/home/ares/Developer/speed-dream-2.0/speed/data/cars/models/mp5-fmc/wheel3d-1.png"
    "/home/ares/Developer/speed-dream-2.0/speed/data/cars/models/mp5-fmc/wheel3d-2.png"
    "/home/ares/Developer/speed-dream-2.0/speed/data/cars/models/mp5-fmc/mp5-fmc-fearless.png"
    "/home/ares/Developer/speed-dream-2.0/speed/data/cars/models/mp5-fmc/mp5-fmc-keisinger.png"
    "/home/ares/Developer/speed-dream-2.0/speed/data/cars/models/mp5-fmc/mp5-fmc-adenauer-preview.jpg"
    "/home/ares/Developer/speed-dream-2.0/speed/data/cars/models/mp5-fmc/mp5-fmc-preview.jpg"
    "/home/ares/Developer/speed-dream-2.0/speed/data/cars/models/mp5-fmc/mp5-fmc-freerun-preview.jpg"
    "/home/ares/Developer/speed-dream-2.0/speed/data/cars/models/mp5-fmc/mp5-fmc-fearless-preview.jpg"
    "/home/ares/Developer/speed-dream-2.0/speed/data/cars/models/mp5-fmc/mp5-fmc-keisinger-preview.jpg"
    )
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

