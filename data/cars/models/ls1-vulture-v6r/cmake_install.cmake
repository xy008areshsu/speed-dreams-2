# Install script for directory: /home/ares/Developer/speed-dream-2.0/speed/data/cars/models/ls1-vulture-v6r

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
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/cars/ls1-vulture-v6r" TYPE FILE FILES
    "/home/ares/Developer/speed-dream-2.0/speed/data/cars/models/ls1-vulture-v6r/ls1-vulture-v6r.xml"
    "/home/ares/Developer/speed-dream-2.0/speed/data/cars/models/ls1-vulture-v6r/readme.txt"
    "/home/ares/Developer/speed-dream-2.0/speed/data/cars/models/ls1-vulture-v6r/ls1-vulture-v6r.acc"
    "/home/ares/Developer/speed-dream-2.0/speed/data/cars/models/ls1-vulture-v6r/shadow.rgb"
    "/home/ares/Developer/speed-dream-2.0/speed/data/cars/models/ls1-vulture-v6r/tex-wheel.rgb"
    "/home/ares/Developer/speed-dream-2.0/speed/data/cars/models/ls1-vulture-v6r/ls1-vulture-v6r-erik64.png"
    "/home/ares/Developer/speed-dream-2.0/speed/data/cars/models/ls1-vulture-v6r/ls1-vulture-v6r-rhbadboys.png"
    "/home/ares/Developer/speed-dream-2.0/speed/data/cars/models/ls1-vulture-v6r/shadow.png"
    "/home/ares/Developer/speed-dream-2.0/speed/data/cars/models/ls1-vulture-v6r/wheel3d-scarlet.png"
    "/home/ares/Developer/speed-dream-2.0/speed/data/cars/models/ls1-vulture-v6r/ls1-vulture-v6r-zun.png"
    "/home/ares/Developer/speed-dream-2.0/speed/data/cars/models/ls1-vulture-v6r/ls1-vulture-v6r-jd2.png"
    "/home/ares/Developer/speed-dream-2.0/speed/data/cars/models/ls1-vulture-v6r/tex-wheel.png"
    "/home/ares/Developer/speed-dream-2.0/speed/data/cars/models/ls1-vulture-v6r/ls1-vulture-v6r-beast.png"
    "/home/ares/Developer/speed-dream-2.0/speed/data/cars/models/ls1-vulture-v6r/ls1-vulture-v6r-rh72.png"
    "/home/ares/Developer/speed-dream-2.0/speed/data/cars/models/ls1-vulture-v6r/ls1-vulture-v6r-jd1.png"
    "/home/ares/Developer/speed-dream-2.0/speed/data/cars/models/ls1-vulture-v6r/wheel3d.png"
    "/home/ares/Developer/speed-dream-2.0/speed/data/cars/models/ls1-vulture-v6r/ls1-vulture-v6r.png"
    "/home/ares/Developer/speed-dream-2.0/speed/data/cars/models/ls1-vulture-v6r/wheel3d-zun.png"
    "/home/ares/Developer/speed-dream-2.0/speed/data/cars/models/ls1-vulture-v6r/ls1-vulture-v6r-erik63.png"
    "/home/ares/Developer/speed-dream-2.0/speed/data/cars/models/ls1-vulture-v6r/ls1-vulture-v6r-keion.png"
    "/home/ares/Developer/speed-dream-2.0/speed/data/cars/models/ls1-vulture-v6r/ls1-vulture-v6r-scarlet.png"
    "/home/ares/Developer/speed-dream-2.0/speed/data/cars/models/ls1-vulture-v6r/ls1-vulture-v6r-erik63-preview.jpg"
    "/home/ares/Developer/speed-dream-2.0/speed/data/cars/models/ls1-vulture-v6r/ls1-vulture-v6r-rh72-preview.jpg"
    "/home/ares/Developer/speed-dream-2.0/speed/data/cars/models/ls1-vulture-v6r/ls1-vulture-v6r-beast-preview.jpg"
    "/home/ares/Developer/speed-dream-2.0/speed/data/cars/models/ls1-vulture-v6r/ls1-vulture-v6r-rhbadboys-preview.jpg"
    "/home/ares/Developer/speed-dream-2.0/speed/data/cars/models/ls1-vulture-v6r/ls1-vulture-v6r-erik64-preview.jpg"
    "/home/ares/Developer/speed-dream-2.0/speed/data/cars/models/ls1-vulture-v6r/ls1-vulture-v6r-scarlet-preview.jpg"
    "/home/ares/Developer/speed-dream-2.0/speed/data/cars/models/ls1-vulture-v6r/ls1-vulture-v6r-zun-preview.jpg"
    "/home/ares/Developer/speed-dream-2.0/speed/data/cars/models/ls1-vulture-v6r/ls1-vulture-v6r-keion-preview.jpg"
    "/home/ares/Developer/speed-dream-2.0/speed/data/cars/models/ls1-vulture-v6r/ls1-vulture-v6r-jd1-preview.jpg"
    "/home/ares/Developer/speed-dream-2.0/speed/data/cars/models/ls1-vulture-v6r/ls1-vulture-v6r-preview.jpg"
    "/home/ares/Developer/speed-dream-2.0/speed/data/cars/models/ls1-vulture-v6r/ls1-vulture-v6r-jd2-preview.jpg"
    "/home/ares/Developer/speed-dream-2.0/speed/data/cars/models/ls1-vulture-v6r/v8sp.wav"
    )
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

