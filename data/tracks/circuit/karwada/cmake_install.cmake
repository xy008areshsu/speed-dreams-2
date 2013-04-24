# Install script for directory: /home/ares/Developer/speed-dream-2.0/speed/data/tracks/circuit/karwada

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
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/tracks/circuit/karwada" TYPE FILE FILES
    "/home/ares/Developer/speed-dream-2.0/speed/data/tracks/circuit/karwada/karwada.xml"
    "/home/ares/Developer/speed-dream-2.0/speed/data/tracks/circuit/karwada/readme.txt"
    "/home/ares/Developer/speed-dream-2.0/speed/data/tracks/circuit/karwada/land.ac"
    "/home/ares/Developer/speed-dream-2.0/speed/data/tracks/circuit/karwada/karwada.acc"
    "/home/ares/Developer/speed-dream-2.0/speed/data/tracks/circuit/karwada/background.png"
    "/home/ares/Developer/speed-dream-2.0/speed/data/tracks/circuit/karwada/rmbl.png"
    "/home/ares/Developer/speed-dream-2.0/speed/data/tracks/circuit/karwada/kwd-ad1.png"
    "/home/ares/Developer/speed-dream-2.0/speed/data/tracks/circuit/karwada/tr-barrier.png"
    "/home/ares/Developer/speed-dream-2.0/speed/data/tracks/circuit/karwada/LOGOTELE.png"
    "/home/ares/Developer/speed-dream-2.0/speed/data/tracks/circuit/karwada/land1.png"
    "/home/ares/Developer/speed-dream-2.0/speed/data/tracks/circuit/karwada/kwd-building2.png"
    "/home/ares/Developer/speed-dream-2.0/speed/data/tracks/circuit/karwada/wheel.png"
    "/home/ares/Developer/speed-dream-2.0/speed/data/tracks/circuit/karwada/tirewall.png"
    "/home/ares/Developer/speed-dream-2.0/speed/data/tracks/circuit/karwada/LOGOTSUB.png"
    "/home/ares/Developer/speed-dream-2.0/speed/data/tracks/circuit/karwada/truck_arbor_ctd_n.png"
    "/home/ares/Developer/speed-dream-2.0/speed/data/tracks/circuit/karwada/kwd-roof.png"
    "/home/ares/Developer/speed-dream-2.0/speed/data/tracks/circuit/karwada/shadow3.png"
    "/home/ares/Developer/speed-dream-2.0/speed/data/tracks/circuit/karwada/kwd-spectator.png"
    "/home/ares/Developer/speed-dream-2.0/speed/data/tracks/circuit/karwada/LOGOKUPO.png"
    "/home/ares/Developer/speed-dream-2.0/speed/data/tracks/circuit/karwada/lan2_n.png"
    "/home/ares/Developer/speed-dream-2.0/speed/data/tracks/circuit/karwada/kwd-fence_n.png"
    "/home/ares/Developer/speed-dream-2.0/speed/data/tracks/circuit/karwada/truck2_n.png"
    "/home/ares/Developer/speed-dream-2.0/speed/data/tracks/circuit/karwada/LOGOEIEN.png"
    "/home/ares/Developer/speed-dream-2.0/speed/data/tracks/circuit/karwada/shadow2.png"
    "/home/ares/Developer/speed-dream-2.0/speed/data/tracks/circuit/karwada/sign3.png"
    "/home/ares/Developer/speed-dream-2.0/speed/data/tracks/circuit/karwada/tree_n.png"
    "/home/ares/Developer/speed-dream-2.0/speed/data/tracks/circuit/karwada/tr-barrier-tree_n.png"
    "/home/ares/Developer/speed-dream-2.0/speed/data/tracks/circuit/karwada/kwd-asphalt-start.png"
    "/home/ares/Developer/speed-dream-2.0/speed/data/tracks/circuit/karwada/kwd-sign1.png"
    "/home/ares/Developer/speed-dream-2.0/speed/data/tracks/circuit/karwada/water_green2.png"
    "/home/ares/Developer/speed-dream-2.0/speed/data/tracks/circuit/karwada/kwd-asphalt-pit.png"
    "/home/ares/Developer/speed-dream-2.0/speed/data/tracks/circuit/karwada/kwd-pylon3.png"
    "/home/ares/Developer/speed-dream-2.0/speed/data/tracks/circuit/karwada/concdal.png"
    "/home/ares/Developer/speed-dream-2.0/speed/data/tracks/circuit/karwada/sand.png"
    "/home/ares/Developer/speed-dream-2.0/speed/data/tracks/circuit/karwada/kwd-asphalt.png"
    "/home/ares/Developer/speed-dream-2.0/speed/data/tracks/circuit/karwada/grass.png"
    "/home/ares/Developer/speed-dream-2.0/speed/data/tracks/circuit/karwada/texwheel.png"
    "/home/ares/Developer/speed-dream-2.0/speed/data/tracks/circuit/karwada/girder_tree_n.png"
    "/home/ares/Developer/speed-dream-2.0/speed/data/tracks/circuit/karwada/clkdtm.png"
    "/home/ares/Developer/speed-dream-2.0/speed/data/tracks/circuit/karwada/kwd-asphalt-dot.png"
    "/home/ares/Developer/speed-dream-2.0/speed/data/tracks/circuit/karwada/treeg11_n.png"
    "/home/ares/Developer/speed-dream-2.0/speed/data/tracks/circuit/karwada/kwd-barrier.png"
    "/home/ares/Developer/speed-dream-2.0/speed/data/tracks/circuit/karwada/kwd-bridge.png"
    "/home/ares/Developer/speed-dream-2.0/speed/data/tracks/circuit/karwada/kwd-asphalt-side.png"
    "/home/ares/Developer/speed-dream-2.0/speed/data/tracks/circuit/karwada/kwd-building1.png"
    "/home/ares/Developer/speed-dream-2.0/speed/data/tracks/circuit/karwada/kwd-sign2.png"
    "/home/ares/Developer/speed-dream-2.0/speed/data/tracks/circuit/karwada/outline.png"
    "/home/ares/Developer/speed-dream-2.0/speed/data/tracks/circuit/karwada/treeline.png"
    "/home/ares/Developer/speed-dream-2.0/speed/data/tracks/circuit/karwada/karwada.jpg"
    "/home/ares/Developer/speed-dream-2.0/speed/data/tracks/circuit/karwada/shadow2.jpg"
    )
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

