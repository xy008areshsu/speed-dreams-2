############################################################################
#
#   file        : install.cmake
#   copyright   : (C) 2008 by Mart Kelder, 2010 by J.-P. Meuret
#   web         : www.speed-dreams.org 
#   version     : $Id$
#
############################################################################

############################################################################
#                                                                          #
#   This program is free software; you can redistribute it and/or modify   #
#   it under the terms of the GNU General Public License as published by   #
#   the Free Software Foundation; either version 2 of the License, or      #
#   (at your option) any later version.                                    #
#                                                                          #
############################################################################

# @file     CMake install macros
# @author   Mart Kelder, J.-P. Meuret
# @version  $Id$

# Data/Lib/Bin/Include files installation (with user settings registration for data files)
# Note: Missing files will be skipped if not there and OPTION_CHECK_CONTENTS is Off.
# Args:
#  DATA     : Data subdirectory where to install specified data files
#  LIB      : Lib subdirectory where to install specified files/targets
#  BIN      : If present, instructs to install specified files/targets in the bin dir
#  INCLUDE  : Include subdirectory where to install specified files
#  USER     : User settings subdirectory where to install/update specified data files at run-time
#  PREFIX   : Prefix to use to get source path for files specified in FILES
#  FILES    : Files to install (see PREFIX)
#  TARGETS  : Targets to install
# Examples:
#  SD_INSTALL_FILES(DATA drivers/bt FILES bt.xml logo.rgb)
#     Installs bt.xml and logo.rgb in ${prefix}/${SD_DATADIR}/drivers/bt
#  SD_INSTALL_FILES(DATA config/raceman USER config/raceman FILES quickrace.xml endrace.xml)
#     Installs quickrace.xml and endrace.xml in ${prefix}/${SD_DATADIR}/drivers/bt
#     and copies the file to the users settings folder ${SD_LOCALDIR}/config/raceman at startup.
#  SD_INSTALL_FILES(LIB drivers/bt TARGETS bt.so)
#     Installs bt.so in ${prefix}/${SD_LIBDIR}/drivers/bt
#  SD_INSTALL_FILES(BIN TARGETS speed-dreams)
#     Installs the speed-dreams target in ${prefix}/${SD_BINDIR}
#  SD_INSTALL_FILES(MAN man6 PREFIX ${SOURCE_DIR}/doc/man FILES sd2-menuview.6)
#     Installs ${SOURCE_DIR}/doc/man/sd2-menuview.6 in ${prefix}/${SD_MANDIR}/man6
MACRO(SD_INSTALL_FILES)

  SET(SD_INSTALL_FILES_SYNTAX "DATA,1,1,IS_DATA,DATA_PATH")
  SET(SD_INSTALL_FILES_SYNTAX ${SD_INSTALL_FILES_SYNTAX} "LIB,1,1,IS_LIB,LIB_PATH")
  SET(SD_INSTALL_FILES_SYNTAX ${SD_INSTALL_FILES_SYNTAX} "BIN,0,0,IS_BIN,_")
  SET(SD_INSTALL_FILES_SYNTAX ${SD_INSTALL_FILES_SYNTAX} "INCLUDE,0,1,IS_INCLUDE,INCLUDE_PATH")
  SET(SD_INSTALL_FILES_SYNTAX ${SD_INSTALL_FILES_SYNTAX} "MAN,1,1,IS_MAN,MAN_PATH")
  SET(SD_INSTALL_FILES_SYNTAX ${SD_INSTALL_FILES_SYNTAX} "USER,1,1,IS_USER,USER_PATH")
  SET(SD_INSTALL_FILES_SYNTAX ${SD_INSTALL_FILES_SYNTAX} "PREFIX,0,1,HAS_PREFIX,PREFIX")
  SET(SD_INSTALL_FILES_SYNTAX ${SD_INSTALL_FILES_SYNTAX} "FILES,0,-1,HAS_FILES,FILES")
  SET(SD_INSTALL_FILES_SYNTAX ${SD_INSTALL_FILES_SYNTAX} "TARGETS,0,-1,HAS_TARGETS,TARGETS")

  SPLIT_ARGN(${SD_INSTALL_FILES_SYNTAX} ARGUMENTS ${ARGN})

  #MESSAGE(STATUS "  SD_INSTALL_FILES: LIB=${IS_LIB}:${LIB_PATH} BIN=${IS_BIN} INCLUDE=${IS_INCLUDE}:${INCLUDE_PATH} DATA=${IS_DATA}:${DATA_PATH} MAN=${IS_MAN}:${MAN_PATH} USER=${IS_USER}:${USER_PATH} TARGETS=${HAS_TARGETS}:${TARGETS} FILES=${HAS_FILES}:${FILES}")

  # Fix/Check argument syntax / values
  IF(NOT DATA_PATH)
    SET(IS_DATA FALSE)
  ENDIF()
  IF(NOT USER_PATH)
    SET(IS_USER FALSE)
  ENDIF()
  IF(NOT LIB_PATH)
    SET(IS_LIB FALSE)
  ENDIF()
  IF(NOT MAN_PATH)
    SET(IS_MAN FALSE)
  ENDIF()
  IF(NOT PREFIX)
    SET(HAS_PREFIX FALSE)
  ENDIF()
  IF(NOT FILES)
    SET(HAS_FILES FALSE)
  ENDIF()
  IF(NOT TARGETS)
    SET(HAS_TARGETS FALSE)
  ENDIF()

  IF(IS_DATA OR IS_LIB OR IS_BIN OR IS_INCLUDE OR IS_MAN)
    IF(HAS_PREFIX)
      IF(NOT HAS_FILES)
        MESSAGE(FATAL_ERROR "SD_INSTALL_FILES: Expected FILES when PREFIX keyword is present")
      ENDIF()
    ENDIF()
  ELSE()
    MESSAGE(FATAL_ERROR "SD_INSTALL_FILES: Expected 1 and only 1 LIB, DATA, BIN, INCLUDE or MAN keyword")
  ENDIF()

  IF(IS_USER)
    IF(NOT IS_DATA)
      MESSAGE(FATAL_ERROR "SD_INSTALL_FILES: Expected DATA when USER keyword is present")
    ENDIF()
  ENDIF()

  # Compute destination sub-dir
  IF(IS_LIB)
    SET(DEST1 ${SD_LIBDIR})
    SET(DEST2 ${LIB_PATH})
  ELSEIF(IS_DATA)
    SET(DEST1 ${SD_DATADIR})
    SET(DEST2 ${DATA_PATH})
  ELSEIF(IS_BIN)
    SET(DEST1 ${SD_BINDIR})
    SET(DEST2 "")
  ELSEIF(IS_INCLUDE)
    SET(DEST1 ${SD_INCLUDEDIR})
    SET(DEST2 ${INCLUDE_PATH})
  ELSEIF(IS_MAN)
    SET(DEST1 ${SD_MANDIR})
    SET(DEST2 ${MAN_PATH})
  ENDIF()

  IF(DEST2 STREQUAL "" OR DEST2 STREQUAL "/")
    SET(DEST2 "")
    SET(DEST_ALL "${DEST1}")
  ELSE()
    SET(DEST_ALL "${DEST1}/${DEST2}")
  ENDIF()

  # Prepend prefix to files if specified.
  SET(REAL_FILES) # Reset the list (remember, it's a CMakeLists.txt global variable :-()
  IF(HAS_FILES)
    SET(_FILES) # Same.
    FOREACH(FILE ${FILES})
      #MESSAGE(STATUS "SD_INSTALL_FILES: ${FILE}")
      IF(HAS_PREFIX)
        SET(_FILE ${PREFIX}/${FILE})
      ELSE()
        SET(_FILE ${FILE})
      ENDIF()
      # Contents check for non-generated files if specified.
      IF(NOT IS_ABSOLUTE ${_FILE})
        SET(_FILE "${CMAKE_CURRENT_SOURCE_DIR}/${_FILE}")
      ENDIF()
      IF(IS_LIB OR IS_BIN OR EXISTS ${_FILE} OR OPTION_CHECK_CONTENTS)
        LIST(APPEND REAL_FILES ${_FILE})
        LIST(APPEND _FILES ${FILE})
      ELSE()
        IF(IS_ABSOLUTE ${_FILE}) # Make message less long : remove useless source dir path.
          STRING(REPLACE "${CMAKE_CURRENT_SOURCE_DIR}/" "" _FILE "${_FILE}")
        ENDIF()
        MESSAGE(STATUS "Note : Won't install missing file ${_FILE}")
      ENDIF()
    ENDFOREACH()
    SET(FILES ${_FILES})
  ENDIF()

  # Install files
  IF(REAL_FILES)
    INSTALL(FILES ${REAL_FILES} DESTINATION ${DEST_ALL})
  ENDIF()

  # Install targets
  IF(HAS_TARGETS)
    INSTALL(TARGETS ${TARGETS} DESTINATION ${DEST_ALL})
  ENDIF()

  # Register files for run-time install/update at game startup (through filesetup.cpp services)
  IF(IS_USER)

    # Handle properly the "root" folder case.
    IF(DATA_PATH STREQUAL "/")
      SET(DATA_PATH "")
    ELSE()
      SET(DATA_PATH "${DATA_PATH}/")
    ENDIF()

    # In order to run xmlversion.exe in the build tree (see below), under Windows,
    # we nearly always have to copy all dependencies next to it (tgf, txml or Expat, SDL, compiler run-time).
    GET_TARGET_PROPERTY(TGF_LIB tgf LOCATION)
    IF(NOT OPTION_3RDPARTY_EXPAT)
      GET_TARGET_PROPERTY(TXML_LIB txml LOCATION)
    ELSE(NOT OPTION_3RDPARTY_EXPAT)
      FIND_PACKAGE(EXPAT)
      GET_FILENAME_COMPONENT(EXPAT_LIBPATH "${EXPAT_LIBRARY}" PATH)
      GET_FILENAME_COMPONENT(EXPAT_LIBNAME "${EXPAT_LIBRARY}" NAME_WE)
      SET(EXPAT_LIB ${EXPAT_LIBPATH}/../bin/${EXPAT_LIBNAME}${CMAKE_SHARED_LIBRARY_SUFFIX})
    ENDIF(NOT OPTION_3RDPARTY_EXPAT)
    FIND_PACKAGE(SDL)
    SET(SDL_LIBPATHNAME "${SDL_LIBRARY}")
    IF(MINGW)
      # Multiple lib specs fuss ... find the one
      STRING(REGEX REPLACE ".*;([^;]+dll[^;]*);.*" "\\1" SDL_LIBPATHNAME "${SDL_LIBPATHNAME}")
    ENDIF(MINGW)
    GET_FILENAME_COMPONENT(SDL_LIBPATH "${SDL_LIBPATHNAME}" PATH)
    GET_FILENAME_COMPONENT(SDL_LIBNAME "${SDL_LIBPATHNAME}" NAME_WE)
    IF(MINGW)
      STRING(REGEX REPLACE "lib(.*)" "\\1" SDL_LIBNAME "${SDL_LIBNAME}")
    ENDIF(MINGW)
    SET(SDL_LIB ${SDL_LIBPATH}/../bin/${SDL_LIBNAME}${CMAKE_SHARED_LIBRARY_SUFFIX})

    # Execute xmlversion at install-time to do the above mentioned registration job.
    IF(MSVC)

      INSTALL(CODE 
          "FILE(READ ${CMAKE_BINARY_DIR}/xmlversion_loc.txt XMLVERSION_EXE)
           STRING(REPLACE \"$(OutDir)\" \"\${CMAKE_INSTALL_CONFIG_NAME}\" XMLVERSION_EXE \${XMLVERSION_EXE})
           STRING(REPLACE \"$(ConfigurationName)\" \"\${CMAKE_INSTALL_CONFIG_NAME}\" XMLVERSION_EXE \${XMLVERSION_EXE})
           STRING(REPLACE \"$(Configuration)\" \"\${CMAKE_INSTALL_CONFIG_NAME}\" XMLVERSION_EXE \${XMLVERSION_EXE})
           SET(_LIBS_TO_INSTALL \"${SDL_LIB}\")
           SET(OPTION_3RDPARTY_EXPAT ${OPTION_3RDPARTY_EXPAT})
           IF(NOT OPTION_3RDPARTY_EXPAT)
             SET(TXML_LIB ${TXML_LIB})
             STRING(REPLACE \"$(OutDir)\" \"\${CMAKE_INSTALL_CONFIG_NAME}\" TXML_LIB \${TXML_LIB})
             STRING(REPLACE \"$(ConfigurationName)\" \"\${CMAKE_INSTALL_CONFIG_NAME}\" TXML_LIB \${TXML_LIB})
             STRING(REPLACE \"$(Configuration)\" \"\${CMAKE_INSTALL_CONFIG_NAME}\" TXML_LIB \${TXML_LIB})
             LIST(APPEND _LIBS_TO_INSTALL \"\${TXML_LIB}\")
           ELSE(NOT OPTION_3RDPARTY_EXPAT)
             LIST(APPEND _LIBS_TO_INSTALL \"${EXPAT_LIB}\")
           ENDIF(NOT OPTION_3RDPARTY_EXPAT)
           SET(TGF_LIB ${TGF_LIB})
           STRING(REPLACE \"$(OutDir)\" \"\${CMAKE_INSTALL_CONFIG_NAME}\" TGF_LIB \${TGF_LIB})
           STRING(REPLACE \"$(ConfigurationName)\" \"\${CMAKE_INSTALL_CONFIG_NAME}\" TGF_LIB \${TGF_LIB})
           STRING(REPLACE \"$(Configuration)\" \"\${CMAKE_INSTALL_CONFIG_NAME}\" TGF_LIB \${TGF_LIB})
           LIST(APPEND _LIBS_TO_INSTALL \${TGF_LIB})
           GET_FILENAME_COMPONENT(XMLVERSION_DIR \"\${XMLVERSION_EXE}\" PATH)
           MESSAGE(STATUS \"xmlversion : Libs to install=\${_LIBS_TO_INSTALL}\")
           FILE(INSTALL DESTINATION \"\${XMLVERSION_DIR}\" TYPE FILE FILES \${_LIBS_TO_INSTALL})
           SET(SD_DATADIR_ABS \"${SD_DATADIR}\")
           IF(NOT IS_ABSOLUTE \${SD_DATADIR_ABS})
             GET_FILENAME_COMPONENT(SD_DATADIR_ABS \"\${CMAKE_INSTALL_PREFIX}/\${SD_DATADIR_ABS}\" ABSOLUTE)
           ENDIF()
           FOREACH(FILE ${FILES})
             GET_FILENAME_COMPONENT(FILENAME \${FILE} NAME)
             EXECUTE_PROCESS(COMMAND \"\${XMLVERSION_EXE}\" \"\${SD_DATADIR_ABS}/version.xml\" \"${DATA_PATH}\${FILENAME}\" \"${USER_PATH}/\${FILENAME}\" \"\${SD_DATADIR_ABS}\" RESULT_VARIABLE XMLVERSTATUS)
             IF(XMLVERSTATUS)
               MESSAGE(FATAL_ERROR \"Error: xmlversion failed : \${XMLVERSTATUS}\")
             ENDIF()
           ENDFOREACH()")

    ELSE(MSVC)

        INSTALL(CODE 
            "FILE(READ ${CMAKE_BINARY_DIR}/xmlversion_loc.txt XMLVERSION_EXE)
             SET(MINGW ${MINGW})
             IF(MINGW)
               SET(_LIBS_TO_INSTALL \"${TGF_LIB}\")
               SET(OPTION_3RDPARTY_EXPAT ${OPTION_3RDPARTY_EXPAT})
               IF(NOT OPTION_3RDPARTY_EXPAT)
                 LIST(APPEND _LIBS_TO_INSTALL \"${TXML_LIB}\")
               ENDIF(NOT OPTION_3RDPARTY_EXPAT)
               # CMake configuration for MSYS Makefiles generator assumes that 3rd party dependencies are installed
               # in standard Linux folders, hence in the PATH ; so no need to install next to xmlversion exe.
               IF(NOT CMAKE_GENERATOR STREQUAL \"MSYS Makefiles\")
                 IF(OPTION_3RDPARTY_EXPAT)
                   LIST(APPEND _LIBS_TO_INSTALL \"${EXPAT_LIB}\")
                 ENDIF(OPTION_3RDPARTY_EXPAT)
                 LIST(APPEND _LIBS_TO_INSTALL \"${SDL_LIB}\")
                 GET_FILENAME_COMPONENT(_MINGW_BINDIR \"${CMAKE_CXX_COMPILER}\" PATH)
                 LIST(APPEND _LIBS_TO_INSTALL \"\${_MINGW_BINDIR}/libstdc++-6.dll\" \"\${_MINGW_BINDIR}/libgcc_s_dw2-1.dll\")
               ENDIF(NOT CMAKE_GENERATOR STREQUAL \"MSYS Makefiles\")
               GET_FILENAME_COMPONENT(XMLVERSION_DIR \"\${XMLVERSION_EXE}\" PATH)
               MESSAGE(STATUS \"xmlversion : Libs to install=\${_LIBS_TO_INSTALL}\")
               FILE(INSTALL DESTINATION \"\${XMLVERSION_DIR}\" TYPE FILE FILES \${_LIBS_TO_INSTALL})
             ENDIF(MINGW)
             SET(SD_DATADIR_ABS \"${SD_DATADIR}\")
             IF(NOT IS_ABSOLUTE \${SD_DATADIR_ABS})
               GET_FILENAME_COMPONENT(SD_DATADIR_ABS \"\${CMAKE_INSTALL_PREFIX}/\${SD_DATADIR_ABS}\" ABSOLUTE)
             ENDIF()
             # Why this path correction here ? This needs a comment !
             SET(CUR_DESTDIR \"\$ENV{DESTDIR}\")
             IF(CUR_DESTDIR MATCHES \"[^/]\")
               STRING(REGEX REPLACE \"^(.*[^/])/*$\" \"\\\\1\" CUR_DESTDIR_CORR \"\${CUR_DESTDIR}\")
             ELSE(CUR_DESTDIR MATCHES \"[^/]\")
               SET(CUR_DESTDIR_CORR \"\")
             ENDIF(CUR_DESTDIR MATCHES \"[^/]\")
             FOREACH(FILE ${FILES})
               GET_FILENAME_COMPONENT(FILENAME \${FILE} NAME)
               EXECUTE_PROCESS(COMMAND \"\${XMLVERSION_EXE}\" \"\${CUR_DESTDIR_CORR}\${SD_DATADIR_ABS}/version.xml\" \"${DATA_PATH}\${FILENAME}\" \"${USER_PATH}/\${FILENAME}\" \"\${CUR_DESTDIR_CORR}\${SD_DATADIR_ABS}\" RESULT_VARIABLE XMLVERSTATUS)
               IF(XMLVERSTATUS)
                 MESSAGE(FATAL_ERROR \"Error: xmlversion failed : \${XMLVERSTATUS}\")
               ENDIF(XMLVERSTATUS)
             ENDFOREACH()")

    ENDIF(MSVC)

  ENDIF(IS_USER)

ENDMACRO(SD_INSTALL_FILES)

# Directory installation with pattern matching on files and user settings registration
# Note: Missing dirs will be skipped if not there and OPTION_CHECK_CONTENTS is Off.
# Args:
#  DATA        : Data subdirectory where to install specified sub-dirs
#  USER        : User settings subdirectory where to install/update specified sub-dirs at run-time
#  PREFIX      : Prefix to use to get source path for dirs specified in DIRECTORIES
#  DIRECTORIES : Sub-dirs to recursively install (see PREFIX)
#  PATTERNS    : Glob patterns to use for seelecting files to install (defaults to *.*)
# Example:
#  SD_INSTALL_DIRECTORIES(DATA drivers/human USER drivers/human 
#                         PREFIX pfx DIRECTORIES cars tracks PATTERNS *.xml)
#  will recursively install any .xml file from drivers/human/pfx/cars and drivers/human/pfx/tracks
#  into drivers/human/cars and  drivers/human/pfx/tracks data dirs ; 
#  these files / sub-dirs will also be scheduled for run-time update/install in user settings dir.
MACRO(SD_INSTALL_DIRECTORIES)

  SET(SDID_SYNTAX "DATA,1,1,IS_DATA,DATA_PATH")
  SET(SDID_SYNTAX ${SDID_SYNTAX} "USER,1,1,IS_USER,USER_PATH")
  SET(SDID_SYNTAX ${SDID_SYNTAX} "PREFIX,0,1,HAS_PREFIX,PREFIX")
  SET(SDID_SYNTAX ${SDID_SYNTAX} "DIRECTORIES,0,-1,HAS_DIRECTORIES,DIRECTORIES")
  SET(SDID_SYNTAX ${SDID_SYNTAX} "PATTERNS,0,-1,HAS_PATTERNS,PATTERNS")

  SPLIT_ARGN(${SDID_SYNTAX} ARGUMENTS ${ARGN})

  #MESSAGE(STATUS "  SD_INSTALL_DIRECTORIES: DATA=${IS_DATA}:${DATA_PATH} USER=${IS_USER}:${USER_PATH} DIRS=${HAS_DIRECTORIES}:${DIRECTORIES} PATTERNS=${HAS_PATTERNS}:${PATTERNS}")

  # Fix/Check argument syntax / values
  IF(NOT DATA_PATH)
    SET(IS_DATA FALSE)
  ENDIF()
  IF(NOT USER_PATH)
    SET(IS_USER FALSE)
  ENDIF()
  IF(NOT PREFIX)
    SET(HAS_PREFIX FALSE)
  ENDIF()
  IF(NOT DIRECTORIES)
    SET(HAS_DIRECTORIES FALSE)
  ENDIF()
  IF(NOT PATTERNS)
    SET(HAS_PATTERNS TRUE)
    SET(PATTERNS "*.*")
  ENDIF()

  IF(IS_DATA AND HAS_DIRECTORIES)
    IF(HAS_PREFIX)
      SET(PREFIX "${PREFIX}/")
      SET(POSTFIX "/${PREFIX}")
    ELSE()
      SET(PREFIX "")
      SET(POSTFIX "")
    ENDIF()
  ELSE()
    MESSAGE(ERROR "SD_INSTALL_DIRECTORIES: Expected mandatory DATA and DIRECTORIES keywords")
  ENDIF()

  # Compute destination sub-dir
  IF(DATA_PATH STREQUAL "/")
    SET(DEST_ALL "${SD_DATADIR}")
  ELSE()
    SET(DEST_ALL "${SD_DATADIR}/${DATA_PATH}")
  ENDIF()

  # Check / filter contents if specified
  SET(_DIRECTORIES)
  FOREACH(DIRECTORY ${DIRECTORIES})
    #MESSAGE(STATUS "SD_INSTALL_DIRS: ${DIRECTORY}")
    IF(NOT IS_ABSOLUTE ${DIRECTORY})
      SET(_DIRECTORY "${CMAKE_CURRENT_SOURCE_DIR}/${PREFIX}${DIRECTORY}")
    ELSE()
      SET(_DIRECTORY "${DIRECTORY}")
    ENDIF()
    IF(EXISTS ${_DIRECTORY} OR OPTION_CHECK_CONTENTS)
      LIST(APPEND _DIRECTORIES ${DIRECTORY})
    ELSE()
      MESSAGE(STATUS "Note : Won't install missing dir. ${PREFIX}${DIRECTORY}")
    ENDIF()
  ENDFOREACH()
  SET(DIRECTORIES ${_DIRECTORIES})
  
  # Install selected files into the data dir.
  FOREACH(DIRECTORY ${DIRECTORIES})
    SET(GLOB_EXPRS)
    FOREACH(PATTERN ${PATTERNS})
      LIST(APPEND GLOB_EXPRS "${PREFIX}${DIRECTORY}/${PATTERN}")
    ENDFOREACH()
    FILE(GLOB_RECURSE FILES RELATIVE ${CMAKE_CURRENT_SOURCE_DIR}${POSTFIX} ${GLOB_EXPRS})
    FOREACH(FILE ${FILES})
      IF(NOT "${FILE}" MATCHES "\\.svn")
        GET_FILENAME_COMPONENT(SUBDIR ${FILE} PATH)
        INSTALL(FILES ${PREFIX}${FILE} DESTINATION ${DEST_ALL}/${SUBDIR})
      ENDIF()
    ENDFOREACH()
    #MESSAGE(STATUS "${DIRECTORY}/${PATTERNS} : ${FILES}")
  ENDFOREACH()

  # Register selected files in subdirs for run-time install/update
  # at game startup (through filesetup.cpp services)
  IF(IS_USER)

    # Handle properly the "root" folder case.
    IF(DATA_PATH STREQUAL "/")
      SET(DEST_ALL "")
    ELSE()
      SET(DEST_ALL "${DATA_PATH}/")
    ENDIF()

    # In order to run xmlversion.exe in the build tree (see below), under Windows,
    # we nearly always have to copy all dependencies next to it (tgf, txml or Expat, SDL, compiler run-time).
    GET_TARGET_PROPERTY(TGF_LIB tgf LOCATION)
    IF(NOT OPTION_3RDPARTY_EXPAT)
      GET_TARGET_PROPERTY(TXML_LIB txml LOCATION)
    ELSE(NOT OPTION_3RDPARTY_EXPAT)
      FIND_PACKAGE(EXPAT)
      GET_FILENAME_COMPONENT(EXPAT_LIBPATH "${EXPAT_LIBRARY}" PATH)
      GET_FILENAME_COMPONENT(EXPAT_LIBNAME "${EXPAT_LIBRARY}" NAME_WE)
      IF(MINGW) # Multiple lib specs ... assume the 1st is the one.
        STRING(REGEX REPLACE "(.*);.*" "\\1" EXPAT_LIBNAME ${EXPAT_LIBNAME})
      ENDIF(MINGW)
      SET(EXPAT_LIB ${EXPAT_LIBPATH}/../bin/${EXPAT_LIBNAME}${CMAKE_SHARED_LIBRARY_SUFFIX})
    ENDIF(NOT OPTION_3RDPARTY_EXPAT)
    FIND_PACKAGE(SDL)
    SET(SDL_LIBPATHNAME "${SDL_LIBRARY}")
    IF(MINGW)
      # Multiple lib specs fuss ... find the one
      STRING(REGEX REPLACE ".*;([^;]+dll[^;]*);.*" "\\1" SDL_LIBPATHNAME "${SDL_LIBPATHNAME}")
    ENDIF(MINGW)
    GET_FILENAME_COMPONENT(SDL_LIBPATH "${SDL_LIBPATHNAME}" PATH)
    GET_FILENAME_COMPONENT(SDL_LIBNAME "${SDL_LIBPATHNAME}" NAME_WE)
    IF(MINGW)
      STRING(REGEX REPLACE "lib(.*)" "\\1" SDL_LIBNAME "${SDL_LIBNAME}")
    ENDIF(MINGW)
    SET(SDL_LIB ${SDL_LIBPATH}/../bin/${SDL_LIBNAME}${CMAKE_SHARED_LIBRARY_SUFFIX})

    # Execute xmlversion at install-time to do this registration job.
    IF(MSVC)

      INSTALL(CODE 
          "FILE(READ \"${CMAKE_BINARY_DIR}/xmlversion_loc.txt\" XMLVERSION_EXE)
           STRING(REPLACE \"$(OutDir)\" \"\${CMAKE_INSTALL_CONFIG_NAME}\" XMLVERSION_EXE \${XMLVERSION_EXE})
           STRING(REPLACE \"$(ConfigurationName)\" \"\${CMAKE_INSTALL_CONFIG_NAME}\" XMLVERSION_EXE \${XMLVERSION_EXE})
           STRING(REPLACE \"$(Configuration)\" \"\${CMAKE_INSTALL_CONFIG_NAME}\" XMLVERSION_EXE \${XMLVERSION_EXE})
           SET(_LIBS_TO_INSTALL \"${SDL_LIB}\")
           SET(OPTION_3RDPARTY_EXPAT ${OPTION_3RDPARTY_EXPAT})
           IF(NOT OPTION_3RDPARTY_EXPAT)
             SET(TXML_LIB ${TXML_LIB})
             STRING(REPLACE \"$(OutDir)\" \"\${CMAKE_INSTALL_CONFIG_NAME}\" TXML_LIB \${TXML_LIB})
             STRING(REPLACE \"$(ConfigurationName)\" \"\${CMAKE_INSTALL_CONFIG_NAME}\" TXML_LIB \${TXML_LIB})
             STRING(REPLACE \"$(Configuration)\" \"\${CMAKE_INSTALL_CONFIG_NAME}\" TXML_LIB \${TXML_LIB})
             LIST(APPEND _LIBS_TO_INSTALL \"\${TXML_LIB}\")
           ELSE(NOT OPTION_3RDPARTY_EXPAT)
             LIST(APPEND _LIBS_TO_INSTALL \"${EXPAT_LIB}\")
           ENDIF(NOT OPTION_3RDPARTY_EXPAT)
           SET(TGF_LIB ${TGF_LIB})
           STRING(REPLACE \"$(OutDir)\" \"\${CMAKE_INSTALL_CONFIG_NAME}\" TGF_LIB \${TGF_LIB})
           STRING(REPLACE \"$(ConfigurationName)\" \"\${CMAKE_INSTALL_CONFIG_NAME}\" TGF_LIB \${TGF_LIB})
           STRING(REPLACE \"$(Configuration)\" \"\${CMAKE_INSTALL_CONFIG_NAME}\" TGF_LIB \${TGF_LIB})
           LIST(APPEND _LIBS_TO_INSTALL \"\${TGF_LIB}\")
           MESSAGE(STATUS \"xmlversion : Libs to install=\${_LIBS_TO_INSTALL}\")
           GET_FILENAME_COMPONENT(XMLVERSION_DIR \"\${XMLVERSION_EXE}\" PATH)
           FILE(INSTALL DESTINATION \"\${XMLVERSION_DIR}\" TYPE FILE FILES \${_LIBS_TO_INSTALL})
           SET(SD_DATADIR_ABS \"${SD_DATADIR}\")
           IF(NOT IS_ABSOLUTE \${SD_DATADIR_ABS})
             GET_FILENAME_COMPONENT(SD_DATADIR_ABS \"\${CMAKE_INSTALL_PREFIX}/\${SD_DATADIR_ABS}\" ABSOLUTE)
           ENDIF()
           FOREACH(DIRECTORY ${DIRECTORIES})
             SET(GLOB_EXPRS)
             FOREACH(PATTERN ${PATTERNS})
               LIST(APPEND GLOB_EXPRS \"${PREFIX}\${DIRECTORY}/\${PATTERN}\")
             ENDFOREACH()
             FILE(GLOB_RECURSE FILES RELATIVE \"${CMAKE_CURRENT_SOURCE_DIR}${POSTFIX} ${CMAKE_CURRENT_SOURCE_DIR}${POSTFIX}/\${GLOB_EXPRS}\")
             FOREACH(FILE \${FILES})
               IF(NOT \"\${FILE}\" MATCHES \"\\\\.svn\")
                  EXECUTE_PROCESS(COMMAND \"\${XMLVERSION_EXE}\" \"\${SD_DATADIR_ABS}/version.xml\" \"${DEST_ALL}\${FILE}\" \"${USER_PATH}/\${FILE}\" \"\${SD_DATADIR_ABS}\" RESULT_VARIABLE XMLVERSTATUS)
                  IF(XMLVERSTATUS)
                   MESSAGE(FATAL_ERROR \"Error: xmlversion failed : \${XMLVERSTATUS}\")
                  ENDIF(XMLVERSTATUS)
               ENDIF()
             ENDFOREACH()
           ENDFOREACH()")

    ELSE(MSVC)

      INSTALL(CODE 
            "FILE(READ \"${CMAKE_BINARY_DIR}/xmlversion_loc.txt\" XMLVERSION_EXE)
             SET(MINGW ${MINGW})
             IF(MINGW)
               SET(_LIBS_TO_INSTALL \"${TGF_LIB}\")
               SET(OPTION_3RDPARTY_EXPAT ${OPTION_3RDPARTY_EXPAT})
               IF(NOT OPTION_3RDPARTY_EXPAT)
                 LIST(APPEND _LIBS_TO_INSTALL \"${TXML_LIB}\")
               ENDIF(NOT OPTION_3RDPARTY_EXPAT)
               # CMake configuration for MSYS Makefiles generator assumes that 3rd party dependencies are installed
               # in standard Linux folders, hence in the PATH ; so no need to install next to xmlversion exe.
               IF(NOT CMAKE_GENERATOR STREQUAL \"MSYS Makefiles\")
                 IF(OPTION_3RDPARTY_EXPAT)
                   LIST(APPEND _LIBS_TO_INSTALL \"${EXPAT_LIB}\")
                 ENDIF(OPTION_3RDPARTY_EXPAT)
                 LIST(APPEND _LIBS_TO_INSTALL \"${SDL_LIB}\")
                 GET_FILENAME_COMPONENT(_MINGW_BINDIR \"${CMAKE_CXX_COMPILER}\" PATH)
                 LIST(APPEND _LIBS_TO_INSTALL \"\${_MINGW_BINDIR}/libstdc++-6.dll\" \"\${_MINGW_BINDIR}/libgcc_s_dw2-1.dll\")
               ENDIF(NOT CMAKE_GENERATOR STREQUAL \"MSYS Makefiles\")
               MESSAGE(STATUS \"xmlversion : Libs to install=\${_LIBS_TO_INSTALL}\")
               GET_FILENAME_COMPONENT(XMLVERSION_DIR \"\${XMLVERSION_EXE}\" PATH)
               FILE(INSTALL DESTINATION \"\${XMLVERSION_DIR}\" TYPE FILE FILES \${_LIBS_TO_INSTALL})
             ENDIF(MINGW)
             SET(SD_DATADIR_ABS \"${SD_DATADIR}\")
             IF(NOT IS_ABSOLUTE \${SD_DATADIR_ABS})
               GET_FILENAME_COMPONENT(SD_DATADIR_ABS \"\${CMAKE_INSTALL_PREFIX}/\${SD_DATADIR_ABS}\" ABSOLUTE)
             ENDIF()
             # Why this path correction here ? This needs a comment !
             SET(CUR_DESTDIR \"\$ENV{DESTDIR}\")
             IF(CUR_DESTDIR MATCHES \"[^/]\")
               STRING(REGEX REPLACE \"^(.*[^/])/*$\" \"\\\\1\" CUR_DESTDIR_CORR \"\${CUR_DESTDIR}\")
             ELSE(CUR_DESTDIR MATCHES \"[^/]\")
               SET(CUR_DESTDIR_CORR \"\")
             ENDIF(CUR_DESTDIR MATCHES \"[^/]\")
             FOREACH(DIRECTORY ${DIRECTORIES})
               SET(GLOB_EXPRS)
               FOREACH(PATTERN ${PATTERNS})
                 LIST(APPEND GLOB_EXPRS \"${PREFIX}\${DIRECTORY}/\${PATTERN}\")
               ENDFOREACH()
               FILE(GLOB_RECURSE FILES RELATIVE \"${CMAKE_CURRENT_SOURCE_DIR}${POSTFIX} ${CMAKE_CURRENT_SOURCE_DIR}${POSTFIX}/\${GLOB_EXPRS}\")
               FOREACH(FILE \${FILES})
                 IF(NOT \"\${FILE}\" MATCHES \"\\\\.svn\")
                   EXECUTE_PROCESS(COMMAND \"\${XMLVERSION_EXE}\" \"\${CUR_DESTDIR_CORR}\${SD_DATADIR_ABS}/version.xml\" \"${DEST_ALL}\${FILE}\" \"${USER_PATH}/\${FILE}\" \"\${CUR_DESTDIR_CORR}\${SD_DATADIR_ABS}\" RESULT_VARIABLE XMLVERSTATUS)
                   IF(XMLVERSTATUS)
                     MESSAGE(FATAL_ERROR \"Error: xmlversion failed : \${XMLVERSTATUS}\")
                   ENDIF(XMLVERSTATUS)
                 ENDIF()
               ENDFOREACH()
             ENDFOREACH()")

    ENDIF(MSVC)

  ENDIF(IS_USER)

ENDMACRO(SD_INSTALL_DIRECTORIES)

# Macro to install CMake config files for SD if in-source build.
IF(IN_SOURCETREE)
  MACRO(INSTALL_SD_CMAKE)
    INSTALL(CODE 
        "SET(CUR_DESTDIR \"\$ENV{DESTDIR}\")
         IF(CUR_DESTDIR MATCHES \"[^/]\")
           STRING(REGEX REPLACE \"^(.*[^/])/*$\" \"\\\\1\" CUR_DESTDIR_CORR \"\${CUR_DESTDIR}\")
         ELSE(CUR_DESTDIR MATCHES \"[^/]\")
           SET(CUR_DESTDIR_CORR \"\")
           ENDIF(CUR_DESTDIR MATCHES \"[^/]\")
         FILE(MAKE_DIRECTORY \"\${CUR_DESTDIR_CORR}${SD_DATADIR_ABS}/cmake\")
         FILE(WRITE \"\${CUR_DESTDIR_CORR}${SD_DATADIR_ABS}/cmake/speed-dreams.cmake\"
            \"SET(SD_DATADIR_ABS \\\"${SD_DATADIR_ABS}\\\")
              SET(SD_LOCALDIR \\\"${SD_LOCALDIR}\\\")
            SET(SD_LIBDIR_ABS \\\"${SD_LIBDIR_ABS}\\\")
            SET(SD_BINDIR_ABS \\\"${SD_BINDIR_ABS}\\\")
            SET(SD_INCLUDEDIR_ABS \\\"${SD_INCLUDEDIR_ABS}\\\")
               SET(IN_SOURCETREE FALSE)\\n\\n\")
         FILE(READ \"${SOURCE_DIR}/cmake/macros.cmake\" SD_MACRO_CONTENT)
         FILE(APPEND \"\${CUR_DESTDIR_CORR}${SD_DATADIR_ABS}/cmake/speed-dreams.cmake\" \${SD_MACRO_CONTENT})")
  ENDMACRO(INSTALL_SD_CMAKE)
ENDIF(IN_SOURCETREE)

MACRO(SD_INSTALL_CAR CARNAME)

  SET(SDIC_FILES ${CARNAME}.xml ${ARGN})

  FILE(GLOB AC3D_FILES *.acc)
  FILE(GLOB PNG_FILES *.png)
  FILE(GLOB JPG_FILES *.jpg)
  FILE(GLOB RGB_FILES *.rgb)
  FILE(GLOB WAV_FILES *.wav)

  SET(SDIC_FILES ${SDIC_FILES} ${AC3D_FILES} ${RGB_FILES} ${PNG_FILES} ${JPG_FILES} ${WAV_FILES})

  SD_INSTALL_FILES(DATA cars/${CARNAME} FILES ${SDIC_FILES})

ENDMACRO(SD_INSTALL_CAR CARNAME)

MACRO(SD_INSTALL_TRACK TRACKNAME CATEGORY)

  SET(SDIT_FILES ${TRACKNAME}.xml ${ARGN})

  # Among AC3D files, keep any .acc one, but exclude *-src.ac
  # and *.ac when a .acc with same name exists.
  FILE(GLOB ACC_FILES *.acc)
  FILE(GLOB SRCAC_FILES *-src.ac)
  FILE(GLOB AC_FILES *.ac)
  FOREACH(AC_FILE ${AC_FILES})
    LIST(FIND SRCAC_FILES "${AC_FILE}" IS_SRC)
    LIST(FIND ACC_FILES "${AC_FILE}c" HAS_ACC)
    IF(IS_SRC EQUAL -1 AND HAS_ACC EQUAL -1)
      LIST(APPEND AC3D_FILES ${AC_FILE})
    ENDIF()
  ENDFOREACH()
  SET(AC3D_FILES ${AC3D_FILES} ${ACC_FILES})

  FILE(GLOB PNG_FILES *.png)
  FILE(GLOB JPG_FILES *.jpg)
  FILE(GLOB RGB_FILES *.rgb)

  SET(SDIT_FILES ${SDIT_FILES} ${AC3D_FILES} ${RGB_FILES} ${PNG_FILES} ${JPG_FILES})

  SD_INSTALL_FILES(DATA tracks/${CATEGORY}/${TRACKNAME} FILES ${SDIT_FILES})

ENDMACRO(SD_INSTALL_TRACK TRACKNAME CATEGORY)
