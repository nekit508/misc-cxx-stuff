Add this to your cmake file to access default functions.
```cmake
execute_process(COMMAND curl "https://raw.githubusercontent.com/nekit508/misc-cxx-stuff/main/functions.cmake" -s -o "${PROJECT_SOURCE_DIR}/lib.cmake")
include("lib.cmake")
```