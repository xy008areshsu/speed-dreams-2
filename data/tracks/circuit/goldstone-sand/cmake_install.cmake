# Install script for directory: /home/ares/Developer/speed-dream-2.0/speed/data/tracks/circuit/goldstone-sand

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
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/games/speed-dreams-2/tracks/circuit/goldstone-sand" TYPE FILE FILES
    "/home/ares/Developer/speed-dream-2.0/speed/data/tracks/circuit/goldstone-sand/goldstone-sand.xml"
    "/home/ares/Developer/speed-dream-2.0/speed/data/tracks/circuit/goldstone-sand/readme.txt"
    "/home/ares/Developer/speed-dream-2.0/speed/data/tracks/circuit/goldstone-sand/land.ac"
    "/home/ares/Developer/speed-dream-2.0/speed/data/tracks/circuit/goldstone-sand/goldstone-sand.ac"
    "/home/ares/Developer/speed-dream-2.0/speed/data/tracks/circuit/goldstone-sand/back-sign.png"
    "/home/ares/Developer/speed-dream-2.0/speed/data/tracks/circuit/goldstone-sand/background.png"
    "/home/ares/Developer/speed-dream-2.0/speed/data/tracks/circuit/goldstone-sand/tronco.png"
    "/home/ares/Developer/speed-dream-2.0/speed/data/tracks/circuit/goldstone-sand/pylon3.png"
    "/home/ares/Developer/speed-dream-2.0/speed/data/tracks/circuit/goldstone-sand/chapanegra.png"
    "/home/ares/Developer/speed-dream-2.0/speed/data/tracks/circuit/goldstone-sand/barandillas.png"
    "/home/ares/Developer/speed-dream-2.0/speed/data/tracks/circuit/goldstone-sand/muro-malla_n.png"
    "/home/ares/Developer/speed-dream-2.0/speed/data/tracks/circuit/goldstone-sand/marcador.png"
    "/home/ares/Developer/speed-dream-2.0/speed/data/tracks/circuit/goldstone-sand/poste.png"
    "/home/ares/Developer/speed-dream-2.0/speed/data/tracks/circuit/goldstone-sand/BDR-hispania_n.png"
    "/home/ares/Developer/speed-dream-2.0/speed/data/tracks/circuit/goldstone-sand/BDR-italia_n.png"
    "/home/ares/Developer/speed-dream-2.0/speed/data/tracks/circuit/goldstone-sand/platano_n.png"
    "/home/ares/Developer/speed-dream-2.0/speed/data/tracks/circuit/goldstone-sand/concrete2.png"
    "/home/ares/Developer/speed-dream-2.0/speed/data/tracks/circuit/goldstone-sand/bosquete_n.png"
    "/home/ares/Developer/speed-dream-2.0/speed/data/tracks/circuit/goldstone-sand/turn50R.png"
    "/home/ares/Developer/speed-dream-2.0/speed/data/tracks/circuit/goldstone-sand/gruarueda.png"
    "/home/ares/Developer/speed-dream-2.0/speed/data/tracks/circuit/goldstone-sand/piano-pintverd-astro.png"
    "/home/ares/Developer/speed-dream-2.0/speed/data/tracks/circuit/goldstone-sand/asfalto.png"
    "/home/ares/Developer/speed-dream-2.0/speed/data/tracks/circuit/goldstone-sand/pantallon-lat.png"
    "/home/ares/Developer/speed-dream-2.0/speed/data/tracks/circuit/goldstone-sand/gruacabina.png"
    "/home/ares/Developer/speed-dream-2.0/speed/data/tracks/circuit/goldstone-sand/BDR-canada.png"
    "/home/ares/Developer/speed-dream-2.0/speed/data/tracks/circuit/goldstone-sand/logofierari_n.png"
    "/home/ares/Developer/speed-dream-2.0/speed/data/tracks/circuit/goldstone-sand/ventanuco.png"
    "/home/ares/Developer/speed-dream-2.0/speed/data/tracks/circuit/goldstone-sand/gruacanasta.png"
    "/home/ares/Developer/speed-dream-2.0/speed/data/tracks/circuit/goldstone-sand/techogradas.png"
    "/home/ares/Developer/speed-dream-2.0/speed/data/tracks/circuit/goldstone-sand/direccion.png"
    "/home/ares/Developer/speed-dream-2.0/speed/data/tracks/circuit/goldstone-sand/balcones.png"
    "/home/ares/Developer/speed-dream-2.0/speed/data/tracks/circuit/goldstone-sand/turn100L.png"
    "/home/ares/Developer/speed-dream-2.0/speed/data/tracks/circuit/goldstone-sand/turn150R.png"
    "/home/ares/Developer/speed-dream-2.0/speed/data/tracks/circuit/goldstone-sand/pantallon.png"
    "/home/ares/Developer/speed-dream-2.0/speed/data/tracks/circuit/goldstone-sand/pylon2.png"
    "/home/ares/Developer/speed-dream-2.0/speed/data/tracks/circuit/goldstone-sand/escaleragradas.png"
    "/home/ares/Developer/speed-dream-2.0/speed/data/tracks/circuit/goldstone-sand/piano-asfalto.png"
    "/home/ares/Developer/speed-dream-2.0/speed/data/tracks/circuit/goldstone-sand/naranjo.png"
    "/home/ares/Developer/speed-dream-2.0/speed/data/tracks/circuit/goldstone-sand/piano-albero.png"
    "/home/ares/Developer/speed-dream-2.0/speed/data/tracks/circuit/goldstone-sand/chopo.png"
    "/home/ares/Developer/speed-dream-2.0/speed/data/tracks/circuit/goldstone-sand/suelogradas.png"
    "/home/ares/Developer/speed-dream-2.0/speed/data/tracks/circuit/goldstone-sand/pantallon-front.png"
    "/home/ares/Developer/speed-dream-2.0/speed/data/tracks/circuit/goldstone-sand/logorecblue_n.png"
    "/home/ares/Developer/speed-dream-2.0/speed/data/tracks/circuit/goldstone-sand/parrillalmuro.png"
    "/home/ares/Developer/speed-dream-2.0/speed/data/tracks/circuit/goldstone-sand/linesalida.png"
    "/home/ares/Developer/speed-dream-2.0/speed/data/tracks/circuit/goldstone-sand/mamparas.png"
    "/home/ares/Developer/speed-dream-2.0/speed/data/tracks/circuit/goldstone-sand/linealmuro.png"
    "/home/ares/Developer/speed-dream-2.0/speed/data/tracks/circuit/goldstone-sand/BDR-belgica.png"
    "/home/ares/Developer/speed-dream-2.0/speed/data/tracks/circuit/goldstone-sand/publicogradas2_n.png"
    "/home/ares/Developer/speed-dream-2.0/speed/data/tracks/circuit/goldstone-sand/grava.png"
    "/home/ares/Developer/speed-dream-2.0/speed/data/tracks/circuit/goldstone-sand/grualaterales.png"
    "/home/ares/Developer/speed-dream-2.0/speed/data/tracks/circuit/goldstone-sand/publicogradas4_n.png"
    "/home/ares/Developer/speed-dream-2.0/speed/data/tracks/circuit/goldstone-sand/barandillas_n.png"
    "/home/ares/Developer/speed-dream-2.0/speed/data/tracks/circuit/goldstone-sand/pit-carril.png"
    "/home/ares/Developer/speed-dream-2.0/speed/data/tracks/circuit/goldstone-sand/guardarail-blanco.png"
    "/home/ares/Developer/speed-dream-2.0/speed/data/tracks/circuit/goldstone-sand/piano-pintverd-cesped.png"
    "/home/ares/Developer/speed-dream-2.0/speed/data/tracks/circuit/goldstone-sand/pantallon-varios.png"
    "/home/ares/Developer/speed-dream-2.0/speed/data/tracks/circuit/goldstone-sand/cristalera.png"
    "/home/ares/Developer/speed-dream-2.0/speed/data/tracks/circuit/goldstone-sand/piano-astroturf.png"
    "/home/ares/Developer/speed-dream-2.0/speed/data/tracks/circuit/goldstone-sand/guardarail.png"
    "/home/ares/Developer/speed-dream-2.0/speed/data/tracks/circuit/goldstone-sand/pylon1.png"
    "/home/ares/Developer/speed-dream-2.0/speed/data/tracks/circuit/goldstone-sand/turn100R.png"
    "/home/ares/Developer/speed-dream-2.0/speed/data/tracks/circuit/goldstone-sand/BDR-brasil_n.png"
    "/home/ares/Developer/speed-dream-2.0/speed/data/tracks/circuit/goldstone-sand/lonablanca.png"
    "/home/ares/Developer/speed-dream-2.0/speed/data/tracks/circuit/goldstone-sand/garaje.png"
    "/home/ares/Developer/speed-dream-2.0/speed/data/tracks/circuit/goldstone-sand/cinamomo_n.png"
    "/home/ares/Developer/speed-dream-2.0/speed/data/tracks/circuit/goldstone-sand/guardarail-rojo.png"
    "/home/ares/Developer/speed-dream-2.0/speed/data/tracks/circuit/goldstone-sand/modulo-poste_n.png"
    "/home/ares/Developer/speed-dream-2.0/speed/data/tracks/circuit/goldstone-sand/cesped.png"
    "/home/ares/Developer/speed-dream-2.0/speed/data/tracks/circuit/goldstone-sand/BDR-austria_n.png"
    "/home/ares/Developer/speed-dream-2.0/speed/data/tracks/circuit/goldstone-sand/BDR-alemania_n.png"
    "/home/ares/Developer/speed-dream-2.0/speed/data/tracks/circuit/goldstone-sand/mecanicosypublico_n.png"
    "/home/ares/Developer/speed-dream-2.0/speed/data/tracks/circuit/goldstone-sand/turn200R.png"
    "/home/ares/Developer/speed-dream-2.0/speed/data/tracks/circuit/goldstone-sand/publicogradas3_n.png"
    "/home/ares/Developer/speed-dream-2.0/speed/data/tracks/circuit/goldstone-sand/carril-pit.png"
    "/home/ares/Developer/speed-dream-2.0/speed/data/tracks/circuit/goldstone-sand/concrete.png"
    "/home/ares/Developer/speed-dream-2.0/speed/data/tracks/circuit/goldstone-sand/piano-pintrojo-astro.png"
    "/home/ares/Developer/speed-dream-2.0/speed/data/tracks/circuit/goldstone-sand/logotorosso_n.png"
    "/home/ares/Developer/speed-dream-2.0/speed/data/tracks/circuit/goldstone-sand/turn150L.png"
    "/home/ares/Developer/speed-dream-2.0/speed/data/tracks/circuit/goldstone-sand/logorenol_n.png"
    "/home/ares/Developer/speed-dream-2.0/speed/data/tracks/circuit/goldstone-sand/BDR-reinounido_n.png"
    "/home/ares/Developer/speed-dream-2.0/speed/data/tracks/circuit/goldstone-sand/CRNF.png"
    "/home/ares/Developer/speed-dream-2.0/speed/data/tracks/circuit/goldstone-sand/publicogradas_n.png"
    "/home/ares/Developer/speed-dream-2.0/speed/data/tracks/circuit/goldstone-sand/piano-pintverd.png"
    "/home/ares/Developer/speed-dream-2.0/speed/data/tracks/circuit/goldstone-sand/piano-pintrojo-pintverd.png"
    "/home/ares/Developer/speed-dream-2.0/speed/data/tracks/circuit/goldstone-sand/lonaoscura.png"
    "/home/ares/Developer/speed-dream-2.0/speed/data/tracks/circuit/goldstone-sand/gruacabinacuerpo.png"
    "/home/ares/Developer/speed-dream-2.0/speed/data/tracks/circuit/goldstone-sand/albero.png"
    "/home/ares/Developer/speed-dream-2.0/speed/data/tracks/circuit/goldstone-sand/bosquete-borde_n.png"
    "/home/ares/Developer/speed-dream-2.0/speed/data/tracks/circuit/goldstone-sand/parrilla.png"
    "/home/ares/Developer/speed-dream-2.0/speed/data/tracks/circuit/goldstone-sand/gomas-lona.png"
    "/home/ares/Developer/speed-dream-2.0/speed/data/tracks/circuit/goldstone-sand/asfalto-1linea.png"
    "/home/ares/Developer/speed-dream-2.0/speed/data/tracks/circuit/goldstone-sand/logomaclwren.png"
    "/home/ares/Developer/speed-dream-2.0/speed/data/tracks/circuit/goldstone-sand/outline.png"
    "/home/ares/Developer/speed-dream-2.0/speed/data/tracks/circuit/goldstone-sand/asfalto-1linea-disc.png"
    "/home/ares/Developer/speed-dream-2.0/speed/data/tracks/circuit/goldstone-sand/BDR-francia_n.png"
    "/home/ares/Developer/speed-dream-2.0/speed/data/tracks/circuit/goldstone-sand/piano-cesped.png"
    "/home/ares/Developer/speed-dream-2.0/speed/data/tracks/circuit/goldstone-sand/asfalto-cesped-1linea.png"
    "/home/ares/Developer/speed-dream-2.0/speed/data/tracks/circuit/goldstone-sand/turn50L.png"
    "/home/ares/Developer/speed-dream-2.0/speed/data/tracks/circuit/goldstone-sand/goldstone-sand.jpg"
    )
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

