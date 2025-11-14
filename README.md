Add this to your cmake file.
```cmake
execute_process(COMMAND curl "https://raw.githubusercontent.com/nekit508/misc-cxx-stuff/master/functions.cmake" -o "lib.cmake")
include("lib.cmake")
```