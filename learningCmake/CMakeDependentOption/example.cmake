# offical documentation:
# https://cmake.org/cmake/help/latest/module/CMakeDependentOption.html

include(CMakeDependentOption)

# USE_BAR and USE_ZOT is set for USE_FOO's invocation
option(USE_BAR "for USE_FOO's invocation" ON)
option(USE_ZOT "for USE_FOO's invocation" OFF)

#Usage:
cmake_dependent_option(USE_FOO "USE_FOO depend on USE_BAR and USE_ZOT" ON
                       "USE_BAR;NOT USE_ZOT" OFF)

MESSAGE( STATUS "the value of USE_FOO is ${USE_FOO}.")

# change USE_BAR to OFF
set(USE_BAR OFF)

# the USE_FOO option does not change to OFF, and retains its old value !
MESSAGE( STATUS "the value of USE_FOO is ${USE_FOO}.")

# another option initiation depend on USE_BAR and USE_ZOT
cmake_dependent_option(USE_QUX "USE_FOO depend on USE_BAR and USE_ZOT" ON
                       "USE_BAR;NOT USE_ZOT" OFF)

# the value has changed.
MESSAGE( STATUS "the value of USE_QUX has changed to ${USE_QUX}.")
