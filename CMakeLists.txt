cmake_minimum_required(VERSION 3.20)
project(KiraScript VERSION 1.0)

# Set C++ standard
set(CMAKE_CXX_STANDARD 17)
set(CMAKE_CXX_STANDARD_REQUIRED ON)
set(CMAKE_CXX_EXTENSIONS OFF)

# Remove all warning flags
if(MSVC)
    set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} /O2")
else()
    set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -O3")
endif()

# Add project-wide include directories
include_directories(
    ${CMAKE_SOURCE_DIR}/hdr
    ${CMAKE_SOURCE_DIR}/src
)

# Find all source files
set(SOURCES
    ${CMAKE_SOURCE_DIR}/src/Terminal.cpp
    ${CMAKE_SOURCE_DIR}/src/backend/AST.cpp
    ${CMAKE_SOURCE_DIR}/src/backend/Lexer.cpp
    ${CMAKE_SOURCE_DIR}/src/backend/Parser.cpp
    ${CMAKE_SOURCE_DIR}/src/main.cpp
    ${CMAKE_SOURCE_DIR}/src/runtime/Interpreter.cpp
    ${CMAKE_SOURCE_DIR}/src/runtime/Scope.cpp
    ${CMAKE_SOURCE_DIR}/src/runtime/Values.cpp
    ${CMAKE_SOURCE_DIR}/src/runtime/eval/Expressions.cpp
    ${CMAKE_SOURCE_DIR}/src/runtime/eval/Statements.cpp
    ${CMAKE_SOURCE_DIR}/src/util/Error.cpp
    ${CMAKE_SOURCE_DIR}/src/util/Memory.cpp
)

# Main executable target
add_executable(${PROJECT_NAME} 
    ${SOURCES}
)