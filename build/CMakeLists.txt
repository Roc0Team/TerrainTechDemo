cmake_minimum_required(VERSION 3.22.1)

if(CMAKE_SOURCE_DIR STREQUAL CMAKE_BINARY_DIR)
	message(FATAL_ERROR "Use a separate binary directory (for example -B out/cmake) to preserve TerrainTechDemo.sln.")
endif()

project(TerrainTechDemo LANGUAGES C CXX)

if(NOT WIN32 OR NOT MSVC)
	message(FATAL_ERROR "TerrainTechDemo CMake build requires Windows and MSVC.")
endif()

if(NOT CMAKE_SIZEOF_VOID_P EQUAL 8)
	message(FATAL_ERROR "TerrainTechDemo requires a 64-bit build. Configure with -A x64.")
endif()

if(CMAKE_CONFIGURATION_TYPES)
	set(CMAKE_CONFIGURATION_TYPES "Debug;Release" CACHE STRING
		"Supported build configurations" FORCE)
else()
	if(NOT CMAKE_BUILD_TYPE)
		set(CMAKE_BUILD_TYPE Debug CACHE STRING "Build configuration" FORCE)
	endif()
	if(NOT CMAKE_BUILD_TYPE STREQUAL "Debug" AND NOT CMAKE_BUILD_TYPE STREQUAL "Release")
		message(FATAL_ERROR "CMAKE_BUILD_TYPE must be Debug or Release.")
	endif()
endif()

set(THEWORLD_EXTERNAL_ROOT "${PROJECT_SOURCE_DIR}/.." CACHE PATH
	"Directory containing GSL, Eigen, jsoncpp, and sibling TheWorld projects")
set(THEWORLD_VIEWER_SOURCE_DIR "${THEWORLD_EXTERNAL_ROOT}/TheWorld_GDN_Viewer/TheWorld_GDN_Viewer")
set(THEWORLD_LIB_DIR "${PROJECT_SOURCE_DIR}/x64" CACHE PATH
	"Directory for the solution's generated libraries and DLLs")
set(THEWORLD_GODOT_CPP_DIR "${PROJECT_SOURCE_DIR}/../../godot-cpp" CACHE PATH
	"Path to the godot-cpp checkout")
set(THEWORLD_GODOT_CPP_LIB_DIR "${THEWORLD_GODOT_CPP_DIR}/bin" CACHE PATH
	"Directory containing the prebuilt godot-cpp import libraries")

get_filename_component(_legacy_godot_cpp_dir "${THEWORLD_EXTERNAL_ROOT}/godot-cpp" ABSOLUTE)
get_filename_component(_configured_godot_cpp_dir "${THEWORLD_GODOT_CPP_DIR}" ABSOLUTE)
set(_default_godot_cpp_dir "${PROJECT_SOURCE_DIR}/../../godot-cpp")
if(_configured_godot_cpp_dir STREQUAL _legacy_godot_cpp_dir
		AND NOT IS_DIRECTORY "${THEWORLD_GODOT_CPP_DIR}"
		AND IS_DIRECTORY "${_default_godot_cpp_dir}")
	message(STATUS "Updating legacy THEWORLD_GODOT_CPP_DIR to ${_default_godot_cpp_dir}")
	set(THEWORLD_GODOT_CPP_DIR "${_default_godot_cpp_dir}" CACHE PATH
		"Path to the godot-cpp checkout" FORCE)
endif()

get_filename_component(_configured_godot_cpp_lib_dir "${THEWORLD_GODOT_CPP_LIB_DIR}" ABSOLUTE)
if(_configured_godot_cpp_lib_dir STREQUAL "${_legacy_godot_cpp_dir}/bin"
		AND NOT IS_DIRECTORY "${THEWORLD_GODOT_CPP_LIB_DIR}"
		AND IS_DIRECTORY "${THEWORLD_GODOT_CPP_DIR}/bin")
	message(STATUS "Updating legacy THEWORLD_GODOT_CPP_LIB_DIR to ${THEWORLD_GODOT_CPP_DIR}/bin")
	set(THEWORLD_GODOT_CPP_LIB_DIR "${THEWORLD_GODOT_CPP_DIR}/bin" CACHE PATH
		"Directory containing the prebuilt godot-cpp import libraries" FORCE)
