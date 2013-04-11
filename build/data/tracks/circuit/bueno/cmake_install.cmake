# Install script for directory: /home/ares/Developer/speed-dream-2.0/speed/data/tracks/circuit/bueno

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
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/tracks/circuit/bueno" TYPE FILE FILES
    "/home/ares/Developer/speed-dream-2.0/speed/data/tracks/circuit/bueno/bueno.xml"
    "/home/ares/Developer/speed-dream-2.0/speed/data/tracks/circuit/bueno/readme.txt"
    "/home/ares/Developer/speed-dream-2.0/speed/data/tracks/circuit/bueno/land.ac"
    "/home/ares/Developer/speed-dream-2.0/speed/data/tracks/circuit/bueno/bueno.ac"
    "/home/ares/Developer/speed-dream-2.0/speed/data/tracks/circuit/bueno/bueno-curb-r.rgb"
    "/home/ares/Developer/speed-dream-2.0/speed/data/tracks/circuit/bueno/tr-grass6.rgb"
    "/home/ares/Developer/speed-dream-2.0/speed/data/tracks/circuit/bueno/bueno-concrete.rgb"
    "/home/ares/Developer/speed-dream-2.0/speed/data/tracks/circuit/bueno/bueno-curb-l.rgb"
    "/home/ares/Developer/speed-dream-2.0/speed/data/tracks/circuit/bueno/ocean-concrete.rgb"
    "/home/ares/Developer/speed-dream-2.0/speed/data/tracks/circuit/bueno/tr-curb-r.rgb"
    "/home/ares/Developer/speed-dream-2.0/speed/data/tracks/circuit/bueno/tr-b-road1-l2p.rgb"
    "/home/ares/Developer/speed-dream-2.0/speed/data/tracks/circuit/bueno/bueno-pylon2.rgb"
    "/home/ares/Developer/speed-dream-2.0/speed/data/tracks/circuit/bueno/tr-b-road1-grass6-l2.rgb"
    "/home/ares/Developer/speed-dream-2.0/speed/data/tracks/circuit/bueno/bueno-pylon3.rgb"
    "/home/ares/Developer/speed-dream-2.0/speed/data/tracks/circuit/bueno/tr-barrier.rgb"
    "/home/ares/Developer/speed-dream-2.0/speed/data/tracks/circuit/bueno/wdbzyp1.rgb"
    "/home/ares/Developer/speed-dream-2.0/speed/data/tracks/circuit/bueno/pylon1.rgb"
    "/home/ares/Developer/speed-dream-2.0/speed/data/tracks/circuit/bueno/bueno-wall.rgb"
    "/home/ares/Developer/speed-dream-2.0/speed/data/tracks/circuit/bueno/tr-curb-l.rgb"
    "/home/ares/Developer/speed-dream-2.0/speed/data/tracks/circuit/bueno/tr-road1-pit.rgb"
    "/home/ares/Developer/speed-dream-2.0/speed/data/tracks/circuit/bueno/tr-road1.rgb"
    "/home/ares/Developer/speed-dream-2.0/speed/data/tracks/circuit/bueno/terra-concrete.rgb"
    "/home/ares/Developer/speed-dream-2.0/speed/data/tracks/circuit/bueno/bueno-concrete2.rgb"
    "/home/ares/Developer/speed-dream-2.0/speed/data/tracks/circuit/bueno/tr-wall_nmm.rgb"
    "/home/ares/Developer/speed-dream-2.0/speed/data/tracks/circuit/bueno/tr-b-road1-l2.rgb"
    "/home/ares/Developer/speed-dream-2.0/speed/data/tracks/circuit/bueno/bueno-tirewall.rgb"
    "/home/ares/Developer/speed-dream-2.0/speed/data/tracks/circuit/bueno/olive-concrete.rgb"
    "/home/ares/Developer/speed-dream-2.0/speed/data/tracks/circuit/bueno/background.png"
    "/home/ares/Developer/speed-dream-2.0/speed/data/tracks/circuit/bueno/treeUGLIES01_n.png"
    "/home/ares/Developer/speed-dream-2.0/speed/data/tracks/circuit/bueno/TOPCROWD.png"
    "/home/ares/Developer/speed-dream-2.0/speed/data/tracks/circuit/bueno/STAIRSD.png"
    "/home/ares/Developer/speed-dream-2.0/speed/data/tracks/circuit/bueno/GBtree_n.png"
    "/home/ares/Developer/speed-dream-2.0/speed/data/tracks/circuit/bueno/CRNB.png"
    "/home/ares/Developer/speed-dream-2.0/speed/data/tracks/circuit/bueno/GRASS02.png"
    "/home/ares/Developer/speed-dream-2.0/speed/data/tracks/circuit/bueno/STAIRS.png"
    "/home/ares/Developer/speed-dream-2.0/speed/data/tracks/circuit/bueno/FNCEB.png"
    "/home/ares/Developer/speed-dream-2.0/speed/data/tracks/circuit/bueno/GEtree_n.png"
    "/home/ares/Developer/speed-dream-2.0/speed/data/tracks/circuit/bueno/CRNA.png"
    "/home/ares/Developer/speed-dream-2.0/speed/data/tracks/circuit/bueno/CMNTBB.png"
    "/home/ares/Developer/speed-dream-2.0/speed/data/tracks/circuit/bueno/CHtree_n.png"
    "/home/ares/Developer/speed-dream-2.0/speed/data/tracks/circuit/bueno/Park_02.png"
    "/home/ares/Developer/speed-dream-2.0/speed/data/tracks/circuit/bueno/treeUGLIES02_n.png"
    "/home/ares/Developer/speed-dream-2.0/speed/data/tracks/circuit/bueno/WHEEL.png"
    "/home/ares/Developer/speed-dream-2.0/speed/data/tracks/circuit/bueno/CONCTP.png"
    "/home/ares/Developer/speed-dream-2.0/speed/data/tracks/circuit/bueno/TreeRNS3.png"
    "/home/ares/Developer/speed-dream-2.0/speed/data/tracks/circuit/bueno/CRND.png"
    "/home/ares/Developer/speed-dream-2.0/speed/data/tracks/circuit/bueno/treefc_n.png"
    "/home/ares/Developer/speed-dream-2.0/speed/data/tracks/circuit/bueno/CRNC.png"
    "/home/ares/Developer/speed-dream-2.0/speed/data/tracks/circuit/bueno/CMNTB.png"
    "/home/ares/Developer/speed-dream-2.0/speed/data/tracks/circuit/bueno/PF-Bus.png"
    "/home/ares/Developer/speed-dream-2.0/speed/data/tracks/circuit/bueno/PITWB.png"
    "/home/ares/Developer/speed-dream-2.0/speed/data/tracks/circuit/bueno/Park_01.png"
    "/home/ares/Developer/speed-dream-2.0/speed/data/tracks/circuit/bueno/conc.png"
    "/home/ares/Developer/speed-dream-2.0/speed/data/tracks/circuit/bueno/CRNF.png"
    "/home/ares/Developer/speed-dream-2.0/speed/data/tracks/circuit/bueno/CMNTA.png"
    "/home/ares/Developer/speed-dream-2.0/speed/data/tracks/circuit/bueno/FENCWIRE_arbor_n.png"
    "/home/ares/Developer/speed-dream-2.0/speed/data/tracks/circuit/bueno/TENTH.png"
    "/home/ares/Developer/speed-dream-2.0/speed/data/tracks/circuit/bueno/armco.png"
    "/home/ares/Developer/speed-dream-2.0/speed/data/tracks/circuit/bueno/TENTG.png"
    "/home/ares/Developer/speed-dream-2.0/speed/data/tracks/circuit/bueno/outline.png"
    "/home/ares/Developer/speed-dream-2.0/speed/data/tracks/circuit/bueno/IYtree_n.png"
    "/home/ares/Developer/speed-dream-2.0/speed/data/tracks/circuit/bueno/bueno.jpg"
    )
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

