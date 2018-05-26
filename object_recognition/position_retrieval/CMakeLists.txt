cmake_minimum_required(VERSION 2.8.3)
project(position_retrieval)
add_compile_options(-std=c++11)


find_package(OpenCV REQUIRED)
find_package(PCL REQUIRED)


# Catkin
find_package(catkin REQUIRED COMPONENTS
  message_generation
  rospy
  std_msgs
  sensor_msgs
  message_filters
  cv_bridge
  tf
  image_geometry
  darknet_ros_msgs
)

#add_message_files(
#        DIRECTORY msg
#        FILES
#        Rect.msg
#)

#generate_messages(
#  DEPENDENCIES
#  std_msgs
#  geometry_msgs
#  sensor_msgs
#)

catkin_package(CATKIN_DEPENDS message_runtime)


include_directories(include
  ${catkin_INCLUDE_DIRS}
  ${OpenCV_INCLUDE_DIRS}
  ${PCL_INCLUDE_DIRS}
)


add_executable(position_retrieval src/position_retrieval.cpp)
target_link_libraries(position_retrieval
  ${catkin_LIBRARIES}
  ${OpenCV_LIBRARIES}
  ${PCL_LIBRARIES}
)

#add_executable(bounding2rect src/bounding2rect.cpp)
#target_link_libraries(bounding2rect   ${catkin_LIBRARIES}
#    ${OpenCV_LIBRARIES}
#    ${PCL_LIBRARIES}
#)

install(TARGETS position_retrieval
#   ARCHIVE DESTINATION ${CATKIN_PACKAGE_LIB_DESTINATION}
#  LIBRARY DESTINATION ${CATKIN_PACKAGE_LIB_DESTINATION}
  RUNTIME DESTINATION ${CATKIN_PACKAGE_BIN_DESTINATION}
)

