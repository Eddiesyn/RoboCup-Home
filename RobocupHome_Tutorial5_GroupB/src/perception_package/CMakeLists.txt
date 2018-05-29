cmake_minimum_required(VERSION 2.8.3)
project(perception_package)

set(CMAKE_CXX_FLAGS "-std=c++11 ${CMAKE_CXX_FLAGS}")

## Find catkin macros and libraries
## if COMPONENTS list like find_package(catkin REQUIRED COMPONENTS xyz)
## is used, also find other catkin packages
find_package(OpenCV REQUIRED)
find_package(PCL REQUIRED)

find_package(catkin REQUIRED COMPONENTS 
  roscpp
  rospy
  sensor_msgs
  image_transport
  tf
  image_geometry
  cv_bridge
  perception_msgs
)


# add_message_files(
#   DIRECTORY msg
#   FILES
#   Box.msg
#   )
#add_service_files(FILES DetectObject.srv)
# generate_messages(
#   DEPENDENCIES 
#   std_msgs
#   )



catkin_package(
  CATKIN_DEPENDS roscpp sensor_msgs std_msgs
)
## Specify additional locations of header files
## Your package locations should be listed before other locations
# include_directories(include)
include_directories(
  ${catkin_INCLUDE_DIRS}
  ${PCL_INCLUDE_DIRS}  
)


## Declare a cpp executable
add_executable(draw_boundingbox src/draw_boundingbox.cpp)
add_executable(from2dto3d src/from2dto3d.cpp)
add_executable(place_msg src/place_msg.cpp)


# include_directories(
#   # ${PCL_INCLUDE_DIRS}
#   ${OpenCV_LIBRARIES}
#   ${catkin_LIBRARIES}
# )
## Specify libraries to link a library or executable target against
target_link_libraries(draw_boundingbox ${catkin_LIBRARIES} ${OpenCV_LIBRARIES})
target_link_libraries(from2dto3d ${catkin_LIBRARIES} ${PCL_LIBRARIES})
target_link_libraries(place_msg ${catkin_LIBRARIES})
