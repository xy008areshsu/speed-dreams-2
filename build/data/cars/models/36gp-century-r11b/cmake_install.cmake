# Install script for directory: /home/ares/Developer/speed-dream-2.0/speed/data/cars/models/36gp-century-r11b

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
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/cars/36gp-century-r11b" TYPE FILE FILES
    "/home/ares/Developer/speed-dream-2.0/speed/data/cars/models/36gp-century-r11b/36gp-century-r11b.xml"
    "/home/ares/Developer/speed-dream-2.0/speed/data/cars/models/36gp-century-r11b/readme.txt"
    "/home/ares/Developer/speed-dream-2.0/speed/data/cars/models/36gp-century-r11b/steerwheelhr.acc"
    "/home/ares/Developer/speed-dream-2.0/speed/data/cars/models/36gp-century-r11b/driverR0.acc"
    "/home/ares/Developer/speed-dream-2.0/speed/data/cars/models/36gp-century-r11b/driverR6.acc"
    "/home/ares/Developer/speed-dream-2.0/speed/data/cars/models/36gp-century-r11b/driverR3.acc"
    "/home/ares/Developer/speed-dream-2.0/speed/data/cars/models/36gp-century-r11b/driverR1.acc"
    "/home/ares/Developer/speed-dream-2.0/speed/data/cars/models/36gp-century-r11b/wheel0.acc"
    "/home/ares/Developer/speed-dream-2.0/speed/data/cars/models/36gp-century-r11b/driverL3.acc"
    "/home/ares/Developer/speed-dream-2.0/speed/data/cars/models/36gp-century-r11b/wheel3.acc"
    "/home/ares/Developer/speed-dream-2.0/speed/data/cars/models/36gp-century-r11b/driverL2.acc"
    "/home/ares/Developer/speed-dream-2.0/speed/data/cars/models/36gp-century-r11b/36gp-century-r11b.acc"
    "/home/ares/Developer/speed-dream-2.0/speed/data/cars/models/36gp-century-r11b/driverL4.acc"
    "/home/ares/Developer/speed-dream-2.0/speed/data/cars/models/36gp-century-r11b/driverL0.acc"
    "/home/ares/Developer/speed-dream-2.0/speed/data/cars/models/36gp-century-r11b/driverL1.acc"
    "/home/ares/Developer/speed-dream-2.0/speed/data/cars/models/36gp-century-r11b/driver.acc"
    "/home/ares/Developer/speed-dream-2.0/speed/data/cars/models/36gp-century-r11b/driverL6.acc"
    "/home/ares/Developer/speed-dream-2.0/speed/data/cars/models/36gp-century-r11b/wheel2.acc"
    "/home/ares/Developer/speed-dream-2.0/speed/data/cars/models/36gp-century-r11b/driverR4.acc"
    "/home/ares/Developer/speed-dream-2.0/speed/data/cars/models/36gp-century-r11b/steerwheel.acc"
    "/home/ares/Developer/speed-dream-2.0/speed/data/cars/models/36gp-century-r11b/driverR2.acc"
    "/home/ares/Developer/speed-dream-2.0/speed/data/cars/models/36gp-century-r11b/driverR5.acc"
    "/home/ares/Developer/speed-dream-2.0/speed/data/cars/models/36gp-century-r11b/driverL5.acc"
    "/home/ares/Developer/speed-dream-2.0/speed/data/cars/models/36gp-century-r11b/wheel1.acc"
    "/home/ares/Developer/speed-dream-2.0/speed/data/cars/models/36gp-century-r11b/shadow.png"
    "/home/ares/Developer/speed-dream-2.0/speed/data/cars/models/36gp-century-r11b/wheel3d-3.png"
    "/home/ares/Developer/speed-dream-2.0/speed/data/cars/models/36gp-century-r11b/wheel3d-0.png"
    "/home/ares/Developer/speed-dream-2.0/speed/data/cars/models/36gp-century-r11b/wheel3d-1.png"
    "/home/ares/Developer/speed-dream-2.0/speed/data/cars/models/36gp-century-r11b/36gp-century-r11b.png"
    "/home/ares/Developer/speed-dream-2.0/speed/data/cars/models/36gp-century-r11b/r11b-mph.png"
    "/home/ares/Developer/speed-dream-2.0/speed/data/cars/models/36gp-century-r11b/wheel3d-2.png"
    "/home/ares/Developer/speed-dream-2.0/speed/data/cars/models/36gp-century-r11b/r11b-rpm.png"
    "/home/ares/Developer/speed-dream-2.0/speed/data/cars/models/36gp-century-r11b/36gp-century-r11b-preview.jpg"
    "/home/ares/Developer/speed-dream-2.0/speed/data/cars/models/36gp-century-r11b/36gp-century-r11b.wav"
    )
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

