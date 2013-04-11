# Install script for directory: /home/ares/Developer/speed-dream-2.0/speed/data/tracks/gprix/curburgring

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
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/tracks/gprix/curburgring" TYPE FILE FILES
    "/home/ares/Developer/speed-dream-2.0/speed/data/tracks/gprix/curburgring/curburgring.xml"
    "/home/ares/Developer/speed-dream-2.0/speed/data/tracks/gprix/curburgring/readme.txt"
    "/home/ares/Developer/speed-dream-2.0/speed/data/tracks/gprix/curburgring/curburgring.ac"
    "/home/ares/Developer/speed-dream-2.0/speed/data/tracks/gprix/curburgring/wdb-trees.rgb"
    "/home/ares/Developer/speed-dream-2.0/speed/data/tracks/gprix/curburgring/tr-grass6.rgb"
    "/home/ares/Developer/speed-dream-2.0/speed/data/tracks/gprix/curburgring/wdb-felsen.rgb"
    "/home/ares/Developer/speed-dream-2.0/speed/data/tracks/gprix/curburgring/PF-Bus.rgb"
    "/home/ares/Developer/speed-dream-2.0/speed/data/tracks/gprix/curburgring/concrete.rgb"
    "/home/ares/Developer/speed-dream-2.0/speed/data/tracks/gprix/curburgring/concrete2.rgb"
    "/home/ares/Developer/speed-dream-2.0/speed/data/tracks/gprix/curburgring/tr-gravel.rgb"
    "/home/ares/Developer/speed-dream-2.0/speed/data/tracks/gprix/curburgring/tr-curb-r.rgb"
    "/home/ares/Developer/speed-dream-2.0/speed/data/tracks/gprix/curburgring/tr-b-asphalt-r1p.rgb"
    "/home/ares/Developer/speed-dream-2.0/speed/data/tracks/gprix/curburgring/tr-concrete.rgb"
    "/home/ares/Developer/speed-dream-2.0/speed/data/tracks/gprix/curburgring/wdb-rock-01.rgb"
    "/home/ares/Developer/speed-dream-2.0/speed/data/tracks/gprix/curburgring/tr-b-asphalt-l1.rgb"
    "/home/ares/Developer/speed-dream-2.0/speed/data/tracks/gprix/curburgring/tr-barrier.rgb"
    "/home/ares/Developer/speed-dream-2.0/speed/data/tracks/gprix/curburgring/tr-b-asphalt-sand3-l1.rgb"
    "/home/ares/Developer/speed-dream-2.0/speed/data/tracks/gprix/curburgring/tr-b-asphalt-grass6.rgb"
    "/home/ares/Developer/speed-dream-2.0/speed/data/tracks/gprix/curburgring/pylon1.rgb"
    "/home/ares/Developer/speed-dream-2.0/speed/data/tracks/gprix/curburgring/tr-b-asphalt-gravel-l1.rgb"
    "/home/ares/Developer/speed-dream-2.0/speed/data/tracks/gprix/curburgring/tr-road1-asphalt.rgb"
    "/home/ares/Developer/speed-dream-2.0/speed/data/tracks/gprix/curburgring/tr-tirewall.rgb"
    "/home/ares/Developer/speed-dream-2.0/speed/data/tracks/gprix/curburgring/tr-curb-l.rgb"
    "/home/ares/Developer/speed-dream-2.0/speed/data/tracks/gprix/curburgring/tr-road1-pit.rgb"
    "/home/ares/Developer/speed-dream-2.0/speed/data/tracks/gprix/curburgring/tr-road1.rgb"
    "/home/ares/Developer/speed-dream-2.0/speed/data/tracks/gprix/curburgring/wdb-rock-02.rgb"
    "/home/ares/Developer/speed-dream-2.0/speed/data/tracks/gprix/curburgring/tr-asphalt_nmm.rgb"
    "/home/ares/Developer/speed-dream-2.0/speed/data/tracks/gprix/curburgring/tr-b-asphalt-grass6-l1.rgb"
    "/home/ares/Developer/speed-dream-2.0/speed/data/tracks/gprix/curburgring/arbor01.rgb"
    "/home/ares/Developer/speed-dream-2.0/speed/data/tracks/gprix/curburgring/tr-sand3.rgb"
    "/home/ares/Developer/speed-dream-2.0/speed/data/tracks/gprix/curburgring/tr-asphalt-road1.rgb"
    "/home/ares/Developer/speed-dream-2.0/speed/data/tracks/gprix/curburgring/wdb-sand.rgb"
    "/home/ares/Developer/speed-dream-2.0/speed/data/tracks/gprix/curburgring/block1.rgb"
    "/home/ares/Developer/speed-dream-2.0/speed/data/tracks/gprix/curburgring/treeg1.rgb"
    "/home/ares/Developer/speed-dream-2.0/speed/data/tracks/gprix/curburgring/tr-asphalt-left_nmm.rgb"
    "/home/ares/Developer/speed-dream-2.0/speed/data/tracks/gprix/curburgring/tr-b-asphalt-gravel.rgb"
    "/home/ares/Developer/speed-dream-2.0/speed/data/tracks/gprix/curburgring/tr-wall_nmm.rgb"
    "/home/ares/Developer/speed-dream-2.0/speed/data/tracks/gprix/curburgring/pylon3.rgb"
    "/home/ares/Developer/speed-dream-2.0/speed/data/tracks/gprix/curburgring/tr-b-asphalt-l1p.rgb"
    "/home/ares/Developer/speed-dream-2.0/speed/data/tracks/gprix/curburgring/pylon2.rgb"
    "/home/ares/Developer/speed-dream-2.0/speed/data/tracks/gprix/curburgring/tr-grass.rgb"
    "/home/ares/Developer/speed-dream-2.0/speed/data/tracks/gprix/curburgring/tr-asphalt-l_nmm.rgb"
    "/home/ares/Developer/speed-dream-2.0/speed/data/tracks/gprix/curburgring/CAMPER02.png"
    "/home/ares/Developer/speed-dream-2.0/speed/data/tracks/gprix/curburgring/MASE02.png"
    "/home/ares/Developer/speed-dream-2.0/speed/data/tracks/gprix/curburgring/background.png"
    "/home/ares/Developer/speed-dream-2.0/speed/data/tracks/gprix/curburgring/TRIBA08.png"
    "/home/ares/Developer/speed-dream-2.0/speed/data/tracks/gprix/curburgring/treeUGLIES01_n.png"
    "/home/ares/Developer/speed-dream-2.0/speed/data/tracks/gprix/curburgring/TOPCROWD.png"
    "/home/ares/Developer/speed-dream-2.0/speed/data/tracks/gprix/curburgring/STAIRSD.png"
    "/home/ares/Developer/speed-dream-2.0/speed/data/tracks/gprix/curburgring/GBtree_n.png"
    "/home/ares/Developer/speed-dream-2.0/speed/data/tracks/gprix/curburgring/SEMA02.png"
    "/home/ares/Developer/speed-dream-2.0/speed/data/tracks/gprix/curburgring/STAIRS.png"
    "/home/ares/Developer/speed-dream-2.0/speed/data/tracks/gprix/curburgring/ZPIT.png"
    "/home/ares/Developer/speed-dream-2.0/speed/data/tracks/gprix/curburgring/CAMPER41.png"
    "/home/ares/Developer/speed-dream-2.0/speed/data/tracks/gprix/curburgring/FNCEB.png"
    "/home/ares/Developer/speed-dream-2.0/speed/data/tracks/gprix/curburgring/RDGRTRAN.png"
    "/home/ares/Developer/speed-dream-2.0/speed/data/tracks/gprix/curburgring/GEtree_n.png"
    "/home/ares/Developer/speed-dream-2.0/speed/data/tracks/gprix/curburgring/GSPAtree.png"
    "/home/ares/Developer/speed-dream-2.0/speed/data/tracks/gprix/curburgring/CMNTBB.png"
    "/home/ares/Developer/speed-dream-2.0/speed/data/tracks/gprix/curburgring/CHtree_n.png"
    "/home/ares/Developer/speed-dream-2.0/speed/data/tracks/gprix/curburgring/TreeRNS5.png"
    "/home/ares/Developer/speed-dream-2.0/speed/data/tracks/gprix/curburgring/treeUGLIES02_n.png"
    "/home/ares/Developer/speed-dream-2.0/speed/data/tracks/gprix/curburgring/CONCTP.png"
    "/home/ares/Developer/speed-dream-2.0/speed/data/tracks/gprix/curburgring/TreeRNS3.png"
    "/home/ares/Developer/speed-dream-2.0/speed/data/tracks/gprix/curburgring/ZBRID.png"
    "/home/ares/Developer/speed-dream-2.0/speed/data/tracks/gprix/curburgring/ROADPARK.png"
    "/home/ares/Developer/speed-dream-2.0/speed/data/tracks/gprix/curburgring/TreeRNS4.png"
    "/home/ares/Developer/speed-dream-2.0/speed/data/tracks/gprix/curburgring/TruckWDB.png"
    "/home/ares/Developer/speed-dream-2.0/speed/data/tracks/gprix/curburgring/WHEELS6.png"
    "/home/ares/Developer/speed-dream-2.0/speed/data/tracks/gprix/curburgring/02.png"
    "/home/ares/Developer/speed-dream-2.0/speed/data/tracks/gprix/curburgring/01.png"
    "/home/ares/Developer/speed-dream-2.0/speed/data/tracks/gprix/curburgring/BUS.png"
    "/home/ares/Developer/speed-dream-2.0/speed/data/tracks/gprix/curburgring/treefc_n.png"
    "/home/ares/Developer/speed-dream-2.0/speed/data/tracks/gprix/curburgring/RA4BRIG5.png"
    "/home/ares/Developer/speed-dream-2.0/speed/data/tracks/gprix/curburgring/TRIBB01.png"
    "/home/ares/Developer/speed-dream-2.0/speed/data/tracks/gprix/curburgring/TRIBA09_arbor_n.png"
    "/home/ares/Developer/speed-dream-2.0/speed/data/tracks/gprix/curburgring/TRIBB03.png"
    "/home/ares/Developer/speed-dream-2.0/speed/data/tracks/gprix/curburgring/PDKKA13.png"
    "/home/ares/Developer/speed-dream-2.0/speed/data/tracks/gprix/curburgring/GRASS.png"
    "/home/ares/Developer/speed-dream-2.0/speed/data/tracks/gprix/curburgring/CMNTB.png"
    "/home/ares/Developer/speed-dream-2.0/speed/data/tracks/gprix/curburgring/PITWB.png"
    "/home/ares/Developer/speed-dream-2.0/speed/data/tracks/gprix/curburgring/ZPIT3.png"
    "/home/ares/Developer/speed-dream-2.0/speed/data/tracks/gprix/curburgring/conc.png"
    "/home/ares/Developer/speed-dream-2.0/speed/data/tracks/gprix/curburgring/MASE01.png"
    "/home/ares/Developer/speed-dream-2.0/speed/data/tracks/gprix/curburgring/OBJA24_arbor_n.png"
    "/home/ares/Developer/speed-dream-2.0/speed/data/tracks/gprix/curburgring/curburgring.png"
    "/home/ares/Developer/speed-dream-2.0/speed/data/tracks/gprix/curburgring/CAMPER4.png"
    "/home/ares/Developer/speed-dream-2.0/speed/data/tracks/gprix/curburgring/LAMAOP.png"
    "/home/ares/Developer/speed-dream-2.0/speed/data/tracks/gprix/curburgring/CAMPER01.png"
    "/home/ares/Developer/speed-dream-2.0/speed/data/tracks/gprix/curburgring/TRIBB02.png"
    "/home/ares/Developer/speed-dream-2.0/speed/data/tracks/gprix/curburgring/CMNTA.png"
    "/home/ares/Developer/speed-dream-2.0/speed/data/tracks/gprix/curburgring/FENCWIRE_arbor_n.png"
    "/home/ares/Developer/speed-dream-2.0/speed/data/tracks/gprix/curburgring/TENTH.png"
    "/home/ares/Developer/speed-dream-2.0/speed/data/tracks/gprix/curburgring/armco.png"
    "/home/ares/Developer/speed-dream-2.0/speed/data/tracks/gprix/curburgring/ALAUBM.png"
    "/home/ares/Developer/speed-dream-2.0/speed/data/tracks/gprix/curburgring/TRIBA11.png"
    "/home/ares/Developer/speed-dream-2.0/speed/data/tracks/gprix/curburgring/TENTG.png"
    "/home/ares/Developer/speed-dream-2.0/speed/data/tracks/gprix/curburgring/CAMPER3.png"
    "/home/ares/Developer/speed-dream-2.0/speed/data/tracks/gprix/curburgring/IYtree_n.png"
    )
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

