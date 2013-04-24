# Install script for directory: /home/ares/Developer/speed-dream-2.0/speed/data/cars/models/mp10-sdr-kart125

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
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/cars/mp10-sdr-kart125" TYPE FILE FILES
    "/home/ares/Developer/speed-dream-2.0/speed/data/cars/models/mp10-sdr-kart125/mp10-sdr-kart125.xml"
    "/home/ares/Developer/speed-dream-2.0/speed/data/cars/models/mp10-sdr-kart125/driverL1.ac"
    "/home/ares/Developer/speed-dream-2.0/speed/data/cars/models/mp10-sdr-kart125/driverL6.ac"
    "/home/ares/Developer/speed-dream-2.0/speed/data/cars/models/mp10-sdr-kart125/mp10-sdr-kart125-plate.ac"
    "/home/ares/Developer/speed-dream-2.0/speed/data/cars/models/mp10-sdr-kart125/driverR4.ac"
    "/home/ares/Developer/speed-dream-2.0/speed/data/cars/models/mp10-sdr-kart125/driverL5.ac"
    "/home/ares/Developer/speed-dream-2.0/speed/data/cars/models/mp10-sdr-kart125/driverR1.ac"
    "/home/ares/Developer/speed-dream-2.0/speed/data/cars/models/mp10-sdr-kart125/driverR3.ac"
    "/home/ares/Developer/speed-dream-2.0/speed/data/cars/models/mp10-sdr-kart125/mp10-sdr-kart125-lod2.ac"
    "/home/ares/Developer/speed-dream-2.0/speed/data/cars/models/mp10-sdr-kart125/mp10-sdr-kart125-new.ac"
    "/home/ares/Developer/speed-dream-2.0/speed/data/cars/models/mp10-sdr-kart125/driverL2.ac"
    "/home/ares/Developer/speed-dream-2.0/speed/data/cars/models/mp10-sdr-kart125/driver.ac"
    "/home/ares/Developer/speed-dream-2.0/speed/data/cars/models/mp10-sdr-kart125/driverL4.ac"
    "/home/ares/Developer/speed-dream-2.0/speed/data/cars/models/mp10-sdr-kart125/driverR5.ac"
    "/home/ares/Developer/speed-dream-2.0/speed/data/cars/models/mp10-sdr-kart125/mp10-sdr-kart125.ac"
    "/home/ares/Developer/speed-dream-2.0/speed/data/cars/models/mp10-sdr-kart125/driverL3.ac"
    "/home/ares/Developer/speed-dream-2.0/speed/data/cars/models/mp10-sdr-kart125/mp10-sdr-kart125-new1.ac"
    "/home/ares/Developer/speed-dream-2.0/speed/data/cars/models/mp10-sdr-kart125/steerwheel.ac"
    "/home/ares/Developer/speed-dream-2.0/speed/data/cars/models/mp10-sdr-kart125/driverR2.ac"
    "/home/ares/Developer/speed-dream-2.0/speed/data/cars/models/mp10-sdr-kart125/driverR6.ac"
    "/home/ares/Developer/speed-dream-2.0/speed/data/cars/models/mp10-sdr-kart125/driverR0.ac"
    "/home/ares/Developer/speed-dream-2.0/speed/data/cars/models/mp10-sdr-kart125/mp10-sdr-kart125-lod1.ac"
    "/home/ares/Developer/speed-dream-2.0/speed/data/cars/models/mp10-sdr-kart125/driverL0.ac"
    "/home/ares/Developer/speed-dream-2.0/speed/data/cars/models/mp10-sdr-kart125/mp10-sdr-kart125-new2.ac"
    "/home/ares/Developer/speed-dream-2.0/speed/data/cars/models/mp10-sdr-kart125/mp10-sdr-kart125-src.ac"
    "/home/ares/Developer/speed-dream-2.0/speed/data/cars/models/mp10-sdr-kart125/mp10-sdr-kart125-lod3.ac"
    "/home/ares/Developer/speed-dream-2.0/speed/data/cars/models/mp10-sdr-kart125/wheel0.acc"
    "/home/ares/Developer/speed-dream-2.0/speed/data/cars/models/mp10-sdr-kart125/wheel3.acc"
    "/home/ares/Developer/speed-dream-2.0/speed/data/cars/models/mp10-sdr-kart125/wheel2.acc"
    "/home/ares/Developer/speed-dream-2.0/speed/data/cars/models/mp10-sdr-kart125/wheel1.acc"
    "/home/ares/Developer/speed-dream-2.0/speed/data/cars/models/mp10-sdr-kart125/shadow.rgb"
    "/home/ares/Developer/speed-dream-2.0/speed/data/cars/models/mp10-sdr-kart125/mp10-sdr-kart125.png"
    "/home/ares/Developer/speed-dream-2.0/speed/data/cars/models/mp10-sdr-kart125/mp10-sdr-kart125-kaoru.png"
    "/home/ares/Developer/speed-dream-2.0/speed/data/cars/models/mp10-sdr-kart125/mp10-sdr-kart125-louise.png"
    "/home/ares/Developer/speed-dream-2.0/speed/data/cars/models/mp10-sdr-kart125/mp10-sdr-kart125-haruna.png"
    "/home/ares/Developer/speed-dream-2.0/speed/data/cars/models/mp10-sdr-kart125/mp10-sdr-kart125-audrey.png"
    "/home/ares/Developer/speed-dream-2.0/speed/data/cars/models/mp10-sdr-kart125/mp10-sdr-kart125-louie.png"
    "/home/ares/Developer/speed-dream-2.0/speed/data/cars/models/mp10-sdr-kart125/mp10-sdr-kart125-yukie.png"
    "/home/ares/Developer/speed-dream-2.0/speed/data/cars/models/mp10-sdr-kart125/mp10-sdr-kart125-marcelo.png"
    "/home/ares/Developer/speed-dream-2.0/speed/data/cars/models/mp10-sdr-kart125/mp10-sdr-kart125-kanae.png"
    "/home/ares/Developer/speed-dream-2.0/speed/data/cars/models/mp10-sdr-kart125/mp10-sdr-kart125-emma.png"
    "/home/ares/Developer/speed-dream-2.0/speed/data/cars/models/mp10-sdr-kart125/mp10-sdr-kart125-mark.png"
    "/home/ares/Developer/speed-dream-2.0/speed/data/cars/models/mp10-sdr-kart125/wheel3d.png"
    "/home/ares/Developer/speed-dream-2.0/speed/data/cars/models/mp10-sdr-kart125/mp10-sdr-kart125-danny.png"
    "/home/ares/Developer/speed-dream-2.0/speed/data/cars/models/mp10-sdr-kart125/mp10-sdr-kart125-mark-preview.jpg"
    "/home/ares/Developer/speed-dream-2.0/speed/data/cars/models/mp10-sdr-kart125/mp10-sdr-kart125-preview.jpg"
    "/home/ares/Developer/speed-dream-2.0/speed/data/cars/models/mp10-sdr-kart125/mp10-sdr-kart125-kaoru-preview.jpg"
    "/home/ares/Developer/speed-dream-2.0/speed/data/cars/models/mp10-sdr-kart125/mp10-sdr-kart125-haruna-preview.jpg"
    "/home/ares/Developer/speed-dream-2.0/speed/data/cars/models/mp10-sdr-kart125/mp10-sdr-kart125-marcelo-preview.jpg"
    "/home/ares/Developer/speed-dream-2.0/speed/data/cars/models/mp10-sdr-kart125/mp10-sdr-kart125-emma-preview.jpg"
    "/home/ares/Developer/speed-dream-2.0/speed/data/cars/models/mp10-sdr-kart125/mp10-sdr-kart125-audrey-preview.jpg"
    "/home/ares/Developer/speed-dream-2.0/speed/data/cars/models/mp10-sdr-kart125/mp10-sdr-kart125-danny-preview.jpg"
    "/home/ares/Developer/speed-dream-2.0/speed/data/cars/models/mp10-sdr-kart125/mp10-sdr-kart125-louie-preview.jpg"
    "/home/ares/Developer/speed-dream-2.0/speed/data/cars/models/mp10-sdr-kart125/mp10-sdr-kart125-kanae-preview.jpg"
    "/home/ares/Developer/speed-dream-2.0/speed/data/cars/models/mp10-sdr-kart125/mp10-sdr-kart125-louise-preview.jpg"
    "/home/ares/Developer/speed-dream-2.0/speed/data/cars/models/mp10-sdr-kart125/mp10-sdr-kart125-yukie-preview.jpg"
    "/home/ares/Developer/speed-dream-2.0/speed/data/cars/models/mp10-sdr-kart125/mp10-sdr-kart125.wav"
    )
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

