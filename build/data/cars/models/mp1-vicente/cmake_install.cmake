# Install script for directory: /home/ares/Developer/speed-dream-2.0/speed/data/cars/models/mp1-vicente

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
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/cars/mp1-vicente" TYPE FILE FILES
    "/home/ares/Developer/speed-dream-2.0/speed/data/cars/models/mp1-vicente/mp1-vicente.xml"
    "/home/ares/Developer/speed-dream-2.0/speed/data/cars/models/mp1-vicente/readme.txt"
    "/home/ares/Developer/speed-dream-2.0/speed/data/cars/models/mp1-vicente/steerwheelhr.acc"
    "/home/ares/Developer/speed-dream-2.0/speed/data/cars/models/mp1-vicente/driverR0.acc"
    "/home/ares/Developer/speed-dream-2.0/speed/data/cars/models/mp1-vicente/driverR6.acc"
    "/home/ares/Developer/speed-dream-2.0/speed/data/cars/models/mp1-vicente/mp1-vicente.acc"
    "/home/ares/Developer/speed-dream-2.0/speed/data/cars/models/mp1-vicente/driverR3.acc"
    "/home/ares/Developer/speed-dream-2.0/speed/data/cars/models/mp1-vicente/driverR1.acc"
    "/home/ares/Developer/speed-dream-2.0/speed/data/cars/models/mp1-vicente/wheel0.acc"
    "/home/ares/Developer/speed-dream-2.0/speed/data/cars/models/mp1-vicente/driverL3.acc"
    "/home/ares/Developer/speed-dream-2.0/speed/data/cars/models/mp1-vicente/wheel3.acc"
    "/home/ares/Developer/speed-dream-2.0/speed/data/cars/models/mp1-vicente/driverL2.acc"
    "/home/ares/Developer/speed-dream-2.0/speed/data/cars/models/mp1-vicente/driverL4.acc"
    "/home/ares/Developer/speed-dream-2.0/speed/data/cars/models/mp1-vicente/driverL0.acc"
    "/home/ares/Developer/speed-dream-2.0/speed/data/cars/models/mp1-vicente/driverL1.acc"
    "/home/ares/Developer/speed-dream-2.0/speed/data/cars/models/mp1-vicente/driver.acc"
    "/home/ares/Developer/speed-dream-2.0/speed/data/cars/models/mp1-vicente/driverL6.acc"
    "/home/ares/Developer/speed-dream-2.0/speed/data/cars/models/mp1-vicente/wheel2.acc"
    "/home/ares/Developer/speed-dream-2.0/speed/data/cars/models/mp1-vicente/driverR4.acc"
    "/home/ares/Developer/speed-dream-2.0/speed/data/cars/models/mp1-vicente/steerwheel.acc"
    "/home/ares/Developer/speed-dream-2.0/speed/data/cars/models/mp1-vicente/driverR2.acc"
    "/home/ares/Developer/speed-dream-2.0/speed/data/cars/models/mp1-vicente/driverR5.acc"
    "/home/ares/Developer/speed-dream-2.0/speed/data/cars/models/mp1-vicente/driverL5.acc"
    "/home/ares/Developer/speed-dream-2.0/speed/data/cars/models/mp1-vicente/wheel1.acc"
    "/home/ares/Developer/speed-dream-2.0/speed/data/cars/models/mp1-vicente/shadow.rgb"
    "/home/ares/Developer/speed-dream-2.0/speed/data/cars/models/mp1-vicente/tex-wheel.rgb"
    "/home/ares/Developer/speed-dream-2.0/speed/data/cars/models/mp1-vicente/rpm20000.png"
    "/home/ares/Developer/speed-dream-2.0/speed/data/cars/models/mp1-vicente/mp1-vicente.png"
    "/home/ares/Developer/speed-dream-2.0/speed/data/cars/models/mp1-vicente/wheel-src-2-200.png"
    "/home/ares/Developer/speed-dream-2.0/speed/data/cars/models/mp1-vicente/wheel-src-2-100.png"
    "/home/ares/Developer/speed-dream-2.0/speed/data/cars/models/mp1-vicente/vte-h-1.png"
    "/home/ares/Developer/speed-dream-2.0/speed/data/cars/models/mp1-vicente/steering_wheel.png"
    "/home/ares/Developer/speed-dream-2.0/speed/data/cars/models/mp1-vicente/vte-h-2.png"
    "/home/ares/Developer/speed-dream-2.0/speed/data/cars/models/mp1-vicente/car_c.png"
    "/home/ares/Developer/speed-dream-2.0/speed/data/cars/models/mp1-vicente/speed360.png"
    "/home/ares/Developer/speed-dream-2.0/speed/data/cars/models/mp1-vicente/vte-driver.png"
    "/home/ares/Developer/speed-dream-2.0/speed/data/cars/models/mp1-vicente/wheel-src-2.png"
    "/home/ares/Developer/speed-dream-2.0/speed/data/cars/models/mp1-vicente/wheel-src-20.png"
    "/home/ares/Developer/speed-dream-2.0/speed/data/cars/models/mp1-vicente/wheel-src-180.png"
    "/home/ares/Developer/speed-dream-2.0/speed/data/cars/models/mp1-vicente/wheel-src-50.png"
    "/home/ares/Developer/speed-dream-2.0/speed/data/cars/models/mp1-vicente/wheel-src-2-50.png"
    "/home/ares/Developer/speed-dream-2.0/speed/data/cars/models/mp1-vicente/wheel3d.png"
    "/home/ares/Developer/speed-dream-2.0/speed/data/cars/models/mp1-vicente/wheel-src.png"
    "/home/ares/Developer/speed-dream-2.0/speed/data/cars/models/mp1-vicente/mp1-vicente-preview.jpg"
    "/home/ares/Developer/speed-dream-2.0/speed/data/cars/models/mp1-vicente/f1-v12.wav"
    "/home/ares/Developer/speed-dream-2.0/speed/data/cars/models/mp1-vicente/f1-v10.wav"
    )
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

