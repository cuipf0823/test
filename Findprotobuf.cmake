FIND_PATH( PROTOBUF_INCLUDE_DIR  protobuf/message.h
	/usr/local/include/google/
	DOC "The directory where message.h resides"  )
 
FIND_LIBRARY( PROTOBUF_LIBRARY
	NAMES protobuf
	PATHS /usr/local/lib/
	DOC "The TAOMEE library")

IF (PROTOBUF_INCLUDE_DIR )
	SET( TAOMEE_FOUND 1 CACHE STRING "Set to 1 if taomee is found, 0 otherwise")
ELSE (PROTOBUF_INCLUDE_DIR)
	SET( TAOMEE_FOUND 0 CACHE STRING "Set to 1 if taomee is found, 0 otherwise")
ENDIF (PROTOBUF_INCLUDE_DIR)

MARK_AS_ADVANCED( TAOMEE_FOUND )

IF(TAOMEE_FOUND)
	MESSAGE(STATUS "find protobuf library")
ELSE(TAOMEE_FOUND)
	MESSAGE(FATAL_ERROR "Looking for protobuf - not found :protobuf/message.h  ")
ENDIF(TAOMEE_FOUND)
