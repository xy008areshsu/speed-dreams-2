# Install script for directory: /home/ares/Developer/speed-dream-2.0/speed/data/tracks/speedway/newton

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
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/tracks/speedway/newton" TYPE FILE FILES
    "/home/ares/Developer/speed-dream-2.0/speed/data/tracks/speedway/newton/newton.xml"
    "/home/ares/Developer/speed-dream-2.0/speed/data/tracks/speedway/newton/readme.txt"
    "/home/ares/Developer/speed-dream-2.0/speed/data/tracks/speedway/newton/land.ac"
    "/home/ares/Developer/speed-dream-2.0/speed/data/tracks/speedway/newton/newton.acc"
    "/home/ares/Developer/speed-dream-2.0/speed/data/tracks/speedway/newton/new-asphalt-border.png"
    "/home/ares/Developer/speed-dream-2.0/speed/data/tracks/speedway/newton/new-building9.png"
    "/home/ares/Developer/speed-dream-2.0/speed/data/tracks/speedway/newton/treeUGLIES01_n.png"
    "/home/ares/Developer/speed-dream-2.0/speed/data/tracks/speedway/newton/TOPCROWD.png"
    "/home/ares/Developer/speed-dream-2.0/speed/data/tracks/speedway/newton/STAIRSD.png"
    "/home/ares/Developer/speed-dream-2.0/speed/data/tracks/speedway/newton/new-asphalt-dark.png"
    "/home/ares/Developer/speed-dream-2.0/speed/data/tracks/speedway/newton/GBtree_n.png"
    "/home/ares/Developer/speed-dream-2.0/speed/data/tracks/speedway/newton/SEMA02.png"
    "/home/ares/Developer/speed-dream-2.0/speed/data/tracks/speedway/newton/new-asphalt-pit.png"
    "/home/ares/Developer/speed-dream-2.0/speed/data/tracks/speedway/newton/STAIRS.png"
    "/home/ares/Developer/speed-dream-2.0/speed/data/tracks/speedway/newton/ZPIT.png"
    "/home/ares/Developer/speed-dream-2.0/speed/data/tracks/speedway/newton/new-building7.png"
    "/home/ares/Developer/speed-dream-2.0/speed/data/tracks/speedway/newton/truck_arbor_tita_n.png"
    "/home/ares/Developer/speed-dream-2.0/speed/data/tracks/speedway/newton/GEtree_n.png"
    "/home/ares/Developer/speed-dream-2.0/speed/data/tracks/speedway/newton/new-asphalt-dirt.png"
    "/home/ares/Developer/speed-dream-2.0/speed/data/tracks/speedway/newton/GSPAtree.png"
    "/home/ares/Developer/speed-dream-2.0/speed/data/tracks/speedway/newton/new-grass.png"
    "/home/ares/Developer/speed-dream-2.0/speed/data/tracks/speedway/newton/truck_arbor_ctd_n.png"
    "/home/ares/Developer/speed-dream-2.0/speed/data/tracks/speedway/newton/CMNTBB.png"
    "/home/ares/Developer/speed-dream-2.0/speed/data/tracks/speedway/newton/new-building4.png"
    "/home/ares/Developer/speed-dream-2.0/speed/data/tracks/speedway/newton/CONCTP.png"
    "/home/ares/Developer/speed-dream-2.0/speed/data/tracks/speedway/newton/new-building2.png"
    "/home/ares/Developer/speed-dream-2.0/speed/data/tracks/speedway/newton/new-building6.png"
    "/home/ares/Developer/speed-dream-2.0/speed/data/tracks/speedway/newton/truck_arbor_inferno_n.png"
    "/home/ares/Developer/speed-dream-2.0/speed/data/tracks/speedway/newton/new-pylon1.png"
    "/home/ares/Developer/speed-dream-2.0/speed/data/tracks/speedway/newton/new-building3.png"
    "/home/ares/Developer/speed-dream-2.0/speed/data/tracks/speedway/newton/truck_arbor_tanhoj_n.png"
    "/home/ares/Developer/speed-dream-2.0/speed/data/tracks/speedway/newton/truck_arbor_bt_n.png"
    "/home/ares/Developer/speed-dream-2.0/speed/data/tracks/speedway/newton/new-tent.png"
    "/home/ares/Developer/speed-dream-2.0/speed/data/tracks/speedway/newton/treeSC_n.png"
    "/home/ares/Developer/speed-dream-2.0/speed/data/tracks/speedway/newton/shadow2.png"
    "/home/ares/Developer/speed-dream-2.0/speed/data/tracks/speedway/newton/new-metal.png"
    "/home/ares/Developer/speed-dream-2.0/speed/data/tracks/speedway/newton/tree_n.png"
    "/home/ares/Developer/speed-dream-2.0/speed/data/tracks/speedway/newton/new-poutre3_n.png"
    "/home/ares/Developer/speed-dream-2.0/speed/data/tracks/speedway/newton/new-pylon2.png"
    "/home/ares/Developer/speed-dream-2.0/speed/data/tracks/speedway/newton/truck_arbor_speedy_n.png"
    "/home/ares/Developer/speed-dream-2.0/speed/data/tracks/speedway/newton/treefc_n.png"
    "/home/ares/Developer/speed-dream-2.0/speed/data/tracks/speedway/newton/env.png"
    "/home/ares/Developer/speed-dream-2.0/speed/data/tracks/speedway/newton/TRIBB01.png"
    "/home/ares/Developer/speed-dream-2.0/speed/data/tracks/speedway/newton/new-asphalt-start.png"
    "/home/ares/Developer/speed-dream-2.0/speed/data/tracks/speedway/newton/new-asphalt-strokes.png"
    "/home/ares/Developer/speed-dream-2.0/speed/data/tracks/speedway/newton/TRIBA09_arbor_n.png"
    "/home/ares/Developer/speed-dream-2.0/speed/data/tracks/speedway/newton/TRIBB03.png"
    "/home/ares/Developer/speed-dream-2.0/speed/data/tracks/speedway/newton/new-building5.png"
    "/home/ares/Developer/speed-dream-2.0/speed/data/tracks/speedway/newton/new-wall.png"
    "/home/ares/Developer/speed-dream-2.0/speed/data/tracks/speedway/newton/new-forest_n.png"
    "/home/ares/Developer/speed-dream-2.0/speed/data/tracks/speedway/newton/new-building1.png"
    "/home/ares/Developer/speed-dream-2.0/speed/data/tracks/speedway/newton/PDKKA13.png"
    "/home/ares/Developer/speed-dream-2.0/speed/data/tracks/speedway/newton/truck_arbor_berniw_n.png"
    "/home/ares/Developer/speed-dream-2.0/speed/data/tracks/speedway/newton/new-cup.png"
    "/home/ares/Developer/speed-dream-2.0/speed/data/tracks/speedway/newton/truck_arbor_cylos_n.png"
    "/home/ares/Developer/speed-dream-2.0/speed/data/tracks/speedway/newton/CMNTB.png"
    "/home/ares/Developer/speed-dream-2.0/speed/data/tracks/speedway/newton/new-lap-tower.png"
    "/home/ares/Developer/speed-dream-2.0/speed/data/tracks/speedway/newton/ZPIT3.png"
    "/home/ares/Developer/speed-dream-2.0/speed/data/tracks/speedway/newton/shadow2-no.png"
    "/home/ares/Developer/speed-dream-2.0/speed/data/tracks/speedway/newton/conc.png"
    "/home/ares/Developer/speed-dream-2.0/speed/data/tracks/speedway/newton/new-wall-pit.png"
    "/home/ares/Developer/speed-dream-2.0/speed/data/tracks/speedway/newton/new-arbor_n.png"
    "/home/ares/Developer/speed-dream-2.0/speed/data/tracks/speedway/newton/OBJA24_arbor_n.png"
    "/home/ares/Developer/speed-dream-2.0/speed/data/tracks/speedway/newton/new-building8.png"
    "/home/ares/Developer/speed-dream-2.0/speed/data/tracks/speedway/newton/new-asphalt-road.png"
    "/home/ares/Developer/speed-dream-2.0/speed/data/tracks/speedway/newton/TRIBB02.png"
    "/home/ares/Developer/speed-dream-2.0/speed/data/tracks/speedway/newton/CMNTA.png"
    "/home/ares/Developer/speed-dream-2.0/speed/data/tracks/speedway/newton/TRIBA11.png"
    "/home/ares/Developer/speed-dream-2.0/speed/data/tracks/speedway/newton/outline.png"
    "/home/ares/Developer/speed-dream-2.0/speed/data/tracks/speedway/newton/new-roof0.png"
    "/home/ares/Developer/speed-dream-2.0/speed/data/tracks/speedway/newton/newton.jpg"
    "/home/ares/Developer/speed-dream-2.0/speed/data/tracks/speedway/newton/background.jpg"
    "/home/ares/Developer/speed-dream-2.0/speed/data/tracks/speedway/newton/shadow2.jpg"
    )
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

