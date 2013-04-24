# Install script for directory: /home/ares/Developer/speed-dream-2.0/speed/data/tracks/speedway/arizona

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
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/tracks/speedway/arizona" TYPE FILE FILES
    "/home/ares/Developer/speed-dream-2.0/speed/data/tracks/speedway/arizona/arizona.xml"
    "/home/ares/Developer/speed-dream-2.0/speed/data/tracks/speedway/arizona/README"
    "/home/ares/Developer/speed-dream-2.0/speed/data/tracks/speedway/arizona/arizona.ac"
    "/home/ares/Developer/speed-dream-2.0/speed/data/tracks/speedway/arizona/earth_and_grass.rgb"
    "/home/ares/Developer/speed-dream-2.0/speed/data/tracks/speedway/arizona/ar-house-arbor2_n.png"
    "/home/ares/Developer/speed-dream-2.0/speed/data/tracks/speedway/arizona/background.png"
    "/home/ares/Developer/speed-dream-2.0/speed/data/tracks/speedway/arizona/TRIBA08.png"
    "/home/ares/Developer/speed-dream-2.0/speed/data/tracks/speedway/arizona/treeUGLIES01_n.png"
    "/home/ares/Developer/speed-dream-2.0/speed/data/tracks/speedway/arizona/TOPCROWD.png"
    "/home/ares/Developer/speed-dream-2.0/speed/data/tracks/speedway/arizona/az-wall-fence_n.png"
    "/home/ares/Developer/speed-dream-2.0/speed/data/tracks/speedway/arizona/STAIRSD.png"
    "/home/ares/Developer/speed-dream-2.0/speed/data/tracks/speedway/arizona/TRIBA07_arbor_n.png"
    "/home/ares/Developer/speed-dream-2.0/speed/data/tracks/speedway/arizona/tree3_n.png"
    "/home/ares/Developer/speed-dream-2.0/speed/data/tracks/speedway/arizona/GBtree_n.png"
    "/home/ares/Developer/speed-dream-2.0/speed/data/tracks/speedway/arizona/SEMA02.png"
    "/home/ares/Developer/speed-dream-2.0/speed/data/tracks/speedway/arizona/STAIRS.png"
    "/home/ares/Developer/speed-dream-2.0/speed/data/tracks/speedway/arizona/GEtree_n.png"
    "/home/ares/Developer/speed-dream-2.0/speed/data/tracks/speedway/arizona/GSPAtree.png"
    "/home/ares/Developer/speed-dream-2.0/speed/data/tracks/speedway/arizona/truck_arbor_ctd_n.png"
    "/home/ares/Developer/speed-dream-2.0/speed/data/tracks/speedway/arizona/CMNTBB.png"
    "/home/ares/Developer/speed-dream-2.0/speed/data/tracks/speedway/arizona/CONCTP.png"
    "/home/ares/Developer/speed-dream-2.0/speed/data/tracks/speedway/arizona/truck_arbor_inferno_n.png"
    "/home/ares/Developer/speed-dream-2.0/speed/data/tracks/speedway/arizona/truck_arbor_bt_n.png"
    "/home/ares/Developer/speed-dream-2.0/speed/data/tracks/speedway/arizona/new-tent.png"
    "/home/ares/Developer/speed-dream-2.0/speed/data/tracks/speedway/arizona/treeSC_n.png"
    "/home/ares/Developer/speed-dream-2.0/speed/data/tracks/speedway/arizona/ar-building1.png"
    "/home/ares/Developer/speed-dream-2.0/speed/data/tracks/speedway/arizona/tree_n.png"
    "/home/ares/Developer/speed-dream-2.0/speed/data/tracks/speedway/arizona/new-poutre3_n.png"
    "/home/ares/Developer/speed-dream-2.0/speed/data/tracks/speedway/arizona/ar-house-arbor_n.png"
    "/home/ares/Developer/speed-dream-2.0/speed/data/tracks/speedway/arizona/truck_arbor_speedy_n.png"
    "/home/ares/Developer/speed-dream-2.0/speed/data/tracks/speedway/arizona/env.png"
    "/home/ares/Developer/speed-dream-2.0/speed/data/tracks/speedway/arizona/az-asphalt-pit.png"
    "/home/ares/Developer/speed-dream-2.0/speed/data/tracks/speedway/arizona/TRIBB01.png"
    "/home/ares/Developer/speed-dream-2.0/speed/data/tracks/speedway/arizona/TRIBA09_arbor_n.png"
    "/home/ares/Developer/speed-dream-2.0/speed/data/tracks/speedway/arizona/TRIBB03.png"
    "/home/ares/Developer/speed-dream-2.0/speed/data/tracks/speedway/arizona/az-wall.png"
    "/home/ares/Developer/speed-dream-2.0/speed/data/tracks/speedway/arizona/az-asphalt-strokes.png"
    "/home/ares/Developer/speed-dream-2.0/speed/data/tracks/speedway/arizona/PDKKA13.png"
    "/home/ares/Developer/speed-dream-2.0/speed/data/tracks/speedway/arizona/truck_arbor_cylos_n.png"
    "/home/ares/Developer/speed-dream-2.0/speed/data/tracks/speedway/arizona/CMNTB.png"
    "/home/ares/Developer/speed-dream-2.0/speed/data/tracks/speedway/arizona/PITWB.png"
    "/home/ares/Developer/speed-dream-2.0/speed/data/tracks/speedway/arizona/treeSC2_n.png"
    "/home/ares/Developer/speed-dream-2.0/speed/data/tracks/speedway/arizona/az-asphalt.png"
    "/home/ares/Developer/speed-dream-2.0/speed/data/tracks/speedway/arizona/az-asphalt-border.png"
    "/home/ares/Developer/speed-dream-2.0/speed/data/tracks/speedway/arizona/conc.png"
    "/home/ares/Developer/speed-dream-2.0/speed/data/tracks/speedway/arizona/TRIBB02.png"
    "/home/ares/Developer/speed-dream-2.0/speed/data/tracks/speedway/arizona/CMNTA.png"
    "/home/ares/Developer/speed-dream-2.0/speed/data/tracks/speedway/arizona/ar-building2.png"
    "/home/ares/Developer/speed-dream-2.0/speed/data/tracks/speedway/arizona/az-grass.png"
    "/home/ares/Developer/speed-dream-2.0/speed/data/tracks/speedway/arizona/TRIBA11.png"
    "/home/ares/Developer/speed-dream-2.0/speed/data/tracks/speedway/arizona/outline.png"
    "/home/ares/Developer/speed-dream-2.0/speed/data/tracks/speedway/arizona/background-sky.png"
    "/home/ares/Developer/speed-dream-2.0/speed/data/tracks/speedway/arizona/arizona.jpg"
    )
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

