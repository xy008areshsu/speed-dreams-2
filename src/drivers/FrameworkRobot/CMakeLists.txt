INCLUDE(../../../cmake/macros.cmake)

IF(WIN32)
    # DLL export stuff under Windows (to avoid .def file)
    ADD_DEFINITIONS(-DROBOTMODULE_DLL)
ENDIF(WIN32)

# The ubiquitous robot module and its clones.
SET(ROBOT_NAME "FrameworkRobot")

# Official-only robot interface.
SET(ROBOT_INTERFACE WELCOME)


SET(ROBOT_SOURCES 
    src/abstractdriver.cpp
    src/abstractdriver.h
    src/cubic.cpp
    src/cubic.h
    src/cubicspline.cpp
    src/cubicspline.h
    src/basecollision.cpp
    src/basecollision.h
    src/basedriver.cpp
    src/basedriver.h
    src/baselane.cpp
    src/baselane.h
    src/baseopponent.cpp
    src/baseopponent.h
    src/basepit.cpp
    src/basepit.h
    src/basesection.cpp
    src/basesection.h
    src/basestrategy.cpp
    src/basestrategy.h
    src/basetrack.cpp
    src/basetrack.h
    src/driver.cpp
    src/driver.h
    src/globaldefinitions.h
    src/linalg.cpp
    src/linalg.h
    src/motiondetection.cpp
    src/motiondetection.h
    src/parabel.h
    src/parabel.cpp
    src/robotinterface.cpp
    src/robotinterface.h
    src/straight.h
    src/straight.cpp
    src/vec2d.h
    src/vec3d.h
)

# The ubiquitous robot module and its clones.
ROBOT_MODULE(NAME ${ROBOT_NAME}
	INTERFACE ${ROBOT_INTERFACE} 
	SOURCES ${ROBOT_SOURCES}
	CLONENAMES ${ROBOT_CLONES})

# The data associated to the robot module
SET(ROBOT_SUBDIRS 0 ref-boxer-gt3-rs-2010)

ROBOT_DATA(NAME ${ROBOT_NAME} PREFIX src 
      FILES ${ROBOT_NAME}.xml default.xml logo.rgb readme.txt
      SUBDIRS ${ROBOT_SUBDIRS} PATTERNS *.xml *.rgb)
