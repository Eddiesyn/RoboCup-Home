cmake_minimum_required(VERSION 2.8.3)
project(test_speech)

add_definitions(-std=c++11)

find_package(catkin REQUIRED COMPONENTS
  roscpp
  std_msgs
#  json_prolog
  geometry_msgs
  tum_alle_common_msgs
  #perception_msg
  tum_alle_athome_speech_tts
  tum_alle_athome_speech_msgs
)

catkin_package(INCLUDE_DIRS include
    CATKIN_DEPENDS roscpp std_msgs)

find_package(Boost REQUIRED COMPONENTS system)

include_directories(include)

include_directories(
  ${catkin_INCLUDE_DIRS}
)

add_executable(test_speech src/tts.cpp)
target_link_libraries(test_speech ${catkin_LIBRARIES} )




