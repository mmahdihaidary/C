cmake_minimum_required(VERSION 3.10)

project(C C)

set(CMAKE_C_STANDARD 11)
set(CMAKE_C_STANDARD_REQUIRED ON)


set(CMAKE_EXPORT_COMPILE_COMMANDS ON)

# ---- Library ----
add_library(mathlib
    lib/math/mymath.c
)

target_include_directories(mathlib
    PUBLIC lib/math
)

# ---- Executable ----
file(GLOB SOURCES src/*.c)

add_executable(${PROJECT_NAME}
    ${SOURCES}
)

target_link_libraries(${PROJECT_NAME}
    PRIVATE mathlib
)

target_compile_options(${PROJECT_NAME}
    PRIVATE -Wall -Wextra
)

# ---- Run target ----
add_custom_target(run
    COMMAND ${PROJECT_NAME}
    DEPENDS ${PROJECT_NAME}
    WORKING_DIRECTORY ${CMAKE_BINARY_DIR}
)
