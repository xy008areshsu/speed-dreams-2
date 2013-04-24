# Install script for directory: /home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr

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
  IF(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib64/games/speed-dreams-2/drivers/usr/usr.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib64/games/speed-dreams-2/drivers/usr/usr.so")
    FILE(RPATH_CHECK
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib64/games/speed-dreams-2/drivers/usr/usr.so"
         RPATH "/usr/local/lib64/games/speed-dreams-2/lib")
  ENDIF()
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib64/games/speed-dreams-2/drivers/usr" TYPE SHARED_LIBRARY FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr.so")
  IF(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib64/games/speed-dreams-2/drivers/usr/usr.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib64/games/speed-dreams-2/drivers/usr/usr.so")
    FILE(RPATH_CHANGE
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib64/games/speed-dreams-2/drivers/usr/usr.so"
         OLD_RPATH "/home/ares/Developer/speed-dream-2.0/speed/src/libs/portability:/home/ares/Developer/speed-dream-2.0/speed/src/libs/robottools:/home/ares/Developer/speed-dream-2.0/speed/src/libs/tgf:/usr/local/lib:"
         NEW_RPATH "/usr/local/lib64/games/speed-dreams-2/lib")
    IF(CMAKE_INSTALL_DO_STRIP)
      EXECUTE_PROCESS(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib64/games/speed-dreams-2/drivers/usr/usr.so")
    ENDIF(CMAKE_INSTALL_DO_STRIP)
  ENDIF()
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib64/games/speed-dreams-2/drivers/usr_trb1" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_trb1.so")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib64/games/speed-dreams-2/drivers/usr_sc" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_sc.so")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib64/games/speed-dreams-2/drivers/usr_ls1" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_ls1.so")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib64/games/speed-dreams-2/drivers/usr_ls2" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_ls2.so")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib64/games/speed-dreams-2/drivers/usr_36GP" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_36GP.so")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib64/games/speed-dreams-2/drivers/usr_rs" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_rs.so")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib64/games/speed-dreams-2/drivers/usr_lp1" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_lp1.so")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/usr_trb1" TYPE FILE FILES
    "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_trb1/usr_trb1.xml"
    "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_trb1/default.xml"
    "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_trb1/logo.rgb"
    "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_trb1/readme.txt"
    )
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/usr_trb1/1" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_trb1/1/skill.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/usr_trb1/1" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_trb1/1/logo.rgb")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/usr_trb1/1" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_trb1/1/trb1-cavallo-360rb.png")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/usr_trb1/1" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_trb1/1/wheel3d.png")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/usr_trb1/1" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_trb1/1/trb1-cavallo-360rb-preview.jpg")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/usr_trb1/2" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_trb1/2/skill.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/usr_trb1/2" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_trb1/2/trb1-cavallo-360rb.png")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/usr_trb1/2" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_trb1/2/wheel3d.png")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/usr_trb1/2" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_trb1/2/trb1-cavallo-360rb-preview.jpg")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/usr_trb1/3" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_trb1/3/skill.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/usr_trb1/3" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_trb1/3/trb1-boxer-trbrs.png")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/usr_trb1/3" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_trb1/3/wheel3d.png")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/usr_trb1/3" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_trb1/3/trb1-boxer-trbrs-preview.jpg")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/usr_trb1/4" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_trb1/4/skill.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/usr_trb1/4" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_trb1/4/trb1-boxer-trbrs.png")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/usr_trb1/4" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_trb1/4/wheel3d.png")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/usr_trb1/4" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_trb1/4/trb1-boxer-trbrs-preview.jpg")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/usr_trb1/5" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_trb1/5/skill.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/usr_trb1/5" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_trb1/5/logo.rgb")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/usr_trb1/5" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_trb1/5/trb1-spirit-rb1lt.png")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/usr_trb1/5" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_trb1/5/wheel3d.png")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/usr_trb1/5" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_trb1/5/trb1-spirit-rb1lt-preview.jpg")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/usr_trb1/6" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_trb1/6/skill.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/usr_trb1/6" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_trb1/6/logo.rgb")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/usr_trb1/6" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_trb1/6/trb1-spirit-rb1lt.png")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/usr_trb1/6" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_trb1/6/wheel3d.png")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/usr_trb1/6" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_trb1/6/trb1-spirit-rb1lt-preview.jpg")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/usr_trb1/7" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_trb1/7/skill.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/usr_trb1/7" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_trb1/7/wheel3d.png")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/usr_trb1/7" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_trb1/7/trb1-taipan-rb1.png")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/usr_trb1/7" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_trb1/7/trb1-taipan-rb1-preview.jpg")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/usr_trb1/8" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_trb1/8/skill.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/usr_trb1/8" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_trb1/8/wheel3d.png")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/usr_trb1/8" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_trb1/8/trb1-taipan-rb1.png")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/usr_trb1/8" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_trb1/8/trb1-taipan-rb1-preview.jpg")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/usr_trb1/9" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_trb1/9/skill.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/usr_trb1/9" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_trb1/9/logo.rgb")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/usr_trb1/9" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_trb1/9/driver.png")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/usr_trb1/9" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_trb1/9/trb1-silber-rblk.png")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/usr_trb1/9" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_trb1/9/wheel3d.png")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/usr_trb1/9" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_trb1/9/trb1-silber-rblk-preview.jpg")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/usr_trb1/10" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_trb1/10/skill.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/usr_trb1/10" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_trb1/10/logo.rgb")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/usr_trb1/10" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_trb1/10/driver.png")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/usr_trb1/10" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_trb1/10/trb1-silber-rblk.png")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/usr_trb1/10" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_trb1/10/wheel3d.png")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/usr_trb1/10" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_trb1/10/trb1-silber-rblk-preview.jpg")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/usr_trb1/11" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_trb1/11/skill.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/usr_trb1/11" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_trb1/11/driver.png")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/usr_trb1/11" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_trb1/11/wheel3d.png")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/usr_trb1/11" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_trb1/11/trb1-sector-rb1.png")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/usr_trb1/11" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_trb1/11/trb1-sector-rb1-preview.jpg")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/usr_trb1/12" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_trb1/12/skill.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/usr_trb1/12" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_trb1/12/driver.png")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/usr_trb1/12" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_trb1/12/wheel3d.png")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/usr_trb1/12" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_trb1/12/trb1-sector-rb1.png")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/usr_trb1/12" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_trb1/12/trb1-sector-rb1-preview.jpg")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/usr_trb1/13" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_trb1/13/skill.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/usr_trb1/13" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_trb1/13/driver.png")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/usr_trb1/13" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_trb1/13/wheel3d.png")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/usr_trb1/13" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_trb1/13/trb1-zaxxon-rb.png")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/usr_trb1/13" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_trb1/13/trb1-zaxxon-rb-preview.jpg")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/usr_trb1/14" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_trb1/14/skill.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/usr_trb1/14" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_trb1/14/driver.png")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/usr_trb1/14" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_trb1/14/wheel3d.png")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/usr_trb1/14" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_trb1/14/trb1-zaxxon-rb.png")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/usr_trb1/14" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_trb1/14/trb1-zaxxon-rb-preview.jpg")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/usr_trb1/trb1-boxer-trbrs" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_trb1/trb1-boxer-trbrs/street-1.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/usr_trb1/trb1-boxer-trbrs" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_trb1/trb1-boxer-trbrs/e-track-2.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/usr_trb1/trb1-boxer-trbrs" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_trb1/trb1-boxer-trbrs/longday.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/usr_trb1/trb1-boxer-trbrs" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_trb1/trb1-boxer-trbrs/prenzlau.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/usr_trb1/trb1-boxer-trbrs" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_trb1/trb1-boxer-trbrs/spring.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/usr_trb1/trb1-boxer-trbrs" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_trb1/trb1-boxer-trbrs/brondehach.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/usr_trb1/trb1-boxer-trbrs" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_trb1/trb1-boxer-trbrs/ole-road-1.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/usr_trb1/trb1-boxer-trbrs" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_trb1/trb1-boxer-trbrs/default.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/usr_trb1/trb1-boxer-trbrs" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_trb1/trb1-boxer-trbrs/migrants.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/usr_trb1/trb1-boxer-trbrs" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_trb1/trb1-boxer-trbrs/alpine-1.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/usr_trb1/trb1-boxer-trbrs" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_trb1/trb1-boxer-trbrs/wheel-1.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/usr_trb1/trb1-boxer-trbrs" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_trb1/trb1-boxer-trbrs/salty.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/usr_trb1/trb1-boxer-trbrs" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_trb1/trb1-boxer-trbrs/aalborg.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/usr_trb1/trb1-boxer-trbrs" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_trb1/trb1-boxer-trbrs/corkscrew.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/usr_trb1/trb1-boxer-trbrs" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_trb1/trb1-boxer-trbrs/e-track-3.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/usr_trb1/trb1-boxer-trbrs" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_trb1/trb1-boxer-trbrs/michigan.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/usr_trb1/trb1-boxer-trbrs" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_trb1/trb1-boxer-trbrs/inuksuk.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/usr_trb1/trb1-boxer-trbrs" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_trb1/trb1-boxer-trbrs/manton.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/usr_trb1/trb1-boxer-trbrs" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_trb1/trb1-boxer-trbrs/lombaro.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/usr_trb1/trb1-boxer-trbrs" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_trb1/trb1-boxer-trbrs/wheel-2.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/usr_trb1/trb1-boxer-trbrs" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_trb1/trb1-boxer-trbrs/allondaz.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/usr_trb1/trb1-boxer-trbrs" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_trb1/trb1-boxer-trbrs/charmey.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/usr_trb1/trb1-boxer-trbrs" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_trb1/trb1-boxer-trbrs/ruudskogen.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/usr_trb1/trb1-boxer-trbrs" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_trb1/trb1-boxer-trbrs/e-track-4.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/usr_trb1/trb1-boxer-trbrs" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_trb1/trb1-boxer-trbrs/g-track-3.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/usr_trb1/trb1-boxer-trbrs" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_trb1/trb1-boxer-trbrs/forza.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/usr_trb1/trb1-cavallo-360rb" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_trb1/trb1-cavallo-360rb/street-1.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/usr_trb1/trb1-cavallo-360rb" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_trb1/trb1-cavallo-360rb/e-track-2.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/usr_trb1/trb1-cavallo-360rb" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_trb1/trb1-cavallo-360rb/longday.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/usr_trb1/trb1-cavallo-360rb" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_trb1/trb1-cavallo-360rb/prenzlau.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/usr_trb1/trb1-cavallo-360rb" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_trb1/trb1-cavallo-360rb/spring.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/usr_trb1/trb1-cavallo-360rb" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_trb1/trb1-cavallo-360rb/brondehach.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/usr_trb1/trb1-cavallo-360rb" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_trb1/trb1-cavallo-360rb/ole-road-1.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/usr_trb1/trb1-cavallo-360rb" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_trb1/trb1-cavallo-360rb/default.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/usr_trb1/trb1-cavallo-360rb" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_trb1/trb1-cavallo-360rb/migrants.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/usr_trb1/trb1-cavallo-360rb" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_trb1/trb1-cavallo-360rb/alpine-1.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/usr_trb1/trb1-cavallo-360rb" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_trb1/trb1-cavallo-360rb/wheel-1.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/usr_trb1/trb1-cavallo-360rb" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_trb1/trb1-cavallo-360rb/salty.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/usr_trb1/trb1-cavallo-360rb" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_trb1/trb1-cavallo-360rb/aalborg.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/usr_trb1/trb1-cavallo-360rb" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_trb1/trb1-cavallo-360rb/corkscrew.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/usr_trb1/trb1-cavallo-360rb" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_trb1/trb1-cavallo-360rb/e-track-3.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/usr_trb1/trb1-cavallo-360rb" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_trb1/trb1-cavallo-360rb/michigan.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/usr_trb1/trb1-cavallo-360rb" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_trb1/trb1-cavallo-360rb/inuksuk.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/usr_trb1/trb1-cavallo-360rb" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_trb1/trb1-cavallo-360rb/manton.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/usr_trb1/trb1-cavallo-360rb" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_trb1/trb1-cavallo-360rb/lombaro.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/usr_trb1/trb1-cavallo-360rb" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_trb1/trb1-cavallo-360rb/wheel-2.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/usr_trb1/trb1-cavallo-360rb" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_trb1/trb1-cavallo-360rb/allondaz.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/usr_trb1/trb1-cavallo-360rb" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_trb1/trb1-cavallo-360rb/charmey.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/usr_trb1/trb1-cavallo-360rb" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_trb1/trb1-cavallo-360rb/ruudskogen.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/usr_trb1/trb1-cavallo-360rb" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_trb1/trb1-cavallo-360rb/e-track-4.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/usr_trb1/trb1-cavallo-360rb" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_trb1/trb1-cavallo-360rb/g-track-3.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/usr_trb1/trb1-cavallo-360rb" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_trb1/trb1-cavallo-360rb/forza.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/usr_trb1/trb1-sector-rb1" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_trb1/trb1-sector-rb1/street-1.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/usr_trb1/trb1-sector-rb1" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_trb1/trb1-sector-rb1/e-track-2.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/usr_trb1/trb1-sector-rb1" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_trb1/trb1-sector-rb1/longday.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/usr_trb1/trb1-sector-rb1" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_trb1/trb1-sector-rb1/prenzlau.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/usr_trb1/trb1-sector-rb1" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_trb1/trb1-sector-rb1/spring.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/usr_trb1/trb1-sector-rb1" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_trb1/trb1-sector-rb1/brondehach.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/usr_trb1/trb1-sector-rb1" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_trb1/trb1-sector-rb1/ole-road-1.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/usr_trb1/trb1-sector-rb1" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_trb1/trb1-sector-rb1/default.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/usr_trb1/trb1-sector-rb1" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_trb1/trb1-sector-rb1/migrants.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/usr_trb1/trb1-sector-rb1" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_trb1/trb1-sector-rb1/alpine-1.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/usr_trb1/trb1-sector-rb1" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_trb1/trb1-sector-rb1/wheel-1.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/usr_trb1/trb1-sector-rb1" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_trb1/trb1-sector-rb1/salty.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/usr_trb1/trb1-sector-rb1" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_trb1/trb1-sector-rb1/aalborg.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/usr_trb1/trb1-sector-rb1" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_trb1/trb1-sector-rb1/corkscrew.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/usr_trb1/trb1-sector-rb1" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_trb1/trb1-sector-rb1/e-track-3.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/usr_trb1/trb1-sector-rb1" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_trb1/trb1-sector-rb1/michigan.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/usr_trb1/trb1-sector-rb1" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_trb1/trb1-sector-rb1/inuksuk.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/usr_trb1/trb1-sector-rb1" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_trb1/trb1-sector-rb1/manton.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/usr_trb1/trb1-sector-rb1" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_trb1/trb1-sector-rb1/lombaro.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/usr_trb1/trb1-sector-rb1" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_trb1/trb1-sector-rb1/wheel-2.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/usr_trb1/trb1-sector-rb1" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_trb1/trb1-sector-rb1/allondaz.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/usr_trb1/trb1-sector-rb1" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_trb1/trb1-sector-rb1/charmey.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/usr_trb1/trb1-sector-rb1" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_trb1/trb1-sector-rb1/ruudskogen.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/usr_trb1/trb1-sector-rb1" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_trb1/trb1-sector-rb1/e-track-4.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/usr_trb1/trb1-sector-rb1" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_trb1/trb1-sector-rb1/g-track-3.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/usr_trb1/trb1-sector-rb1" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_trb1/trb1-sector-rb1/forza.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/usr_trb1/trb1-silber-rblk" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_trb1/trb1-silber-rblk/street-1.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/usr_trb1/trb1-silber-rblk" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_trb1/trb1-silber-rblk/e-track-2.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/usr_trb1/trb1-silber-rblk" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_trb1/trb1-silber-rblk/longday.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/usr_trb1/trb1-silber-rblk" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_trb1/trb1-silber-rblk/prenzlau.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/usr_trb1/trb1-silber-rblk" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_trb1/trb1-silber-rblk/spring.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/usr_trb1/trb1-silber-rblk" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_trb1/trb1-silber-rblk/brondehach.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/usr_trb1/trb1-silber-rblk" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_trb1/trb1-silber-rblk/ole-road-1.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/usr_trb1/trb1-silber-rblk" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_trb1/trb1-silber-rblk/default.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/usr_trb1/trb1-silber-rblk" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_trb1/trb1-silber-rblk/migrants.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/usr_trb1/trb1-silber-rblk" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_trb1/trb1-silber-rblk/alpine-1.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/usr_trb1/trb1-silber-rblk" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_trb1/trb1-silber-rblk/wheel-1.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/usr_trb1/trb1-silber-rblk" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_trb1/trb1-silber-rblk/salty.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/usr_trb1/trb1-silber-rblk" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_trb1/trb1-silber-rblk/aalborg.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/usr_trb1/trb1-silber-rblk" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_trb1/trb1-silber-rblk/corkscrew.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/usr_trb1/trb1-silber-rblk" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_trb1/trb1-silber-rblk/e-track-3.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/usr_trb1/trb1-silber-rblk" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_trb1/trb1-silber-rblk/michigan.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/usr_trb1/trb1-silber-rblk" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_trb1/trb1-silber-rblk/inuksuk.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/usr_trb1/trb1-silber-rblk" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_trb1/trb1-silber-rblk/manton.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/usr_trb1/trb1-silber-rblk" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_trb1/trb1-silber-rblk/lombaro.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/usr_trb1/trb1-silber-rblk" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_trb1/trb1-silber-rblk/wheel-2.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/usr_trb1/trb1-silber-rblk" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_trb1/trb1-silber-rblk/allondaz.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/usr_trb1/trb1-silber-rblk" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_trb1/trb1-silber-rblk/charmey.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/usr_trb1/trb1-silber-rblk" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_trb1/trb1-silber-rblk/ruudskogen.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/usr_trb1/trb1-silber-rblk" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_trb1/trb1-silber-rblk/e-track-4.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/usr_trb1/trb1-silber-rblk" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_trb1/trb1-silber-rblk/g-track-3.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/usr_trb1/trb1-silber-rblk" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_trb1/trb1-silber-rblk/forza.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/usr_trb1/trb1-spirit-rb1lt" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_trb1/trb1-spirit-rb1lt/street-1.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/usr_trb1/trb1-spirit-rb1lt" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_trb1/trb1-spirit-rb1lt/e-track-2.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/usr_trb1/trb1-spirit-rb1lt" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_trb1/trb1-spirit-rb1lt/longday.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/usr_trb1/trb1-spirit-rb1lt" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_trb1/trb1-spirit-rb1lt/prenzlau.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/usr_trb1/trb1-spirit-rb1lt" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_trb1/trb1-spirit-rb1lt/spring.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/usr_trb1/trb1-spirit-rb1lt" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_trb1/trb1-spirit-rb1lt/brondehach.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/usr_trb1/trb1-spirit-rb1lt" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_trb1/trb1-spirit-rb1lt/ole-road-1.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/usr_trb1/trb1-spirit-rb1lt" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_trb1/trb1-spirit-rb1lt/default.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/usr_trb1/trb1-spirit-rb1lt" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_trb1/trb1-spirit-rb1lt/migrants.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/usr_trb1/trb1-spirit-rb1lt" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_trb1/trb1-spirit-rb1lt/alpine-1.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/usr_trb1/trb1-spirit-rb1lt" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_trb1/trb1-spirit-rb1lt/wheel-1.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/usr_trb1/trb1-spirit-rb1lt" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_trb1/trb1-spirit-rb1lt/salty.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/usr_trb1/trb1-spirit-rb1lt" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_trb1/trb1-spirit-rb1lt/aalborg.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/usr_trb1/trb1-spirit-rb1lt" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_trb1/trb1-spirit-rb1lt/corkscrew.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/usr_trb1/trb1-spirit-rb1lt" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_trb1/trb1-spirit-rb1lt/e-track-3.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/usr_trb1/trb1-spirit-rb1lt" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_trb1/trb1-spirit-rb1lt/espie.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/usr_trb1/trb1-spirit-rb1lt" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_trb1/trb1-spirit-rb1lt/michigan.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/usr_trb1/trb1-spirit-rb1lt" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_trb1/trb1-spirit-rb1lt/inuksuk.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/usr_trb1/trb1-spirit-rb1lt" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_trb1/trb1-spirit-rb1lt/manton.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/usr_trb1/trb1-spirit-rb1lt" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_trb1/trb1-spirit-rb1lt/lombaro.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/usr_trb1/trb1-spirit-rb1lt" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_trb1/trb1-spirit-rb1lt/wheel-2.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/usr_trb1/trb1-spirit-rb1lt" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_trb1/trb1-spirit-rb1lt/allondaz.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/usr_trb1/trb1-spirit-rb1lt" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_trb1/trb1-spirit-rb1lt/charmey.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/usr_trb1/trb1-spirit-rb1lt" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_trb1/trb1-spirit-rb1lt/ruudskogen.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/usr_trb1/trb1-spirit-rb1lt" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_trb1/trb1-spirit-rb1lt/e-track-4.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/usr_trb1/trb1-spirit-rb1lt" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_trb1/trb1-spirit-rb1lt/g-track-3.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/usr_trb1/trb1-spirit-rb1lt" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_trb1/trb1-spirit-rb1lt/forza.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/usr_trb1/trb1-taipan-rb1" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_trb1/trb1-taipan-rb1/street-1.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/usr_trb1/trb1-taipan-rb1" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_trb1/trb1-taipan-rb1/e-track-2.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/usr_trb1/trb1-taipan-rb1" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_trb1/trb1-taipan-rb1/longday.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/usr_trb1/trb1-taipan-rb1" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_trb1/trb1-taipan-rb1/prenzlau.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/usr_trb1/trb1-taipan-rb1" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_trb1/trb1-taipan-rb1/spring.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/usr_trb1/trb1-taipan-rb1" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_trb1/trb1-taipan-rb1/brondehach.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/usr_trb1/trb1-taipan-rb1" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_trb1/trb1-taipan-rb1/ole-road-1.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/usr_trb1/trb1-taipan-rb1" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_trb1/trb1-taipan-rb1/default.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/usr_trb1/trb1-taipan-rb1" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_trb1/trb1-taipan-rb1/migrants.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/usr_trb1/trb1-taipan-rb1" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_trb1/trb1-taipan-rb1/alpine-1.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/usr_trb1/trb1-taipan-rb1" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_trb1/trb1-taipan-rb1/wheel-1.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/usr_trb1/trb1-taipan-rb1" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_trb1/trb1-taipan-rb1/salty.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/usr_trb1/trb1-taipan-rb1" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_trb1/trb1-taipan-rb1/aalborg.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/usr_trb1/trb1-taipan-rb1" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_trb1/trb1-taipan-rb1/corkscrew.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/usr_trb1/trb1-taipan-rb1" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_trb1/trb1-taipan-rb1/e-track-3.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/usr_trb1/trb1-taipan-rb1" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_trb1/trb1-taipan-rb1/michigan.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/usr_trb1/trb1-taipan-rb1" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_trb1/trb1-taipan-rb1/inuksuk.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/usr_trb1/trb1-taipan-rb1" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_trb1/trb1-taipan-rb1/manton.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/usr_trb1/trb1-taipan-rb1" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_trb1/trb1-taipan-rb1/lombaro.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/usr_trb1/trb1-taipan-rb1" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_trb1/trb1-taipan-rb1/wheel-2.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/usr_trb1/trb1-taipan-rb1" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_trb1/trb1-taipan-rb1/allondaz.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/usr_trb1/trb1-taipan-rb1" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_trb1/trb1-taipan-rb1/charmey.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/usr_trb1/trb1-taipan-rb1" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_trb1/trb1-taipan-rb1/ruudskogen.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/usr_trb1/trb1-taipan-rb1" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_trb1/trb1-taipan-rb1/e-track-4.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/usr_trb1/trb1-taipan-rb1" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_trb1/trb1-taipan-rb1/g-track-3.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/usr_trb1/trb1-taipan-rb1" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_trb1/trb1-taipan-rb1/forza.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/usr_trb1/trb1-zaxxon-rb" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_trb1/trb1-zaxxon-rb/street-1.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/usr_trb1/trb1-zaxxon-rb" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_trb1/trb1-zaxxon-rb/e-track-2.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/usr_trb1/trb1-zaxxon-rb" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_trb1/trb1-zaxxon-rb/longday.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/usr_trb1/trb1-zaxxon-rb" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_trb1/trb1-zaxxon-rb/prenzlau.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/usr_trb1/trb1-zaxxon-rb" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_trb1/trb1-zaxxon-rb/spring.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/usr_trb1/trb1-zaxxon-rb" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_trb1/trb1-zaxxon-rb/brondehach.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/usr_trb1/trb1-zaxxon-rb" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_trb1/trb1-zaxxon-rb/ole-road-1.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/usr_trb1/trb1-zaxxon-rb" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_trb1/trb1-zaxxon-rb/default.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/usr_trb1/trb1-zaxxon-rb" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_trb1/trb1-zaxxon-rb/migrants.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/usr_trb1/trb1-zaxxon-rb" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_trb1/trb1-zaxxon-rb/alpine-1.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/usr_trb1/trb1-zaxxon-rb" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_trb1/trb1-zaxxon-rb/wheel-1.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/usr_trb1/trb1-zaxxon-rb" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_trb1/trb1-zaxxon-rb/salty.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/usr_trb1/trb1-zaxxon-rb" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_trb1/trb1-zaxxon-rb/aalborg.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/usr_trb1/trb1-zaxxon-rb" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_trb1/trb1-zaxxon-rb/corkscrew.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/usr_trb1/trb1-zaxxon-rb" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_trb1/trb1-zaxxon-rb/e-track-3.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/usr_trb1/trb1-zaxxon-rb" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_trb1/trb1-zaxxon-rb/espie.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/usr_trb1/trb1-zaxxon-rb" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_trb1/trb1-zaxxon-rb/michigan.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/usr_trb1/trb1-zaxxon-rb" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_trb1/trb1-zaxxon-rb/inuksuk.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/usr_trb1/trb1-zaxxon-rb" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_trb1/trb1-zaxxon-rb/manton.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/usr_trb1/trb1-zaxxon-rb" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_trb1/trb1-zaxxon-rb/lombaro.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/usr_trb1/trb1-zaxxon-rb" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_trb1/trb1-zaxxon-rb/wheel-2.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/usr_trb1/trb1-zaxxon-rb" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_trb1/trb1-zaxxon-rb/allondaz.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/usr_trb1/trb1-zaxxon-rb" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_trb1/trb1-zaxxon-rb/charmey.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/usr_trb1/trb1-zaxxon-rb" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_trb1/trb1-zaxxon-rb/ruudskogen.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/usr_trb1/trb1-zaxxon-rb" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_trb1/trb1-zaxxon-rb/e-track-4.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/usr_trb1/trb1-zaxxon-rb" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_trb1/trb1-zaxxon-rb/g-track-3.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/usr_trb1/trb1-zaxxon-rb" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_trb1/trb1-zaxxon-rb/forza.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/usr_sc" TYPE FILE FILES
    "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_sc/usr_sc.xml"
    "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_sc/default.xml"
    "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_sc/logo.rgb"
    "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_sc/readme.txt"
    )
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/usr_sc/1" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_sc/1/skill.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/usr_sc/1" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_sc/1/logo.rgb")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/usr_sc/1" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_sc/1/wheel3d.png")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/usr_sc/1" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_sc/1/sc-boxer-96.png")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/usr_sc/1" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_sc/1/sc-boxer-96-preview.jpg")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/usr_sc/2" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_sc/2/skill.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/usr_sc/2" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_sc/2/logo.rgb")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/usr_sc/2" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_sc/2/wheel3d.png")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/usr_sc/2" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_sc/2/sc-boxer-96.png")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/usr_sc/2" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_sc/2/sc-boxer-96-preview.jpg")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/usr_sc/3" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_sc/3/skill.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/usr_sc/3" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_sc/3/logo.rgb")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/usr_sc/3" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_sc/3/sc-spirit-300.png")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/usr_sc/3" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_sc/3/wheel3d.png")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/usr_sc/3" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_sc/3/sc-spirit-300-preview.jpg")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/usr_sc/4" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_sc/4/skill.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/usr_sc/4" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_sc/4/logo.rgb")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/usr_sc/4" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_sc/4/sc-spirit-300.png")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/usr_sc/4" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_sc/4/wheel3d.png")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/usr_sc/4" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_sc/4/sc-spirit-300-preview.jpg")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/usr_sc/5" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_sc/5/skill.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/usr_sc/5" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_sc/5/logo.rgb")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/usr_sc/5" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_sc/5/wheel3d.png")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/usr_sc/5" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_sc/5/sc-cavallo-360.png")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/usr_sc/5" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_sc/5/sc-cavallo-360-preview.jpg")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/usr_sc/6" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_sc/6/skill.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/usr_sc/6" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_sc/6/logo.rgb")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/usr_sc/6" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_sc/6/wheel3d.png")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/usr_sc/6" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_sc/6/sc-cavallo-360.png")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/usr_sc/6" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_sc/6/sc-cavallo-360-preview.jpg")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/usr_sc/7" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_sc/7/skill.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/usr_sc/7" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_sc/7/logo.rgb")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/usr_sc/7" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_sc/7/sc-fmc-gt4.png")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/usr_sc/7" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_sc/7/wheel3d.png")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/usr_sc/7" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_sc/7/sc-fmc-gt4-preview.jpg")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/usr_sc/8" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_sc/8/skill.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/usr_sc/8" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_sc/8/logo.rgb")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/usr_sc/8" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_sc/8/sc-fmc-gt4.png")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/usr_sc/8" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_sc/8/wheel3d.png")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/usr_sc/8" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_sc/8/sc-fmc-gt4-preview.jpg")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/usr_sc/9" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_sc/9/skill.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/usr_sc/9" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_sc/9/logo.rgb")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/usr_sc/9" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_sc/9/sc-lynx-220.png")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/usr_sc/9" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_sc/9/wheel3d.png")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/usr_sc/9" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_sc/9/sc-lynx-220-preview.jpg")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/usr_sc/10" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_sc/10/skill.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/usr_sc/10" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_sc/10/logo.rgb")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/usr_sc/10" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_sc/10/sc-lynx-220.png")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/usr_sc/10" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_sc/10/wheel3d.png")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/usr_sc/10" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_sc/10/sc-lynx-220-preview.jpg")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/usr_sc/11" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_sc/11/skill.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/usr_sc/11" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_sc/11/logo.rgb")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/usr_sc/11" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_sc/11/wheel3d.png")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/usr_sc/11" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_sc/11/sc-murasama-nsx.png")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/usr_sc/11" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_sc/11/sc-murasama-nsx-preview.jpg")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/usr_sc/12" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_sc/12/skill.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/usr_sc/12" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_sc/12/logo.rgb")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/usr_sc/12" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_sc/12/wheel3d.png")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/usr_sc/12" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_sc/12/sc-murasama-nsx.png")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/usr_sc/12" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_sc/12/sc-murasama-nsx-preview.jpg")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/usr_sc/sc-boxer-96" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_sc/sc-boxer-96/street-1.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/usr_sc/sc-boxer-96" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_sc/sc-boxer-96/longday.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/usr_sc/sc-boxer-96" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_sc/sc-boxer-96/spring.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/usr_sc/sc-boxer-96" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_sc/sc-boxer-96/brondehach.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/usr_sc/sc-boxer-96" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_sc/sc-boxer-96/ole-road-1.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/usr_sc/sc-boxer-96" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_sc/sc-boxer-96/default.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/usr_sc/sc-boxer-96" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_sc/sc-boxer-96/alpine-1.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/usr_sc/sc-boxer-96" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_sc/sc-boxer-96/salty.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/usr_sc/sc-boxer-96" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_sc/sc-boxer-96/corkscrew.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/usr_sc/sc-boxer-96" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_sc/sc-boxer-96/e-track-3.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/usr_sc/sc-boxer-96" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_sc/sc-boxer-96/inuksuk.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/usr_sc/sc-boxer-96" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_sc/sc-boxer-96/lombaro.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/usr_sc/sc-boxer-96" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_sc/sc-boxer-96/allondaz.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/usr_sc/sc-boxer-96" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_sc/sc-boxer-96/charmey.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/usr_sc/sc-boxer-96" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_sc/sc-boxer-96/ruudskogen.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/usr_sc/sc-boxer-96" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_sc/sc-boxer-96/e-track-4.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/usr_sc/sc-boxer-96" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_sc/sc-boxer-96/g-track-3.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/usr_sc/sc-cavallo-360" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_sc/sc-cavallo-360/street-1.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/usr_sc/sc-cavallo-360" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_sc/sc-cavallo-360/longday.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/usr_sc/sc-cavallo-360" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_sc/sc-cavallo-360/spring.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/usr_sc/sc-cavallo-360" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_sc/sc-cavallo-360/brondehach.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/usr_sc/sc-cavallo-360" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_sc/sc-cavallo-360/default-r3.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/usr_sc/sc-cavallo-360" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_sc/sc-cavallo-360/default.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/usr_sc/sc-cavallo-360" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_sc/sc-cavallo-360/alpine-1.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/usr_sc/sc-cavallo-360" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_sc/sc-cavallo-360/salty.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/usr_sc/sc-cavallo-360" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_sc/sc-cavallo-360/aalborg.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/usr_sc/sc-cavallo-360" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_sc/sc-cavallo-360/corkscrew.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/usr_sc/sc-cavallo-360" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_sc/sc-cavallo-360/e-track-3.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/usr_sc/sc-cavallo-360" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_sc/sc-cavallo-360/default-r1.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/usr_sc/sc-cavallo-360" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_sc/sc-cavallo-360/espie-r2.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/usr_sc/sc-cavallo-360" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_sc/sc-cavallo-360/espie.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/usr_sc/sc-cavallo-360" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_sc/sc-cavallo-360/inuksuk.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/usr_sc/sc-cavallo-360" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_sc/sc-cavallo-360/lombaro.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/usr_sc/sc-cavallo-360" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_sc/sc-cavallo-360/allondaz.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/usr_sc/sc-cavallo-360" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_sc/sc-cavallo-360/charmey.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/usr_sc/sc-cavallo-360" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_sc/sc-cavallo-360/ruudskogen.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/usr_sc/sc-cavallo-360" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_sc/sc-cavallo-360/espie-r1.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/usr_sc/sc-cavallo-360" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_sc/sc-cavallo-360/espie-r3.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/usr_sc/sc-cavallo-360" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_sc/sc-cavallo-360/e-track-4.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/usr_sc/sc-cavallo-360" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_sc/sc-cavallo-360/g-track-3.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/usr_sc/sc-cavallo-360" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_sc/sc-cavallo-360/forza.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/usr_sc/sc-cavallo-360" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_sc/sc-cavallo-360/default-r2.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/usr_sc/sc-fmc-gt4" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_sc/sc-fmc-gt4/street-1.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/usr_sc/sc-fmc-gt4" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_sc/sc-fmc-gt4/longday.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/usr_sc/sc-fmc-gt4" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_sc/sc-fmc-gt4/spring.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/usr_sc/sc-fmc-gt4" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_sc/sc-fmc-gt4/brondehach.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/usr_sc/sc-fmc-gt4" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_sc/sc-fmc-gt4/ole-road-1.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/usr_sc/sc-fmc-gt4" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_sc/sc-fmc-gt4/default.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/usr_sc/sc-fmc-gt4" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_sc/sc-fmc-gt4/alpine-1.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/usr_sc/sc-fmc-gt4" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_sc/sc-fmc-gt4/salty.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/usr_sc/sc-fmc-gt4" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_sc/sc-fmc-gt4/corkscrew.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/usr_sc/sc-fmc-gt4" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_sc/sc-fmc-gt4/e-track-3.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/usr_sc/sc-fmc-gt4" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_sc/sc-fmc-gt4/inuksuk.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/usr_sc/sc-fmc-gt4" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_sc/sc-fmc-gt4/lombaro.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/usr_sc/sc-fmc-gt4" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_sc/sc-fmc-gt4/allondaz.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/usr_sc/sc-fmc-gt4" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_sc/sc-fmc-gt4/charmey.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/usr_sc/sc-fmc-gt4" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_sc/sc-fmc-gt4/ruudskogen.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/usr_sc/sc-fmc-gt4" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_sc/sc-fmc-gt4/e-track-4.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/usr_sc/sc-fmc-gt4" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_sc/sc-fmc-gt4/g-track-3.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/usr_sc/sc-lynx-220" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_sc/sc-lynx-220/street-1.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/usr_sc/sc-lynx-220" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_sc/sc-lynx-220/longday.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/usr_sc/sc-lynx-220" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_sc/sc-lynx-220/spring.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/usr_sc/sc-lynx-220" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_sc/sc-lynx-220/brondehach.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/usr_sc/sc-lynx-220" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_sc/sc-lynx-220/ole-road-1.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/usr_sc/sc-lynx-220" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_sc/sc-lynx-220/default.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/usr_sc/sc-lynx-220" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_sc/sc-lynx-220/alpine-1.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/usr_sc/sc-lynx-220" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_sc/sc-lynx-220/salty.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/usr_sc/sc-lynx-220" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_sc/sc-lynx-220/corkscrew.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/usr_sc/sc-lynx-220" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_sc/sc-lynx-220/e-track-3.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/usr_sc/sc-lynx-220" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_sc/sc-lynx-220/inuksuk.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/usr_sc/sc-lynx-220" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_sc/sc-lynx-220/lombaro.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/usr_sc/sc-lynx-220" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_sc/sc-lynx-220/allondaz.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/usr_sc/sc-lynx-220" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_sc/sc-lynx-220/charmey.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/usr_sc/sc-lynx-220" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_sc/sc-lynx-220/ruudskogen.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/usr_sc/sc-lynx-220" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_sc/sc-lynx-220/e-track-4.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/usr_sc/sc-lynx-220" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_sc/sc-lynx-220/g-track-3.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/usr_sc/sc-murasama-nsx" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_sc/sc-murasama-nsx/street-1.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/usr_sc/sc-murasama-nsx" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_sc/sc-murasama-nsx/longday.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/usr_sc/sc-murasama-nsx" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_sc/sc-murasama-nsx/spring.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/usr_sc/sc-murasama-nsx" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_sc/sc-murasama-nsx/brondehach.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/usr_sc/sc-murasama-nsx" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_sc/sc-murasama-nsx/ole-road-1.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/usr_sc/sc-murasama-nsx" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_sc/sc-murasama-nsx/default.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/usr_sc/sc-murasama-nsx" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_sc/sc-murasama-nsx/alpine-1.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/usr_sc/sc-murasama-nsx" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_sc/sc-murasama-nsx/salty.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/usr_sc/sc-murasama-nsx" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_sc/sc-murasama-nsx/aalborg.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/usr_sc/sc-murasama-nsx" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_sc/sc-murasama-nsx/corkscrew.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/usr_sc/sc-murasama-nsx" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_sc/sc-murasama-nsx/e-track-3.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/usr_sc/sc-murasama-nsx" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_sc/sc-murasama-nsx/inuksuk.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/usr_sc/sc-murasama-nsx" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_sc/sc-murasama-nsx/lombaro.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/usr_sc/sc-murasama-nsx" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_sc/sc-murasama-nsx/allondaz.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/usr_sc/sc-murasama-nsx" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_sc/sc-murasama-nsx/charmey.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/usr_sc/sc-murasama-nsx" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_sc/sc-murasama-nsx/ruudskogen.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/usr_sc/sc-murasama-nsx" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_sc/sc-murasama-nsx/e-track-4.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/usr_sc/sc-murasama-nsx" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_sc/sc-murasama-nsx/g-track-3.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/usr_sc/sc-spirit-300" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_sc/sc-spirit-300/street-1.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/usr_sc/sc-spirit-300" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_sc/sc-spirit-300/longday.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/usr_sc/sc-spirit-300" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_sc/sc-spirit-300/spring.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/usr_sc/sc-spirit-300" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_sc/sc-spirit-300/brondehach.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/usr_sc/sc-spirit-300" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_sc/sc-spirit-300/ole-road-1.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/usr_sc/sc-spirit-300" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_sc/sc-spirit-300/default.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/usr_sc/sc-spirit-300" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_sc/sc-spirit-300/alpine-1.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/usr_sc/sc-spirit-300" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_sc/sc-spirit-300/salty.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/usr_sc/sc-spirit-300" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_sc/sc-spirit-300/corkscrew.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/usr_sc/sc-spirit-300" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_sc/sc-spirit-300/e-track-3.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/usr_sc/sc-spirit-300" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_sc/sc-spirit-300/inuksuk.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/usr_sc/sc-spirit-300" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_sc/sc-spirit-300/lombaro.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/usr_sc/sc-spirit-300" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_sc/sc-spirit-300/allondaz.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/usr_sc/sc-spirit-300" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_sc/sc-spirit-300/charmey.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/usr_sc/sc-spirit-300" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_sc/sc-spirit-300/ruudskogen.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/usr_sc/sc-spirit-300" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_sc/sc-spirit-300/e-track-4.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/usr_sc/sc-spirit-300" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_sc/sc-spirit-300/g-track-3.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/usr_ls1" TYPE FILE FILES
    "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_ls1/usr_ls1.xml"
    "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_ls1/default.xml"
    "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_ls1/logo.rgb"
    "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_ls1/readme.txt"
    )
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/usr_ls1/1" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_ls1/1/skill.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/usr_ls1/1" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_ls1/1/ls1-archer-r9.png")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/usr_ls1/1" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_ls1/1/wheel3d.png")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/usr_ls1/1" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_ls1/1/ls1-archer-r9-preview.jpg")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/usr_ls1/2" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_ls1/2/skill.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/usr_ls1/2" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_ls1/2/ls1-archer-r9.png")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/usr_ls1/2" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_ls1/2/wheel3d.png")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/usr_ls1/2" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_ls1/2/ls1-archer-r9-preview.jpg")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/usr_ls1/3" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_ls1/3/skill.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/usr_ls1/3" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_ls1/3/wheel3d.png")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/usr_ls1/3" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_ls1/3/ls1-vulture-v6r.png")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/usr_ls1/3" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_ls1/3/ls1-vulture-v6r-preview.jpg")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/usr_ls1/4" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_ls1/4/skill.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/usr_ls1/4" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_ls1/4/wheel3d.png")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/usr_ls1/4" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_ls1/4/ls1-vulture-v6r.png")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/usr_ls1/4" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_ls1/4/ls1-vulture-v6r-preview.jpg")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/usr_ls1/5" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_ls1/5/skill.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/usr_ls1/5" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_ls1/5/ls1-toro-rgt.png")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/usr_ls1/5" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_ls1/5/wheel3d.png")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/usr_ls1/5" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_ls1/5/ls1-toro-rgt-preview.jpg")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/usr_ls1/6" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_ls1/6/skill.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/usr_ls1/6" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_ls1/6/ls1-toro-rgt.png")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/usr_ls1/6" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_ls1/6/wheel3d.png")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/usr_ls1/6" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_ls1/6/ls1-toro-rgt-preview.jpg")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/usr_ls1/7" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_ls1/7/skill.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/usr_ls1/7" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_ls1/7/wheel3d.png")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/usr_ls1/7" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_ls1/7/ls1-zentek-z7r.png")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/usr_ls1/7" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_ls1/7/ls1-zentek-z7r-preview.jpg")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/usr_ls1/8" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_ls1/8/skill.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/usr_ls1/8" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_ls1/8/wheel3d.png")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/usr_ls1/8" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_ls1/8/ls1-zentek-z7r.png")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/usr_ls1/8" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_ls1/8/ls1-zentek-z7r-preview.jpg")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/usr_ls1/9" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_ls1/9/skill.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/usr_ls1/9" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_ls1/9/ls1-cavallo-570s1.png")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/usr_ls1/9" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_ls1/9/wheel3d.png")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/usr_ls1/9" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_ls1/9/ls1-cavallo-570s1-preview.jpg")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/usr_ls1/10" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_ls1/10/skill.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/usr_ls1/10" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_ls1/10/ls1-cavallo-570s1.png")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/usr_ls1/10" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_ls1/10/wheel3d.png")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/usr_ls1/10" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_ls1/10/ls1-cavallo-570s1-preview.jpg")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/usr_ls1/11" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_ls1/11/skill.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/usr_ls1/11" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_ls1/11/ls1-newcastle-fury.png")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/usr_ls1/11" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_ls1/11/wheel3d.png")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/usr_ls1/11" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_ls1/11/ls1-newcastle-fury-preview.jpg")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/usr_ls1/12" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_ls1/12/skill.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/usr_ls1/12" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_ls1/12/ls1-newcastle-fury.png")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/usr_ls1/12" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_ls1/12/wheel3d.png")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/usr_ls1/12" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_ls1/12/ls1-newcastle-fury-preview.jpg")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/usr_ls1/13" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_ls1/13/skill.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/usr_ls1/13" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_ls1/13/ls1-taipan-ltsr-ffr54.png")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/usr_ls1/13" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_ls1/13/wheel3d.png")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/usr_ls1/13" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_ls1/13/ls1-taipan-ltsr.png")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/usr_ls1/13" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_ls1/13/ls1-taipan-ltsr-preview.jpg")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/usr_ls1/13" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_ls1/13/ls1-taipan-ltsr-ffr54-preview.jpg")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/usr_ls1/14" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_ls1/14/skill.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/usr_ls1/14" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_ls1/14/ls1-taipan-ltsr-ffr55.png")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/usr_ls1/14" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_ls1/14/wheel3d.png")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/usr_ls1/14" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_ls1/14/ls1-taipan-ltsr.png")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/usr_ls1/14" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_ls1/14/ls1-taipan-ltsr-preview.jpg")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/usr_ls1/14" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_ls1/14/ls1-taipan-ltsr-ffr55-preview.jpg")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/usr_ls1/ls1-archer-r9" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_ls1/ls1-archer-r9/street-1.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/usr_ls1/ls1-archer-r9" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_ls1/ls1-archer-r9/e-track-2.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/usr_ls1/ls1-archer-r9" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_ls1/ls1-archer-r9/prenzlau.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/usr_ls1/ls1-archer-r9" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_ls1/ls1-archer-r9/spring.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/usr_ls1/ls1-archer-r9" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_ls1/ls1-archer-r9/chemisay.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/usr_ls1/ls1-archer-r9" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_ls1/ls1-archer-r9/e-track-5.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/usr_ls1/ls1-archer-r9" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_ls1/ls1-archer-r9/brondehach.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/usr_ls1/ls1-archer-r9" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_ls1/ls1-archer-r9/ole-road-1.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/usr_ls1/ls1-archer-r9" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_ls1/ls1-archer-r9/d-speedway.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/usr_ls1/ls1-archer-r9" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_ls1/ls1-archer-r9/arizona.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/usr_ls1/ls1-archer-r9" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_ls1/ls1-archer-r9/b-speedway.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/usr_ls1/ls1-archer-r9" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_ls1/ls1-archer-r9/default.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/usr_ls1/ls1-archer-r9" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_ls1/ls1-archer-r9/f-speedway.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/usr_ls1/ls1-archer-r9" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_ls1/ls1-archer-r9/newton.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/usr_ls1/ls1-archer-r9" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_ls1/ls1-archer-r9/a-speedway.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/usr_ls1/ls1-archer-r9" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_ls1/ls1-archer-r9/wheel-1.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/usr_ls1/ls1-archer-r9" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_ls1/ls1-archer-r9/salty.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/usr_ls1/ls1-archer-r9" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_ls1/ls1-archer-r9/aalborg.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/usr_ls1/ls1-archer-r9" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_ls1/ls1-archer-r9/pinabashi.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/usr_ls1/ls1-archer-r9" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_ls1/ls1-archer-r9/e-speedway.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/usr_ls1/ls1-archer-r9" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_ls1/ls1-archer-r9/tennessee.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/usr_ls1/ls1-archer-r9" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_ls1/ls1-archer-r9/longpond.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/usr_ls1/ls1-archer-r9" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_ls1/ls1-archer-r9/e-track-3.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/usr_ls1/ls1-archer-r9" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_ls1/ls1-archer-r9/espie.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/usr_ls1/ls1-archer-r9" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_ls1/ls1-archer-r9/caddo.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/usr_ls1/ls1-archer-r9" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_ls1/ls1-archer-r9/inuksuk.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/usr_ls1/ls1-archer-r9" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_ls1/ls1-archer-r9/c-speedway.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/usr_ls1/ls1-archer-r9" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_ls1/ls1-archer-r9/manton.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/usr_ls1/ls1-archer-r9" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_ls1/ls1-archer-r9/lombaro.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/usr_ls1/ls1-archer-r9" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_ls1/ls1-archer-r9/allondaz.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/usr_ls1/ls1-archer-r9" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_ls1/ls1-archer-r9/karwada.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/usr_ls1/ls1-archer-r9" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_ls1/ls1-archer-r9/charmey.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/usr_ls1/ls1-archer-r9" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_ls1/ls1-archer-r9/sunshine.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/usr_ls1/ls1-archer-r9" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_ls1/ls1-archer-r9/ruudskogen.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/usr_ls1/ls1-archer-r9" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_ls1/ls1-archer-r9/e-track-4.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/usr_ls1/ls1-archer-r9" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_ls1/ls1-archer-r9/goldstone-sand.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/usr_ls1/ls1-vulture-v6r" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_ls1/ls1-vulture-v6r/street-1.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/usr_ls1/ls1-vulture-v6r" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_ls1/ls1-vulture-v6r/e-track-2.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/usr_ls1/ls1-vulture-v6r" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_ls1/ls1-vulture-v6r/longday.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/usr_ls1/ls1-vulture-v6r" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_ls1/ls1-vulture-v6r/prenzlau.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/usr_ls1/ls1-vulture-v6r" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_ls1/ls1-vulture-v6r/spring.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/usr_ls1/ls1-vulture-v6r" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_ls1/ls1-vulture-v6r/chemisay.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/usr_ls1/ls1-vulture-v6r" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_ls1/ls1-vulture-v6r/e-track-5.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/usr_ls1/ls1-vulture-v6r" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_ls1/ls1-vulture-v6r/brondehach.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/usr_ls1/ls1-vulture-v6r" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_ls1/ls1-vulture-v6r/ole-road-1.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/usr_ls1/ls1-vulture-v6r" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_ls1/ls1-vulture-v6r/d-speedway.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/usr_ls1/ls1-vulture-v6r" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_ls1/ls1-vulture-v6r/arizona.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/usr_ls1/ls1-vulture-v6r" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_ls1/ls1-vulture-v6r/b-speedway.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/usr_ls1/ls1-vulture-v6r" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_ls1/ls1-vulture-v6r/default.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/usr_ls1/ls1-vulture-v6r" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_ls1/ls1-vulture-v6r/f-speedway.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/usr_ls1/ls1-vulture-v6r" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_ls1/ls1-vulture-v6r/newton.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/usr_ls1/ls1-vulture-v6r" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_ls1/ls1-vulture-v6r/a-speedway.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/usr_ls1/ls1-vulture-v6r" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_ls1/ls1-vulture-v6r/wheel-1.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/usr_ls1/ls1-vulture-v6r" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_ls1/ls1-vulture-v6r/salty.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/usr_ls1/ls1-vulture-v6r" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_ls1/ls1-vulture-v6r/aalborg.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/usr_ls1/ls1-vulture-v6r" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_ls1/ls1-vulture-v6r/pinabashi.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/usr_ls1/ls1-vulture-v6r" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_ls1/ls1-vulture-v6r/e-speedway.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/usr_ls1/ls1-vulture-v6r" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_ls1/ls1-vulture-v6r/tennessee.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/usr_ls1/ls1-vulture-v6r" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_ls1/ls1-vulture-v6r/longpond.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/usr_ls1/ls1-vulture-v6r" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_ls1/ls1-vulture-v6r/e-track-3.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/usr_ls1/ls1-vulture-v6r" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_ls1/ls1-vulture-v6r/espie.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/usr_ls1/ls1-vulture-v6r" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_ls1/ls1-vulture-v6r/caddo.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/usr_ls1/ls1-vulture-v6r" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_ls1/ls1-vulture-v6r/inuksuk.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/usr_ls1/ls1-vulture-v6r" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_ls1/ls1-vulture-v6r/c-speedway.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/usr_ls1/ls1-vulture-v6r" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_ls1/ls1-vulture-v6r/manton.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/usr_ls1/ls1-vulture-v6r" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_ls1/ls1-vulture-v6r/lombaro.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/usr_ls1/ls1-vulture-v6r" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_ls1/ls1-vulture-v6r/allondaz.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/usr_ls1/ls1-vulture-v6r" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_ls1/ls1-vulture-v6r/karwada.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/usr_ls1/ls1-vulture-v6r" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_ls1/ls1-vulture-v6r/charmey.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/usr_ls1/ls1-vulture-v6r" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_ls1/ls1-vulture-v6r/sunshine.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/usr_ls1/ls1-vulture-v6r" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_ls1/ls1-vulture-v6r/ruudskogen.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/usr_ls1/ls1-vulture-v6r" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_ls1/ls1-vulture-v6r/e-track-4.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/usr_ls1/ls1-vulture-v6r" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_ls1/ls1-vulture-v6r/goldstone-sand.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/usr_ls1/ls1-zentek-z7r" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_ls1/ls1-zentek-z7r/street-1.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/usr_ls1/ls1-zentek-z7r" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_ls1/ls1-zentek-z7r/e-track-2.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/usr_ls1/ls1-zentek-z7r" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_ls1/ls1-zentek-z7r/prenzlau.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/usr_ls1/ls1-zentek-z7r" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_ls1/ls1-zentek-z7r/spring.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/usr_ls1/ls1-zentek-z7r" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_ls1/ls1-zentek-z7r/chemisay.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/usr_ls1/ls1-zentek-z7r" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_ls1/ls1-zentek-z7r/e-track-5.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/usr_ls1/ls1-zentek-z7r" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_ls1/ls1-zentek-z7r/brondehach.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/usr_ls1/ls1-zentek-z7r" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_ls1/ls1-zentek-z7r/ole-road-1.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/usr_ls1/ls1-zentek-z7r" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_ls1/ls1-zentek-z7r/d-speedway.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/usr_ls1/ls1-zentek-z7r" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_ls1/ls1-zentek-z7r/arizona.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/usr_ls1/ls1-zentek-z7r" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_ls1/ls1-zentek-z7r/b-speedway.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/usr_ls1/ls1-zentek-z7r" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_ls1/ls1-zentek-z7r/default.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/usr_ls1/ls1-zentek-z7r" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_ls1/ls1-zentek-z7r/f-speedway.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/usr_ls1/ls1-zentek-z7r" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_ls1/ls1-zentek-z7r/newton.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/usr_ls1/ls1-zentek-z7r" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_ls1/ls1-zentek-z7r/a-speedway.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/usr_ls1/ls1-zentek-z7r" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_ls1/ls1-zentek-z7r/wheel-1.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/usr_ls1/ls1-zentek-z7r" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_ls1/ls1-zentek-z7r/salty.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/usr_ls1/ls1-zentek-z7r" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_ls1/ls1-zentek-z7r/aalborg.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/usr_ls1/ls1-zentek-z7r" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_ls1/ls1-zentek-z7r/pinabashi.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/usr_ls1/ls1-zentek-z7r" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_ls1/ls1-zentek-z7r/e-speedway.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/usr_ls1/ls1-zentek-z7r" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_ls1/ls1-zentek-z7r/tennessee.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/usr_ls1/ls1-zentek-z7r" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_ls1/ls1-zentek-z7r/longpond.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/usr_ls1/ls1-zentek-z7r" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_ls1/ls1-zentek-z7r/e-track-3.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/usr_ls1/ls1-zentek-z7r" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_ls1/ls1-zentek-z7r/espie.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/usr_ls1/ls1-zentek-z7r" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_ls1/ls1-zentek-z7r/caddo.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/usr_ls1/ls1-zentek-z7r" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_ls1/ls1-zentek-z7r/inuksuk.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/usr_ls1/ls1-zentek-z7r" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_ls1/ls1-zentek-z7r/c-speedway.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/usr_ls1/ls1-zentek-z7r" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_ls1/ls1-zentek-z7r/manton.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/usr_ls1/ls1-zentek-z7r" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_ls1/ls1-zentek-z7r/lombaro.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/usr_ls1/ls1-zentek-z7r" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_ls1/ls1-zentek-z7r/allondaz.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/usr_ls1/ls1-zentek-z7r" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_ls1/ls1-zentek-z7r/karwada.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/usr_ls1/ls1-zentek-z7r" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_ls1/ls1-zentek-z7r/charmey.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/usr_ls1/ls1-zentek-z7r" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_ls1/ls1-zentek-z7r/sunshine.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/usr_ls1/ls1-zentek-z7r" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_ls1/ls1-zentek-z7r/ruudskogen.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/usr_ls1/ls1-zentek-z7r" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_ls1/ls1-zentek-z7r/e-track-4.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/usr_ls1/ls1-zentek-z7r" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_ls1/ls1-zentek-z7r/goldstone-sand.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/usr_ls1/ls1-cavallo-570s1" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_ls1/ls1-cavallo-570s1/default.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/usr_ls1/ls1-newcastle-fury" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_ls1/ls1-newcastle-fury/street-1.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/usr_ls1/ls1-newcastle-fury" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_ls1/ls1-newcastle-fury/e-track-2.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/usr_ls1/ls1-newcastle-fury" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_ls1/ls1-newcastle-fury/prenzlau.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/usr_ls1/ls1-newcastle-fury" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_ls1/ls1-newcastle-fury/spring.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/usr_ls1/ls1-newcastle-fury" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_ls1/ls1-newcastle-fury/chemisay.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/usr_ls1/ls1-newcastle-fury" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_ls1/ls1-newcastle-fury/e-track-5.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/usr_ls1/ls1-newcastle-fury" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_ls1/ls1-newcastle-fury/brondehach.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/usr_ls1/ls1-newcastle-fury" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_ls1/ls1-newcastle-fury/ole-road-1.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/usr_ls1/ls1-newcastle-fury" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_ls1/ls1-newcastle-fury/d-speedway.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/usr_ls1/ls1-newcastle-fury" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_ls1/ls1-newcastle-fury/arizona.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/usr_ls1/ls1-newcastle-fury" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_ls1/ls1-newcastle-fury/b-speedway.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/usr_ls1/ls1-newcastle-fury" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_ls1/ls1-newcastle-fury/default.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/usr_ls1/ls1-newcastle-fury" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_ls1/ls1-newcastle-fury/f-speedway.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/usr_ls1/ls1-newcastle-fury" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_ls1/ls1-newcastle-fury/newton.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/usr_ls1/ls1-newcastle-fury" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_ls1/ls1-newcastle-fury/a-speedway.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/usr_ls1/ls1-newcastle-fury" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_ls1/ls1-newcastle-fury/wheel-1.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/usr_ls1/ls1-newcastle-fury" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_ls1/ls1-newcastle-fury/salty.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/usr_ls1/ls1-newcastle-fury" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_ls1/ls1-newcastle-fury/aalborg.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/usr_ls1/ls1-newcastle-fury" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_ls1/ls1-newcastle-fury/pinabashi.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/usr_ls1/ls1-newcastle-fury" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_ls1/ls1-newcastle-fury/e-speedway.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/usr_ls1/ls1-newcastle-fury" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_ls1/ls1-newcastle-fury/tennessee.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/usr_ls1/ls1-newcastle-fury" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_ls1/ls1-newcastle-fury/longpond.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/usr_ls1/ls1-newcastle-fury" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_ls1/ls1-newcastle-fury/e-track-3.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/usr_ls1/ls1-newcastle-fury" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_ls1/ls1-newcastle-fury/espie.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/usr_ls1/ls1-newcastle-fury" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_ls1/ls1-newcastle-fury/caddo.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/usr_ls1/ls1-newcastle-fury" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_ls1/ls1-newcastle-fury/inuksuk.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/usr_ls1/ls1-newcastle-fury" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_ls1/ls1-newcastle-fury/c-speedway.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/usr_ls1/ls1-newcastle-fury" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_ls1/ls1-newcastle-fury/manton.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/usr_ls1/ls1-newcastle-fury" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_ls1/ls1-newcastle-fury/lombaro.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/usr_ls1/ls1-newcastle-fury" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_ls1/ls1-newcastle-fury/allondaz.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/usr_ls1/ls1-newcastle-fury" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_ls1/ls1-newcastle-fury/karwada.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/usr_ls1/ls1-newcastle-fury" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_ls1/ls1-newcastle-fury/charmey.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/usr_ls1/ls1-newcastle-fury" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_ls1/ls1-newcastle-fury/sunshine.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/usr_ls1/ls1-newcastle-fury" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_ls1/ls1-newcastle-fury/ruudskogen.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/usr_ls1/ls1-newcastle-fury" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_ls1/ls1-newcastle-fury/e-track-4.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/usr_ls1/ls1-newcastle-fury" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_ls1/ls1-newcastle-fury/goldstone-sand.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/usr_ls1/ls1-taipan-ltsr" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_ls1/ls1-taipan-ltsr/street-1.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/usr_ls1/ls1-taipan-ltsr" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_ls1/ls1-taipan-ltsr/e-track-2.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/usr_ls1/ls1-taipan-ltsr" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_ls1/ls1-taipan-ltsr/prenzlau.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/usr_ls1/ls1-taipan-ltsr" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_ls1/ls1-taipan-ltsr/spring.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/usr_ls1/ls1-taipan-ltsr" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_ls1/ls1-taipan-ltsr/chemisay.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/usr_ls1/ls1-taipan-ltsr" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_ls1/ls1-taipan-ltsr/e-track-5.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/usr_ls1/ls1-taipan-ltsr" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_ls1/ls1-taipan-ltsr/brondehach.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/usr_ls1/ls1-taipan-ltsr" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_ls1/ls1-taipan-ltsr/ole-road-1.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/usr_ls1/ls1-taipan-ltsr" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_ls1/ls1-taipan-ltsr/d-speedway.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/usr_ls1/ls1-taipan-ltsr" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_ls1/ls1-taipan-ltsr/arizona.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/usr_ls1/ls1-taipan-ltsr" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_ls1/ls1-taipan-ltsr/b-speedway.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/usr_ls1/ls1-taipan-ltsr" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_ls1/ls1-taipan-ltsr/default.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/usr_ls1/ls1-taipan-ltsr" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_ls1/ls1-taipan-ltsr/f-speedway.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/usr_ls1/ls1-taipan-ltsr" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_ls1/ls1-taipan-ltsr/newton.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/usr_ls1/ls1-taipan-ltsr" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_ls1/ls1-taipan-ltsr/a-speedway.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/usr_ls1/ls1-taipan-ltsr" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_ls1/ls1-taipan-ltsr/wheel-1.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/usr_ls1/ls1-taipan-ltsr" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_ls1/ls1-taipan-ltsr/salty.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/usr_ls1/ls1-taipan-ltsr" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_ls1/ls1-taipan-ltsr/aalborg.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/usr_ls1/ls1-taipan-ltsr" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_ls1/ls1-taipan-ltsr/pinabashi.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/usr_ls1/ls1-taipan-ltsr" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_ls1/ls1-taipan-ltsr/e-speedway.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/usr_ls1/ls1-taipan-ltsr" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_ls1/ls1-taipan-ltsr/tennessee.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/usr_ls1/ls1-taipan-ltsr" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_ls1/ls1-taipan-ltsr/longpond.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/usr_ls1/ls1-taipan-ltsr" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_ls1/ls1-taipan-ltsr/e-track-3.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/usr_ls1/ls1-taipan-ltsr" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_ls1/ls1-taipan-ltsr/espie.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/usr_ls1/ls1-taipan-ltsr" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_ls1/ls1-taipan-ltsr/caddo.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/usr_ls1/ls1-taipan-ltsr" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_ls1/ls1-taipan-ltsr/inuksuk.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/usr_ls1/ls1-taipan-ltsr" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_ls1/ls1-taipan-ltsr/c-speedway.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/usr_ls1/ls1-taipan-ltsr" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_ls1/ls1-taipan-ltsr/manton.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/usr_ls1/ls1-taipan-ltsr" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_ls1/ls1-taipan-ltsr/lombaro.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/usr_ls1/ls1-taipan-ltsr" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_ls1/ls1-taipan-ltsr/allondaz.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/usr_ls1/ls1-taipan-ltsr" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_ls1/ls1-taipan-ltsr/karwada.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/usr_ls1/ls1-taipan-ltsr" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_ls1/ls1-taipan-ltsr/charmey.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/usr_ls1/ls1-taipan-ltsr" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_ls1/ls1-taipan-ltsr/sunshine.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/usr_ls1/ls1-taipan-ltsr" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_ls1/ls1-taipan-ltsr/ruudskogen.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/usr_ls1/ls1-taipan-ltsr" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_ls1/ls1-taipan-ltsr/e-track-4.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/usr_ls1/ls1-taipan-ltsr" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_ls1/ls1-taipan-ltsr/goldstone-sand.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/usr_ls1/ls1-toro-rgt" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_ls1/ls1-toro-rgt/street-1.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/usr_ls1/ls1-toro-rgt" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_ls1/ls1-toro-rgt/e-track-2.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/usr_ls1/ls1-toro-rgt" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_ls1/ls1-toro-rgt/prenzlau.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/usr_ls1/ls1-toro-rgt" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_ls1/ls1-toro-rgt/spring.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/usr_ls1/ls1-toro-rgt" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_ls1/ls1-toro-rgt/chemisay.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/usr_ls1/ls1-toro-rgt" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_ls1/ls1-toro-rgt/e-track-5.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/usr_ls1/ls1-toro-rgt" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_ls1/ls1-toro-rgt/brondehach.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/usr_ls1/ls1-toro-rgt" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_ls1/ls1-toro-rgt/ole-road-1.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/usr_ls1/ls1-toro-rgt" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_ls1/ls1-toro-rgt/d-speedway.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/usr_ls1/ls1-toro-rgt" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_ls1/ls1-toro-rgt/arizona.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/usr_ls1/ls1-toro-rgt" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_ls1/ls1-toro-rgt/b-speedway.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/usr_ls1/ls1-toro-rgt" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_ls1/ls1-toro-rgt/default.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/usr_ls1/ls1-toro-rgt" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_ls1/ls1-toro-rgt/f-speedway.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/usr_ls1/ls1-toro-rgt" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_ls1/ls1-toro-rgt/newton.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/usr_ls1/ls1-toro-rgt" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_ls1/ls1-toro-rgt/a-speedway.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/usr_ls1/ls1-toro-rgt" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_ls1/ls1-toro-rgt/wheel-1.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/usr_ls1/ls1-toro-rgt" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_ls1/ls1-toro-rgt/salty.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/usr_ls1/ls1-toro-rgt" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_ls1/ls1-toro-rgt/aalborg.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/usr_ls1/ls1-toro-rgt" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_ls1/ls1-toro-rgt/pinabashi.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/usr_ls1/ls1-toro-rgt" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_ls1/ls1-toro-rgt/e-speedway.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/usr_ls1/ls1-toro-rgt" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_ls1/ls1-toro-rgt/tennessee.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/usr_ls1/ls1-toro-rgt" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_ls1/ls1-toro-rgt/longpond.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/usr_ls1/ls1-toro-rgt" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_ls1/ls1-toro-rgt/e-track-3.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/usr_ls1/ls1-toro-rgt" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_ls1/ls1-toro-rgt/espie.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/usr_ls1/ls1-toro-rgt" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_ls1/ls1-toro-rgt/caddo.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/usr_ls1/ls1-toro-rgt" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_ls1/ls1-toro-rgt/inuksuk.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/usr_ls1/ls1-toro-rgt" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_ls1/ls1-toro-rgt/c-speedway.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/usr_ls1/ls1-toro-rgt" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_ls1/ls1-toro-rgt/manton.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/usr_ls1/ls1-toro-rgt" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_ls1/ls1-toro-rgt/lombaro.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/usr_ls1/ls1-toro-rgt" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_ls1/ls1-toro-rgt/allondaz.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/usr_ls1/ls1-toro-rgt" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_ls1/ls1-toro-rgt/karwada.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/usr_ls1/ls1-toro-rgt" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_ls1/ls1-toro-rgt/charmey.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/usr_ls1/ls1-toro-rgt" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_ls1/ls1-toro-rgt/sunshine.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/usr_ls1/ls1-toro-rgt" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_ls1/ls1-toro-rgt/ruudskogen.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/usr_ls1/ls1-toro-rgt" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_ls1/ls1-toro-rgt/e-track-4.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/usr_ls1/ls1-toro-rgt" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_ls1/ls1-toro-rgt/goldstone-sand.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/usr_ls2" TYPE FILE FILES
    "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_ls2/usr_ls2.xml"
    "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_ls2/default.xml"
    "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_ls2/logo.rgb"
    "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_ls2/readme.txt"
    )
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/usr_ls2/1" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_ls2/1/skill.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/usr_ls2/1" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_ls2/1/wheel3d.png")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/usr_ls2/2" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_ls2/2/skill.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/usr_ls2/2" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_ls2/2/ls2-condor-c400r.png")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/usr_ls2/2" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_ls2/2/wheel3d.png")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/usr_ls2/2" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_ls2/2/ls2-condor-c400r-preview.jpg")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/usr_ls2/3" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_ls2/3/skill.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/usr_ls2/3" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_ls2/3/wheel3d.png")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/usr_ls2/4" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_ls2/4/skill.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/usr_ls2/4" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_ls2/4/wheel3d.png")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/usr_ls2/5" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_ls2/5/skill.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/usr_ls2/5" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_ls2/5/wheel3d.png")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/usr_ls2/6" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_ls2/6/skill.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/usr_ls2/6" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_ls2/6/wheel3d.png")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/usr_ls2/7" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_ls2/7/skill.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/usr_ls2/7" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_ls2/7/ls2-boxer-96rsr.png")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/usr_ls2/7" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_ls2/7/wheel3d.png")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/usr_ls2/7" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_ls2/7/ls2-boxer-96rsr-preview.jpg")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/usr_ls2/8" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_ls2/8/skill.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/usr_ls2/8" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_ls2/8/ls2-cavallo-360r.png")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/usr_ls2/8" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_ls2/8/wheel3d.png")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/usr_ls2/8" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_ls2/8/ls2-cavallo-360r-preview.jpg")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/usr_ls2/ls2-bavaria-g3gtr" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_ls2/ls2-bavaria-g3gtr/default.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/usr_ls2/ls2-boxer-96rsr" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_ls2/ls2-boxer-96rsr/default.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/usr_ls2/ls2-cavallo-360r" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_ls2/ls2-cavallo-360r/default.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/usr_ls2/ls2-condor-c400r" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_ls2/ls2-condor-c400r/default.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/usr_ls2/ls2-morley-r900" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_ls2/ls2-morley-r900/default.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/usr_ls2/ls2-sprite-gts" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_ls2/ls2-sprite-gts/default.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/usr_ls2/ls2-vortex-gt" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_ls2/ls2-vortex-gt/default.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/usr_ls2/ls2-lynx-xkr" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_ls2/ls2-lynx-xkr/default.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/usr_36GP" TYPE FILE FILES
    "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_36GP/usr_36GP.xml"
    "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_36GP/default.xml"
    "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_36GP/logo.rgb"
    "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_36GP/readme.txt"
    )
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/usr_36GP/1" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_36GP/1/skill.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/usr_36GP/1" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_36GP/1/logo.rgb")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/usr_36GP/1" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_36GP/1/36gp-milano-12c36.png")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/usr_36GP/1" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_36GP/1/36gp-milano-12c36-preview.jpg")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/usr_36GP/2" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_36GP/2/skill.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/usr_36GP/2" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_36GP/2/logo.rgb")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/usr_36GP/2" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_36GP/2/36gp-milano-12c36.png")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/usr_36GP/2" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_36GP/2/36gp-milano-12c36-preview.jpg")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/usr_36GP/3" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_36GP/3/skill.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/usr_36GP/3" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_36GP/3/logo.rgb")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/usr_36GP/3" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_36GP/3/36gp-motorunion-typec.png")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/usr_36GP/3" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_36GP/3/36gp-motorunion-typec-preview.jpg")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/usr_36GP/4" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_36GP/4/skill.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/usr_36GP/4" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_36GP/4/logo.rgb")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/usr_36GP/4" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_36GP/4/36gp-tridenti-6c34.png")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/usr_36GP/4" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_36GP/4/36gp-tridenti-6c34-preview.jpg")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/usr_36GP/5" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_36GP/5/skill.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/usr_36GP/5" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_36GP/5/logo.rgb")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/usr_36GP/5" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_36GP/5/36gp-ettore-t59.png")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/usr_36GP/5" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_36GP/5/36gp-ettore-t59-preview.jpg")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/usr_36GP/6" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_36GP/6/skill.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/usr_36GP/6" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_36GP/6/logo.rgb")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/usr_36GP/6" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_36GP/6/36gp-tridenti-v8ri.png")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/usr_36GP/6" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_36GP/6/36gp-tridenti-v8ri-preview.jpg")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/usr_36GP/7" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_36GP/7/skill.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/usr_36GP/7" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_36GP/7/logo.rgb")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/usr_36GP/7" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_36GP/7/36gp-milano-tipop3.png")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/usr_36GP/7" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_36GP/7/36gp-milano-tipop3-preview.jpg")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/usr_36GP/8" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_36GP/8/skill.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/usr_36GP/8" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_36GP/8/logo.rgb")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/usr_36GP/8" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_36GP/8/36gp-tridenti-6c34.png")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/usr_36GP/8" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_36GP/8/36gp-tridenti-6c34-preview.jpg")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/usr_36GP/9" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_36GP/9/skill.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/usr_36GP/9" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_36GP/9/logo.rgb")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/usr_36GP/9" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_36GP/9/36gp-motorunion-typec.png")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/usr_36GP/9" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_36GP/9/36gp-motorunion-typec-preview.jpg")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/usr_36GP/10" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_36GP/10/skill.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/usr_36GP/10" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_36GP/10/logo.rgb")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/usr_36GP/10" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_36GP/10/36gp-motorunion-typec.png")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/usr_36GP/10" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_36GP/10/36gp-motorunion-typec-preview.jpg")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/usr_36GP/11" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_36GP/11/skill.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/usr_36GP/11" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_36GP/11/logo.rgb")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/usr_36GP/11" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_36GP/11/36gp-motorunion-typec.png")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/usr_36GP/11" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_36GP/11/36gp-motorunion-typec-preview.jpg")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/usr_36GP/12" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_36GP/12/skill.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/usr_36GP/12" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_36GP/12/logo.rgb")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/usr_36GP/12" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_36GP/12/36gp-milano-12c36.png")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/usr_36GP/12" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_36GP/12/36gp-milano-12c36-preview.jpg")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/usr_36GP/36gp-ettore-t59" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_36GP/36gp-ettore-t59/street-1.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/usr_36GP/36gp-ettore-t59" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_36GP/36gp-ettore-t59/e-track-2.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/usr_36GP/36gp-ettore-t59" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_36GP/36gp-ettore-t59/prenzlau.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/usr_36GP/36gp-ettore-t59" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_36GP/36gp-ettore-t59/spring.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/usr_36GP/36gp-ettore-t59" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_36GP/36gp-ettore-t59/chemisay.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/usr_36GP/36gp-ettore-t59" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_36GP/36gp-ettore-t59/e-track-5.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/usr_36GP/36gp-ettore-t59" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_36GP/36gp-ettore-t59/brondehach.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/usr_36GP/36gp-ettore-t59" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_36GP/36gp-ettore-t59/ole-road-1.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/usr_36GP/36gp-ettore-t59" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_36GP/36gp-ettore-t59/d-speedway.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/usr_36GP/36gp-ettore-t59" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_36GP/36gp-ettore-t59/arizona.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/usr_36GP/36gp-ettore-t59" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_36GP/36gp-ettore-t59/b-speedway.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/usr_36GP/36gp-ettore-t59" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_36GP/36gp-ettore-t59/default.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/usr_36GP/36gp-ettore-t59" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_36GP/36gp-ettore-t59/f-speedway.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/usr_36GP/36gp-ettore-t59" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_36GP/36gp-ettore-t59/newton.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/usr_36GP/36gp-ettore-t59" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_36GP/36gp-ettore-t59/a-speedway.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/usr_36GP/36gp-ettore-t59" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_36GP/36gp-ettore-t59/wheel-1.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/usr_36GP/36gp-ettore-t59" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_36GP/36gp-ettore-t59/salty.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/usr_36GP/36gp-ettore-t59" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_36GP/36gp-ettore-t59/aalborg.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/usr_36GP/36gp-ettore-t59" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_36GP/36gp-ettore-t59/e-speedway.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/usr_36GP/36gp-ettore-t59" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_36GP/36gp-ettore-t59/tennessee.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/usr_36GP/36gp-ettore-t59" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_36GP/36gp-ettore-t59/longpond.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/usr_36GP/36gp-ettore-t59" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_36GP/36gp-ettore-t59/e-track-3.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/usr_36GP/36gp-ettore-t59" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_36GP/36gp-ettore-t59/espie.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/usr_36GP/36gp-ettore-t59" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_36GP/36gp-ettore-t59/caddo.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/usr_36GP/36gp-ettore-t59" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_36GP/36gp-ettore-t59/inuksuk.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/usr_36GP/36gp-ettore-t59" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_36GP/36gp-ettore-t59/c-speedway.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/usr_36GP/36gp-ettore-t59" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_36GP/36gp-ettore-t59/manton.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/usr_36GP/36gp-ettore-t59" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_36GP/36gp-ettore-t59/lombaro.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/usr_36GP/36gp-ettore-t59" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_36GP/36gp-ettore-t59/charmey.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/usr_36GP/36gp-ettore-t59" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_36GP/36gp-ettore-t59/sunshine.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/usr_36GP/36gp-ettore-t59" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_36GP/36gp-ettore-t59/ruudskogen.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/usr_36GP/36gp-ettore-t59" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_36GP/36gp-ettore-t59/e-track-4.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/usr_36GP/36gp-ettore-t59" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_36GP/36gp-ettore-t59/goldstone-sand.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/usr_36GP/36gp-milano-12c36" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_36GP/36gp-milano-12c36/street-1.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/usr_36GP/36gp-milano-12c36" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_36GP/36gp-milano-12c36/e-track-2.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/usr_36GP/36gp-milano-12c36" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_36GP/36gp-milano-12c36/prenzlau.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/usr_36GP/36gp-milano-12c36" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_36GP/36gp-milano-12c36/spring.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/usr_36GP/36gp-milano-12c36" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_36GP/36gp-milano-12c36/chemisay.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/usr_36GP/36gp-milano-12c36" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_36GP/36gp-milano-12c36/e-track-5.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/usr_36GP/36gp-milano-12c36" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_36GP/36gp-milano-12c36/brondehach.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/usr_36GP/36gp-milano-12c36" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_36GP/36gp-milano-12c36/ole-road-1.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/usr_36GP/36gp-milano-12c36" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_36GP/36gp-milano-12c36/d-speedway.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/usr_36GP/36gp-milano-12c36" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_36GP/36gp-milano-12c36/arizona.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/usr_36GP/36gp-milano-12c36" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_36GP/36gp-milano-12c36/b-speedway.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/usr_36GP/36gp-milano-12c36" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_36GP/36gp-milano-12c36/default.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/usr_36GP/36gp-milano-12c36" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_36GP/36gp-milano-12c36/f-speedway.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/usr_36GP/36gp-milano-12c36" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_36GP/36gp-milano-12c36/newton.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/usr_36GP/36gp-milano-12c36" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_36GP/36gp-milano-12c36/a-speedway.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/usr_36GP/36gp-milano-12c36" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_36GP/36gp-milano-12c36/wheel-1.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/usr_36GP/36gp-milano-12c36" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_36GP/36gp-milano-12c36/salty.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/usr_36GP/36gp-milano-12c36" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_36GP/36gp-milano-12c36/aalborg.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/usr_36GP/36gp-milano-12c36" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_36GP/36gp-milano-12c36/e-speedway.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/usr_36GP/36gp-milano-12c36" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_36GP/36gp-milano-12c36/tennessee.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/usr_36GP/36gp-milano-12c36" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_36GP/36gp-milano-12c36/longpond.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/usr_36GP/36gp-milano-12c36" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_36GP/36gp-milano-12c36/e-track-3.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/usr_36GP/36gp-milano-12c36" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_36GP/36gp-milano-12c36/espie.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/usr_36GP/36gp-milano-12c36" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_36GP/36gp-milano-12c36/caddo.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/usr_36GP/36gp-milano-12c36" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_36GP/36gp-milano-12c36/inuksuk.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/usr_36GP/36gp-milano-12c36" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_36GP/36gp-milano-12c36/c-speedway.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/usr_36GP/36gp-milano-12c36" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_36GP/36gp-milano-12c36/manton.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/usr_36GP/36gp-milano-12c36" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_36GP/36gp-milano-12c36/lombaro.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/usr_36GP/36gp-milano-12c36" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_36GP/36gp-milano-12c36/charmey.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/usr_36GP/36gp-milano-12c36" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_36GP/36gp-milano-12c36/sunshine.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/usr_36GP/36gp-milano-12c36" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_36GP/36gp-milano-12c36/ruudskogen.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/usr_36GP/36gp-milano-12c36" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_36GP/36gp-milano-12c36/e-track-4.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/usr_36GP/36gp-milano-12c36" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_36GP/36gp-milano-12c36/goldstone-sand.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/usr_36GP/36gp-milano-tipop3" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_36GP/36gp-milano-tipop3/street-1.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/usr_36GP/36gp-milano-tipop3" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_36GP/36gp-milano-tipop3/e-track-2.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/usr_36GP/36gp-milano-tipop3" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_36GP/36gp-milano-tipop3/prenzlau.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/usr_36GP/36gp-milano-tipop3" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_36GP/36gp-milano-tipop3/spring.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/usr_36GP/36gp-milano-tipop3" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_36GP/36gp-milano-tipop3/chemisay.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/usr_36GP/36gp-milano-tipop3" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_36GP/36gp-milano-tipop3/e-track-5.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/usr_36GP/36gp-milano-tipop3" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_36GP/36gp-milano-tipop3/brondehach.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/usr_36GP/36gp-milano-tipop3" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_36GP/36gp-milano-tipop3/ole-road-1.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/usr_36GP/36gp-milano-tipop3" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_36GP/36gp-milano-tipop3/d-speedway.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/usr_36GP/36gp-milano-tipop3" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_36GP/36gp-milano-tipop3/arizona.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/usr_36GP/36gp-milano-tipop3" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_36GP/36gp-milano-tipop3/b-speedway.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/usr_36GP/36gp-milano-tipop3" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_36GP/36gp-milano-tipop3/default.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/usr_36GP/36gp-milano-tipop3" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_36GP/36gp-milano-tipop3/f-speedway.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/usr_36GP/36gp-milano-tipop3" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_36GP/36gp-milano-tipop3/newton.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/usr_36GP/36gp-milano-tipop3" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_36GP/36gp-milano-tipop3/a-speedway.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/usr_36GP/36gp-milano-tipop3" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_36GP/36gp-milano-tipop3/wheel-1.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/usr_36GP/36gp-milano-tipop3" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_36GP/36gp-milano-tipop3/salty.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/usr_36GP/36gp-milano-tipop3" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_36GP/36gp-milano-tipop3/aalborg.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/usr_36GP/36gp-milano-tipop3" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_36GP/36gp-milano-tipop3/e-speedway.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/usr_36GP/36gp-milano-tipop3" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_36GP/36gp-milano-tipop3/tennessee.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/usr_36GP/36gp-milano-tipop3" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_36GP/36gp-milano-tipop3/longpond.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/usr_36GP/36gp-milano-tipop3" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_36GP/36gp-milano-tipop3/e-track-3.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/usr_36GP/36gp-milano-tipop3" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_36GP/36gp-milano-tipop3/espie.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/usr_36GP/36gp-milano-tipop3" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_36GP/36gp-milano-tipop3/caddo.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/usr_36GP/36gp-milano-tipop3" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_36GP/36gp-milano-tipop3/inuksuk.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/usr_36GP/36gp-milano-tipop3" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_36GP/36gp-milano-tipop3/c-speedway.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/usr_36GP/36gp-milano-tipop3" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_36GP/36gp-milano-tipop3/manton.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/usr_36GP/36gp-milano-tipop3" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_36GP/36gp-milano-tipop3/lombaro.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/usr_36GP/36gp-milano-tipop3" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_36GP/36gp-milano-tipop3/charmey.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/usr_36GP/36gp-milano-tipop3" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_36GP/36gp-milano-tipop3/sunshine.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/usr_36GP/36gp-milano-tipop3" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_36GP/36gp-milano-tipop3/ruudskogen.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/usr_36GP/36gp-milano-tipop3" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_36GP/36gp-milano-tipop3/e-track-4.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/usr_36GP/36gp-milano-tipop3" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_36GP/36gp-milano-tipop3/goldstone-sand.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/usr_36GP/36gp-motorunion-typec" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_36GP/36gp-motorunion-typec/street-1.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/usr_36GP/36gp-motorunion-typec" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_36GP/36gp-motorunion-typec/e-track-2.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/usr_36GP/36gp-motorunion-typec" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_36GP/36gp-motorunion-typec/prenzlau.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/usr_36GP/36gp-motorunion-typec" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_36GP/36gp-motorunion-typec/spring.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/usr_36GP/36gp-motorunion-typec" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_36GP/36gp-motorunion-typec/chemisay.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/usr_36GP/36gp-motorunion-typec" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_36GP/36gp-motorunion-typec/e-track-5.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/usr_36GP/36gp-motorunion-typec" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_36GP/36gp-motorunion-typec/brondehach.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/usr_36GP/36gp-motorunion-typec" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_36GP/36gp-motorunion-typec/ole-road-1.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/usr_36GP/36gp-motorunion-typec" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_36GP/36gp-motorunion-typec/d-speedway.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/usr_36GP/36gp-motorunion-typec" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_36GP/36gp-motorunion-typec/arizona.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/usr_36GP/36gp-motorunion-typec" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_36GP/36gp-motorunion-typec/b-speedway.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/usr_36GP/36gp-motorunion-typec" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_36GP/36gp-motorunion-typec/default.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/usr_36GP/36gp-motorunion-typec" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_36GP/36gp-motorunion-typec/f-speedway.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/usr_36GP/36gp-motorunion-typec" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_36GP/36gp-motorunion-typec/newton.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/usr_36GP/36gp-motorunion-typec" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_36GP/36gp-motorunion-typec/a-speedway.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/usr_36GP/36gp-motorunion-typec" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_36GP/36gp-motorunion-typec/wheel-1.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/usr_36GP/36gp-motorunion-typec" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_36GP/36gp-motorunion-typec/salty.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/usr_36GP/36gp-motorunion-typec" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_36GP/36gp-motorunion-typec/aalborg.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/usr_36GP/36gp-motorunion-typec" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_36GP/36gp-motorunion-typec/e-speedway.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/usr_36GP/36gp-motorunion-typec" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_36GP/36gp-motorunion-typec/tennessee.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/usr_36GP/36gp-motorunion-typec" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_36GP/36gp-motorunion-typec/longpond.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/usr_36GP/36gp-motorunion-typec" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_36GP/36gp-motorunion-typec/e-track-3.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/usr_36GP/36gp-motorunion-typec" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_36GP/36gp-motorunion-typec/espie.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/usr_36GP/36gp-motorunion-typec" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_36GP/36gp-motorunion-typec/caddo.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/usr_36GP/36gp-motorunion-typec" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_36GP/36gp-motorunion-typec/inuksuk.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/usr_36GP/36gp-motorunion-typec" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_36GP/36gp-motorunion-typec/c-speedway.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/usr_36GP/36gp-motorunion-typec" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_36GP/36gp-motorunion-typec/manton.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/usr_36GP/36gp-motorunion-typec" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_36GP/36gp-motorunion-typec/lombaro.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/usr_36GP/36gp-motorunion-typec" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_36GP/36gp-motorunion-typec/charmey.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/usr_36GP/36gp-motorunion-typec" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_36GP/36gp-motorunion-typec/sunshine.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/usr_36GP/36gp-motorunion-typec" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_36GP/36gp-motorunion-typec/ruudskogen.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/usr_36GP/36gp-motorunion-typec" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_36GP/36gp-motorunion-typec/e-track-4.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/usr_36GP/36gp-motorunion-typec" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_36GP/36gp-motorunion-typec/goldstone-sand.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/usr_36GP/36gp-tridenti-6c34" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_36GP/36gp-tridenti-6c34/street-1.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/usr_36GP/36gp-tridenti-6c34" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_36GP/36gp-tridenti-6c34/e-track-2.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/usr_36GP/36gp-tridenti-6c34" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_36GP/36gp-tridenti-6c34/prenzlau.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/usr_36GP/36gp-tridenti-6c34" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_36GP/36gp-tridenti-6c34/spring.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/usr_36GP/36gp-tridenti-6c34" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_36GP/36gp-tridenti-6c34/chemisay.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/usr_36GP/36gp-tridenti-6c34" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_36GP/36gp-tridenti-6c34/e-track-5.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/usr_36GP/36gp-tridenti-6c34" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_36GP/36gp-tridenti-6c34/brondehach.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/usr_36GP/36gp-tridenti-6c34" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_36GP/36gp-tridenti-6c34/ole-road-1.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/usr_36GP/36gp-tridenti-6c34" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_36GP/36gp-tridenti-6c34/d-speedway.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/usr_36GP/36gp-tridenti-6c34" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_36GP/36gp-tridenti-6c34/arizona.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/usr_36GP/36gp-tridenti-6c34" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_36GP/36gp-tridenti-6c34/b-speedway.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/usr_36GP/36gp-tridenti-6c34" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_36GP/36gp-tridenti-6c34/default.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/usr_36GP/36gp-tridenti-6c34" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_36GP/36gp-tridenti-6c34/f-speedway.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/usr_36GP/36gp-tridenti-6c34" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_36GP/36gp-tridenti-6c34/newton.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/usr_36GP/36gp-tridenti-6c34" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_36GP/36gp-tridenti-6c34/a-speedway.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/usr_36GP/36gp-tridenti-6c34" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_36GP/36gp-tridenti-6c34/wheel-1.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/usr_36GP/36gp-tridenti-6c34" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_36GP/36gp-tridenti-6c34/salty.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/usr_36GP/36gp-tridenti-6c34" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_36GP/36gp-tridenti-6c34/aalborg.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/usr_36GP/36gp-tridenti-6c34" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_36GP/36gp-tridenti-6c34/e-speedway.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/usr_36GP/36gp-tridenti-6c34" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_36GP/36gp-tridenti-6c34/tennessee.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/usr_36GP/36gp-tridenti-6c34" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_36GP/36gp-tridenti-6c34/longpond.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/usr_36GP/36gp-tridenti-6c34" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_36GP/36gp-tridenti-6c34/e-track-3.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/usr_36GP/36gp-tridenti-6c34" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_36GP/36gp-tridenti-6c34/espie.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/usr_36GP/36gp-tridenti-6c34" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_36GP/36gp-tridenti-6c34/caddo.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/usr_36GP/36gp-tridenti-6c34" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_36GP/36gp-tridenti-6c34/inuksuk.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/usr_36GP/36gp-tridenti-6c34" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_36GP/36gp-tridenti-6c34/c-speedway.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/usr_36GP/36gp-tridenti-6c34" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_36GP/36gp-tridenti-6c34/manton.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/usr_36GP/36gp-tridenti-6c34" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_36GP/36gp-tridenti-6c34/lombaro.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/usr_36GP/36gp-tridenti-6c34" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_36GP/36gp-tridenti-6c34/charmey.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/usr_36GP/36gp-tridenti-6c34" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_36GP/36gp-tridenti-6c34/sunshine.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/usr_36GP/36gp-tridenti-6c34" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_36GP/36gp-tridenti-6c34/ruudskogen.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/usr_36GP/36gp-tridenti-6c34" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_36GP/36gp-tridenti-6c34/e-track-4.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/usr_36GP/36gp-tridenti-6c34" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_36GP/36gp-tridenti-6c34/goldstone-sand.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/usr_36GP/36gp-tridenti-v8ri" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_36GP/36gp-tridenti-v8ri/street-1.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/usr_36GP/36gp-tridenti-v8ri" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_36GP/36gp-tridenti-v8ri/e-track-2.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/usr_36GP/36gp-tridenti-v8ri" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_36GP/36gp-tridenti-v8ri/prenzlau.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/usr_36GP/36gp-tridenti-v8ri" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_36GP/36gp-tridenti-v8ri/spring.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/usr_36GP/36gp-tridenti-v8ri" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_36GP/36gp-tridenti-v8ri/chemisay.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/usr_36GP/36gp-tridenti-v8ri" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_36GP/36gp-tridenti-v8ri/e-track-5.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/usr_36GP/36gp-tridenti-v8ri" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_36GP/36gp-tridenti-v8ri/brondehach.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/usr_36GP/36gp-tridenti-v8ri" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_36GP/36gp-tridenti-v8ri/ole-road-1.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/usr_36GP/36gp-tridenti-v8ri" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_36GP/36gp-tridenti-v8ri/d-speedway.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/usr_36GP/36gp-tridenti-v8ri" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_36GP/36gp-tridenti-v8ri/arizona.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/usr_36GP/36gp-tridenti-v8ri" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_36GP/36gp-tridenti-v8ri/b-speedway.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/usr_36GP/36gp-tridenti-v8ri" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_36GP/36gp-tridenti-v8ri/default.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/usr_36GP/36gp-tridenti-v8ri" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_36GP/36gp-tridenti-v8ri/f-speedway.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/usr_36GP/36gp-tridenti-v8ri" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_36GP/36gp-tridenti-v8ri/newton.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/usr_36GP/36gp-tridenti-v8ri" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_36GP/36gp-tridenti-v8ri/a-speedway.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/usr_36GP/36gp-tridenti-v8ri" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_36GP/36gp-tridenti-v8ri/wheel-1.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/usr_36GP/36gp-tridenti-v8ri" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_36GP/36gp-tridenti-v8ri/salty.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/usr_36GP/36gp-tridenti-v8ri" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_36GP/36gp-tridenti-v8ri/aalborg.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/usr_36GP/36gp-tridenti-v8ri" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_36GP/36gp-tridenti-v8ri/e-speedway.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/usr_36GP/36gp-tridenti-v8ri" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_36GP/36gp-tridenti-v8ri/tennessee.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/usr_36GP/36gp-tridenti-v8ri" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_36GP/36gp-tridenti-v8ri/longpond.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/usr_36GP/36gp-tridenti-v8ri" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_36GP/36gp-tridenti-v8ri/e-track-3.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/usr_36GP/36gp-tridenti-v8ri" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_36GP/36gp-tridenti-v8ri/espie.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/usr_36GP/36gp-tridenti-v8ri" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_36GP/36gp-tridenti-v8ri/caddo.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/usr_36GP/36gp-tridenti-v8ri" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_36GP/36gp-tridenti-v8ri/inuksuk.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/usr_36GP/36gp-tridenti-v8ri" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_36GP/36gp-tridenti-v8ri/c-speedway.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/usr_36GP/36gp-tridenti-v8ri" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_36GP/36gp-tridenti-v8ri/manton.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/usr_36GP/36gp-tridenti-v8ri" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_36GP/36gp-tridenti-v8ri/lombaro.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/usr_36GP/36gp-tridenti-v8ri" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_36GP/36gp-tridenti-v8ri/charmey.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/usr_36GP/36gp-tridenti-v8ri" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_36GP/36gp-tridenti-v8ri/sunshine.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/usr_36GP/36gp-tridenti-v8ri" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_36GP/36gp-tridenti-v8ri/ruudskogen.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/usr_36GP/36gp-tridenti-v8ri" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_36GP/36gp-tridenti-v8ri/e-track-4.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/usr_36GP/36gp-tridenti-v8ri" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_36GP/36gp-tridenti-v8ri/goldstone-sand.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/usr_lp1" TYPE FILE FILES
    "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_lp1/usr_lp1.xml"
    "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_lp1/default.xml"
    "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_lp1/logo.rgb"
    "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_lp1/readme.txt"
    )
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/usr_lp1/1" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_lp1/1/lp1-vieringe-vr8.png")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/usr_lp1/1" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_lp1/1/wheel3d.png")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/usr_lp1/2" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_lp1/2/lp1-vieringe-vr8.png")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/usr_lp1/2" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_lp1/2/wheel3d.png")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/usr_lp1/3" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_lp1/3/lp1-pescy-p60.png")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/usr_lp1/3" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_lp1/3/wheel3d.png")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/usr_lp1/4" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_lp1/4/lp1-pescy-p60.png")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/usr_lp1/4" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_lp1/4/wheel3d.png")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/usr_lp1/lp1-pescy-p60" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_lp1/lp1-pescy-p60/default.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/usr_lp1/lp1-pescy-p60" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_lp1/lp1-pescy-p60/corkscrew.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/usr_lp1/lp1-pescy-p60" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_lp1/lp1-pescy-p60/espie.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/usr_lp1/lp1-vieringe-vr8" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_lp1/lp1-vieringe-vr8/default.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/usr_lp1/lp1-vieringe-vr8" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_lp1/lp1-vieringe-vr8/corkscrew.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/drivers/usr_lp1/lp1-vieringe-vr8" TYPE FILE FILES "/home/ares/Developer/speed-dream-2.0/speed/src/drivers/usr/usr_lp1/lp1-vieringe-vr8/espie.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

