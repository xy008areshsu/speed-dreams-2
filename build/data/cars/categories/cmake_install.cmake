# Install script for directory: /home/ares/Developer/speed-dream-2.0/speed/data/cars/categories

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

IF(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for each subdirectory.
  INCLUDE("/home/ares/Developer/speed-dream-2.0/speed/build/data/cars/categories/Supercars/cmake_install.cmake")
  INCLUDE("/home/ares/Developer/speed-dream-2.0/speed/build/data/cars/categories/36GP/cmake_install.cmake")
  INCLUDE("/home/ares/Developer/speed-dream-2.0/speed/build/data/cars/categories/TRB1/cmake_install.cmake")
  INCLUDE("/home/ares/Developer/speed-dream-2.0/speed/build/data/cars/categories/LS-GT1/cmake_install.cmake")
  INCLUDE("/home/ares/Developer/speed-dream-2.0/speed/build/data/cars/categories/LS-GT2/cmake_install.cmake")
  INCLUDE("/home/ares/Developer/speed-dream-2.0/speed/build/data/cars/categories/MP5/cmake_install.cmake")
  INCLUDE("/home/ares/Developer/speed-dream-2.0/speed/build/data/cars/categories/RS/cmake_install.cmake")
  INCLUDE("/home/ares/Developer/speed-dream-2.0/speed/build/data/cars/categories/Preview/cmake_install.cmake")
  INCLUDE("/home/ares/Developer/speed-dream-2.0/speed/build/data/cars/categories/References/cmake_install.cmake")
  INCLUDE("/home/ares/Developer/speed-dream-2.0/speed/build/data/cars/categories/LS-P1/cmake_install.cmake")
  INCLUDE("/home/ares/Developer/speed-dream-2.0/speed/build/data/cars/categories/LS-P2/cmake_install.cmake")
  INCLUDE("/home/ares/Developer/speed-dream-2.0/speed/build/data/cars/categories/MP1/cmake_install.cmake")
  INCLUDE("/home/ares/Developer/speed-dream-2.0/speed/build/data/cars/categories/MPA1/cmake_install.cmake")
  INCLUDE("/home/ares/Developer/speed-dream-2.0/speed/build/data/cars/categories/MP10/cmake_install.cmake")
  INCLUDE("/home/ares/Developer/speed-dream-2.0/speed/build/data/cars/categories/Raid-T1/cmake_install.cmake")
  INCLUDE("/home/ares/Developer/speed-dream-2.0/speed/build/data/cars/categories/Nascar/cmake_install.cmake")

ENDIF(NOT CMAKE_INSTALL_LOCAL_ONLY)

