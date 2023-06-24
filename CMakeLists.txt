cmake_minimum_required(VERSION 3.4.1)

SET(CMAKE_C_COMPILER "gcc")

# set the project name
project(string_stream_parse)



aux_source_directory(. DIR_SRCS)
aux_source_directory(./src DIR_SRCS)

# add the executable
include_directories(
    ${CMAKE_CURRENT_SOURCE_DIR}
    ${CMAKE_CURRENT_BINARY_DIR}
    ${CMAKE_CURRENT_SOURCE_DIR}/inc
)

add_executable(string_stream_parse ${DIR_SRCS})
