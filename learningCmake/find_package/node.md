# find_package 
example:  
```cmake
#   The EXACT option requests that the version be matched exactly.
#   The REQUIRED option stops processing with an error message if the package cannot be found.
find_package(GTest 1.10.0 EXACT REQUIRED)
#   every module defines variables like:
#   <LibaryName>_FOUND
#   <LibaryName>_INCLUDE_DIR or <LibaryName>_INCLUDES 
#   <LibaryName>_LIBRARY or <LibaryName>_LIBRARIES

#   which can be used in latter occasion.
```   