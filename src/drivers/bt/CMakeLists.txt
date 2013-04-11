#SET(CMAKE_MODULE_PATH ${CMAKE_MODULE_PATH} ../../../cmake)
INCLUDE(../../../cmake/macros.cmake)

SET(ROBOT_NAME "bt")

SET(ROBOT_SOURCES ${ROBOT_NAME}.cpp cardata.cpp driver.cpp learn.cpp opponent.cpp pit.cpp
	spline.cpp strategy.cpp strategy.h cardata.h driver.h learn.h opponent.h pit.h spline.h)

SET(ROBOT_FILES logo.rgb)
SET(ROBOT_SUBDIRS 0 1 2 3 4 5 6 7 8 9 155-DTM cg-nascar-rwd clkdtm dtm155 dtma4
	dtmastra dtmclk dtmfalcon dtmm3 gt40 mclaren-f1 xj-220
	pc-350z pc-996 pc-ciclon-300 pc-f360 pc-gt4 pc-nsx 
	sc-boxer-96 sc-spirit-300 sc-cavallo-360 sc-fmc-gt4 sc-lynx-220 sc-murasama-nsx)

ROBOT(NAME ${ROBOT_NAME} SOURCES ${ROBOT_SOURCES} FILES ${ROBOT_FILES}
	SUBDIRS ${ROBOT_SUBDIRS})
