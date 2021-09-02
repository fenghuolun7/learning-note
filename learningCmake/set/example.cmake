# Cache Variables
# 相当于一个全局变量，我们在同一个 cmake 工程中都可以使用。
#Use the FORCE option to overwrite existing entries.
set(CMAKE_INSTALL_PREFIX "/usr" CACHE STRING INTERNAL FORCE)
set(c_and_gnu "$<C_COMPILER_ID:GNU>")
MESSAGE( STATUS "the value of c_and_gnu is  ${c_and_gnu}.")
