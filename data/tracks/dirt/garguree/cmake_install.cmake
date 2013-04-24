# Install script for directory: /home/ares/Developer/speed-dream-2.0/speed/data/tracks/dirt/garguree

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
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/tracks/dirt/garguree" TYPE FILE FILES
    "/home/ares/Developer/speed-dream-2.0/speed/data/tracks/dirt/garguree/garguree.xml"
    "/home/ares/Developer/speed-dream-2.0/speed/data/tracks/dirt/garguree/readme.txt"
    "/home/ares/Developer/speed-dream-2.0/speed/data/tracks/dirt/garguree/land.ac"
    "/home/ares/Developer/speed-dream-2.0/speed/data/tracks/dirt/garguree/garguree.acc"
    "/home/ares/Developer/speed-dream-2.0/speed/data/tracks/dirt/garguree/pump.rgb"
    "/home/ares/Developer/speed-dream-2.0/speed/data/tracks/dirt/garguree/poutre3_arbor_n.rgb"
    "/home/ares/Developer/speed-dream-2.0/speed/data/tracks/dirt/garguree/poutre2_arbor_n.rgb"
    "/home/ares/Developer/speed-dream-2.0/speed/data/tracks/dirt/garguree/bridgeplanks.png"
    "/home/ares/Developer/speed-dream-2.0/speed/data/tracks/dirt/garguree/background.png"
    "/home/ares/Developer/speed-dream-2.0/speed/data/tracks/dirt/garguree/tank.png"
    "/home/ares/Developer/speed-dream-2.0/speed/data/tracks/dirt/garguree/tree_gum_arbor_n.png"
    "/home/ares/Developer/speed-dream-2.0/speed/data/tracks/dirt/garguree/newdirt2.png"
    "/home/ares/Developer/speed-dream-2.0/speed/data/tracks/dirt/garguree/newgrass.png"
    "/home/ares/Developer/speed-dream-2.0/speed/data/tracks/dirt/garguree/dirt-pits.png"
    "/home/ares/Developer/speed-dream-2.0/speed/data/tracks/dirt/garguree/dirt-grass2.png"
    "/home/ares/Developer/speed-dream-2.0/speed/data/tracks/dirt/garguree/tree_gum2_arbor_n.png"
    "/home/ares/Developer/speed-dream-2.0/speed/data/tracks/dirt/garguree/shadow3.png"
    "/home/ares/Developer/speed-dream-2.0/speed/data/tracks/dirt/garguree/dirt-grass.png"
    "/home/ares/Developer/speed-dream-2.0/speed/data/tracks/dirt/garguree/barrier-rusty.png"
    "/home/ares/Developer/speed-dream-2.0/speed/data/tracks/dirt/garguree/ambush-inn.png"
    "/home/ares/Developer/speed-dream-2.0/speed/data/tracks/dirt/garguree/pit-walls.png"
    "/home/ares/Developer/speed-dream-2.0/speed/data/tracks/dirt/garguree/shadow2.png"
    "/home/ares/Developer/speed-dream-2.0/speed/data/tracks/dirt/garguree/tree_gum2.png"
    "/home/ares/Developer/speed-dream-2.0/speed/data/tracks/dirt/garguree/flaggs.png"
    "/home/ares/Developer/speed-dream-2.0/speed/data/tracks/dirt/garguree/tree_gum.png"
    "/home/ares/Developer/speed-dream-2.0/speed/data/tracks/dirt/garguree/stone1.png"
    "/home/ares/Developer/speed-dream-2.0/speed/data/tracks/dirt/garguree/advert-ols.png"
    "/home/ares/Developer/speed-dream-2.0/speed/data/tracks/dirt/garguree/cabin.png"
    "/home/ares/Developer/speed-dream-2.0/speed/data/tracks/dirt/garguree/sign-pit_n.png"
    "/home/ares/Developer/speed-dream-2.0/speed/data/tracks/dirt/garguree/tr-house-arbor_n.png"
    "/home/ares/Developer/speed-dream-2.0/speed/data/tracks/dirt/garguree/stone-grass.png"
    "/home/ares/Developer/speed-dream-2.0/speed/data/tracks/dirt/garguree/barrier-wooden.png"
    "/home/ares/Developer/speed-dream-2.0/speed/data/tracks/dirt/garguree/dirt-side.png"
    "/home/ares/Developer/speed-dream-2.0/speed/data/tracks/dirt/garguree/barrier-wooden_n.png"
    "/home/ares/Developer/speed-dream-2.0/speed/data/tracks/dirt/garguree/sign-left_n.png"
    "/home/ares/Developer/speed-dream-2.0/speed/data/tracks/dirt/garguree/advert-joes.png"
    "/home/ares/Developer/speed-dream-2.0/speed/data/tracks/dirt/garguree/hat.png"
    "/home/ares/Developer/speed-dream-2.0/speed/data/tracks/dirt/garguree/tree_bush2.png"
    "/home/ares/Developer/speed-dream-2.0/speed/data/tracks/dirt/garguree/pit-bldg.png"
    "/home/ares/Developer/speed-dream-2.0/speed/data/tracks/dirt/garguree/black.png"
    "/home/ares/Developer/speed-dream-2.0/speed/data/tracks/dirt/garguree/tree_bush2_arbor_n.png"
    "/home/ares/Developer/speed-dream-2.0/speed/data/tracks/dirt/garguree/barrier-fence_n.png"
    "/home/ares/Developer/speed-dream-2.0/speed/data/tracks/dirt/garguree/newdirt.png"
    "/home/ares/Developer/speed-dream-2.0/speed/data/tracks/dirt/garguree/grass-clump-arbor_n.png"
    "/home/ares/Developer/speed-dream-2.0/speed/data/tracks/dirt/garguree/outline.png"
    "/home/ares/Developer/speed-dream-2.0/speed/data/tracks/dirt/garguree/advert-cola.png"
    "/home/ares/Developer/speed-dream-2.0/speed/data/tracks/dirt/garguree/background-sky.png"
    "/home/ares/Developer/speed-dream-2.0/speed/data/tracks/dirt/garguree/shadow3.jpg"
    "/home/ares/Developer/speed-dream-2.0/speed/data/tracks/dirt/garguree/garguree.jpg"
    )
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

