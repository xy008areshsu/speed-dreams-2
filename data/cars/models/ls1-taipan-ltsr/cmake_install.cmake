# Install script for directory: /home/ares/Developer/speed-dream-2.0/speed/data/cars/models/ls1-taipan-ltsr

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
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/cars/ls1-taipan-ltsr" TYPE FILE FILES
    "/home/ares/Developer/speed-dream-2.0/speed/data/cars/models/ls1-taipan-ltsr/ls1-taipan-ltsr.xml"
    "/home/ares/Developer/speed-dream-2.0/speed/data/cars/models/ls1-taipan-ltsr/readme.txt"
    "/home/ares/Developer/speed-dream-2.0/speed/data/cars/models/ls1-taipan-ltsr/ls1-taipan-ltsr.acc"
    "/home/ares/Developer/speed-dream-2.0/speed/data/cars/models/ls1-taipan-ltsr/ls1-taipan-ltsr-ffr55.png"
    "/home/ares/Developer/speed-dream-2.0/speed/data/cars/models/ls1-taipan-ltsr/shadow.png"
    "/home/ares/Developer/speed-dream-2.0/speed/data/cars/models/ls1-taipan-ltsr/wheel3d-ffr54.png"
    "/home/ares/Developer/speed-dream-2.0/speed/data/cars/models/ls1-taipan-ltsr/ls1-taipan-ltsr-ffr54.png"
    "/home/ares/Developer/speed-dream-2.0/speed/data/cars/models/ls1-taipan-ltsr/wheel3d-ritsu2.png"
    "/home/ares/Developer/speed-dream-2.0/speed/data/cars/models/ls1-taipan-ltsr/ls1-taipan-ltsr-ritsu2.png"
    "/home/ares/Developer/speed-dream-2.0/speed/data/cars/models/ls1-taipan-ltsr/wheel3d.png"
    "/home/ares/Developer/speed-dream-2.0/speed/data/cars/models/ls1-taipan-ltsr/wheel3d-moriya.png"
    "/home/ares/Developer/speed-dream-2.0/speed/data/cars/models/ls1-taipan-ltsr/wheel3d-ffr55.png"
    "/home/ares/Developer/speed-dream-2.0/speed/data/cars/models/ls1-taipan-ltsr/ls1-taipan-ltsr.png"
    "/home/ares/Developer/speed-dream-2.0/speed/data/cars/models/ls1-taipan-ltsr/ls1-taipan-ltsr-ritsu.png"
    "/home/ares/Developer/speed-dream-2.0/speed/data/cars/models/ls1-taipan-ltsr/ls1-taipan-ltsr-moriya.png"
    "/home/ares/Developer/speed-dream-2.0/speed/data/cars/models/ls1-taipan-ltsr/wheel3d-ritsu.png"
    "/home/ares/Developer/speed-dream-2.0/speed/data/cars/models/ls1-taipan-ltsr/ls1-taipan-ltsr-ritsu2-preview.jpg"
    "/home/ares/Developer/speed-dream-2.0/speed/data/cars/models/ls1-taipan-ltsr/ls1-taipan-ltsr-preview.jpg"
    "/home/ares/Developer/speed-dream-2.0/speed/data/cars/models/ls1-taipan-ltsr/ls1-taipan-ltsr-ffr54-preview.jpg"
    "/home/ares/Developer/speed-dream-2.0/speed/data/cars/models/ls1-taipan-ltsr/ls1-taipan-ltsr-ritsu-preview.jpg"
    "/home/ares/Developer/speed-dream-2.0/speed/data/cars/models/ls1-taipan-ltsr/ls1-taipan-ltsr-moriya-preview.jpg"
    "/home/ares/Developer/speed-dream-2.0/speed/data/cars/models/ls1-taipan-ltsr/ls1-taipan-ltsr-ffr55-preview.jpg"
    "/home/ares/Developer/speed-dream-2.0/speed/data/cars/models/ls1-taipan-ltsr/V10.wav"
    "/home/ares/Developer/speed-dream-2.0/speed/data/cars/models/ls1-taipan-ltsr/vip2ri.wav"
    )
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

