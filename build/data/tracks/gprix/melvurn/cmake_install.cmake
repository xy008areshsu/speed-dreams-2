# Install script for directory: /home/ares/Developer/speed-dream-2.0/speed/data/tracks/gprix/melvurn

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
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/tracks/gprix/melvurn" TYPE FILE FILES
    "/home/ares/Developer/speed-dream-2.0/speed/data/tracks/gprix/melvurn/melvurn.xml"
    "/home/ares/Developer/speed-dream-2.0/speed/data/tracks/gprix/melvurn/readme.txt"
    "/home/ares/Developer/speed-dream-2.0/speed/data/tracks/gprix/melvurn/melvurn.ac"
    "/home/ares/Developer/speed-dream-2.0/speed/data/tracks/gprix/melvurn/melvurn-trk.ac"
    "/home/ares/Developer/speed-dream-2.0/speed/data/tracks/gprix/melvurn/tr-bar-gr.rgb"
    "/home/ares/Developer/speed-dream-2.0/speed/data/tracks/gprix/melvurn/tr-grass.rgb"
    "/home/ares/Developer/speed-dream-2.0/speed/data/tracks/gprix/melvurn/background.png"
    "/home/ares/Developer/speed-dream-2.0/speed/data/tracks/gprix/melvurn/melvurn.png"
    "/home/ares/Developer/speed-dream-2.0/speed/data/tracks/gprix/melvurn/01melbourne.png"
    "/home/ares/Developer/speed-dream-2.0/speed/data/tracks/gprix/melvurn/FENCWIRE_arbor_n.png"
    "/home/ares/Developer/speed-dream-2.0/speed/data/tracks/gprix/melvurn/600px-Albert_Park_Lake_&_Melbourne_City_Skyline.jpg"
    )
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

