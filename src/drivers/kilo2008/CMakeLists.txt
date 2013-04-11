INCLUDE(../../../cmake/macros.cmake)

INCLUDE_DIRECTORIES(${CMAKE_SOURCE_DIR})

SET(ROBOT_NAME "kilo2008")

SET(ROBOT_SOURCES ${ROBOT_NAME}.cpp opponent.cpp pit.cpp strategy.cpp
    linalg.h opponent.h strategy.h pit.h cardata.h cardata.cpp spline.cpp
    spline.h raceline.cpp raceline.h kdriver.cpp kdriver.h util.h util.cpp)

SET(ROBOT_SUBDIRS
    1 2 5 6 7 8 9 10 15 16
    tracks
    trb1-cavallo-360rb
    ls1-archer-r9
    ls1-cavallo-570s1
    ls1-vulture-v6r
    mpa1-hartbill-2002)

ROBOT_MODULE(NAME ${ROBOT_NAME} VERSION 2.0.0 SOVERSION 1.0.0
             SOURCES ${ROBOT_SOURCES})

ROBOT_DATA(NAME ${ROBOT_NAME}
           FILES ${ROBOT_NAME}.xml default.xml logo.rgb
           SUBDIRS ${ROBOT_SUBDIRS} PATTERNS *.xml logo.rgb *.png *.jpg)
