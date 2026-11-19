cmake_minimum_required(VERSION 3.21)

project(TheWorld_jsoncpp LANGUAGES CXX)

get_filename_component(_terrain_root "${CMAKE_CURRENT_LIST_DIR}/../.." ABSOLUTE)
if(NOT DEFINED THEWORLD_EXTERNAL_ROOT)
	set(THEWORLD_EXTERNAL_ROOT "${_terrain_root}")
endif()
if(NOT DEFINED THEWORLD_LIB_DIR)
	set(THEWORLD_LIB_DIR "${_terrain_root}/build/x64")
endif()

set(BUILD_SHARED_LIBS OFF CACHE BOOL "Build shared jsoncpp library" FORCE)
set(BUILD_STATIC_LIBS ON CACHE BOOL "Build static jsoncpp library" FORCE)
set(BUILD_OBJECT_LIBS OFF CACHE BOOL "Build jsoncpp object library" FORCE)
set(JSONCPP_WITH_TESTS OFF CACHE BOOL "Build jsoncpp tests" FORCE)
set(JSONCPP_WITH_EXAMPLE OFF CACHE BOOL "Build jsoncpp examples" FORCE)
set(JSONCPP_STATIC_WINDOWS_RUNTIME OFF CACHE BOOL "Use static MSVC runtime" FORCE)

add_subdirectory("${THEWORLD_EXTERNAL_ROOT}/jsoncpp" "${CMAKE_CURRENT_BINARY_DIR}/upstream")
add_library(lib_json ALIAS jsoncpp_static)
target_compile_features(jsoncpp_static PRIVATE cxx_std_20)
set_target_properties(jsoncpp_static PROPERTIES
	OUTPUT_NAME "lib_json"
	DEBUG_POSTFIX "_d"
	MSVC_RUNTIME_LIBRARY "MultiThreaded$<$<CONFIG:Debug>:Debug>DLL"
	ARCHIVE_OUTPUT_DIRECTORY "${THEWORLD_LIB_DIR}/$<0:>"
)
