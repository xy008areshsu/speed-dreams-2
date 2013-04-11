# Install script for directory: /home/ares/Developer/speed-dream-2.0/speed/data/tracks/gprix/petit

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
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/tracks/gprix/petit" TYPE FILE FILES
    "/home/ares/Developer/speed-dream-2.0/speed/data/tracks/gprix/petit/petit.xml"
    "/home/ares/Developer/speed-dream-2.0/speed/data/tracks/gprix/petit/README"
    "/home/ares/Developer/speed-dream-2.0/speed/data/tracks/gprix/petit/petit-trk.ac"
    "/home/ares/Developer/speed-dream-2.0/speed/data/tracks/gprix/petit/petit-msh.ac"
    "/home/ares/Developer/speed-dream-2.0/speed/data/tracks/gprix/petit/petit.ac"
    "/home/ares/Developer/speed-dream-2.0/speed/data/tracks/gprix/petit/tr-petit-grass4.rgb"
    "/home/ares/Developer/speed-dream-2.0/speed/data/tracks/gprix/petit/tr-curb-wg-l.png"
    "/home/ares/Developer/speed-dream-2.0/speed/data/tracks/gprix/petit/petit-asphalt.png"
    "/home/ares/Developer/speed-dream-2.0/speed/data/tracks/gprix/petit/tr-petit-grass4.png"
    "/home/ares/Developer/speed-dream-2.0/speed/data/tracks/gprix/petit/p-tirewall.png"
    "/home/ares/Developer/speed-dream-2.0/speed/data/tracks/gprix/petit/tr-petit-sand3.png"
    "/home/ares/Developer/speed-dream-2.0/speed/data/tracks/gprix/petit/asphalt-pit_n.png"
    "/home/ares/Developer/speed-dream-2.0/speed/data/tracks/gprix/petit/conc.png"
    "/home/ares/Developer/speed-dream-2.0/speed/data/tracks/gprix/petit/tr-curb-wg-r.png"
    "/home/ares/Developer/speed-dream-2.0/speed/data/tracks/gprix/petit/start.png"
    "/home/ares/Developer/speed-dream-2.0/speed/data/tracks/gprix/petit/tr-barrier-arbor-fence_n.png"
    "/home/ares/Developer/speed-dream-2.0/speed/data/tracks/gprix/petit/petit.png"
    )
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

