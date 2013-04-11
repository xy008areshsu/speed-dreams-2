# Install script for directory: /home/ares/Developer/speed-dream-2.0/speed/data/tracks/road/street-1

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
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/tracks/road/street-1" TYPE FILE FILES
    "/home/ares/Developer/speed-dream-2.0/speed/data/tracks/road/street-1/street-1.xml"
    "/home/ares/Developer/speed-dream-2.0/speed/data/tracks/road/street-1/readme.txt"
    "/home/ares/Developer/speed-dream-2.0/speed/data/tracks/road/street-1/land.ac"
    "/home/ares/Developer/speed-dream-2.0/speed/data/tracks/road/street-1/street-1.acc"
    "/home/ares/Developer/speed-dream-2.0/speed/data/tracks/road/street-1/tr-building1.rgb"
    "/home/ares/Developer/speed-dream-2.0/speed/data/tracks/road/street-1/tr-building9.rgb"
    "/home/ares/Developer/speed-dream-2.0/speed/data/tracks/road/street-1/house.rgb"
    "/home/ares/Developer/speed-dream-2.0/speed/data/tracks/road/street-1/tr-building3.rgb"
    "/home/ares/Developer/speed-dream-2.0/speed/data/tracks/road/street-1/walls2.rgb"
    "/home/ares/Developer/speed-dream-2.0/speed/data/tracks/road/street-1/barr1.rgb"
    "/home/ares/Developer/speed-dream-2.0/speed/data/tracks/road/street-1/tr-building5.rgb"
    "/home/ares/Developer/speed-dream-2.0/speed/data/tracks/road/street-1/std.rgb"
    "/home/ares/Developer/speed-dream-2.0/speed/data/tracks/road/street-1/walls.rgb"
    "/home/ares/Developer/speed-dream-2.0/speed/data/tracks/road/street-1/treeg10_n.rgb"
    "/home/ares/Developer/speed-dream-2.0/speed/data/tracks/road/street-1/tr-building6.rgb"
    "/home/ares/Developer/speed-dream-2.0/speed/data/tracks/road/street-1/tr-building2.rgb"
    "/home/ares/Developer/speed-dream-2.0/speed/data/tracks/road/street-1/torcs1.rgb"
    "/home/ares/Developer/speed-dream-2.0/speed/data/tracks/road/street-1/tr-road1-pit_n.rgb"
    "/home/ares/Developer/speed-dream-2.0/speed/data/tracks/road/street-1/tree-new_n.rgb"
    "/home/ares/Developer/speed-dream-2.0/speed/data/tracks/road/street-1/tree-poplar_n.rgb"
    "/home/ares/Developer/speed-dream-2.0/speed/data/tracks/road/street-1/tr-asphalt-aa-bw1_n.rgb"
    "/home/ares/Developer/speed-dream-2.0/speed/data/tracks/road/street-1/roof1.rgb"
    "/home/ares/Developer/speed-dream-2.0/speed/data/tracks/road/street-1/tr-road1_n.rgb"
    "/home/ares/Developer/speed-dream-2.0/speed/data/tracks/road/street-1/tr-building7.rgb"
    "/home/ares/Developer/speed-dream-2.0/speed/data/tracks/road/street-1/background.png"
    "/home/ares/Developer/speed-dream-2.0/speed/data/tracks/road/street-1/town-border-arbor.png"
    "/home/ares/Developer/speed-dream-2.0/speed/data/tracks/road/street-1/poutre3_arbor.png"
    "/home/ares/Developer/speed-dream-2.0/speed/data/tracks/road/street-1/truck0.png"
    "/home/ares/Developer/speed-dream-2.0/speed/data/tracks/road/street-1/str-grass.png"
    "/home/ares/Developer/speed-dream-2.0/speed/data/tracks/road/street-1/truck_arbor_ctd_n.png"
    "/home/ares/Developer/speed-dream-2.0/speed/data/tracks/road/street-1/str-barrier.png"
    "/home/ares/Developer/speed-dream-2.0/speed/data/tracks/road/street-1/tr-building8.png"
    "/home/ares/Developer/speed-dream-2.0/speed/data/tracks/road/street-1/tr-asphalt-2-aa-r_n.png"
    "/home/ares/Developer/speed-dream-2.0/speed/data/tracks/road/street-1/str-spec.png"
    "/home/ares/Developer/speed-dream-2.0/speed/data/tracks/road/street-1/shadow2.png"
    "/home/ares/Developer/speed-dream-2.0/speed/data/tracks/road/street-1/str-curb.png"
    "/home/ares/Developer/speed-dream-2.0/speed/data/tracks/road/street-1/str-tirewall.png"
    "/home/ares/Developer/speed-dream-2.0/speed/data/tracks/road/street-1/tr-house-arbor2_n.png"
    "/home/ares/Developer/speed-dream-2.0/speed/data/tracks/road/street-1/tr-house-arbor_n.png"
    "/home/ares/Developer/speed-dream-2.0/speed/data/tracks/road/street-1/texte1.png"
    "/home/ares/Developer/speed-dream-2.0/speed/data/tracks/road/street-1/str-concdal.png"
    "/home/ares/Developer/speed-dream-2.0/speed/data/tracks/road/street-1/str-sand.png"
    "/home/ares/Developer/speed-dream-2.0/speed/data/tracks/road/street-1/tree-border_n.png"
    "/home/ares/Developer/speed-dream-2.0/speed/data/tracks/road/street-1/land.png"
    "/home/ares/Developer/speed-dream-2.0/speed/data/tracks/road/street-1/outline.png"
    "/home/ares/Developer/speed-dream-2.0/speed/data/tracks/road/street-1/background-sky.png"
    "/home/ares/Developer/speed-dream-2.0/speed/data/tracks/road/street-1/shadow2.jpg"
    "/home/ares/Developer/speed-dream-2.0/speed/data/tracks/road/street-1/street-1.jpg"
    )
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

