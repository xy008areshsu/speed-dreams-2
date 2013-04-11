INCLUDE(../../../cmake/macros.cmake)

SET(ROBOT_NAME "networkhuman")

SET(ROBOT_SOURCES ${ROBOT_NAME}.cpp pref.cpp networkhuman.h pref.h)

ADD_SDLIB_INCLUDEDIR(tgfclient networking)
ADD_SDL_INCLUDEDIR() 

ROBOT_MODULE(NAME ${ROBOT_NAME} VERSION ${VERSION} SOVERSION 0.0.0
             INTERFACE WELCOME
             SOURCES ${ROBOT_SOURCES})

ROBOT_DATA(NAME ${ROBOT_NAME}
           FILES logo.png)
#           SUBDIRS cars PATTERNS *.xml)

ROBOT_DATA(NAME ${ROBOT_NAME}
           FILES ${ROBOT_NAME}.xml preferences.xml car.xml
           USER)

ADD_SDLIB_LIBRARY(${ROBOT_NAME} tgf tgfclient networking)
