cmake_minimum_required(VERSION 3.22.1)

project(TheWorld_PROJ LANGUAGES C CXX)

get_filename_component(_terrain_root "${CMAKE_CURRENT_LIST_DIR}/../.." ABSOLUTE)
if(NOT DEFINED THEWORLD_EXTERNAL_ROOT)
	set(THEWORLD_EXTERNAL_ROOT "${_terrain_root}")
endif()
if(NOT DEFINED THEWORLD_LIB_DIR)
	set(THEWORLD_LIB_DIR "${THEWORLD_EXTERNAL_ROOT}/build/x64")
endif()

find_program(EXE_SQLITE3 NAMES sqlite3
	PATHS "${THEWORLD_EXTERNAL_ROOT}/DipendenzeEsterne"
	NO_DEFAULT_PATH)
find_program(EXE_SQLITE3 NAMES sqlite3 REQUIRED)
set(SQLite3_INCLUDE_DIR "${THEWORLD_EXTERNAL_ROOT}/TheWorld_MapManager")
if(NOT EXISTS "${SQLite3_INCLUDE_DIR}/sqlite3.c" OR NOT EXISTS "${SQLite3_INCLUDE_DIR}/sqlite3.h")
	message(FATAL_ERROR "SQLite amalgamation not found in ${SQLite3_INCLUDE_DIR}")
endif()

add_library(theworld_proj_sqlite STATIC "${SQLite3_INCLUDE_DIR}/sqlite3.c")
target_include_directories(theworld_proj_sqlite PUBLIC "${SQLite3_INCLUDE_DIR}")
set_target_properties(theworld_proj_sqlite PROPERTIES
	POSITION_INDEPENDENT_CODE ON
	MSVC_RUNTIME_LIBRARY "MultiThreaded$<$<CONFIG:Debug>:Debug>DLL"
)

list(PREPEND CMAKE_MODULE_PATH "${CMAKE_CURRENT_LIST_DIR}/modules")
set(BUILD_SHARED_LIBS OFF)
set(BUILD_TESTING OFF)
set(BUILD_APPS OFF)
set(BUILD_EXAMPLES OFF)
set(ENABLE_TIFF OFF)
set(ENABLE_CURL OFF)
set(EMBED_RESOURCE_FILES ON)
set(EMBED_PROJ_DATA_PATH OFF)
add_subdirectory("${THEWORLD_EXTERNAL_ROOT}/PROJ" "${CMAKE_CURRENT_BINARY_DIR}/upstream")

set_target_properties(proj PROPERTIES
	MSVC_RUNTIME_LIBRARY "MultiThreaded$<$<CONFIG:Debug>:Debug>DLL"
	ARCHIVE_OUTPUT_DIRECTORY "${THEWORLD_LIB_DIR}/$<0:>"
)
