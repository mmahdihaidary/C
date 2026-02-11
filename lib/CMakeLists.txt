add_library(myLib hello.c hello.h)


# PRIVATE
# PUBLIC
# INTERFACE
target_include_directories(myLib
    PUBLIC
    ${CMAKE_CURRENT_SOURCE_DIR})   