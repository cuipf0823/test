FIND_PATH( TAOMEE_INCLUDE_DIR  libtaomee/log.h
	/usr/local/include/
	DOC "The directory where taomee.h resides"  )
 
FIND_LIBRARY( TAOMEE_LIBRARY
	NAMES taomee 
	PATHS /usr/local/lib/
	DOC "The TAOMEE library")

IF (TAOMEE_INCLUDE_DIR )
	SET( TAOMEE_FOUND 1 CACHE STRING "Set to 1 if taomee is found, 0 otherwise")
ELSE (TAOMEE_INCLUDE_DIR)
	SET( TAOMEE_FOUND 0 CACHE STRING "Set to 1 if taomee is found, 0 otherwise")
ENDIF (TAOMEE_INCLUDE_DIR)

MARK_AS_ADVANCED( TAOMEE_FOUND )

IF(TAOMEE_FOUND)
	MESSAGE(STATUS "find taomee library")
ELSE(TAOMEE_FOUND)
	MESSAGE(FATAL_ERROR "Looking for taomee - not found :libtaomee/log.h  ")
ENDIF(TAOMEE_FOUND)


