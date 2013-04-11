# Install script for directory: /home/ares/Developer/speed-dream-2.0/speed/data/data/menu

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
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/data/menu" TYPE FILE FILES
    "/home/ares/Developer/speed-dream-2.0/speed/data/data/menu/networkclientconnectmenu.xml"
    "/home/ares/Developer/speed-dream-2.0/speed/data/data/menu/joystickconfigmenu.xml"
    "/home/ares/Developer/speed-dream-2.0/speed/data/data/menu/optionsmenu.xml"
    "/home/ares/Developer/speed-dream-2.0/speed/data/data/menu/garagemenu.xml"
    "/home/ares/Developer/speed-dream-2.0/speed/data/data/menu/raceresultsmenu.xml"
    "/home/ares/Developer/speed-dream-2.0/speed/data/data/menu/simuconfigmenu.xml"
    "/home/ares/Developer/speed-dream-2.0/speed/data/data/menu/fileselectmenu.xml"
    "/home/ares/Developer/speed-dream-2.0/speed/data/data/menu/networkclientmenu.xml"
    "/home/ares/Developer/speed-dream-2.0/speed/data/data/menu/networkhostmenu.xml"
    "/home/ares/Developer/speed-dream-2.0/speed/data/data/menu/trackselectmenu.xml"
    "/home/ares/Developer/speed-dream-2.0/speed/data/data/menu/carsettingsmenu.xml"
    "/home/ares/Developer/speed-dream-2.0/speed/data/data/menu/aiconfigmenu.xml"
    "/home/ares/Developer/speed-dream-2.0/speed/data/data/menu/raceselectmenu.xml"
    "/home/ares/Developer/speed-dream-2.0/speed/data/data/menu/raceblindscreen.xml"
    "/home/ares/Developer/speed-dream-2.0/speed/data/data/menu/pitmenu.xml"
    "/home/ares/Developer/speed-dream-2.0/speed/data/data/menu/loadingscreen.xml"
    "/home/ares/Developer/speed-dream-2.0/speed/data/data/menu/opengloptionsmenu.xml"
    "/home/ares/Developer/speed-dream-2.0/speed/data/data/menu/soundconfigmenu.xml"
    "/home/ares/Developer/speed-dream-2.0/speed/data/data/menu/advancedgraphconfigmenu.xml"
    "/home/ares/Developer/speed-dream-2.0/speed/data/data/menu/driverselectmenu.xml"
    "/home/ares/Developer/speed-dream-2.0/speed/data/data/menu/hostsettingsmenu.xml"
    "/home/ares/Developer/speed-dream-2.0/speed/data/data/menu/carselectionmenu.xml"
    "/home/ares/Developer/speed-dream-2.0/speed/data/data/menu/raceglscreen.xml"
    "/home/ares/Developer/speed-dream-2.0/speed/data/data/menu/displayconfigmenu.xml"
    "/home/ares/Developer/speed-dream-2.0/speed/data/data/menu/raceparamsmenu.xml"
    "/home/ares/Developer/speed-dream-2.0/speed/data/data/menu/qualifsresultsmenu.xml"
    "/home/ares/Developer/speed-dream-2.0/speed/data/data/menu/creditsmenu.xml"
    "/home/ares/Developer/speed-dream-2.0/speed/data/data/menu/mouseconfigmenu.xml"
    "/home/ares/Developer/speed-dream-2.0/speed/data/data/menu/practiceresultsmenu.xml"
    "/home/ares/Developer/speed-dream-2.0/speed/data/data/menu/mainmenu.xml"
    "/home/ares/Developer/speed-dream-2.0/speed/data/data/menu/stopracemenu.xml"
    "/home/ares/Developer/speed-dream-2.0/speed/data/data/menu/monitorconfigmenu.xml"
    "/home/ares/Developer/speed-dream-2.0/speed/data/data/menu/racemanmenu.xml"
    "/home/ares/Developer/speed-dream-2.0/speed/data/data/menu/networkwaitconnectmenu.xml"
    "/home/ares/Developer/speed-dream-2.0/speed/data/data/menu/playerconfigmenu.xml"
    "/home/ares/Developer/speed-dream-2.0/speed/data/data/menu/exitmenu.xml"
    "/home/ares/Developer/speed-dream-2.0/speed/data/data/menu/joy2butconfigmenu.xml"
    "/home/ares/Developer/speed-dream-2.0/speed/data/data/menu/helpmenu.xml"
    "/home/ares/Developer/speed-dream-2.0/speed/data/data/menu/racenexteventmenu.xml"
    "/home/ares/Developer/speed-dream-2.0/speed/data/data/menu/networkmenu.xml"
    "/home/ares/Developer/speed-dream-2.0/speed/data/data/menu/controlconfigmenu.xml"
    "/home/ares/Developer/speed-dream-2.0/speed/data/data/menu/graphicsconfigmenu.xml"
    "/home/ares/Developer/speed-dream-2.0/speed/data/data/menu/standingsmenu.xml"
    "/home/ares/Developer/speed-dream-2.0/speed/data/data/menu/startracemenu.xml"
    )
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

