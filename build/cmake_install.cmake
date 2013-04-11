# Install script for directory: /home/ares/Developer/speed-dream-2.0/speed

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
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2" TYPE FILE FILES
    "/home/ares/Developer/speed-dream-2.0/speed/credits.xml"
    "/home/ares/Developer/speed-dream-2.0/speed/CHANGES.txt"
    "/home/ares/Developer/speed-dream-2.0/speed/COPYING.txt"
    "/home/ares/Developer/speed-dream-2.0/speed/INSTALL.txt"
    "/home/ares/Developer/speed-dream-2.0/speed/README.txt"
    "/home/ares/Developer/speed-dream-2.0/speed/TODO.txt"
    )
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  SET(CUR_DESTDIR "$ENV{DESTDIR}")
         IF(CUR_DESTDIR MATCHES "[^/]")
           STRING(REGEX REPLACE "^(.*[^/])/*$" "\\1" CUR_DESTDIR_CORR "${CUR_DESTDIR}")
         ELSE(CUR_DESTDIR MATCHES "[^/]")
           SET(CUR_DESTDIR_CORR "")
           ENDIF(CUR_DESTDIR MATCHES "[^/]")
         FILE(MAKE_DIRECTORY "${CUR_DESTDIR_CORR}/usr/local/share/games/speed-dreams-2/cmake")
         FILE(WRITE "${CUR_DESTDIR_CORR}/usr/local/share/games/speed-dreams-2/cmake/speed-dreams.cmake"
            "SET(SD_DATADIR_ABS \"/usr/local/share/games/speed-dreams-2\")
              SET(SD_LOCALDIR \"~/.speed-dreams-2\")
            SET(SD_LIBDIR_ABS \"/usr/local/lib64/games/speed-dreams-2\")
            SET(SD_BINDIR_ABS \"/usr/local/games\")
            SET(SD_INCLUDEDIR_ABS \"/usr/local/include/speed-dreams-2\")
               SET(IN_SOURCETREE FALSE)\n\n")
         FILE(READ "/home/ares/Developer/speed-dream-2.0/speed/cmake/macros.cmake" SD_MACRO_CONTENT)
         FILE(APPEND "${CUR_DESTDIR_CORR}/usr/local/share/games/speed-dreams-2/cmake/speed-dreams.cmake" ${SD_MACRO_CONTENT})
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for each subdirectory.
  INCLUDE("/home/ares/Developer/speed-dream-2.0/speed/build/src/cmake_install.cmake")
  INCLUDE("/home/ares/Developer/speed-dream-2.0/speed/build/data/cmake_install.cmake")
  INCLUDE("/home/ares/Developer/speed-dream-2.0/speed/build/cmake/cmake_install.cmake")

ENDIF(NOT CMAKE_INSTALL_LOCAL_ONLY)

IF(CMAKE_INSTALL_COMPONENT)
  SET(CMAKE_INSTALL_MANIFEST "install_manifest_${CMAKE_INSTALL_COMPONENT}.txt")
ELSE(CMAKE_INSTALL_COMPONENT)
  SET(CMAKE_INSTALL_MANIFEST "install_manifest.txt")
ENDIF(CMAKE_INSTALL_COMPONENT)

FILE(WRITE "/home/ares/Developer/speed-dream-2.0/speed/build/${CMAKE_INSTALL_MANIFEST}" "")
FOREACH(file ${CMAKE_INSTALL_MANIFEST_FILES})
  FILE(APPEND "/home/ares/Developer/speed-dream-2.0/speed/build/${CMAKE_INSTALL_MANIFEST}" "${file}\n")
ENDFOREACH(file)
