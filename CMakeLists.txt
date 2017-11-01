cmake_minimum_required(VERSION 2.6)

SET(CMAKE_MODULE_PATH ${CMAKE_MODULE_PATH} "${CMAKE_SOURCE_DIR}/cmake/")

SET(CMAKE_INSTALL_PREFIX ${CMAKE_SOURCE_DIR})

FIND_PACKAGE(taomee REQUIRED)
FIND_PACKAGE(glib REQUIRED)
FIND_PACKAGE(AsyncServ REQUIRED)
FIND_PACKAGE(protobuf REQUIRED)
FIND_PACKAGE(tcmalloc REQUIRED)

SET(CMAKE_USE_RELATIVE_PATHS  true )
SET(SRC_PATH ${CMAKE_SOURCE_DIR}/src/)

option(mail_is_build_unittest "Build mail's unittest programs." ON)
option(is_build_dummy_async_lib "Build dummy async server lib." ON)

SET(SRC_LIST
${SRC_PATH}unit_test/test_shop.cc
${SRC_PATH}unit_test/test_shop.h
${SRC_PATH}config/special_config.cc
${SRC_PATH}config/special_config.h
${SRC_PATH}config/config.h
${SRC_PATH}item/item_defined.cc
${SRC_PATH}item/item_defined.h
${SRC_PATH}item/item.cc
${SRC_PATH}item/item.h
${SRC_PATH}item/attribute.cc
${SRC_PATH}item/attribute.h
${SRC_PATH}item/shop.cc
${SRC_PATH}item/shop.h
${SRC_PATH}deps/tinyxml/tinystr.cpp
${SRC_PATH}deps/tinyxml/tinystr.h
${SRC_PATH}deps/tinyxml/tinyxml.cpp
${SRC_PATH}deps/tinyxml/tinyxml.h
${SRC_PATH}deps/tinyxml/tinyxmlerror.cpp
${SRC_PATH}deps/tinyxml/tinyxmlparser.cpp
${SRC_PATH}common.h
${SRC_PATH}common.cc
${SRC_PATH}world.cc
${SRC_PATH}world.h
${SRC_PATH}player_status_notify.cc
${SRC_PATH}player_status_notify.h
${SRC_PATH}player_manager.cc
${SRC_PATH}player_manager.h
${SRC_PATH}command.cc
${SRC_PATH}command.h
${SRC_PATH}tcp_proxy.cc
${SRC_PATH}tcp_proxy.h
${SRC_PATH}switch_proxy.cc
${SRC_PATH}switch_proxy.h
${SRC_PATH}msg_dispatcher.cc
${SRC_PATH}msg_dispatcher.h
${SRC_PATH}proto/proto_codec.cc
${SRC_PATH}proto/proto_codec.h
${SRC_PATH}main.cc
${SRC_PATH}base/split_string.cc
${SRC_PATH}base/split_string.h
${SRC_PATH}base/iterator.cc
${SRC_PATH}base/iterator.h
${SRC_PATH}base/config_initialize.cc
${SRC_PATH}base/debug_export_hex.cc
${SRC_PATH}base/debug_export_hex.h
${SRC_PATH}base/msg_block.cc
${SRC_PATH}base/msg_block.h
${SRC_PATH}base/time.cc
${SRC_PATH}base/time.h
${SRC_PATH}base/timer_event.h
${SRC_PATH}base/timer_event.cc
${SRC_PATH}base/event.h
${SRC_PATH}base/event.cc
${SRC_PATH}base/byte_swap.cc
${SRC_PATH}base/byte_swap.h
${SRC_PATH}base/split_string.h
${SRC_PATH}base/split_string.cc
${SRC_PATH}proto/cs_basic.pb.cc
${SRC_PATH}proto/cs_basic.pb.h
${SRC_PATH}proto/internal.pb.cc
${SRC_PATH}proto/internal.pb.h
${SRC_PATH}proto/db.pb.cc
${SRC_PATH}proto/db.pb.h
${SRC_PATH}proto/cs_chat_system.pb.h
${SRC_PATH}proto/cs_chat_system.pb.cc
${SRC_PATH}proto/base_define.pb.h
${SRC_PATH}proto/base_define.pb.cc
${SRC_PATH}proto/error_code.pb.h
${SRC_PATH}proto/error_code.pb.cc
${SRC_PATH}proto/game.pb.cc
${SRC_PATH}proto/game.pb.h
${SRC_PATH}proto/cs_storage.pb.h
${SRC_PATH}proto/cs_storage.pb.cc
${SRC_PATH}proto/cs_room.pb.h
${SRC_PATH}proto/cs_room.pb.cc
${SRC_PATH}proto/ot_room.pb.h
${SRC_PATH}proto/ot_room.pb.cc
${SRC_PATH}proto/cs_custom.pb.h
${SRC_PATH}proto/cs_custom.pb.cc
${SRC_PATH}proto/cs_shop.pb.cc
${SRC_PATH}proto/cs_shop.pb.h
${SRC_PATH}proto/cs_attribute_id.pb.cc
${SRC_PATH}proto/cs_attribute_id.pb.h
${SRC_PATH}proto/base_attribute.pb.cc
${SRC_PATH}proto/base_attribute.pb.h
${SRC_PATH}proto/gm.pb.h
${SRC_PATH}proto/gm.pb.cc
${SRC_PATH}proto/mail.pb.h
${SRC_PATH}proto/mail.pb.cc
${SRC_PATH}proto/items.pb.cc
${SRC_PATH}proto/items.pb.h
${SRC_PATH}player_relation.h
${SRC_PATH}player_relation.cc
${SRC_PATH}db_proxy.h
${SRC_PATH}db_proxy.cc
${SRC_PATH}cmd_friend.h
${SRC_PATH}cmd_friend.cc
${SRC_PATH}storage.h
${SRC_PATH}storage.cc
${SRC_PATH}online_craft.h
${SRC_PATH}online_craft.cc
${SRC_PATH}online_room.h
${SRC_PATH}online_room.cc
${SRC_PATH}tunnel_proxy.h
${SRC_PATH}tunnel_proxy.cc
${SRC_PATH}currency_sys.h
${SRC_PATH}currency_sys.cc
${SRC_PATH}npl/util/intrusive_ptr.cpp
${SRC_PATH}npl/util/intrusive_ptr.h
${SRC_PATH}npl/util/StringHelper.cpp
${SRC_PATH}npl/util/StringHelper.h
${SRC_PATH}npl/util/CyoDecode.cpp
${SRC_PATH}npl/util/CyoDecode.h
${SRC_PATH}npl/util/CyoEncode.cpp
${SRC_PATH}npl/util/CyoEncode.h
${SRC_PATH}npl/NPLHelper.cpp
${SRC_PATH}npl/NPLHelper.h
${SRC_PATH}npl/NPLTable.cpp
${SRC_PATH}npl/NPLTable.h
${SRC_PATH}npl/NPLParser.cpp
${SRC_PATH}npl/NPLParser.h
${SRC_PATH}statlogger_adapter.h
${SRC_PATH}statistics_log.h
${SRC_PATH}statistics_log.cc
)

