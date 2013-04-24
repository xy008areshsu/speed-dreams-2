# Install script for directory: /home/ares/Developer/speed-dream-2.0/speed/src/drivers/human

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
  IF(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib64/games/speed-dreams-2/drivers/human/human.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib64/games/speed-dreams-2/drivers/human/human.so")
    FILE(RPATH_CHECK
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib64/games/speed-dreams-2/drivers/human/human.so"
         RPATH "/usr/local/lib64/games/speed-dreams-2/lib")
  ENDIF()
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib64/games/speed-dreams-2/drivers/human" TYPE SHARED_LIBRARY FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/human/human.so")
  IF(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib64/games/speed-dreams-2/drivers/human/human.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib64/games/speed-dreams-2/drivers/human/human.so")
    FILE(RPATH_CHANGE
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib64/games/speed-dreams-2/drivers/human/human.so"
         OLD_RPATH "/home/ares/Developer/speed-dream-2.0/speed/src/libs/portability:/home/ares/Developer/speed-dream-2.0/speed/src/libs/robottools:/home/ares/Developer/speed-dream-2.0/speed/src/libs/tgf:/home/ares/Developer/speed-dream-2.0/speed/src/libs/tgfclient:/home/ares/Developer/speed-dream-2.0/speed/src/modules/networking:/usr/local/lib:"
         NEW_RPATH "/usr/local/lib64/games/speed-dreams-2/lib")
    IF(CMAKE_INSTALL_DO_STRIP)
      EXECUTE_PROCESS(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib64/games/speed-dreams-2/drivers/human/human.so")
    ENDIF(CMAKE_INSTALL_DO_STRIP)
  ENDIF()
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/human" TYPE FILE FILES
    "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/human/logo.png"
    "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/human/logo.rgb"
    )
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/human/cars/trb1-sector-rb1" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/human/cars/trb1-sector-rb1/street-1.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/human/cars/trb1-sector-rb1" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/human/cars/trb1-sector-rb1/e-track-2.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/human/cars/trb1-sector-rb1" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/human/cars/trb1-sector-rb1/longday.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/human/cars/trb1-sector-rb1" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/human/cars/trb1-sector-rb1/prenzlau.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/human/cars/trb1-sector-rb1" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/human/cars/trb1-sector-rb1/spring.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/human/cars/trb1-sector-rb1" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/human/cars/trb1-sector-rb1/brondehach.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/human/cars/trb1-sector-rb1" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/human/cars/trb1-sector-rb1/ole-road-1.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/human/cars/trb1-sector-rb1" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/human/cars/trb1-sector-rb1/default.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/human/cars/trb1-sector-rb1" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/human/cars/trb1-sector-rb1/migrants.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/human/cars/trb1-sector-rb1" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/human/cars/trb1-sector-rb1/alpine-1.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/human/cars/trb1-sector-rb1" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/human/cars/trb1-sector-rb1/wheel-1.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/human/cars/trb1-sector-rb1" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/human/cars/trb1-sector-rb1/salty.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/human/cars/trb1-sector-rb1" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/human/cars/trb1-sector-rb1/aalborg.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/human/cars/trb1-sector-rb1" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/human/cars/trb1-sector-rb1/corkscrew.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/human/cars/trb1-sector-rb1" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/human/cars/trb1-sector-rb1/e-track-3.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/human/cars/trb1-sector-rb1" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/human/cars/trb1-sector-rb1/michigan.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/human/cars/trb1-sector-rb1" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/human/cars/trb1-sector-rb1/inuksuk.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/human/cars/trb1-sector-rb1" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/human/cars/trb1-sector-rb1/manton.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/human/cars/trb1-sector-rb1" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/human/cars/trb1-sector-rb1/lombaro.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/human/cars/trb1-sector-rb1" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/human/cars/trb1-sector-rb1/wheel-2.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/human/cars/trb1-sector-rb1" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/human/cars/trb1-sector-rb1/allondaz.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/human/cars/trb1-sector-rb1" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/human/cars/trb1-sector-rb1/charmey.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/human/cars/trb1-sector-rb1" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/human/cars/trb1-sector-rb1/ruudskogen.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/human/cars/trb1-sector-rb1" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/human/cars/trb1-sector-rb1/e-track-4.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/human/cars/trb1-sector-rb1" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/human/cars/trb1-sector-rb1/g-track-3.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/human/cars/trb1-sector-rb1" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/human/cars/trb1-sector-rb1/forza.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/human/cars/ref-sector-p4" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/human/cars/ref-sector-p4/default.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/human/cars/sc-boxer-96" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/human/cars/sc-boxer-96/default.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/human/cars/trb1-cavallo-360rb" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/human/cars/trb1-cavallo-360rb/street-1.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/human/cars/trb1-cavallo-360rb" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/human/cars/trb1-cavallo-360rb/e-track-2.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/human/cars/trb1-cavallo-360rb" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/human/cars/trb1-cavallo-360rb/longday.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/human/cars/trb1-cavallo-360rb" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/human/cars/trb1-cavallo-360rb/prenzlau.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/human/cars/trb1-cavallo-360rb" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/human/cars/trb1-cavallo-360rb/spring.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/human/cars/trb1-cavallo-360rb" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/human/cars/trb1-cavallo-360rb/brondehach.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/human/cars/trb1-cavallo-360rb" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/human/cars/trb1-cavallo-360rb/ole-road-1.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/human/cars/trb1-cavallo-360rb" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/human/cars/trb1-cavallo-360rb/default.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/human/cars/trb1-cavallo-360rb" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/human/cars/trb1-cavallo-360rb/migrants.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/human/cars/trb1-cavallo-360rb" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/human/cars/trb1-cavallo-360rb/alpine-1.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/human/cars/trb1-cavallo-360rb" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/human/cars/trb1-cavallo-360rb/wheel-1.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/human/cars/trb1-cavallo-360rb" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/human/cars/trb1-cavallo-360rb/salty.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/human/cars/trb1-cavallo-360rb" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/human/cars/trb1-cavallo-360rb/aalborg.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/human/cars/trb1-cavallo-360rb" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/human/cars/trb1-cavallo-360rb/corkscrew.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/human/cars/trb1-cavallo-360rb" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/human/cars/trb1-cavallo-360rb/e-track-3.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/human/cars/trb1-cavallo-360rb" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/human/cars/trb1-cavallo-360rb/michigan.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/human/cars/trb1-cavallo-360rb" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/human/cars/trb1-cavallo-360rb/inuksuk.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/human/cars/trb1-cavallo-360rb" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/human/cars/trb1-cavallo-360rb/manton.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/human/cars/trb1-cavallo-360rb" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/human/cars/trb1-cavallo-360rb/lombaro.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/human/cars/trb1-cavallo-360rb" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/human/cars/trb1-cavallo-360rb/wheel-2.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/human/cars/trb1-cavallo-360rb" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/human/cars/trb1-cavallo-360rb/allondaz.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/human/cars/trb1-cavallo-360rb" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/human/cars/trb1-cavallo-360rb/charmey.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/human/cars/trb1-cavallo-360rb" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/human/cars/trb1-cavallo-360rb/ruudskogen.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/human/cars/trb1-cavallo-360rb" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/human/cars/trb1-cavallo-360rb/e-track-4.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/human/cars/trb1-cavallo-360rb" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/human/cars/trb1-cavallo-360rb/g-track-3.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/human/cars/trb1-cavallo-360rb" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/human/cars/trb1-cavallo-360rb/forza.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/human/cars/trb1-taipan-rb1" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/human/cars/trb1-taipan-rb1/street-1.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/human/cars/trb1-taipan-rb1" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/human/cars/trb1-taipan-rb1/e-track-2.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/human/cars/trb1-taipan-rb1" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/human/cars/trb1-taipan-rb1/longday.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/human/cars/trb1-taipan-rb1" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/human/cars/trb1-taipan-rb1/prenzlau.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/human/cars/trb1-taipan-rb1" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/human/cars/trb1-taipan-rb1/spring.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/human/cars/trb1-taipan-rb1" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/human/cars/trb1-taipan-rb1/brondehach.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/human/cars/trb1-taipan-rb1" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/human/cars/trb1-taipan-rb1/ole-road-1.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/human/cars/trb1-taipan-rb1" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/human/cars/trb1-taipan-rb1/default.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/human/cars/trb1-taipan-rb1" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/human/cars/trb1-taipan-rb1/migrants.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/human/cars/trb1-taipan-rb1" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/human/cars/trb1-taipan-rb1/alpine-1.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/human/cars/trb1-taipan-rb1" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/human/cars/trb1-taipan-rb1/wheel-1.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/human/cars/trb1-taipan-rb1" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/human/cars/trb1-taipan-rb1/salty.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/human/cars/trb1-taipan-rb1" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/human/cars/trb1-taipan-rb1/aalborg.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/human/cars/trb1-taipan-rb1" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/human/cars/trb1-taipan-rb1/corkscrew.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/human/cars/trb1-taipan-rb1" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/human/cars/trb1-taipan-rb1/e-track-3.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/human/cars/trb1-taipan-rb1" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/human/cars/trb1-taipan-rb1/michigan.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/human/cars/trb1-taipan-rb1" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/human/cars/trb1-taipan-rb1/inuksuk.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/human/cars/trb1-taipan-rb1" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/human/cars/trb1-taipan-rb1/manton.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/human/cars/trb1-taipan-rb1" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/human/cars/trb1-taipan-rb1/lombaro.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/human/cars/trb1-taipan-rb1" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/human/cars/trb1-taipan-rb1/wheel-2.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/human/cars/trb1-taipan-rb1" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/human/cars/trb1-taipan-rb1/allondaz.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/human/cars/trb1-taipan-rb1" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/human/cars/trb1-taipan-rb1/charmey.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/human/cars/trb1-taipan-rb1" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/human/cars/trb1-taipan-rb1/ruudskogen.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/human/cars/trb1-taipan-rb1" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/human/cars/trb1-taipan-rb1/e-track-4.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/human/cars/trb1-taipan-rb1" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/human/cars/trb1-taipan-rb1/g-track-3.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/human/cars/trb1-taipan-rb1" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/human/cars/trb1-taipan-rb1/forza.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/human/cars/sc-cavallo-360" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/human/cars/sc-cavallo-360/default.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/human/cars/sc-spirit-300" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/human/cars/sc-spirit-300/default.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/human/cars/sc-murasama-nsx" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/human/cars/sc-murasama-nsx/default.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/human/cars/sc-fmc-gt4" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/human/cars/sc-fmc-gt4/default.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/human/cars/trb1-zaxxon-rb" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/human/cars/trb1-zaxxon-rb/street-1.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/human/cars/trb1-zaxxon-rb" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/human/cars/trb1-zaxxon-rb/e-track-2.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/human/cars/trb1-zaxxon-rb" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/human/cars/trb1-zaxxon-rb/longday.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/human/cars/trb1-zaxxon-rb" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/human/cars/trb1-zaxxon-rb/prenzlau.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/human/cars/trb1-zaxxon-rb" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/human/cars/trb1-zaxxon-rb/spring.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/human/cars/trb1-zaxxon-rb" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/human/cars/trb1-zaxxon-rb/brondehach.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/human/cars/trb1-zaxxon-rb" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/human/cars/trb1-zaxxon-rb/ole-road-1.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/human/cars/trb1-zaxxon-rb" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/human/cars/trb1-zaxxon-rb/default.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/human/cars/trb1-zaxxon-rb" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/human/cars/trb1-zaxxon-rb/migrants.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/human/cars/trb1-zaxxon-rb" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/human/cars/trb1-zaxxon-rb/e-track-6.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/human/cars/trb1-zaxxon-rb" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/human/cars/trb1-zaxxon-rb/alpine-1.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/human/cars/trb1-zaxxon-rb" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/human/cars/trb1-zaxxon-rb/wheel-1.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/human/cars/trb1-zaxxon-rb" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/human/cars/trb1-zaxxon-rb/salty.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/human/cars/trb1-zaxxon-rb" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/human/cars/trb1-zaxxon-rb/aalborg.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/human/cars/trb1-zaxxon-rb" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/human/cars/trb1-zaxxon-rb/corkscrew.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/human/cars/trb1-zaxxon-rb" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/human/cars/trb1-zaxxon-rb/e-track-3.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/human/cars/trb1-zaxxon-rb" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/human/cars/trb1-zaxxon-rb/michigan.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/human/cars/trb1-zaxxon-rb" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/human/cars/trb1-zaxxon-rb/inuksuk.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/human/cars/trb1-zaxxon-rb" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/human/cars/trb1-zaxxon-rb/manton.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/human/cars/trb1-zaxxon-rb" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/human/cars/trb1-zaxxon-rb/lombaro.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/human/cars/trb1-zaxxon-rb" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/human/cars/trb1-zaxxon-rb/wheel-2.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/human/cars/trb1-zaxxon-rb" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/human/cars/trb1-zaxxon-rb/allondaz.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/human/cars/trb1-zaxxon-rb" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/human/cars/trb1-zaxxon-rb/charmey.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/human/cars/trb1-zaxxon-rb" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/human/cars/trb1-zaxxon-rb/ruudskogen.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/human/cars/trb1-zaxxon-rb" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/human/cars/trb1-zaxxon-rb/e-track-4.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/human/cars/trb1-zaxxon-rb" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/human/cars/trb1-zaxxon-rb/g-track-3.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/human/cars/trb1-zaxxon-rb" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/human/cars/trb1-zaxxon-rb/forza.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/human/cars/trb1-silber-rblk" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/human/cars/trb1-silber-rblk/street-1.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/human/cars/trb1-silber-rblk" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/human/cars/trb1-silber-rblk/e-track-2.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/human/cars/trb1-silber-rblk" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/human/cars/trb1-silber-rblk/longday.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/human/cars/trb1-silber-rblk" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/human/cars/trb1-silber-rblk/prenzlau.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/human/cars/trb1-silber-rblk" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/human/cars/trb1-silber-rblk/spring.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/human/cars/trb1-silber-rblk" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/human/cars/trb1-silber-rblk/brondehach.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/human/cars/trb1-silber-rblk" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/human/cars/trb1-silber-rblk/ole-road-1.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/human/cars/trb1-silber-rblk" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/human/cars/trb1-silber-rblk/default.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/human/cars/trb1-silber-rblk" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/human/cars/trb1-silber-rblk/migrants.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/human/cars/trb1-silber-rblk" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/human/cars/trb1-silber-rblk/alpine-1.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/human/cars/trb1-silber-rblk" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/human/cars/trb1-silber-rblk/wheel-1.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/human/cars/trb1-silber-rblk" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/human/cars/trb1-silber-rblk/salty.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/human/cars/trb1-silber-rblk" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/human/cars/trb1-silber-rblk/aalborg.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/human/cars/trb1-silber-rblk" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/human/cars/trb1-silber-rblk/corkscrew.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/human/cars/trb1-silber-rblk" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/human/cars/trb1-silber-rblk/e-track-3.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/human/cars/trb1-silber-rblk" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/human/cars/trb1-silber-rblk/michigan.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/human/cars/trb1-silber-rblk" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/human/cars/trb1-silber-rblk/inuksuk.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/human/cars/trb1-silber-rblk" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/human/cars/trb1-silber-rblk/manton.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/human/cars/trb1-silber-rblk" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/human/cars/trb1-silber-rblk/lombaro.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/human/cars/trb1-silber-rblk" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/human/cars/trb1-silber-rblk/wheel-2.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/human/cars/trb1-silber-rblk" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/human/cars/trb1-silber-rblk/allondaz.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/human/cars/trb1-silber-rblk" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/human/cars/trb1-silber-rblk/charmey.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/human/cars/trb1-silber-rblk" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/human/cars/trb1-silber-rblk/ruudskogen.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/human/cars/trb1-silber-rblk" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/human/cars/trb1-silber-rblk/e-track-4.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/human/cars/trb1-silber-rblk" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/human/cars/trb1-silber-rblk/g-track-3.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/human/cars/trb1-silber-rblk" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/human/cars/trb1-silber-rblk/forza.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/human/cars/trb1-spirit-rb1lt" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/human/cars/trb1-spirit-rb1lt/street-1.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/human/cars/trb1-spirit-rb1lt" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/human/cars/trb1-spirit-rb1lt/e-track-2.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/human/cars/trb1-spirit-rb1lt" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/human/cars/trb1-spirit-rb1lt/longday.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/human/cars/trb1-spirit-rb1lt" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/human/cars/trb1-spirit-rb1lt/prenzlau.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/human/cars/trb1-spirit-rb1lt" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/human/cars/trb1-spirit-rb1lt/spring.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/human/cars/trb1-spirit-rb1lt" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/human/cars/trb1-spirit-rb1lt/brondehach.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/human/cars/trb1-spirit-rb1lt" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/human/cars/trb1-spirit-rb1lt/ole-road-1.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/human/cars/trb1-spirit-rb1lt" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/human/cars/trb1-spirit-rb1lt/default.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/human/cars/trb1-spirit-rb1lt" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/human/cars/trb1-spirit-rb1lt/migrants.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/human/cars/trb1-spirit-rb1lt" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/human/cars/trb1-spirit-rb1lt/e-track-6.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/human/cars/trb1-spirit-rb1lt" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/human/cars/trb1-spirit-rb1lt/alpine-1.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/human/cars/trb1-spirit-rb1lt" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/human/cars/trb1-spirit-rb1lt/wheel-1.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/human/cars/trb1-spirit-rb1lt" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/human/cars/trb1-spirit-rb1lt/salty.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/human/cars/trb1-spirit-rb1lt" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/human/cars/trb1-spirit-rb1lt/aalborg.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/human/cars/trb1-spirit-rb1lt" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/human/cars/trb1-spirit-rb1lt/corkscrew.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/human/cars/trb1-spirit-rb1lt" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/human/cars/trb1-spirit-rb1lt/e-track-3.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/human/cars/trb1-spirit-rb1lt" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/human/cars/trb1-spirit-rb1lt/michigan.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/human/cars/trb1-spirit-rb1lt" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/human/cars/trb1-spirit-rb1lt/inuksuk.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/human/cars/trb1-spirit-rb1lt" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/human/cars/trb1-spirit-rb1lt/manton.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/human/cars/trb1-spirit-rb1lt" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/human/cars/trb1-spirit-rb1lt/lombaro.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/human/cars/trb1-spirit-rb1lt" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/human/cars/trb1-spirit-rb1lt/wheel-2.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/human/cars/trb1-spirit-rb1lt" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/human/cars/trb1-spirit-rb1lt/allondaz.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/human/cars/trb1-spirit-rb1lt" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/human/cars/trb1-spirit-rb1lt/charmey.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/human/cars/trb1-spirit-rb1lt" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/human/cars/trb1-spirit-rb1lt/ruudskogen.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/human/cars/trb1-spirit-rb1lt" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/human/cars/trb1-spirit-rb1lt/e-track-4.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/human/cars/trb1-spirit-rb1lt" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/human/cars/trb1-spirit-rb1lt/g-track-3.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/human/cars/trb1-spirit-rb1lt" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/human/cars/trb1-spirit-rb1lt/forza.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/human/cars/trb1-boxer-trbrs" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/human/cars/trb1-boxer-trbrs/street-1.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/human/cars/trb1-boxer-trbrs" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/human/cars/trb1-boxer-trbrs/e-track-2.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/human/cars/trb1-boxer-trbrs" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/human/cars/trb1-boxer-trbrs/longday.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/human/cars/trb1-boxer-trbrs" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/human/cars/trb1-boxer-trbrs/prenzlau.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/human/cars/trb1-boxer-trbrs" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/human/cars/trb1-boxer-trbrs/spring.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/human/cars/trb1-boxer-trbrs" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/human/cars/trb1-boxer-trbrs/brondehach.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/human/cars/trb1-boxer-trbrs" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/human/cars/trb1-boxer-trbrs/ole-road-1.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/human/cars/trb1-boxer-trbrs" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/human/cars/trb1-boxer-trbrs/default.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/human/cars/trb1-boxer-trbrs" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/human/cars/trb1-boxer-trbrs/migrants.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/human/cars/trb1-boxer-trbrs" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/human/cars/trb1-boxer-trbrs/alpine-1.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/human/cars/trb1-boxer-trbrs" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/human/cars/trb1-boxer-trbrs/wheel-1.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/human/cars/trb1-boxer-trbrs" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/human/cars/trb1-boxer-trbrs/salty.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/human/cars/trb1-boxer-trbrs" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/human/cars/trb1-boxer-trbrs/aalborg.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/human/cars/trb1-boxer-trbrs" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/human/cars/trb1-boxer-trbrs/corkscrew.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/human/cars/trb1-boxer-trbrs" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/human/cars/trb1-boxer-trbrs/e-track-3.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/human/cars/trb1-boxer-trbrs" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/human/cars/trb1-boxer-trbrs/michigan.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/human/cars/trb1-boxer-trbrs" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/human/cars/trb1-boxer-trbrs/inuksuk.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/human/cars/trb1-boxer-trbrs" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/human/cars/trb1-boxer-trbrs/manton.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/human/cars/trb1-boxer-trbrs" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/human/cars/trb1-boxer-trbrs/lombaro.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/human/cars/trb1-boxer-trbrs" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/human/cars/trb1-boxer-trbrs/wheel-2.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/human/cars/trb1-boxer-trbrs" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/human/cars/trb1-boxer-trbrs/allondaz.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/human/cars/trb1-boxer-trbrs" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/human/cars/trb1-boxer-trbrs/charmey.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/human/cars/trb1-boxer-trbrs" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/human/cars/trb1-boxer-trbrs/ruudskogen.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/human/cars/trb1-boxer-trbrs" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/human/cars/trb1-boxer-trbrs/e-track-4.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/human/cars/trb1-boxer-trbrs" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/human/cars/trb1-boxer-trbrs/g-track-3.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/human/cars/trb1-boxer-trbrs" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/human/cars/trb1-boxer-trbrs/forza.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/human/cars/sc-lynx-220" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/human/cars/sc-lynx-220/default.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/human" TYPE FILE FILES
    "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/human/human.xml"
    "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/human/preferences.xml"
    "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/human/car.xml"
    )
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(READ /home/ares/Developer/speed-dream-2.0/speed/xmlversion_loc.txt XMLVERSION_EXE)
             SET(MINGW )
             IF(MINGW)
               SET(_LIBS_TO_INSTALL "/home/ares/Developer/speed-dream-2.0/speed/src/libs/tgf/libtgf.so")
               SET(OPTION_3RDPARTY_EXPAT ON)
               IF(NOT OPTION_3RDPARTY_EXPAT)
                 LIST(APPEND _LIBS_TO_INSTALL "")
               ENDIF(NOT OPTION_3RDPARTY_EXPAT)
               # CMake configuration for MSYS Makefiles generator assumes that 3rd party dependencies are installed
               # in standard Linux folders, hence in the PATH ; so no need to install next to xmlversion exe.
               IF(NOT CMAKE_GENERATOR STREQUAL "MSYS Makefiles")
                 IF(OPTION_3RDPARTY_EXPAT)
                   LIST(APPEND _LIBS_TO_INSTALL "/usr/lib/x86_64-linux-gnu/../bin/libexpat.so")
                 ENDIF(OPTION_3RDPARTY_EXPAT)
                 LIST(APPEND _LIBS_TO_INSTALL "/usr/local/lib/libSDLmain.a;/usr/local/lib/../bin/libSDL.so")
                 GET_FILENAME_COMPONENT(_MINGW_BINDIR "/usr/bin/c++" PATH)
                 LIST(APPEND _LIBS_TO_INSTALL "${_MINGW_BINDIR}/libstdc++-6.dll" "${_MINGW_BINDIR}/libgcc_s_dw2-1.dll")
               ENDIF(NOT CMAKE_GENERATOR STREQUAL "MSYS Makefiles")
               GET_FILENAME_COMPONENT(XMLVERSION_DIR "${XMLVERSION_EXE}" PATH)
               MESSAGE(STATUS "xmlversion : Libs to install=${_LIBS_TO_INSTALL}")
               FILE(INSTALL DESTINATION "${XMLVERSION_DIR}" TYPE FILE FILES ${_LIBS_TO_INSTALL})
             ENDIF(MINGW)
             SET(SD_DATADIR_ABS "share/games/speed-dreams-2")
             IF(NOT IS_ABSOLUTE ${SD_DATADIR_ABS})
               GET_FILENAME_COMPONENT(SD_DATADIR_ABS "${CMAKE_INSTALL_PREFIX}/${SD_DATADIR_ABS}" ABSOLUTE)
             ENDIF()
             # Why this path correction here ? This needs a comment !
             SET(CUR_DESTDIR "$ENV{DESTDIR}")
             IF(CUR_DESTDIR MATCHES "[^/]")
               STRING(REGEX REPLACE "^(.*[^/])/*$" "\\1" CUR_DESTDIR_CORR "${CUR_DESTDIR}")
             ELSE(CUR_DESTDIR MATCHES "[^/]")
               SET(CUR_DESTDIR_CORR "")
             ENDIF(CUR_DESTDIR MATCHES "[^/]")
             FOREACH(FILE human.xml;preferences.xml;car.xml)
               GET_FILENAME_COMPONENT(FILENAME ${FILE} NAME)
               EXECUTE_PROCESS(COMMAND "${XMLVERSION_EXE}" "${CUR_DESTDIR_CORR}${SD_DATADIR_ABS}/version.xml" "drivers/human/${FILENAME}" "drivers/human/${FILENAME}" "${CUR_DESTDIR_CORR}${SD_DATADIR_ABS}" RESULT_VARIABLE XMLVERSTATUS)
               IF(XMLVERSTATUS)
                 MESSAGE(FATAL_ERROR "Error: xmlversion failed : ${XMLVERSTATUS}")
               ENDIF(XMLVERSTATUS)
             ENDFOREACH()
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

