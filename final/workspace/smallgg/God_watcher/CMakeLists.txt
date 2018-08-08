cmake_minimum_required(VERSION 2.8.3)
project(god_watcher)

set(CMAKE_CXX_FLAGS "-std=c++11 ${CMAKE_CXX_FLAGS}")

find_package(OpenCV REQUIRED)

find_package(catkin REQUIRED COMPONENTS 
  roscpp
  all_msgs
  std_msgs
  std_srvs
  tum_alle_common_msgs
  image_transport
  sensor_msgs
  cv_bridge
)

catkin_package(
  CATKIN_DEPENDS roscpp std_msgs sensor_msgs
)

include_directories(
  include
  ${catkin_INCLUDE_DIRS}
  ${god_watcher_INCLUDE_DIRS}
)

add_executable(god_watcher src/god_watcher.cpp)
target_link_libraries(god_watcher ${catkin_LIBRARIES} ${OpenCV_LIBRARIES})
