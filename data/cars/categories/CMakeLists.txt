INCLUDE(../../../cmake/macros.cmake)

# Official car sets.
ADD_SUBDIRECTORY(Supercars)
ADD_SUBDIRECTORY(36GP)
ADD_SUBDIRECTORY(TRB1)
ADD_SUBDIRECTORY(LS-GT1)
ADD_SUBDIRECTORY(LS-GT2)
ADD_SUBDIRECTORY(MP5)
ADD_SUBDIRECTORY(RS)
ADD_SUBDIRECTORY(Preview)

# Internal / non-official / work-in-progress car sets
# (we deliver all of them in case some advanced users / developers
#  manually install cars from these categories).
ADD_SUBDIRECTORY(References)

ADD_SUBDIRECTORY(LS-P1)
ADD_SUBDIRECTORY(LS-P2)
ADD_SUBDIRECTORY(MP1)
ADD_SUBDIRECTORY(MPA1)
ADD_SUBDIRECTORY(MP10)

ADD_SUBDIRECTORY(Raid-T1)
ADD_SUBDIRECTORY(Nascar)


