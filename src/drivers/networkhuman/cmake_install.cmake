# Install script for directory: /home/ares/Developer/speed-dream-2.0/speed/src/drivers/networkhuman

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
  IF(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib64/games/speed-dreams-2/drivers/networkhuman/networkhuman.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib64/games/speed-dreams-2/drivers/networkhuman/networkhuman.so")
    FILE(RPATH_CHECK
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib64/games/speed-dreams-2/drivers/networkhuman/networkhuman.so"
         RPATH "/usr/local/lib64/games/speed-dreams-2/lib")
  ENDIF()
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib64/games/speed-dreams-2/drivers/networkhuman" TYPE SHARED_LIBRARY FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/networkhuman/networkhuman.so")
  IF(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib64/games/speed-dreams-2/drivers/networkhuman/networkhuman.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib64/games/speed-dreams-2/drivers/networkhuman/networkhuman.so")
    FILE(RPATH_CHANGE
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib64/games/speed-dreams-2/drivers/networkhuman/networkhuman.so"
         OLD_RPATH "/home/ares/Developer/speed-dream-2.0/speed/src/libs/portability:/home/ares/Developer/speed-dream-2.0/speed/src/libs/robottools:/home/ares/Developer/speed-dream-2.0/speed/src/libs/tgf:/home/ares/Developer/speed-dream-2.0/speed/src/libs/tgfclient:/home/ares/Developer/speed-dream-2.0/speed/src/modules/networking:/usr/local/lib:"
         NEW_RPATH "/usr/local/lib64/games/speed-dreams-2/lib")
    IF(CMAKE_INSTALL_DO_STRIP)
      EXECUTE_PROCESS(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib64/games/speed-dreams-2/drivers/networkhuman/networkhuman.so")
    ENDIF(CMAKE_INSTALL_DO_STRIP)
  ENDIF()
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/networkhuman" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/networkhuman/logo.png")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/networkhuman" TYPE FILE FILES
    "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/networkhuman/networkhuman.xml"
    "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/networkhuman/preferences.xml"
    "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/networkhuman/car.xml"
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
             FOREACH(FILE networkhuman.xml;preferences.xml;car.xml)
               GET_FILENAME_COMPONENT(FILENAME ${FILE} NAME)
               EXECUTE_PROCESS(COMMAND "${XMLVERSION_EXE}" "${CUR_DESTDIR_CORR}${SD_DATADIR_ABS}/version.xml" "drivers/networkhuman/${FILENAME}" "drivers/networkhuman/${FILENAME}" "${CUR_DESTDIR_CORR}${SD_DATADIR_ABS}" RESULT_VARIABLE XMLVERSTATUS)
               IF(XMLVERSTATUS)
                 MESSAGE(FATAL_ERROR "Error: xmlversion failed : ${XMLVERSTATUS}")
               ENDIF(XMLVERSTATUS)
             ENDFOREACH()
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

