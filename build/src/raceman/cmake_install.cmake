# Install script for directory: /home/ares/Developer/speed-dream-2.0/speed/src/raceman

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
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/config/raceman" TYPE FILE FILES
    "/home/ares/Developer/speed-dream-2.0/speed/src/raceman/practice.xml"
    "/home/ares/Developer/speed-dream-2.0/speed/src/raceman/quickrace.xml"
    "/home/ares/Developer/speed-dream-2.0/speed/src/raceman/singleevent-36gp.xml"
    "/home/ares/Developer/speed-dream-2.0/speed/src/raceman/singleevent-challenge.xml"
    "/home/ares/Developer/speed-dream-2.0/speed/src/raceman/singleevent-endurance.xml"
    "/home/ares/Developer/speed-dream-2.0/speed/src/raceman/singleevent-ls-gt1.xml"
    "/home/ares/Developer/speed-dream-2.0/speed/src/raceman/singleevent-mp5.xml"
    "/home/ares/Developer/speed-dream-2.0/speed/src/raceman/championship.xml"
    "/home/ares/Developer/speed-dream-2.0/speed/src/raceman/championship-supercars.xml"
    "/home/ares/Developer/speed-dream-2.0/speed/src/raceman/championship-trb1.xml"
    "/home/ares/Developer/speed-dream-2.0/speed/src/raceman/championship-36gp.xml"
    "/home/ares/Developer/speed-dream-2.0/speed/src/raceman/championship-ls-gt1.xml"
    "/home/ares/Developer/speed-dream-2.0/speed/src/raceman/championship-mp5.xml"
    "/home/ares/Developer/speed-dream-2.0/speed/src/raceman/career.xml"
    "/home/ares/Developer/speed-dream-2.0/speed/src/raceman/career_supercars.xmls"
    "/home/ares/Developer/speed-dream-2.0/speed/src/raceman/career_ls1.xmls"
    )
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(READ /home/ares/Developer/speed-dream-2.0/speed/build/xmlversion_loc.txt XMLVERSION_EXE)
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
           FOREACH(FILE practice.xml;quickrace.xml;singleevent-36gp.xml;singleevent-challenge.xml;singleevent-endurance.xml;singleevent-ls-gt1.xml;singleevent-mp5.xml;championship.xml;championship-supercars.xml;championship-trb1.xml;championship-36gp.xml;championship-ls-gt1.xml;championship-mp5.xml;career.xml;career_supercars.xmls;career_ls1.xmls)
             GET_FILENAME_COMPONENT(FILENAME ${FILE} NAME)
              EXECUTE_PROCESS(COMMAND "${XMLVERSION_EXE}" "${CUR_DESTDIR_CORR}${SD_DATADIR_ABS}/version.xml" "config/raceman/${FILENAME}" "config/raceman/${FILENAME}" "${CUR_DESTDIR_CORR}${SD_DATADIR_ABS}" RESULT_VARIABLE XMLVERSTATUS)
              IF(XMLVERSTATUS)
               MESSAGE(FATAL_ERROR "Error: xmlversion failed")
              ENDIF(XMLVERSTATUS)
           ENDFOREACH()
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/config/raceman/extra" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/raceman/extra/skill.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(READ /home/ares/Developer/speed-dream-2.0/speed/build/xmlversion_loc.txt XMLVERSION_EXE)
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
           FOREACH(FILE extra/skill.xml)
             GET_FILENAME_COMPONENT(FILENAME ${FILE} NAME)
              EXECUTE_PROCESS(COMMAND "${XMLVERSION_EXE}" "${CUR_DESTDIR_CORR}${SD_DATADIR_ABS}/version.xml" "config/raceman/extra/${FILENAME}" "config/raceman/extra/${FILENAME}" "${CUR_DESTDIR_CORR}${SD_DATADIR_ABS}" RESULT_VARIABLE XMLVERSTATUS)
              IF(XMLVERSTATUS)
               MESSAGE(FATAL_ERROR "Error: xmlversion failed")
              ENDIF(XMLVERSTATUS)
           ENDFOREACH()
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

