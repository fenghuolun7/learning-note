# 在编译工程时，常常有许多宏需要添加到VS中，如果采用add_definitions的方式进行添加，会使得不同项目的宏混淆，
# 因此，可以采用set_target_properties的方式，根据项目制定对应的宏

set(BUILD_FLAGS "-DHZ_PLATFORM_WINDOWS -DWINDOWS -DHZ_BUILD_DLL" )
set_target_properties(Hazel PROPERTIES COMPILE_FLAGS ${BUILD_FLAGS})

