cmake_minimum_required(VERSION 3.0.2 FATAL_ERROR)

project(test_app LANGUAGES CXX VERSION 0.0.1)

add_executable(${PROJECT_NAME} main.cpp)

target_link_libraries(${PROJECT_NAME}
  ${CMAKE_HOME_DIRECTORY}/deps/gen_deps/tb_msgs/build/libtb_msgs_lib.a
  )

