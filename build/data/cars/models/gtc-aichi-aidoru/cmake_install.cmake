# Install script for directory: /home/ares/Developer/speed-dream-2.0/speed/data/cars/models/gtc-aichi-aidoru

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
    SET(CMAKE_INSTALL_CONFIG_NAME "")
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
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/cars/gtc-aichi-aidoru" TYPE FILE FILES
    "/home/ares/Developer/speed-dream-2.0/speed/data/cars/models/gtc-aichi-aidoru/gtc-aichi-aidoru.xml"
    "/home/ares/Developer/speed-dream-2.0/speed/data/cars/models/gtc-aichi-aidoru/readme.txt"
    "/home/ares/Developer/speed-dream-2.0/speed/data/cars/models/gtc-aichi-aidoru/r9-eng.wav"
    "/home/ares/Developer/speed-dream-2.0/speed/data/cars/models/gtc-aichi-aidoru/gtc-aichi-aidoru.acc"
    "/home/ares/Developer/speed-dream-2.0/speed/data/cars/models/gtc-aichi-aidoru/gtc-aichi-aidoru-kaguhime.png"
    "/home/ares/Developer/speed-dream-2.0/speed/data/cars/models/gtc-aichi-aidoru/shadow.png"
    "/home/ares/Developer/speed-dream-2.0/speed/data/cars/models/gtc-aichi-aidoru/gtc-aichi-aidoru.png"
    "/home/ares/Developer/speed-dream-2.0/speed/data/cars/models/gtc-aichi-aidoru/gtc-aichi-aidoru-eirin.png"
    "/home/ares/Developer/speed-dream-2.0/speed/data/cars/models/gtc-aichi-aidoru/gtc-aichi-aidoru-utsuho.png"
    "/home/ares/Developer/speed-dream-2.0/speed/data/cars/models/gtc-aichi-aidoru/wheel3d-niceboat.png"
    "/home/ares/Developer/speed-dream-2.0/speed/data/cars/models/gtc-aichi-aidoru/wheel3d.png"
    "/home/ares/Developer/speed-dream-2.0/speed/data/cars/models/gtc-aichi-aidoru/gtc-aichi-aidoru-interior.png"
    "/home/ares/Developer/speed-dream-2.0/speed/data/cars/models/gtc-aichi-aidoru/gtc-aichi-aidoru-niceboat.png"
    "/home/ares/Developer/speed-dream-2.0/speed/data/cars/models/gtc-aichi-aidoru/gtc-aichi-aidoru-iosys.png"
    "/home/ares/Developer/speed-dream-2.0/speed/data/cars/models/gtc-aichi-aidoru/gtc-aichi-aidoru-kaguhime-preview.jpg"
    "/home/ares/Developer/speed-dream-2.0/speed/data/cars/models/gtc-aichi-aidoru/gtc-aichi-aidoru-eirin-preview.jpg"
    "/home/ares/Developer/speed-dream-2.0/speed/data/cars/models/gtc-aichi-aidoru/gtc-aichi-aidoru-preview.jpg"
    "/home/ares/Developer/speed-dream-2.0/speed/data/cars/models/gtc-aichi-aidoru/gtc-aichi-aidoru-utsuho-preview.jpg"
    "/home/ares/Developer/speed-dream-2.0/speed/data/cars/models/gtc-aichi-aidoru/gtc-aichi-aidoru-interior-preview.jpg"
    "/home/ares/Developer/speed-dream-2.0/speed/data/cars/models/gtc-aichi-aidoru/gtc-aichi-aidoru-niceboat-preview.jpg"
    "/home/ares/Developer/speed-dream-2.0/speed/data/cars/models/gtc-aichi-aidoru/gtc-aichi-aidoru-iosys-preview.jpg"
    "/home/ares/Developer/speed-dream-2.0/speed/data/cars/models/gtc-aichi-aidoru/aidoru-v8.wav"
    "/home/ares/Developer/speed-dream-2.0/speed/data/cars/models/gtc-aichi-aidoru/r9-eng.wav"
    )
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

