# Install script for directory: /home/ares/Developer/speed-dream-2.0/speed/data/tracks/circuit/forza

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
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/tracks/circuit/forza" TYPE FILE FILES
    "/home/ares/Developer/speed-dream-2.0/speed/data/tracks/circuit/forza/forza.xml"
    "/home/ares/Developer/speed-dream-2.0/speed/data/tracks/circuit/forza/readme.txt"
    "/home/ares/Developer/speed-dream-2.0/speed/data/tracks/circuit/forza/land.ac"
    "/home/ares/Developer/speed-dream-2.0/speed/data/tracks/circuit/forza/forza.acc"
    "/home/ares/Developer/speed-dream-2.0/speed/data/tracks/circuit/forza/PITLITE.png"
    "/home/ares/Developer/speed-dream-2.0/speed/data/tracks/circuit/forza/BLDAB.png"
    "/home/ares/Developer/speed-dream-2.0/speed/data/tracks/circuit/forza/TIME2B.png"
    "/home/ares/Developer/speed-dream-2.0/speed/data/tracks/circuit/forza/background.png"
    "/home/ares/Developer/speed-dream-2.0/speed/data/tracks/circuit/forza/Road-crack3.png"
    "/home/ares/Developer/speed-dream-2.0/speed/data/tracks/circuit/forza/TRKJUMB.png"
    "/home/ares/Developer/speed-dream-2.0/speed/data/tracks/circuit/forza/LOGOITAL.png"
    "/home/ares/Developer/speed-dream-2.0/speed/data/tracks/circuit/forza/TRETRNK.png"
    "/home/ares/Developer/speed-dream-2.0/speed/data/tracks/circuit/forza/PITPPL.png"
    "/home/ares/Developer/speed-dream-2.0/speed/data/tracks/circuit/forza/TOPCROWD.png"
    "/home/ares/Developer/speed-dream-2.0/speed/data/tracks/circuit/forza/land1.png"
    "/home/ares/Developer/speed-dream-2.0/speed/data/tracks/circuit/forza/LIGHT.png"
    "/home/ares/Developer/speed-dream-2.0/speed/data/tracks/circuit/forza/treetd_n.png"
    "/home/ares/Developer/speed-dream-2.0/speed/data/tracks/circuit/forza/STAIRSD.png"
    "/home/ares/Developer/speed-dream-2.0/speed/data/tracks/circuit/forza/tree3_n.png"
    "/home/ares/Developer/speed-dream-2.0/speed/data/tracks/circuit/forza/GBtree_n.png"
    "/home/ares/Developer/speed-dream-2.0/speed/data/tracks/circuit/forza/CRNB.png"
    "/home/ares/Developer/speed-dream-2.0/speed/data/tracks/circuit/forza/TIRE4A.png"
    "/home/ares/Developer/speed-dream-2.0/speed/data/tracks/circuit/forza/STAIRS.png"
    "/home/ares/Developer/speed-dream-2.0/speed/data/tracks/circuit/forza/GFtree_n.png"
    "/home/ares/Developer/speed-dream-2.0/speed/data/tracks/circuit/forza/PEtree_n.png"
    "/home/ares/Developer/speed-dream-2.0/speed/data/tracks/circuit/forza/TURNA.png"
    "/home/ares/Developer/speed-dream-2.0/speed/data/tracks/circuit/forza/TENTD.png"
    "/home/ares/Developer/speed-dream-2.0/speed/data/tracks/circuit/forza/GSSOLID.png"
    "/home/ares/Developer/speed-dream-2.0/speed/data/tracks/circuit/forza/300.png"
    "/home/ares/Developer/speed-dream-2.0/speed/data/tracks/circuit/forza/TAGTNTOP.png"
    "/home/ares/Developer/speed-dream-2.0/speed/data/tracks/circuit/forza/FNCEB.png"
    "/home/ares/Developer/speed-dream-2.0/speed/data/tracks/circuit/forza/ITtree_n.png"
    "/home/ares/Developer/speed-dream-2.0/speed/data/tracks/circuit/forza/Road-crack1.png"
    "/home/ares/Developer/speed-dream-2.0/speed/data/tracks/circuit/forza/LOGOFSTN.png"
    "/home/ares/Developer/speed-dream-2.0/speed/data/tracks/circuit/forza/GDtree_n.png"
    "/home/ares/Developer/speed-dream-2.0/speed/data/tracks/circuit/forza/GEtree_n.png"
    "/home/ares/Developer/speed-dream-2.0/speed/data/tracks/circuit/forza/TIRE4.png"
    "/home/ares/Developer/speed-dream-2.0/speed/data/tracks/circuit/forza/LOGOJOE.png"
    "/home/ares/Developer/speed-dream-2.0/speed/data/tracks/circuit/forza/GSPAtree.png"
    "/home/ares/Developer/speed-dream-2.0/speed/data/tracks/circuit/forza/TNTSHD.png"
    "/home/ares/Developer/speed-dream-2.0/speed/data/tracks/circuit/forza/TIME1A.png"
    "/home/ares/Developer/speed-dream-2.0/speed/data/tracks/circuit/forza/CRNA.png"
    "/home/ares/Developer/speed-dream-2.0/speed/data/tracks/circuit/forza/LOGOFOST.png"
    "/home/ares/Developer/speed-dream-2.0/speed/data/tracks/circuit/forza/LOGOCAMP.png"
    "/home/ares/Developer/speed-dream-2.0/speed/data/tracks/circuit/forza/DBLOGO.png"
    "/home/ares/Developer/speed-dream-2.0/speed/data/tracks/circuit/forza/CMNTBB.png"
    "/home/ares/Developer/speed-dream-2.0/speed/data/tracks/circuit/forza/CHtree_n.png"
    "/home/ares/Developer/speed-dream-2.0/speed/data/tracks/circuit/forza/TEtree_n.png"
    "/home/ares/Developer/speed-dream-2.0/speed/data/tracks/circuit/forza/STNDUNDR.png"
    "/home/ares/Developer/speed-dream-2.0/speed/data/tracks/circuit/forza/BRtree_n.png"
    "/home/ares/Developer/speed-dream-2.0/speed/data/tracks/circuit/forza/WHEEL.png"
    "/home/ares/Developer/speed-dream-2.0/speed/data/tracks/circuit/forza/Road.png"
    "/home/ares/Developer/speed-dream-2.0/speed/data/tracks/circuit/forza/CONCTP.png"
    "/home/ares/Developer/speed-dream-2.0/speed/data/tracks/circuit/forza/LOGOBRDS.png"
    "/home/ares/Developer/speed-dream-2.0/speed/data/tracks/circuit/forza/TRKJUMC.png"
    "/home/ares/Developer/speed-dream-2.0/speed/data/tracks/circuit/forza/BAtree_n.png"
    "/home/ares/Developer/speed-dream-2.0/speed/data/tracks/circuit/forza/Road-pit.png"
    "/home/ares/Developer/speed-dream-2.0/speed/data/tracks/circuit/forza/TIRE2.png"
    "/home/ares/Developer/speed-dream-2.0/speed/data/tracks/circuit/forza/GSBLUE.png"
    "/home/ares/Developer/speed-dream-2.0/speed/data/tracks/circuit/forza/BEtree_n.png"
    "/home/ares/Developer/speed-dream-2.0/speed/data/tracks/circuit/forza/PITBLD.png"
    "/home/ares/Developer/speed-dream-2.0/speed/data/tracks/circuit/forza/PDtree_n.png"
    "/home/ares/Developer/speed-dream-2.0/speed/data/tracks/circuit/forza/CAtree_n.png"
    "/home/ares/Developer/speed-dream-2.0/speed/data/tracks/circuit/forza/frz-road-grass-sand.png"
    "/home/ares/Developer/speed-dream-2.0/speed/data/tracks/circuit/forza/METALA.png"
    "/home/ares/Developer/speed-dream-2.0/speed/data/tracks/circuit/forza/POLLOL.png"
    "/home/ares/Developer/speed-dream-2.0/speed/data/tracks/circuit/forza/CRND.png"
    "/home/ares/Developer/speed-dream-2.0/speed/data/tracks/circuit/forza/treel1_n.png"
    "/home/ares/Developer/speed-dream-2.0/speed/data/tracks/circuit/forza/Road-dot.png"
    "/home/ares/Developer/speed-dream-2.0/speed/data/tracks/circuit/forza/LOGOAGIP.png"
    "/home/ares/Developer/speed-dream-2.0/speed/data/tracks/circuit/forza/shadow2.png"
    "/home/ares/Developer/speed-dream-2.0/speed/data/tracks/circuit/forza/TIME2C.png"
    "/home/ares/Developer/speed-dream-2.0/speed/data/tracks/circuit/forza/BLBDBK.png"
    "/home/ares/Developer/speed-dream-2.0/speed/data/tracks/circuit/forza/REF.png"
    "/home/ares/Developer/speed-dream-2.0/speed/data/tracks/circuit/forza/frz-sand-grass.png"
    "/home/ares/Developer/speed-dream-2.0/speed/data/tracks/circuit/forza/PFtree_n.png"
    "/home/ares/Developer/speed-dream-2.0/speed/data/tracks/circuit/forza/treel4_n.png"
    "/home/ares/Developer/speed-dream-2.0/speed/data/tracks/circuit/forza/GNtree_n.png"
    "/home/ares/Developer/speed-dream-2.0/speed/data/tracks/circuit/forza/LOGOMBLO.png"
    "/home/ares/Developer/speed-dream-2.0/speed/data/tracks/circuit/forza/WIREWOOD.png"
    "/home/ares/Developer/speed-dream-2.0/speed/data/tracks/circuit/forza/BLUPOLE.png"
    "/home/ares/Developer/speed-dream-2.0/speed/data/tracks/circuit/forza/Road-start.png"
    "/home/ares/Developer/speed-dream-2.0/speed/data/tracks/circuit/forza/GSRNDF.png"
    "/home/ares/Developer/speed-dream-2.0/speed/data/tracks/circuit/forza/LOGOBRDG.png"
    "/home/ares/Developer/speed-dream-2.0/speed/data/tracks/circuit/forza/treefc_n.png"
    "/home/ares/Developer/speed-dream-2.0/speed/data/tracks/circuit/forza/TRKJUMA.png"
    "/home/ares/Developer/speed-dream-2.0/speed/data/tracks/circuit/forza/treel2_n.png"
    "/home/ares/Developer/speed-dream-2.0/speed/data/tracks/circuit/forza/LOGOSHL.png"
    "/home/ares/Developer/speed-dream-2.0/speed/data/tracks/circuit/forza/LOGOSELE.png"
    "/home/ares/Developer/speed-dream-2.0/speed/data/tracks/circuit/forza/POLEA.png"
    "/home/ares/Developer/speed-dream-2.0/speed/data/tracks/circuit/forza/CRNC.png"
    "/home/ares/Developer/speed-dream-2.0/speed/data/tracks/circuit/forza/WAtree_n.png"
    "/home/ares/Developer/speed-dream-2.0/speed/data/tracks/circuit/forza/TIME2A.png"
    "/home/ares/Developer/speed-dream-2.0/speed/data/tracks/circuit/forza/frz-road-sand.png"
    "/home/ares/Developer/speed-dream-2.0/speed/data/tracks/circuit/forza/GGtree.png"
    "/home/ares/Developer/speed-dream-2.0/speed/data/tracks/circuit/forza/100.png"
    "/home/ares/Developer/speed-dream-2.0/speed/data/tracks/circuit/forza/tree2_n.png"
    "/home/ares/Developer/speed-dream-2.0/speed/data/tracks/circuit/forza/FLTBLK.png"
    "/home/ares/Developer/speed-dream-2.0/speed/data/tracks/circuit/forza/frz-road-grass.png"
    "/home/ares/Developer/speed-dream-2.0/speed/data/tracks/circuit/forza/ROADPGC.png"
    "/home/ares/Developer/speed-dream-2.0/speed/data/tracks/circuit/forza/FERRED.png"
    "/home/ares/Developer/speed-dream-2.0/speed/data/tracks/circuit/forza/FRRI.png"
    "/home/ares/Developer/speed-dream-2.0/speed/data/tracks/circuit/forza/Road-crack2.png"
    "/home/ares/Developer/speed-dream-2.0/speed/data/tracks/circuit/forza/GSUNDER.png"
    "/home/ares/Developer/speed-dream-2.0/speed/data/tracks/circuit/forza/frz-sand.png"
    "/home/ares/Developer/speed-dream-2.0/speed/data/tracks/circuit/forza/STNDUND.png"
    "/home/ares/Developer/speed-dream-2.0/speed/data/tracks/circuit/forza/frz-grass.png"
    "/home/ares/Developer/speed-dream-2.0/speed/data/tracks/circuit/forza/BTOWB.png"
    "/home/ares/Developer/speed-dream-2.0/speed/data/tracks/circuit/forza/CMNTB.png"
    "/home/ares/Developer/speed-dream-2.0/speed/data/tracks/circuit/forza/tree1_n.png"
    "/home/ares/Developer/speed-dream-2.0/speed/data/tracks/circuit/forza/PITWB.png"
    "/home/ares/Developer/speed-dream-2.0/speed/data/tracks/circuit/forza/MAGNMAR.png"
    "/home/ares/Developer/speed-dream-2.0/speed/data/tracks/circuit/forza/FRtree_n.png"
    "/home/ares/Developer/speed-dream-2.0/speed/data/tracks/circuit/forza/TRKJUM.png"
    "/home/ares/Developer/speed-dream-2.0/speed/data/tracks/circuit/forza/conc.png"
    "/home/ares/Developer/speed-dream-2.0/speed/data/tracks/circuit/forza/GSBSTAIR.png"
    "/home/ares/Developer/speed-dream-2.0/speed/data/tracks/circuit/forza/LOGOMAG.png"
    "/home/ares/Developer/speed-dream-2.0/speed/data/tracks/circuit/forza/TIME1B.png"
    "/home/ares/Developer/speed-dream-2.0/speed/data/tracks/circuit/forza/G2tree_n.png"
    "/home/ares/Developer/speed-dream-2.0/speed/data/tracks/circuit/forza/LOGOCAST.png"
    "/home/ares/Developer/speed-dream-2.0/speed/data/tracks/circuit/forza/LOGODTWO.png"
    "/home/ares/Developer/speed-dream-2.0/speed/data/tracks/circuit/forza/BLDA.png"
    "/home/ares/Developer/speed-dream-2.0/speed/data/tracks/circuit/forza/ABtree_n.png"
    "/home/ares/Developer/speed-dream-2.0/speed/data/tracks/circuit/forza/TENTA.png"
    "/home/ares/Developer/speed-dream-2.0/speed/data/tracks/circuit/forza/GRtree_n.png"
    "/home/ares/Developer/speed-dream-2.0/speed/data/tracks/circuit/forza/GStree_n.png"
    "/home/ares/Developer/speed-dream-2.0/speed/data/tracks/circuit/forza/CRNF.png"
    "/home/ares/Developer/speed-dream-2.0/speed/data/tracks/circuit/forza/TIRE3.png"
    "/home/ares/Developer/speed-dream-2.0/speed/data/tracks/circuit/forza/CMNTA.png"
    "/home/ares/Developer/speed-dream-2.0/speed/data/tracks/circuit/forza/TENTH.png"
    "/home/ares/Developer/speed-dream-2.0/speed/data/tracks/circuit/forza/GSDH.png"
    "/home/ares/Developer/speed-dream-2.0/speed/data/tracks/circuit/forza/BUtree_n.png"
    "/home/ares/Developer/speed-dream-2.0/speed/data/tracks/circuit/forza/GCtree_n.png"
    "/home/ares/Developer/speed-dream-2.0/speed/data/tracks/circuit/forza/treel3_n.png"
    "/home/ares/Developer/speed-dream-2.0/speed/data/tracks/circuit/forza/Road-stone.png"
    "/home/ares/Developer/speed-dream-2.0/speed/data/tracks/circuit/forza/TURNB.png"
    "/home/ares/Developer/speed-dream-2.0/speed/data/tracks/circuit/forza/TENTG.png"
    "/home/ares/Developer/speed-dream-2.0/speed/data/tracks/circuit/forza/outline.png"
    "/home/ares/Developer/speed-dream-2.0/speed/data/tracks/circuit/forza/IYtree_n.png"
    "/home/ares/Developer/speed-dream-2.0/speed/data/tracks/circuit/forza/Road-border.png"
    "/home/ares/Developer/speed-dream-2.0/speed/data/tracks/circuit/forza/forza.jpg"
    "/home/ares/Developer/speed-dream-2.0/speed/data/tracks/circuit/forza/shadow2.jpg"
    )
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

