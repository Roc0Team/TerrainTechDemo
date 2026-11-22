# TerrainTechDemo

## Local build files

Open `build\TerrainTechDemo.sln` in Visual Studio, or use `build\CMakeLists.txt` with a separate CMake binary directory such as `build\out\cmake`. Keep generated binaries and build caches out of Git.

In Visual Studio's CMake Targets View, build the `TerrainTechDemo` target to build the viewer, MapManager, Utils, jsoncpp, PROJ, and both unit-test projects. This compiles the tests without running them and uses the existing prebuilt godot-cpp libraries. After configuring CMake, the equivalent command from this directory is:

```powershell
cmake --build .\build\out\cmake --config Debug --target TerrainTechDemo --parallel
```

PROJ needs `sqlite3.exe` at build time to generate its database. Place a local copy in `DipendenzeEsterne\sqlite3.exe` or make it available on PATH. The executable is intentionally ignored and is not included in the repository.

## Creating an empty Map

- 