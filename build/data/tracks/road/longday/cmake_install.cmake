# Install script for directory: /home/ares/Developer/speed-dream-2.0/speed/data/tracks/road/longday

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
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/tracks/road/longday" TYPE FILE FILES
    "/home/ares/Developer/speed-dream-2.0/speed/data/tracks/road/longday/longday.xml"
    "/home/ares/Developer/speed-dream-2.0/speed/data/tracks/road/longday/longday.ac"
    "/home/ares/Developer/speed-dream-2.0/speed/data/tracks/road/longday/background.png"
    "/home/ares/Developer/speed-dream-2.0/speed/data/tracks/road/longday/roadJ_n.png"
    "/home/ares/Developer/speed-dream-2.0/speed/data/tracks/road/longday/rsared.png"
    "/home/ares/Developer/speed-dream-2.0/speed/data/tracks/road/longday/roadQ_n.png"
    "/home/ares/Developer/speed-dream-2.0/speed/data/tracks/road/longday/roadB_n.png"
    "/home/ares/Developer/speed-dream-2.0/speed/data/tracks/road/longday/roadP_n.png"
    "/home/ares/Developer/speed-dream-2.0/speed/data/tracks/road/longday/roadK_n.png"
    "/home/ares/Developer/speed-dream-2.0/speed/data/tracks/road/longday/roadC_n.png"
    "/home/ares/Developer/speed-dream-2.0/speed/data/tracks/road/longday/GRASS02.png"
    "/home/ares/Developer/speed-dream-2.0/speed/data/tracks/road/longday/tr-curb-yb-r.png"
    "/home/ares/Developer/speed-dream-2.0/speed/data/tracks/road/longday/TIREBLAK2.png"
    "/home/ares/Developer/speed-dream-2.0/speed/data/tracks/road/longday/roadM_n.png"
    "/home/ares/Developer/speed-dream-2.0/speed/data/tracks/road/longday/roadU_n.png"
    "/home/ares/Developer/speed-dream-2.0/speed/data/tracks/road/longday/roadN_n.png"
    "/home/ares/Developer/speed-dream-2.0/speed/data/tracks/road/longday/roadO_n.png"
    "/home/ares/Developer/speed-dream-2.0/speed/data/tracks/road/longday/roadD_n.png"
    "/home/ares/Developer/speed-dream-2.0/speed/data/tracks/road/longday/roadW_n.png"
    "/home/ares/Developer/speed-dream-2.0/speed/data/tracks/road/longday/tr-barrier-arbor.png"
    "/home/ares/Developer/speed-dream-2.0/speed/data/tracks/road/longday/roadS_n.png"
    "/home/ares/Developer/speed-dream-2.0/speed/data/tracks/road/longday/roadX_n.png"
    "/home/ares/Developer/speed-dream-2.0/speed/data/tracks/road/longday/roadE_n.png"
    "/home/ares/Developer/speed-dream-2.0/speed/data/tracks/road/longday/roadI_n.png"
    "/home/ares/Developer/speed-dream-2.0/speed/data/tracks/road/longday/roadR_n.png"
    "/home/ares/Developer/speed-dream-2.0/speed/data/tracks/road/longday/tr-curb-yb-l.png"
    "/home/ares/Developer/speed-dream-2.0/speed/data/tracks/road/longday/longday.png"
    "/home/ares/Developer/speed-dream-2.0/speed/data/tracks/road/longday/roadA_n.png"
    "/home/ares/Developer/speed-dream-2.0/speed/data/tracks/road/longday/GRASS01.png"
    "/home/ares/Developer/speed-dream-2.0/speed/data/tracks/road/longday/roadL_n.png"
    "/home/ares/Developer/speed-dream-2.0/speed/data/tracks/road/longday/roadT_n.png"
    "/home/ares/Developer/speed-dream-2.0/speed/data/tracks/road/longday/tr-barrier-arbor-fence_n.png"
    "/home/ares/Developer/speed-dream-2.0/speed/data/tracks/road/longday/roadV_n.png"
    )
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

