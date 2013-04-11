INCLUDE(../../../cmake/macros.cmake)

FILE(GLOB TXT_FILES *.txt)

SD_INSTALL_FILES(DATA data/sky FILES ${TXT_FILES})
