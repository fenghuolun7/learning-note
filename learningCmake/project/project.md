# project
>Set the name of the project.
## case:
```cmake
project(apd-cmake-modules VERSION 1.0.0 LANGUAGES NONE)
```
### LANGUAGES \<language-name\>...  

>Optional. Can also be specified without LANGUAGES keyword per the first, short signature.

>Selects which programming languages are needed to build the project. Supported languages include C, CXX (i.e. C++), CUDA, OBJC (i.e. Objective-C), OBJCXX, Fortran, HIP, ISPC, and ASM. By default C and CXX are enabled if no language options are given. Specify language NONE, or use the LANGUAGES keyword and list no languages, to skip enabling any languages.