endif()

option(THEWORLD_DEPLOY_NATIVE "Copy the built DLLs to the Godot addon after linking" ON)
set(THEWORLD_NATIVE_DIR "${THEWORLD_EXTERNAL_ROOT}/TheWorld_Viewer/TheWorld/addons/twviewer/native" CACHE PATH
	"Destination directory for the Godot addon DLLs")

set(_theworld_include_dirs
	"${THEWORLD_GODOT_CPP_DIR}/include"
	"${THEWORLD_GODOT_CPP_DIR}/gdextension"
	"${THEWORLD_GODOT_CPP_DIR}/gen/include"
	"${THEWORLD_EXTERNAL_ROOT}/TheWorld_MapManager"
	"${THEWORLD_EXTERNAL_ROOT}/GSL/include"
	"${THEWORLD_EXTERNAL_ROOT}/plog/include"
	"${THEWORLD_EXTERNAL_ROOT}/TheWorld_Utils"
	"${THEWORLD_EXTERNAL_ROOT}/eigen"
	"${THEWORLD_EXTERNAL_ROOT}/jsoncpp/include"
)

foreach(_include_dir IN LISTS _theworld_include_dirs)
	if(NOT IS_DIRECTORY "${_include_dir}")
		message(FATAL_ERROR
			"Required include directory not found: ${_include_dir}\n"
			"Set THEWORLD_EXTERNAL_ROOT or THEWORLD_GODOT_CPP_DIR to the correct location.")
	endif()
endforeach()

set(_theworld_required_libraries
	"${THEWORLD_GODOT_CPP_LIB_DIR}/libgodot-cpp.windows.editor.x86_64.lib"
	"${THEWORLD_GODOT_CPP_LIB_DIR}/libgodot-cpp.windows.template_release.x86_64.lib"
)

foreach(_library IN LISTS _theworld_required_libraries)
	if(NOT EXISTS "${_library}")
		message(FATAL_ERROR
			"Required prebuilt godot-cpp library not found: ${_library}\n"
			"Set THEWORLD_GODOT_CPP_LIB_DIR to the directory containing the godot-cpp import libraries.")
	endif()
endforeach()

enable_testing()
add_subdirectory("${THEWORLD_EXTERNAL_ROOT}/cmake/jsoncpp" "${CMAKE_BINARY_DIR}/lib_json")
add_subdirectory("${THEWORLD_EXTERNAL_ROOT}/cmake/proj" "${CMAKE_BINARY_DIR}/proj")
add_subdirectory("${THEWORLD_EXTERNAL_ROOT}/TheWorld_Utils" "${CMAKE_BINARY_DIR}/TheWorld_Utils")
add_subdirectory("${THEWORLD_EXTERNAL_ROOT}/TheWorld_MapManager" "${CMAKE_BINARY_DIR}/TheWorld_MapManager")
add_subdirectory("${THEWORLD_EXTERNAL_ROOT}/TheWorld_Utils_UnitTest" "${CMAKE_BINARY_DIR}/TheWorld_Utils_UnitTest")
add_subdirectory("${THEWORLD_EXTERNAL_ROOT}/TheWorld_MapManager_UnitTest" "${CMAKE_BINARY_DIR}/TheWorld_MapManager_UnitTest")

add_library(TheWorld_GDN_Viewer SHARED
	"${THEWORLD_VIEWER_SOURCE_DIR}/Chunk.cpp"
	"${THEWORLD_VIEWER_SOURCE_DIR}/ClientServer.cpp"
	"${THEWORLD_VIEWER_SOURCE_DIR}/Collider.cpp"
	"${THEWORLD_VIEWER_SOURCE_DIR}/DisusedCode.cpp"
	"${THEWORLD_VIEWER_SOURCE_DIR}/dllmain.cpp"
	"${THEWORLD_VIEWER_SOURCE_DIR}/GDN_Template.cpp"
	"${THEWORLD_VIEWER_SOURCE_DIR}/GDN_TheWorld_Camera.cpp"
	"${THEWORLD_VIEWER_SOURCE_DIR}/GDN_TheWorld_Edit.cpp"
	"${THEWORLD_VIEWER_SOURCE_DIR}/GDN_TheWorld_Exception.cpp"
	"${THEWORLD_VIEWER_SOURCE_DIR}/GDN_TheWorld_Globals.cpp"
	"${THEWORLD_VIEWER_SOURCE_DIR}/GDN_TheWorld_MainNode.cpp"
	"${THEWORLD_VIEWER_SOURCE_DIR}/GDN_TheWorld_Quadrant.cpp"
	"${THEWORLD_VIEWER_SOURCE_DIR}/GDN_TheWorld_Viewer.cpp"
	"${THEWORLD_VIEWER_SOURCE_DIR}/MeshCache.cpp"
	"${THEWORLD_VIEWER_SOURCE_DIR}/pch.cpp"
	"${THEWORLD_VIEWER_SOURCE_DIR}/QuadTree.cpp"
	"${THEWORLD_VIEWER_SOURCE_DIR}/register_types.cpp"
	"${THEWORLD_VIEWER_SOURCE_DIR}/Tools.cpp"
	"${THEWORLD_VIEWER_SOURCE_DIR}/Viewer_Utils.cpp"
)

