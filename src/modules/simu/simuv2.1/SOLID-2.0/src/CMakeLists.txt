INCLUDE(../../../../../../cmake/macros.cmake)

SET(SOLID_SOURCES Transform.cpp Convex.cpp Box.cpp Cone.cpp Cylinder.cpp
                  Sphere.cpp Simplex.cpp Polygon.cpp Polyhedron.cpp
                  Complex.cpp BBoxTree.cpp Endpoint.cpp Object.cpp
                  Response.cpp RespTable.cpp C-api.cpp)

INCLUDE_DIRECTORIES(BEFORE ../include)

ADD_LIBRARY(solid ${SOLID_SOURCES})

IF(UNIX)
	SET_TARGET_PROPERTIES(solid PROPERTIES COMPILE_FLAGS -fPIC)
ENDIF(UNIX)
