# Install script for directory: /home/ares/Developer/speed-dream-2.0/speed/data/tracks/karting/x-kart1

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
    SET(CMAKE_INSTALL_CONFIG_NAME "")
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
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/tracks/karting/x-kart1" TYPE FILE FILES
    "/home/ares/Developer/speed-dream-2.0/speed/data/tracks/karting/x-kart1/x-kart1.xml"
    "/home/ares/Developer/speed-dream-2.0/speed/data/tracks/karting/x-kart1/x-kart1.ac"
    "/home/ares/Developer/speed-dream-2.0/speed/data/tracks/karting/x-kart1/background.png"
    "/home/ares/Developer/speed-dream-2.0/speed/data/tracks/karting/x-kart1/xk-banner3.png"
    "/home/ares/Developer/speed-dream-2.0/speed/data/tracks/karting/x-kart1/xk-treebush1.png"
    "/home/ares/Developer/speed-dream-2.0/speed/data/tracks/karting/x-kart1/xk-tree1.png"
    "/home/ares/Developer/speed-dream-2.0/speed/data/tracks/karting/x-kart1/xk-fence1.png"
    "/home/ares/Developer/speed-dream-2.0/speed/data/tracks/karting/x-kart1/x-kart1.png"
    "/home/ares/Developer/speed-dream-2.0/speed/data/tracks/karting/x-kart1/xk-bar2.png"
    "/home/ares/Developer/speed-dream-2.0/speed/data/tracks/karting/x-kart1/xk-barrier1.png"
    "/home/ares/Developer/speed-dream-2.0/speed/data/tracks/karting/x-kart1/xk-tarmac.png"
    "/home/ares/Developer/speed-dream-2.0/speed/data/tracks/karting/x-kart1/xk-pavement.png"
    "/home/ares/Developer/speed-dream-2.0/speed/data/tracks/karting/x-kart1/xk-hats.png"
    "/home/ares/Developer/speed-dream-2.0/speed/data/tracks/karting/x-kart1/xk-backdrop1.png"
    "/home/ares/Developer/speed-dream-2.0/speed/data/tracks/karting/x-kart1/xk-tarmac-sand.png"
    "/home/ares/Developer/speed-dream-2.0/speed/data/tracks/karting/x-kart1/xk-tree4.png"
    "/home/ares/Developer/speed-dream-2.0/speed/data/tracks/karting/x-kart1/xk-tree3.png"
    "/home/ares/Developer/speed-dream-2.0/speed/data/tracks/karting/x-kart1/xk-rock1.png"
    "/home/ares/Developer/speed-dream-2.0/speed/data/tracks/karting/x-kart1/xk-bar-arrow.png"
    "/home/ares/Developer/speed-dream-2.0/speed/data/tracks/karting/x-kart1/xk-tarmac-grass.png"
    "/home/ares/Developer/speed-dream-2.0/speed/data/tracks/karting/x-kart1/xk-treebush2.png"
    "/home/ares/Developer/speed-dream-2.0/speed/data/tracks/karting/x-kart1/xk-concrete2.png"
    "/home/ares/Developer/speed-dream-2.0/speed/data/tracks/karting/x-kart1/xk-treewall1.png"
    "/home/ares/Developer/speed-dream-2.0/speed/data/tracks/karting/x-kart1/xk-frame.png"
    "/home/ares/Developer/speed-dream-2.0/speed/data/tracks/karting/x-kart1/xk-banner2.png"
    "/home/ares/Developer/speed-dream-2.0/speed/data/tracks/karting/x-kart1/xk-banner4.png"
    "/home/ares/Developer/speed-dream-2.0/speed/data/tracks/karting/x-kart1/xk-grass.png"
    "/home/ares/Developer/speed-dream-2.0/speed/data/tracks/karting/x-kart1/xk-banner5.png"
    "/home/ares/Developer/speed-dream-2.0/speed/data/tracks/karting/x-kart1/xk-concrete1.png"
    "/home/ares/Developer/speed-dream-2.0/speed/data/tracks/karting/x-kart1/xk-banner1.png"
    "/home/ares/Developer/speed-dream-2.0/speed/data/tracks/karting/x-kart1/xk-bar1.png"
    "/home/ares/Developer/speed-dream-2.0/speed/data/tracks/karting/x-kart1/xk-fence2.png"
    "/home/ares/Developer/speed-dream-2.0/speed/data/tracks/karting/x-kart1/xk-sand.png"
    "/home/ares/Developer/speed-dream-2.0/speed/data/tracks/karting/x-kart1/xk-windturb.png"
    "/home/ares/Developer/speed-dream-2.0/speed/data/tracks/karting/x-kart1/xk-tree2.png"
    "/home/ares/Developer/speed-dream-2.0/speed/data/tracks/karting/x-kart1/outline.png"
    "/home/ares/Developer/speed-dream-2.0/speed/data/tracks/karting/x-kart1/xk-flags1.png"
    "/home/ares/Developer/speed-dream-2.0/speed/data/tracks/karting/x-kart1/xk-curb.png"
    )
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

