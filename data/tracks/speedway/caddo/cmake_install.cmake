# Install script for directory: /home/ares/Developer/speed-dream-2.0/speed/data/tracks/speedway/caddo

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
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/tracks/speedway/caddo" TYPE FILE FILES
    "/home/ares/Developer/speed-dream-2.0/speed/data/tracks/speedway/caddo/caddo.xml"
    "/home/ares/Developer/speed-dream-2.0/speed/data/tracks/speedway/caddo/README"
    "/home/ares/Developer/speed-dream-2.0/speed/data/tracks/speedway/caddo/caddo-trk.ac"
    "/home/ares/Developer/speed-dream-2.0/speed/data/tracks/speedway/caddo/caddo.ac"
    "/home/ares/Developer/speed-dream-2.0/speed/data/tracks/speedway/caddo/caddo-msh.ac"
    "/home/ares/Developer/speed-dream-2.0/speed/data/tracks/speedway/caddo/background.png"
    "/home/ares/Developer/speed-dream-2.0/speed/data/tracks/speedway/caddo/caddo-wall.png"
    "/home/ares/Developer/speed-dream-2.0/speed/data/tracks/speedway/caddo/caddo-asphalt-dash.png"
    "/home/ares/Developer/speed-dream-2.0/speed/data/tracks/speedway/caddo/caddo-asphalt.png"
    "/home/ares/Developer/speed-dream-2.0/speed/data/tracks/speedway/caddo/env.png"
    "/home/ares/Developer/speed-dream-2.0/speed/data/tracks/speedway/caddo/caddo-wall-fence_n.png"
    "/home/ares/Developer/speed-dream-2.0/speed/data/tracks/speedway/caddo/tr-grass5.png"
    "/home/ares/Developer/speed-dream-2.0/speed/data/tracks/speedway/caddo/outline.png"
    "/home/ares/Developer/speed-dream-2.0/speed/data/tracks/speedway/caddo/caddo.jpg"
    )
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

