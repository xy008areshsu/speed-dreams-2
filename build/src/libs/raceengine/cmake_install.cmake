# Install script for directory: /home/ares/Developer/speed-dream-2.0/speed/src/libs/raceengine

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
  IF(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib64/games/speed-dreams-2/lib/libraceengine.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib64/games/speed-dreams-2/lib/libraceengine.so")
    FILE(RPATH_CHECK
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib64/games/speed-dreams-2/lib/libraceengine.so"
         RPATH "/usr/local/lib64/games/speed-dreams-2/lib")
  ENDIF()
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib64/games/speed-dreams-2/lib" TYPE SHARED_LIBRARY FILES "/home/ares/Developer/speed-dream-2.0/speed/build/src/libs/raceengine/libraceengine.so")
  IF(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib64/games/speed-dreams-2/lib/libraceengine.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib64/games/speed-dreams-2/lib/libraceengine.so")
    FILE(RPATH_CHANGE
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib64/games/speed-dreams-2/lib/libraceengine.so"
         OLD_RPATH "/home/ares/Developer/speed-dream-2.0/speed/build/src/libs/tgf:/home/ares/Developer/speed-dream-2.0/speed/build/src/libs/tgfdata:/home/ares/Developer/speed-dream-2.0/speed/build/src/libs/robottools:/home/ares/Developer/speed-dream-2.0/speed/build/src/modules/networking:/home/ares/Developer/speed-dream-2.0/speed/build/src/libs/txml:/usr/local/lib:"
         NEW_RPATH "/usr/local/lib64/games/speed-dreams-2/lib")
    IF(CMAKE_INSTALL_DO_STRIP)
      EXECUTE_PROCESS(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib64/games/speed-dreams-2/lib/libraceengine.so")
    ENDIF(CMAKE_INSTALL_DO_STRIP)
  ENDIF()
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/config" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/libs/raceengine/raceresults.xsl")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/config" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/libs/raceengine/raceengine.xml")
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
           FOREACH(FILE raceengine.xml)
             GET_FILENAME_COMPONENT(FILENAME ${FILE} NAME)
              EXECUTE_PROCESS(COMMAND "${XMLVERSION_EXE}" "${CUR_DESTDIR_CORR}${SD_DATADIR_ABS}/version.xml" "config/${FILENAME}" "config/${FILENAME}" "${CUR_DESTDIR_CORR}${SD_DATADIR_ABS}" RESULT_VARIABLE XMLVERSTATUS)
              IF(XMLVERSTATUS)
               MESSAGE(FATAL_ERROR "Error: xmlversion failed")
              ENDIF(XMLVERSTATUS)
           ENDFOREACH()
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/speed-dreams-2" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/libs/raceengine/raceinit.h")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

