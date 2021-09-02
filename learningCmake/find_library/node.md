## find_library
example:  
```cmake
find_library(GMOCK_LIBRARIES NAMES gmock)
```

NAMES
>Specify one or more possible names for the library.

When using this to specify names with and without a version suffix, we recommend specifying the unversioned name first so that locally-built packages can be found before those provided by distributions.