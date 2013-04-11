# Install script for directory: /home/ares/Developer/speed-dream-2.0/speed/data/cars/models/36gp-silber-w25b

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
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/cars/36gp-silber-w25b" TYPE FILE FILES
    "/home/ares/Developer/speed-dream-2.0/speed/data/cars/models/36gp-silber-w25b/36gp-silber-w25b.xml"
    "/home/ares/Developer/speed-dream-2.0/speed/data/cars/models/36gp-silber-w25b/readme.txt"
    "/home/ares/Developer/speed-dream-2.0/speed/data/cars/models/36gp-silber-w25b/steerwheelhr.acc"
    "/home/ares/Developer/speed-dream-2.0/speed/data/cars/models/36gp-silber-w25b/driverR0.acc"
    "/home/ares/Developer/speed-dream-2.0/speed/data/cars/models/36gp-silber-w25b/driverR6.acc"
    "/home/ares/Developer/speed-dream-2.0/speed/data/cars/models/36gp-silber-w25b/driverR3.acc"
    "/home/ares/Developer/speed-dream-2.0/speed/data/cars/models/36gp-silber-w25b/driverR1.acc"
    "/home/ares/Developer/speed-dream-2.0/speed/data/cars/models/36gp-silber-w25b/wheel0.acc"
    "/home/ares/Developer/speed-dream-2.0/speed/data/cars/models/36gp-silber-w25b/wheelr3.acc"
    "/home/ares/Developer/speed-dream-2.0/speed/data/cars/models/36gp-silber-w25b/wheelr2.acc"
    "/home/ares/Developer/speed-dream-2.0/speed/data/cars/models/36gp-silber-w25b/driverL3.acc"
    "/home/ares/Developer/speed-dream-2.0/speed/data/cars/models/36gp-silber-w25b/wheelr1.acc"
    "/home/ares/Developer/speed-dream-2.0/speed/data/cars/models/36gp-silber-w25b/wheel3.acc"
    "/home/ares/Developer/speed-dream-2.0/speed/data/cars/models/36gp-silber-w25b/driverL2.acc"
    "/home/ares/Developer/speed-dream-2.0/speed/data/cars/models/36gp-silber-w25b/driverL4.acc"
    "/home/ares/Developer/speed-dream-2.0/speed/data/cars/models/36gp-silber-w25b/driverL0.acc"
    "/home/ares/Developer/speed-dream-2.0/speed/data/cars/models/36gp-silber-w25b/driverL1.acc"
    "/home/ares/Developer/speed-dream-2.0/speed/data/cars/models/36gp-silber-w25b/driver.acc"
    "/home/ares/Developer/speed-dream-2.0/speed/data/cars/models/36gp-silber-w25b/driverL6.acc"
    "/home/ares/Developer/speed-dream-2.0/speed/data/cars/models/36gp-silber-w25b/wheel2.acc"
    "/home/ares/Developer/speed-dream-2.0/speed/data/cars/models/36gp-silber-w25b/driverR4.acc"
    "/home/ares/Developer/speed-dream-2.0/speed/data/cars/models/36gp-silber-w25b/steerwheel.acc"
    "/home/ares/Developer/speed-dream-2.0/speed/data/cars/models/36gp-silber-w25b/wheelr0.acc"
    "/home/ares/Developer/speed-dream-2.0/speed/data/cars/models/36gp-silber-w25b/driverR2.acc"
    "/home/ares/Developer/speed-dream-2.0/speed/data/cars/models/36gp-silber-w25b/driverR5.acc"
    "/home/ares/Developer/speed-dream-2.0/speed/data/cars/models/36gp-silber-w25b/driverL5.acc"
    "/home/ares/Developer/speed-dream-2.0/speed/data/cars/models/36gp-silber-w25b/36gp-silber-w25b.acc"
    "/home/ares/Developer/speed-dream-2.0/speed/data/cars/models/36gp-silber-w25b/wheel1.acc"
    "/home/ares/Developer/speed-dream-2.0/speed/data/cars/models/36gp-silber-w25b/shadow.png"
    "/home/ares/Developer/speed-dream-2.0/speed/data/cars/models/36gp-silber-w25b/36gp-silber-w25b.png"
    "/home/ares/Developer/speed-dream-2.0/speed/data/cars/models/36gp-silber-w25b/wheel3d-3.png"
    "/home/ares/Developer/speed-dream-2.0/speed/data/cars/models/36gp-silber-w25b/wheel3d-0.png"
    "/home/ares/Developer/speed-dream-2.0/speed/data/cars/models/36gp-silber-w25b/wheel3d-1.png"
    "/home/ares/Developer/speed-dream-2.0/speed/data/cars/models/36gp-silber-w25b/36gp-silber-w25b-speed.png"
    "/home/ares/Developer/speed-dream-2.0/speed/data/cars/models/36gp-silber-w25b/wheel3d-2.png"
    "/home/ares/Developer/speed-dream-2.0/speed/data/cars/models/36gp-silber-w25b/36gp-silber-w25b-rpm.png"
    "/home/ares/Developer/speed-dream-2.0/speed/data/cars/models/36gp-silber-w25b/36gp-silber-w25b-preview.jpg"
    "/home/ares/Developer/speed-dream-2.0/speed/data/cars/models/36gp-silber-w25b/36gp-silber-w25b.wav"
    )
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

