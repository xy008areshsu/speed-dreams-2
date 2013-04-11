# Install script for directory: /home/ares/Developer/speed-dream-2.0/speed/data/tracks/karting/ampfing

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
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/tracks/karting/ampfing" TYPE FILE FILES
    "/home/ares/Developer/speed-dream-2.0/speed/data/tracks/karting/ampfing/ampfing.xml"
    "/home/ares/Developer/speed-dream-2.0/speed/data/tracks/karting/ampfing/ampfing.ac"
    "/home/ares/Developer/speed-dream-2.0/speed/data/tracks/karting/ampfing/background.png"
    "/home/ares/Developer/speed-dream-2.0/speed/data/tracks/karting/ampfing/cemento.png"
    "/home/ares/Developer/speed-dream-2.0/speed/data/tracks/karting/ampfing/grisfoco.png"
    "/home/ares/Developer/speed-dream-2.0/speed/data/tracks/karting/ampfing/acristalado.png"
    "/home/ares/Developer/speed-dream-2.0/speed/data/tracks/karting/ampfing/azulfoco.png"
    "/home/ares/Developer/speed-dream-2.0/speed/data/tracks/karting/ampfing/asfalto.png"
    "/home/ares/Developer/speed-dream-2.0/speed/data/tracks/karting/ampfing/arbol2_n.png"
    "/home/ares/Developer/speed-dream-2.0/speed/data/tracks/karting/ampfing/bosque1_n.png"
    "/home/ares/Developer/speed-dream-2.0/speed/data/tracks/karting/ampfing/ampfing.png"
    "/home/ares/Developer/speed-dream-2.0/speed/data/tracks/karting/ampfing/ventanuco.png"
    "/home/ares/Developer/speed-dream-2.0/speed/data/tracks/karting/ampfing/casa.png"
    "/home/ares/Developer/speed-dream-2.0/speed/data/tracks/karting/ampfing/ventanal.png"
    "/home/ares/Developer/speed-dream-2.0/speed/data/tracks/karting/ampfing/puertaBox.png"
    "/home/ares/Developer/speed-dream-2.0/speed/data/tracks/karting/ampfing/bosque3_n.png"
    "/home/ares/Developer/speed-dream-2.0/speed/data/tracks/karting/ampfing/ventana-ladrillos.png"
    "/home/ares/Developer/speed-dream-2.0/speed/data/tracks/karting/ampfing/neumaticos.png"
    "/home/ares/Developer/speed-dream-2.0/speed/data/tracks/karting/ampfing/poste_n.png"
    "/home/ares/Developer/speed-dream-2.0/speed/data/tracks/karting/ampfing/tejado.png"
    "/home/ares/Developer/speed-dream-2.0/speed/data/tracks/karting/ampfing/matojos_n.png"
    "/home/ares/Developer/speed-dream-2.0/speed/data/tracks/karting/ampfing/barandillas_n.png"
    "/home/ares/Developer/speed-dream-2.0/speed/data/tracks/karting/ampfing/piano.png"
    "/home/ares/Developer/speed-dream-2.0/speed/data/tracks/karting/ampfing/arbol3_n.png"
    "/home/ares/Developer/speed-dream-2.0/speed/data/tracks/karting/ampfing/gente_n.png"
    "/home/ares/Developer/speed-dream-2.0/speed/data/tracks/karting/ampfing/bosque_n.png"
    "/home/ares/Developer/speed-dream-2.0/speed/data/tracks/karting/ampfing/techo-chapa.png"
    "/home/ares/Developer/speed-dream-2.0/speed/data/tracks/karting/ampfing/bosque2_n.png"
    "/home/ares/Developer/speed-dream-2.0/speed/data/tracks/karting/ampfing/cesped.png"
    "/home/ares/Developer/speed-dream-2.0/speed/data/tracks/karting/ampfing/pared-ladrillos.png"
    "/home/ares/Developer/speed-dream-2.0/speed/data/tracks/karting/ampfing/mallazo_n.png"
    "/home/ares/Developer/speed-dream-2.0/speed/data/tracks/karting/ampfing/arbol1_n.png"
    "/home/ares/Developer/speed-dream-2.0/speed/data/tracks/karting/ampfing/arbol4_n.png"
    "/home/ares/Developer/speed-dream-2.0/speed/data/tracks/karting/ampfing/cementado.png"
    "/home/ares/Developer/speed-dream-2.0/speed/data/tracks/karting/ampfing/asfalto-1linea.png"
    "/home/ares/Developer/speed-dream-2.0/speed/data/tracks/karting/ampfing/outline.png"
    "/home/ares/Developer/speed-dream-2.0/speed/data/tracks/karting/ampfing/asfalto-1linea-disc.png"
    "/home/ares/Developer/speed-dream-2.0/speed/data/tracks/karting/ampfing/asfalto-cesped-1linea.png"
    "/home/ares/Developer/speed-dream-2.0/speed/data/tracks/karting/ampfing/asfalto-trazada.png"
    )
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

