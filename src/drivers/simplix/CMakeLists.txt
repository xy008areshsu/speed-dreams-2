INCLUDE(../../../cmake/macros.cmake)

# The ubiquitous robot module and its clones.
SET(ROBOT_NAME "simplix")

# Official-only simplix interface.
SET(ROBOT_INTERFACE LEGACY WELCOME)

# Work-in-progress / unofficial simplix interface.
#IF(NOT OPTION_OFFICIAL_ONLY)
#
#    SET(ROBOT_INTERFACE ${ROBOT_INTERFACE} simplix_mpa1)
#
#ENDIF()

SET(ROBOT_SOURCES 
    src/unitcarparam.cpp
    src/unitcarparam.h
    src/unitcharacteristic.cpp
    src/unitcharacteristic.h
    src/unitclothoid.cpp
    src/unitclothoid.h
    src/unitcollision.cpp
    src/unitcollision.h
    src/unitcommon.cpp
    src/unitcommondata.cpp
    src/unitcommondata.h
    src/unitcommon.h
    src/unitcubic.cpp
    src/unitcubic.h
    src/unitcubicspline.cpp
    src/unitcubicspline.h
    src/unitdriver.cpp
    src/unitdriver.h
    src/unitfixcarparam.cpp
    src/unitfixcarparam.h
    src/unitglobal.h
    src/unitlane.cpp
    src/unitlane.h
    src/unitlanepoint.cpp
    src/unitlanepoint.h
    src/unitlinalg.cpp
    src/unitlinalg.h
    src/unitlinreg.cpp
    src/unitlinreg.h
    src/unitmain.cpp
    src/unitopponent.cpp
    src/unitopponent.h
    src/unitparabel.cpp
    src/unitparabel.h
    src/unitparam.cpp
    src/unitparam.h
    src/unitpidctrl.cpp
    src/unitpidctrl.h
    src/unitpit.cpp
    src/unitpit.h
    src/unitpitparam.cpp
    src/unitpitparam.h
    src/unitsection.cpp
    src/unitsection.h
    src/unitstrategy.cpp
    src/unitstrategy.h
    src/unitsysfoo.cpp
    src/unitsysfoo.h
    src/unittmpcarparam.cpp
    src/unittmpcarparam.h
    src/unittrack.cpp
    src/unittrack.h
    src/unitvec2d.cpp
    src/unitvec2d.h
    src/unitvec3d.cpp
    src/unitvec3d.h
)

# Official-only simplix instances.
SET(ROBOT_CLONES simplix_36GP simplix_sc simplix_trb1 simplix_ls1 simplix_ls2 simplix_mp5 simplix_lp1 simplix_ref)

IF(NOT OPTION_OFFICIAL_ONLY)

	# Work-in-progress / unofficial simplix instances.
    SET(ROBOT_CLONES ${ROBOT_CLONES} simplix_mpa1)

ENDIF()

# The ubiquitous robot module and its clones.
ROBOT_MODULE(NAME ${ROBOT_NAME} VERSION 3.3.0 SOVERSION 1.0.0
             INTERFACE ${ROBOT_INTERFACE}
             SOURCES ${ROBOT_SOURCES}
             CLONENAMES ${ROBOT_CLONES})

# The data associated to the ubiquitous robot module and its clones.
# simplix
SET(ROBOT_SUBDIRS trb1-cavallo-360rb
                  ls1-archer-r9 ls1-cavallo-570s1 ls1-newcastle-fury ls1-taipan-ltsr
                  ls1-toro-rgt ls1-vulture-v6r ls1-zentek-z7r
                  sc-boxer-96 sc-cavallo-360 sc-fmc-gt4 sc-lynx-220 
                  sc-murasama-nsx sc-spirit-300
                  tracks
                  0)

ROBOT_DATA(NAME ${ROBOT_NAME} PREFIX src 
           FILES ${ROBOT_NAME}.xml default.xml logo.rgb readme.txt
           SUBDIRS ${ROBOT_SUBDIRS} PATTERNS *.xml *.rgb)

# 36GP
SET(ROBOT_SUBDIRS 0 1 2 3 4 5 6 7 8 9
                  36gp-ettore-t59 36gp-milano-12c36 36gp-silber-w25b 
                  36gp-tridenti-6c34 36gp-tridenti-v8ri
                  tracks)

