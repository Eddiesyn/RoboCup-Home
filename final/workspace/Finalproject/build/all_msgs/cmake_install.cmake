# Install script for directory: /home/atHomeSS18/God-Watcher/workspace/Finalproject/src/all_msgs

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/home/atHomeSS18/God-Watcher/workspace/Finalproject/install")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "")
  endif()
  message(STATUS "Install configuration: \"${CMAKE_INSTALL_CONFIG_NAME}\"")
endif()

# Set the component getting installed.
if(NOT CMAKE_INSTALL_COMPONENT)
  if(COMPONENT)
    message(STATUS "Install component: \"${COMPONENT}\"")
    set(CMAKE_INSTALL_COMPONENT "${COMPONENT}")
  else()
    set(CMAKE_INSTALL_COMPONENT)
  endif()
endif()

# Install shared libraries without execute permission?
if(NOT DEFINED CMAKE_INSTALL_SO_NO_EXE)
  set(CMAKE_INSTALL_SO_NO_EXE "1")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/all_msgs/msg" TYPE FILE FILES
    "/home/atHomeSS18/God-Watcher/workspace/Finalproject/src/all_msgs/msg/Rect.msg"
    "/home/atHomeSS18/God-Watcher/workspace/Finalproject/src/all_msgs/msg/Box.msg"
    "/home/atHomeSS18/God-Watcher/workspace/Finalproject/src/all_msgs/msg/Object.msg"
    "/home/atHomeSS18/God-Watcher/workspace/Finalproject/src/all_msgs/msg/ObjectArray.msg"
    "/home/atHomeSS18/God-Watcher/workspace/Finalproject/src/all_msgs/msg/Boxes.msg"
    )
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/all_msgs/srv" TYPE FILE FILES
    "/home/atHomeSS18/God-Watcher/workspace/Finalproject/src/all_msgs/srv/send_flags.srv"
    "/home/atHomeSS18/God-Watcher/workspace/Finalproject/src/all_msgs/srv/send_box.srv"
    "/home/atHomeSS18/God-Watcher/workspace/Finalproject/src/all_msgs/srv/send_pos.srv"
    "/home/atHomeSS18/God-Watcher/workspace/Finalproject/src/all_msgs/srv/send_pose.srv"
    )
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/all_msgs/cmake" TYPE FILE FILES "/home/atHomeSS18/God-Watcher/workspace/Finalproject/build/all_msgs/catkin_generated/installspace/all_msgs-msg-paths.cmake")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include" TYPE DIRECTORY FILES "/home/atHomeSS18/God-Watcher/workspace/Finalproject/devel/include/all_msgs")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/roseus/ros" TYPE DIRECTORY FILES "/home/atHomeSS18/God-Watcher/workspace/Finalproject/devel/share/roseus/ros/all_msgs")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/common-lisp/ros" TYPE DIRECTORY FILES "/home/atHomeSS18/God-Watcher/workspace/Finalproject/devel/share/common-lisp/ros/all_msgs")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/gennodejs/ros" TYPE DIRECTORY FILES "/home/atHomeSS18/God-Watcher/workspace/Finalproject/devel/share/gennodejs/ros/all_msgs")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  execute_process(COMMAND "/usr/bin/python" -m compileall "/home/atHomeSS18/God-Watcher/workspace/Finalproject/devel/lib/python2.7/dist-packages/all_msgs")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python2.7/dist-packages" TYPE DIRECTORY FILES "/home/atHomeSS18/God-Watcher/workspace/Finalproject/devel/lib/python2.7/dist-packages/all_msgs")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/pkgconfig" TYPE FILE FILES "/home/atHomeSS18/God-Watcher/workspace/Finalproject/build/all_msgs/catkin_generated/installspace/all_msgs.pc")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/all_msgs/cmake" TYPE FILE FILES "/home/atHomeSS18/God-Watcher/workspace/Finalproject/build/all_msgs/catkin_generated/installspace/all_msgs-msg-extras.cmake")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/all_msgs/cmake" TYPE FILE FILES
    "/home/atHomeSS18/God-Watcher/workspace/Finalproject/build/all_msgs/catkin_generated/installspace/all_msgsConfig.cmake"
    "/home/atHomeSS18/God-Watcher/workspace/Finalproject/build/all_msgs/catkin_generated/installspace/all_msgsConfig-version.cmake"
    )
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/all_msgs" TYPE FILE FILES "/home/atHomeSS18/God-Watcher/workspace/Finalproject/src/all_msgs/package.xml")
endif()

