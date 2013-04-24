# Install script for directory: /home/ares/Developer/speed-dream-2.0/speed/src/drivers/FrameworkRobot

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
  IF(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib64/games/speed-dreams-2/drivers/FrameworkRobot/FrameworkRobot.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib64/games/speed-dreams-2/drivers/FrameworkRobot/FrameworkRobot.so")
    FILE(RPATH_CHECK
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib64/games/speed-dreams-2/drivers/FrameworkRobot/FrameworkRobot.so"
         RPATH "/usr/local/lib64/games/speed-dreams-2/lib")
  ENDIF()
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib64/games/speed-dreams-2/drivers/FrameworkRobot" TYPE SHARED_LIBRARY FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/FrameworkRobot/FrameworkRobot.so")
  IF(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib64/games/speed-dreams-2/drivers/FrameworkRobot/FrameworkRobot.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib64/games/speed-dreams-2/drivers/FrameworkRobot/FrameworkRobot.so")
    FILE(RPATH_CHANGE
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib64/games/speed-dreams-2/drivers/FrameworkRobot/FrameworkRobot.so"
         OLD_RPATH "/home/ares/Developer/speed-dream-2.0/speed/src/libs/portability:/home/ares/Developer/speed-dream-2.0/speed/src/libs/robottools:/home/ares/Developer/speed-dream-2.0/speed/src/libs/tgf:/usr/local/lib:"
         NEW_RPATH "/usr/local/lib64/games/speed-dreams-2/lib")
    IF(CMAKE_INSTALL_DO_STRIP)
      EXECUTE_PROCESS(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib64/games/speed-dreams-2/drivers/FrameworkRobot/FrameworkRobot.so")
    ENDIF(CMAKE_INSTALL_DO_STRIP)
  ENDIF()
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/FrameworkRobot" TYPE FILE FILES
    "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/FrameworkRobot/src/FrameworkRobot.xml"
    "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/FrameworkRobot/src/default.xml"
    "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/FrameworkRobot/src/logo.rgb"
    "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/FrameworkRobot/src/readme.txt"
    )
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/FrameworkRobot/ref-boxer-gt3-rs-2010" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/FrameworkRobot/src/ref-boxer-gt3-rs-2010/default.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

