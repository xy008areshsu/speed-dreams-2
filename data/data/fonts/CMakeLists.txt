INCLUDE(../../../cmake/macros.cmake)

FILE(GLOB fonts *.glf)

SD_INSTALL_FILES(DATA data/fonts FILES ${fonts})
