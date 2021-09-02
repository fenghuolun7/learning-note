# three ways of importing
## directly importing
example:
```cmake
# Create imported target MathFunctions::MathFunctions
add_library(MathFunctions::MathFunctions STATIC IMPORTED)
set_target_properties(MathFunctions::MathFunctions PROPERTIES
INTERFACE_INCLUDE_DIRECTORIES "${_IMPORT_PREFIX}/include"
)
```
## through export
example:
```cmake
include(${INSTALL_PREFIX}/lib/cmake/MathFunctionTargets.cmake)
add_executable(myexe src1.c src2.c )
target_link_libraries(myexe PRIVATE MathFunctions::MathFunctions)
)
```
## through package
exmaple
```cmake
find_package(MathFunctions 3.4.1 EXACT)
add_executable(myexe main.cc)
target_link_libraries(myexe PRIVATE MathFunctions::MathFunctions)
```
>notice that we should use ```cmake .. -DCMAKE_PREFIX_PATH=path to locate the install position