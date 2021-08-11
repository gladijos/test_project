cmake_minimum_required(VERSION 3.5.1)

project("tb_lib")

set(CMAKE_CXX_STANDARD 11)

add_library(tb_msgs_lib 
    tb_msg.cpp
)