INCLUDE_DIRECTORIES(${SRC_PATH} ${SRC_PATH}npl ${SRC_PATH}npl/util ${ASYNSERV_INCLUDE_DIR} ${GLIB_INCLUDE_DIR} ${PROTOBUF_INCLUDE_DIR} ${SRC_PATH}deps ${TAOMEE_INCLUDE_DIR}/libtaomee )
ADD_LIBRARY(online SHARED ${SRC_LIST})

SET(LAST_LIBS ${TCMALLOC_LIBRARY})

SET(STATIC_LIBRARY ${TAOMEE_LIBRARY} ${GLIB_LIBRARY} ${PROTOBUF_LIBRARY} ${LAST_LIBS})

TARGET_LINK_LIBRARIES (online "ssl" "pthread" ${STATIC_LIBRARY} ${SRC_PATH}/3rd_lib/libstatlogger64bit.a)
#TARGET_LINK_LIBRARIES (online "ssl" "pthread" ${STATIC_LIBRARY} )

#ADD_DEFINITIONS( "-g -DDEBUG -Wall  -MMD  -std=c++11 -funroll-loops -fPIC -DTIXML_USE_STL -DUSE_TLOG -DENABLE_TRACE_LOG ")
#ADD_DEFINITIONS( "-g -DDEBUG -Wall  -MMD  -funroll-loops -fPIC -DTIXML_USE_STL -DUSE_TLOG -DENABLE_TRACE_LOG -DUSE_ACTIVE_CODE")
#ADD_DEFINITIONS( "-g -DDEBUG -Wall  -MMD  -std=c++11 -funroll-loops -fPIC -DTIXML_USE_STL -DUSE_TLOG -DSTATLOGGER")
ADD_DEFINITIONS( "-g -DDEBUG -Wall  -MMD  -std=c++11 -funroll-loops -fPIC -DTIXML_USE_STL -DUSE_TLOG -DENABLE_TRACE_LOG")

if(mail_is_build_unittest)
include(cmake/internal_utils.cmake OPTIONAL)
if(is_build_dummy_async_lib)
set(dummy_lib_name "dummy_async_serv")
set(dummy_cxx_default "-O2 -std=c++11 -Wall")
cxx_library_with_type(${dummy_lib_name} "STATIC" "${dummy_cxx_default}" "${SRC_PATH}unittest/unittest_asyn_api.cc")
endif()

set(LAST_LIBS ${STATIC_LIBRARY} "gtest" "dl" "pthread" "ssl" "crypto" "${dummy_lib_name}" ${SRC_PATH}/3rd_lib/libstatlogger64bit.a)

set(cxx_default "-g -std=c++11 -DDEBUG -Wall  -MMD  -funroll-loops  -DUSE_TLOG -DTIXML_USE_STL -DENABLE_TRACE_LOG")
set(SRC_LIST ${SRC_LIST} "${SRC_PATH}unittest/unittest.cc" "${SRC_PATH}unittest/unittest.h" "${SRC_PATH}unittest/bindconf.c")
cxx_executable_with_flags("online_unit_test" "${cxx_default}" "${LAST_LIBS}" "${SRC_LIST}")
install(TARGETS online_unit_test DESTINATION ./)
endif()

INSTALL (TARGETS online DESTINATION lib)
