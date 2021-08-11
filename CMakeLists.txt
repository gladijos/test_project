cmake_minimum_required(VERSION 3.0.2 FATAL_ERROR)

project(test_project LANGUAGES CXX VERSION 0.0.3)

set(TB_MSGS ${CMAKE_HOME_DIRECTORY}/deps/gen_deps/tb_msgs/build/libtb_msgs_lib.a)

add_custom_command(
  OUTPUT ${TB_MSGS}
  WORKING_DIR ${CMAKE_HOME_DIRECTORY}
  COMMAND ${CMAKE_HOME_DIRECTORY}/scripts/build_msgs.sh ${CMAKE_HOME_DIRECTORY}
)
 
add_custom_target(build_dds_msgs
# ALL 
DEPENDS ${TB_MSGS}
)

# apps
add_subdirectory(test_app)
add_dependencies(test_app build_dds_msgs)
