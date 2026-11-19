file(STRINGS "${SQLite3_INCLUDE_DIR}/sqlite3.h" _sqlite_version_line
	REGEX "^#define SQLITE_VERSION[ \t]+\"[0-9.]+\"")
string(REGEX MATCH "[0-9]+\\.[0-9]+\\.[0-9]+" SQLite3_VERSION "${_sqlite_version_line}")
include(FindPackageHandleStandardArgs)
find_package_handle_standard_args(SQLite3 REQUIRED_VARS SQLite3_INCLUDE_DIR VERSION_VAR SQLite3_VERSION)
if(SQLite3_FOUND AND NOT TARGET SQLite3::SQLite3)
	add_library(SQLite3::SQLite3 INTERFACE IMPORTED GLOBAL)
	set_property(TARGET SQLite3::SQLite3 PROPERTY INTERFACE_LINK_LIBRARIES theworld_proj_sqlite)
endif()
