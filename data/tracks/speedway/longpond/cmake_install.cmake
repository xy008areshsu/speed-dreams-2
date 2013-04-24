# Install script for directory: /home/ares/Developer/speed-dream-2.0/speed/data/tracks/speedway/longpond

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
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/tracks/speedway/longpond" TYPE FILE FILES
    "/home/ares/Developer/speed-dream-2.0/speed/data/tracks/speedway/longpond/longpond.xml"
    "/home/ares/Developer/speed-dream-2.0/speed/data/tracks/speedway/longpond/README"
    "/home/ares/Developer/speed-dream-2.0/speed/data/tracks/speedway/longpond/longpond.ac"
    "/home/ares/Developer/speed-dream-2.0/speed/data/tracks/speedway/longpond/PITLITE.png"
    "/home/ares/Developer/speed-dream-2.0/speed/data/tracks/speedway/longpond/CAMPER02.png"
    "/home/ares/Developer/speed-dream-2.0/speed/data/tracks/speedway/longpond/MASE02.png"
    "/home/ares/Developer/speed-dream-2.0/speed/data/tracks/speedway/longpond/background.png"
    "/home/ares/Developer/speed-dream-2.0/speed/data/tracks/speedway/longpond/treeUGLIES01_n.png"
    "/home/ares/Developer/speed-dream-2.0/speed/data/tracks/speedway/longpond/TOPCROWD.png"
    "/home/ares/Developer/speed-dream-2.0/speed/data/tracks/speedway/longpond/STAIRSD.png"
    "/home/ares/Developer/speed-dream-2.0/speed/data/tracks/speedway/longpond/GBtree_n.png"
    "/home/ares/Developer/speed-dream-2.0/speed/data/tracks/speedway/longpond/SEMA02.png"
    "/home/ares/Developer/speed-dream-2.0/speed/data/tracks/speedway/longpond/STAIRS.png"
    "/home/ares/Developer/speed-dream-2.0/speed/data/tracks/speedway/longpond/wdb-bus.png"
    "/home/ares/Developer/speed-dream-2.0/speed/data/tracks/speedway/longpond/CAMPER41.png"
    "/home/ares/Developer/speed-dream-2.0/speed/data/tracks/speedway/longpond/truck_arbor_tita_n.png"
    "/home/ares/Developer/speed-dream-2.0/speed/data/tracks/speedway/longpond/lp-building4.png"
    "/home/ares/Developer/speed-dream-2.0/speed/data/tracks/speedway/longpond/lp-asphalt.png"
    "/home/ares/Developer/speed-dream-2.0/speed/data/tracks/speedway/longpond/lp-asphalt-border.png"
    "/home/ares/Developer/speed-dream-2.0/speed/data/tracks/speedway/longpond/GEtree_n.png"
    "/home/ares/Developer/speed-dream-2.0/speed/data/tracks/speedway/longpond/GSPAtree.png"
    "/home/ares/Developer/speed-dream-2.0/speed/data/tracks/speedway/longpond/truck_arbor_ctd_n.png"
    "/home/ares/Developer/speed-dream-2.0/speed/data/tracks/speedway/longpond/lp-grass-lines.png"
    "/home/ares/Developer/speed-dream-2.0/speed/data/tracks/speedway/longpond/CMNTBB.png"
    "/home/ares/Developer/speed-dream-2.0/speed/data/tracks/speedway/longpond/lp-asphalt-strokes.png"
    "/home/ares/Developer/speed-dream-2.0/speed/data/tracks/speedway/longpond/lp-pylon2.png"
    "/home/ares/Developer/speed-dream-2.0/speed/data/tracks/speedway/longpond/lp-tree1_n.png"
    "/home/ares/Developer/speed-dream-2.0/speed/data/tracks/speedway/longpond/CONCTP.png"
    "/home/ares/Developer/speed-dream-2.0/speed/data/tracks/speedway/longpond/lp-poutre3_n.png"
    "/home/ares/Developer/speed-dream-2.0/speed/data/tracks/speedway/longpond/truck_arbor_inferno_n.png"
    "/home/ares/Developer/speed-dream-2.0/speed/data/tracks/speedway/longpond/lp-asphalt-dirt.png"
    "/home/ares/Developer/speed-dream-2.0/speed/data/tracks/speedway/longpond/man-poutre3_n.png"
    "/home/ares/Developer/speed-dream-2.0/speed/data/tracks/speedway/longpond/truck_arbor_tanhoj_n.png"
    "/home/ares/Developer/speed-dream-2.0/speed/data/tracks/speedway/longpond/truck_arbor_bt_n.png"
    "/home/ares/Developer/speed-dream-2.0/speed/data/tracks/speedway/longpond/lp-pylon0.png"
    "/home/ares/Developer/speed-dream-2.0/speed/data/tracks/speedway/longpond/02.png"
    "/home/ares/Developer/speed-dream-2.0/speed/data/tracks/speedway/longpond/lp-arbor-seats.png"
    "/home/ares/Developer/speed-dream-2.0/speed/data/tracks/speedway/longpond/lp-asphalt-pit.png"
    "/home/ares/Developer/speed-dream-2.0/speed/data/tracks/speedway/longpond/01.png"
    "/home/ares/Developer/speed-dream-2.0/speed/data/tracks/speedway/longpond/tree_n.png"
    "/home/ares/Developer/speed-dream-2.0/speed/data/tracks/speedway/longpond/lp-tent.png"
    "/home/ares/Developer/speed-dream-2.0/speed/data/tracks/speedway/longpond/lp-pylon1.png"
    "/home/ares/Developer/speed-dream-2.0/speed/data/tracks/speedway/longpond/truck_arbor_speedy_n.png"
    "/home/ares/Developer/speed-dream-2.0/speed/data/tracks/speedway/longpond/BUS.png"
    "/home/ares/Developer/speed-dream-2.0/speed/data/tracks/speedway/longpond/treefc_n.png"
    "/home/ares/Developer/speed-dream-2.0/speed/data/tracks/speedway/longpond/env.png"
    "/home/ares/Developer/speed-dream-2.0/speed/data/tracks/speedway/longpond/LOGOSHL.png"
    "/home/ares/Developer/speed-dream-2.0/speed/data/tracks/speedway/longpond/windows.png"
    "/home/ares/Developer/speed-dream-2.0/speed/data/tracks/speedway/longpond/TRIBB01.png"
    "/home/ares/Developer/speed-dream-2.0/speed/data/tracks/speedway/longpond/TRIBA09_arbor_n.png"
    "/home/ares/Developer/speed-dream-2.0/speed/data/tracks/speedway/longpond/TRIBB03.png"
    "/home/ares/Developer/speed-dream-2.0/speed/data/tracks/speedway/longpond/new-wall.png"
    "/home/ares/Developer/speed-dream-2.0/speed/data/tracks/speedway/longpond/new-forest_n.png"
    "/home/ares/Developer/speed-dream-2.0/speed/data/tracks/speedway/longpond/lp-starter.png"
    "/home/ares/Developer/speed-dream-2.0/speed/data/tracks/speedway/longpond/ROADPGC.png"
    "/home/ares/Developer/speed-dream-2.0/speed/data/tracks/speedway/longpond/lp-grass.png"
    "/home/ares/Developer/speed-dream-2.0/speed/data/tracks/speedway/longpond/PDKKA13.png"
    "/home/ares/Developer/speed-dream-2.0/speed/data/tracks/speedway/longpond/truck_arbor_berniw_n.png"
    "/home/ares/Developer/speed-dream-2.0/speed/data/tracks/speedway/longpond/truck_arbor_cylos_n.png"
    "/home/ares/Developer/speed-dream-2.0/speed/data/tracks/speedway/longpond/CMNTB.png"
    "/home/ares/Developer/speed-dream-2.0/speed/data/tracks/speedway/longpond/lp-wall.png"
    "/home/ares/Developer/speed-dream-2.0/speed/data/tracks/speedway/longpond/lp-asphalt-dark.png"
    "/home/ares/Developer/speed-dream-2.0/speed/data/tracks/speedway/longpond/PITWB.png"
    "/home/ares/Developer/speed-dream-2.0/speed/data/tracks/speedway/longpond/conc.png"
    "/home/ares/Developer/speed-dream-2.0/speed/data/tracks/speedway/longpond/LOGOMAG.png"
    "/home/ares/Developer/speed-dream-2.0/speed/data/tracks/speedway/longpond/MASE01.png"
    "/home/ares/Developer/speed-dream-2.0/speed/data/tracks/speedway/longpond/lp-wall-fence_n.png"
    "/home/ares/Developer/speed-dream-2.0/speed/data/tracks/speedway/longpond/OBJA24_arbor_n.png"
    "/home/ares/Developer/speed-dream-2.0/speed/data/tracks/speedway/longpond/CAMPER4.png"
    "/home/ares/Developer/speed-dream-2.0/speed/data/tracks/speedway/longpond/LAMAOP.png"
    "/home/ares/Developer/speed-dream-2.0/speed/data/tracks/speedway/longpond/CAMPER01.png"
    "/home/ares/Developer/speed-dream-2.0/speed/data/tracks/speedway/longpond/lp-bldg1.png"
    "/home/ares/Developer/speed-dream-2.0/speed/data/tracks/speedway/longpond/TRIBB02.png"
    "/home/ares/Developer/speed-dream-2.0/speed/data/tracks/speedway/longpond/CMNTA.png"
    "/home/ares/Developer/speed-dream-2.0/speed/data/tracks/speedway/longpond/lp-lap-tower.png"
    "/home/ares/Developer/speed-dream-2.0/speed/data/tracks/speedway/longpond/ALAUBM.png"
    "/home/ares/Developer/speed-dream-2.0/speed/data/tracks/speedway/longpond/man-wall-cement.png"
    "/home/ares/Developer/speed-dream-2.0/speed/data/tracks/speedway/longpond/lp-roof0.png"
    "/home/ares/Developer/speed-dream-2.0/speed/data/tracks/speedway/longpond/lp-wall-start.png"
    "/home/ares/Developer/speed-dream-2.0/speed/data/tracks/speedway/longpond/TRIBA11.png"
    "/home/ares/Developer/speed-dream-2.0/speed/data/tracks/speedway/longpond/CAMPER3.png"
    "/home/ares/Developer/speed-dream-2.0/speed/data/tracks/speedway/longpond/outline.png"
    "/home/ares/Developer/speed-dream-2.0/speed/data/tracks/speedway/longpond/lp-bldg2.png"
    "/home/ares/Developer/speed-dream-2.0/speed/data/tracks/speedway/longpond/longpond.jpg"
    )
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

