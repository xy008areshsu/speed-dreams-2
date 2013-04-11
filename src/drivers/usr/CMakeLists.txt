INCLUDE(../../../cmake/macros.cmake)

INCLUDE_DIRECTORIES(${CMAKE_SOURCE_DIR})

SET(ROBOT_NAME "usr")

# Official-only USR interface.
SET(ROBOT_INTERFACE LEGACY WELCOME
                    usr_trb1
                    usr_sc
                    usr_ls1
                    usr_ls2
                    usr_36GP
                    usr_rs
                    usr_lp1
                    )

SET(ROBOT_SOURCES
  src/usr.cpp
  src/cardata.h
  src/cardata.cpp
  src/driver.h
  src/driver.cpp
  src/linalg.h
  src/mod.h
  src/mod.cpp
  src/opponent.h
  src/opponent.cpp
  src/pit.h
  src/pit.cpp
  src/raceline.h
  src/raceline.cpp
  src/spline.h
  src/spline.cpp
  src/strategy.h
  src/strategy.cpp
  src/xmldefs.h)

# Official-only USR instances.
SET(ROBOT_CLONES usr_trb1 usr_sc usr_ls1 usr_ls2 usr_36GP usr_rs usr_lp1)

ROBOT_MODULE(NAME ${ROBOT_NAME} VERSION 3.0.0 SOVERSION 1.0.0
              INTERFACE ${ROBOT_INTERFACE} 
              SOURCES ${ROBOT_SOURCES}
              CLONENAMES ${ROBOT_CLONES})

# The data associated to the USR robot module and its clones.
###################
# USR core
###################

# FIXME: These folders aren't there (anymore ?) ; remove ?
#SET(ROBOT_SUBDIRS 1
#                  tracks)

#ROBOT_DATA(NAME ${ROBOT_NAME} PREFIX src
#           #FILES README
#           SUBDIRS ${ROBOT_SUBDIRS} PATTERNS *.xml logo.rgb *.png)


###################
# USR_TRB1
###################
SET(ROBOT_SUBDIRS 1 2 3 4 5 6 7 8 9 10 11 12 13 14
                  trb1-boxer-trbrs trb1-cavallo-360rb trb1-sector-rb1
                  trb1-silber-rblk trb1-spirit-rb1lt trb1-taipan-rb1 
                  trb1-zaxxon-rb
                  tracks)

ROBOT_DATA(NAME usr_trb1 PREFIX usr_trb1
           FILES usr_trb1.xml default.xml logo.rgb readme.txt
           SUBDIRS ${ROBOT_SUBDIRS} PATTERNS *.xml logo.rgb *.png *.jpg)

###################
# USR_SC
###################
SET(ROBOT_SUBDIRS 1 2 3 4 5 6 7 8 9 10 11 12
                  sc-boxer-96 sc-cavallo-360 sc-fmc-gt4
                  sc-lynx-220 sc-murasama-nsx sc-spirit-300 
                  tracks)

ROBOT_DATA(NAME usr_sc PREFIX usr_sc
           FILES usr_sc.xml default.xml logo.rgb readme.txt
           SUBDIRS ${ROBOT_SUBDIRS} PATTERNS *.xml logo.rgb *.png *.jpg)

###################
# USR_LS1
###################
SET(ROBOT_SUBDIRS 1 2 3 4 5 6 7 8 9 10 11 12 13 14
                  ls1-archer-r9 ls1-vulture-v6r ls1-zentek-z7r
                  ls1-cavallo-570s1 ls1-newcastle-fury
                  ls1-taipan-ltsr ls1-toro-rgt
                  tracks)

ROBOT_DATA(NAME usr_ls1 PREFIX usr_ls1
           FILES usr_ls1.xml default.xml logo.rgb readme.txt
           SUBDIRS ${ROBOT_SUBDIRS} PATTERNS *.xml logo.rgb *.png *.jpg)

###################
# USR_LS2
###################
SET(ROBOT_SUBDIRS 1 2 3 4 5 6 7 8
                  ls2-bavaria-g3gtr ls2-boxer-96rsr
                  ls2-cavallo-360r ls2-condor-c400r
		  ls2-morley-r900 ls2-sprite-gts
		  ls2-vortex-gt ls2-lynx-xkr
                  )

ROBOT_DATA(NAME usr_ls2 PREFIX usr_ls2
           FILES usr_ls2.xml default.xml logo.rgb readme.txt
           SUBDIRS ${ROBOT_SUBDIRS} PATTERNS *.xml logo.rgb *.png *.jpg)

###################
# USR_36GP
###################
SET(ROBOT_SUBDIRS 1 2 3 4 5 6 7 8 9 10 11 12
                  36gp-ettore-t59 36gp-milano-12c36 36gp-milano-tipop3
                  36gp-motorunion-typec 36gp-tridenti-6c34
                  36gp-tridenti-v8ri
                  tracks)

ROBOT_DATA(NAME usr_36GP PREFIX usr_36GP
           FILES usr_36GP.xml default.xml logo.rgb readme.txt
           SUBDIRS ${ROBOT_SUBDIRS} PATTERNS *.xml logo.rgb *.png *.jpg)

###################
# USR_LP1
###################
SET(ROBOT_SUBDIRS 1 2 3 4
                  lp1-pescy-p60 lp1-vieringe-vr8
                  )

ROBOT_DATA(NAME usr_lp1 PREFIX usr_lp1
           FILES usr_lp1.xml default.xml logo.rgb readme.txt
           SUBDIRS ${ROBOT_SUBDIRS} PATTERNS *.xml logo.rgb *.png *.jpg)