ROBOT_DATA(NAME simplix_36GP PREFIX simplix_36GP 
           FILES simplix_36GP.xml default.xml logo.rgb readme.txt
           SUBDIRS ${ROBOT_SUBDIRS} PATTERNS *.xml logo.rgb *.png *.jpg)

# SuperCars
SET(ROBOT_SUBDIRS 0 1 2 3 4 5 6 7 8 9 12 13
                  sc-boxer-96 sc-spirit-300 sc-cavallo-360 sc-fmc-gt4 
                  sc-lynx-220 sc-murasama-nsx
                  tracks)

ROBOT_DATA(NAME simplix_sc PREFIX simplix_sc 
           FILES simplix_sc.xml default.xml logo.rgb readme.txt
           SUBDIRS ${ROBOT_SUBDIRS} PATTERNS *.xml logo.rgb *.png *.jpg)

# LS1 
SET(ROBOT_SUBDIRS 0 1 2 3 4 5 6 7 8 9 10 11 12 13
                  ls1-archer-r9 ls1-vulture-v6r ls1-toro-rgt
                  ls1-cavallo-570s1 ls1-zentek-z7r ls1-newcastle-fury
			ls1-taipan-ltsr
			tracks)

ROBOT_DATA(NAME simplix_ls1 PREFIX simplix_ls1 
           FILES simplix_ls1.xml default.xml logo.rgb readme.txt
           SUBDIRS ${ROBOT_SUBDIRS} PATTERNS *.xml logo.rgb *.png *.jpg)
# LS2 
SET(ROBOT_SUBDIRS 0
                  ls2-bavaria-g3gtr
			tracks)

ROBOT_DATA(NAME simplix_ls2 PREFIX simplix_ls2 
           FILES simplix_ls2.xml default.xml logo.rgb readme.txt
           SUBDIRS ${ROBOT_SUBDIRS} PATTERNS *.xml logo.rgb *.png *.jpg)

# TRB1
SET(ROBOT_SUBDIRS 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15
                  trb1-cavallo-360rb trb1-boxer-trbrs trb1-spirit-rb1lt
			trb1-taipan-rb1 trb1-silber-rblk trb1-sector-rb1
                  trb1-zaxxon-rb trb1-vieringe-5rb
                  tracks)

ROBOT_DATA(NAME simplix_trb1 PREFIX simplix_trb1 
           FILES simplix_trb1.xml default.xml logo.rgb readme.txt
           SUBDIRS ${ROBOT_SUBDIRS} PATTERNS *.xml logo.rgb *.png *.jpg)

# MP5
SET(ROBOT_SUBDIRS 0 1 2 3 4 5 
                  mp5-fmc mp5-fmc-drift mp5-fmc-speedy
                  tracks)

ROBOT_DATA(NAME simplix_mp5 PREFIX simplix_mp5 
           FILES simplix_mp5.xml default.xml logo.rgb readme.txt
           SUBDIRS ${ROBOT_SUBDIRS} PATTERNS *.xml logo.rgb *.png *.jpg)

# LP1 
SET(ROBOT_SUBDIRS 0 1 2 3 4 5 
                  lp1-pescy-p60 lp1-vieringe-vr8
                  )

ROBOT_DATA(NAME simplix_lp1 PREFIX simplix_lp1 
           FILES simplix_lp1.xml default.xml logo.rgb readme.txt
           SUBDIRS ${ROBOT_SUBDIRS} PATTERNS *.xml logo.rgb *.png *.jpg)			   

# simplix_ref
SET(ROBOT_SUBDIRS 0
                  ref-sector-p4
                  )

ROBOT_DATA(NAME simplix_ref PREFIX simplix_ref 
           FILES simplix_ref.xml default.xml logo.rgb readme.txt
           SUBDIRS ${ROBOT_SUBDIRS} PATTERNS *.xml logo.rgb *.png *.jpg)			   

# Work-in-progress / unofficial simplix instances.
IF(NOT OPTION_OFFICIAL_ONLY)

	# MPA1
    SET(ROBOT_SUBDIRS 0 1 2 3 4 5 6 7 8 9 
                      mpa1-murasama mpa1-hartbill-2002 mpa1-furia
			mpa1-team-lynx mpa1-ffr
                      tracks)

    ROBOT_DATA(NAME simplix_mpa1 PREFIX simplix_mpa1 
               FILES simplix_mpa1.xml default.xml logo.rgb readme.txt
               SUBDIRS ${ROBOT_SUBDIRS} PATTERNS *.xml logo.rgb *.png *.jpg)

ENDIF()