target_include_directories(TheWorld_GDN_Viewer PRIVATE ${_theworld_include_dirs})
target_compile_features(TheWorld_GDN_Viewer PRIVATE cxx_std_20)
target_compile_definitions(TheWorld_GDN_Viewer PRIVATE
	THEWORLDGDNVIEWER_EXPORTS
	_WINDOWS
	_USRDLL
	UNICODE
	_UNICODE
	_THEWORLD_CLIENT
	TYPED_METHOD_BIND
	"$<$<CONFIG:Debug>:_DEBUG>"
	"$<$<CONFIG:Release>:NDEBUG>"
)

target_link_libraries(TheWorld_GDN_Viewer PRIVATE
	Rpcrt4
	TheWorld_MapManager
	TheWorld_Utils
	lib_json
	"$<$<CONFIG:Debug>:${THEWORLD_GODOT_CPP_LIB_DIR}/libgodot-cpp.windows.editor.x86_64.lib>"
	"$<$<CONFIG:Release>:${THEWORLD_GODOT_CPP_LIB_DIR}/libgodot-cpp.windows.template_release.x86_64.lib>"
)

target_compile_options(TheWorld_GDN_Viewer PRIVATE
	/W3
	/sdl
	/permissive-
	/Zc:__cplusplus
)
target_link_options(TheWorld_GDN_Viewer PRIVATE /DEBUG)

set_target_properties(TheWorld_GDN_Viewer PROPERTIES
	CXX_EXTENSIONS OFF
	MSVC_RUNTIME_LIBRARY "MultiThreaded$<$<CONFIG:Debug>:Debug>DLL"
	PREFIX ""
	OUTPUT_NAME_DEBUG "TheWorld_GDN_Viewer_d"
	OUTPUT_NAME_RELEASE "TheWorld_GDN_Viewer"
	RUNTIME_OUTPUT_DIRECTORY "${THEWORLD_LIB_DIR}/$<0:>"
	ARCHIVE_OUTPUT_DIRECTORY "${THEWORLD_LIB_DIR}/$<0:>"
)

if(THEWORLD_DEPLOY_NATIVE)
	if(NOT IS_DIRECTORY "${THEWORLD_NATIVE_DIR}")
		message(FATAL_ERROR "Godot addon destination does not exist: ${THEWORLD_NATIVE_DIR}. Set THEWORLD_NATIVE_DIR or disable THEWORLD_DEPLOY_NATIVE.")
	endif()
	add_custom_command(TARGET TheWorld_GDN_Viewer POST_BUILD
		COMMAND "${CMAKE_COMMAND}" -E copy_if_different
			"$<TARGET_FILE:TheWorld_GDN_Viewer>"
			"$<TARGET_FILE:TheWorld_MapManager>"
			"$<TARGET_FILE:TheWorld_Utils>"
			"${THEWORLD_NATIVE_DIR}"
		COMMENT "Copying ${CMAKE_PROJECT_NAME} DLLs to the Godot addon"
		VERBATIM
	)
endif()

add_custom_target(TerrainTechDemo
	DEPENDS
		TheWorld_GDN_Viewer
		TheWorld_MapManager
		TheWorld_Utils
		jsoncpp_static
		proj
		TheWorld_Utils_UnitTest
		TheWorld_MapManager_UnitTest
)
