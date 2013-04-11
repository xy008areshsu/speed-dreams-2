################################################################################################
# this Macro find a generic dependency, handling debug suffix
# all the parameters are required ; in case of lists, use "" when calling
################################################################################################

MACRO(FIND_DEPENDENCY DEPNAME INCLUDEFILE LIBRARY_NAMES SEARCHPATHLIST DEBUGSUFFIX)

    #MESSAGE(STATUS "Searching for 3rd party dependency DEPNAME='${DEPNAME}' INCLUDEFILE='${INCLUDEFILE}' LIBRARY_NAMES='${LIBRARY_NAMES}' SEARCHPATHLIST='${SEARCHPATHLIST}' DEBUGSUFFIX='${DEBUGSUFFIX}' ...")

    SET(MY_PATH_INCLUDE )
    SET(MY_PATH_LIB )
    
    FOREACH(MYPATH ${SEARCHPATHLIST} )
        SET(MY_PATH_INCLUDE ${MY_PATH_INCLUDE} ${MYPATH}/include)
        SET(MY_PATH_LIB ${MY_PATH_LIB} ${MYPATH}/lib)
    ENDFOREACH(MYPATH ${SEARCHPATHLIST} )
    
    FIND_PATH("${DEPNAME}_INCLUDE_DIR" ${INCLUDEFILE}
      ${MY_PATH_INCLUDE}
      NO_DEFAULT_PATH
    )
    MARK_AS_ADVANCED("${DEPNAME}_INCLUDE_DIR")
    #MESSAGE(" ${DEPNAME}_INCLUDE_DIR = '${${DEPNAME}_INCLUDE_DIR}'")
    
    FIND_LIBRARY("${DEPNAME}_LIBRARY" 
      NAMES ${LIBRARY_NAMES}
      PATHS ${MY_PATH_LIB}
      NO_DEFAULT_PATH
    )
    MARK_AS_ADVANCED("${DEPNAME}_LIBRARY")
    #MESSAGE(" ${DEPNAME}_LIBRARY = '${${DEPNAME}_LIBRARY}'")

    SET(${DEPNAME}_FOUND "NO" )
    IF(${DEPNAME}_INCLUDE_DIR AND ${DEPNAME}_LIBRARY)
      SET( ${DEPNAME}_FOUND "YES" )
    ENDIF(${DEPNAME}_INCLUDE_DIR AND ${DEPNAME}_LIBRARY)

ENDMACRO(FIND_DEPENDENCY DEPNAME INCLUDEFILE LIBRARY_NAMES SEARCHPATHLIST DEBUGSUFFIX)


################################################################################################
# this Macro is tailored to Mike dependencies
################################################################################################

MACRO(SEARCH_3RDPARTY OSG_3RDPARTY_BIN)
        FIND_DEPENDENCY(JPEG jpeglib.h jpeg_s ${OSG_3RDPARTY_BIN} "")
        
        FIND_DEPENDENCY(OPENAL al/al.h openal32 ${OSG_3RDPARTY_BIN} "")
        FIND_DEPENDENCY(ALUT al/alut.h alut ${OSG_3RDPARTY_BIN} "")
        FIND_DEPENDENCY(ENET enet/enet.h enet ${OSG_3RDPARTY_BIN} "")
        FIND_DEPENDENCY(SDL sdl/sdl.h sdl ${OSG_3RDPARTY_BIN} "")
        IF(SDL_FOUND)
                SET(SDL_LIBRARY_TEMP ${SDL_LIBRARY} CACHE FILEPATH "")
        ENDIF(SDL_FOUND)
		
        FIND_DEPENDENCY(SDLMAIN sdl/sdl_main.h sdlmain ${OSG_3RDPARTY_BIN} "")
        
        FIND_DEPENDENCY(PLIB plib/sg.h sg ${OSG_3RDPARTY_BIN} "")
        FIND_DEPENDENCY(PLIB_SSG plib/ssg.h ssg ${OSG_3RDPARTY_BIN} "")
        FIND_DEPENDENCY(PLIB_SG plib/sg.h sg ${OSG_3RDPARTY_BIN} "")
        FIND_DEPENDENCY(PLIB_SL plib/sl.h sl ${OSG_3RDPARTY_BIN} "")
        FIND_DEPENDENCY(PLIB_SSGAUX plib/ssgaux.h ssgaux ${OSG_3RDPARTY_BIN} "")
        FIND_DEPENDENCY(PLIB_UL plib/ul.h ul ${OSG_3RDPARTY_BIN} "")
        FIND_DEPENDENCY(PLIB_JS plib/js.h js ${OSG_3RDPARTY_BIN} "")
        #FIND_DEPENDENCY(GIFLIB gif_lib.h "ungif;libungif" ${OSG_3RDPARTY_BIN} "D")
        FIND_DEPENDENCY(ZLIB zlib.h "z;zlib;zlib1" ${OSG_3RDPARTY_BIN} "D")
        IF(ZLIB_FOUND)
            FIND_DEPENDENCY(PNG png.h "libpng;libpng13" ${OSG_3RDPARTY_BIN} "D")
            IF(PNG_FOUND)
                #force subsequent FindPNG stuff not to search for other variables ... kind of a hack 
                SET(PNG_PNG_INCLUDE_DIR ${PNG_INCLUDE_DIR} CACHE FILEPATH "")
                MARK_AS_ADVANCED(PNG_PNG_INCLUDE_DIR)
            ENDIF(PNG_FOUND)
        ENDIF(ZLIB_FOUND)        
ENDMACRO(SEARCH_3RDPARTY OSG_3RDPARTY_BIN)

################################################################################################
# this is code for handling optional 3DPARTY usage (mainly under Windows)
################################################################################################

OPTION(SDEXT_USE_CUSTOM_3DPARTY "Set to ON to use 3rdParty prebuilt API located in <PROJECT_SOURCE_DIR>/../3rdparty" ON)
MARK_AS_ADVANCED(SDEXT_USE_CUSTOM_3DPARTY)

IF(SDEXT_USE_CUSTOM_3DPARTY)
    GET_FILENAME_COMPONENT(PARENT_DIR ${PROJECT_SOURCE_DIR} PATH)
    SET(SDEXT_CUSTOM_3DPARTY_DIR "${PARENT_DIR}/3rdparty" CACHE PATH 
        "Location of 3rdParty dependencies")
    IF(EXISTS ${SDEXT_CUSTOM_3DPARTY_DIR})
        SEARCH_3RDPARTY(${SDEXT_CUSTOM_3DPARTY_DIR})
    ENDIF(EXISTS ${SDEXT_CUSTOM_3DPARTY_DIR})

    # Not very useful if not Windows.
    IF(NOT WIN32)
        MARK_AS_ADVANCED(SDEXT_CUSTOM_3DPARTY_DIR)
    ENDIF(NOT WIN32)
ENDIF(SDEXT_USE_CUSTOM_3DPARTY)
