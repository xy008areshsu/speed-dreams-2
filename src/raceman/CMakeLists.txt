INCLUDE(../../cmake/macros.cmake)

SD_INSTALL_FILES(DATA config/raceman USER config/raceman 
                 FILES practice.xml quickrace.xml
                       singleevent-36gp.xml
                       singleevent-challenge.xml singleevent-endurance.xml
		       singleevent-ls-gt1.xml singleevent-mp5.xml
                       championship.xml championship-supercars.xml championship-trb1.xml
                       championship-36gp.xml championship-ls-gt1.xml championship-mp5.xml
                       career.xml 
                       career_supercars.xmls career_ls1.xmls)

SD_INSTALL_FILES(DATA config/raceman/extra USER config/raceman/extra 
                 FILES extra/skill.xml)

# Work-in-progress / unofficial race modes.
IF(NOT OPTION_OFFICIAL_ONLY)

  SD_INSTALL_FILES(DATA config/raceman USER config/raceman 
                   FILES networkrace.xml
                         championship-mpa1.xml)
ENDIF()

