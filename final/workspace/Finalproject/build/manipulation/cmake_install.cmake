# Install script for directory: /home/atHomeSS18/God-Watcher/workspace/Finalproject/src/manipulation

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
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/manipulation" TYPE FILE FILES "/home/atHomeSS18/God-Watcher/workspace/Finalproject/devel/include/manipulation/SphericalGraspConfig.h")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python2.7/dist-packages/manipulation" TYPE FILE FILES "/home/atHomeSS18/God-Watcher/workspace/Finalproject/devel/lib/python2.7/dist-packages/manipulation/__init__.py")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  execute_process(COMMAND "/usr/bin/python" -m compileall "/home/atHomeSS18/God-Watcher/workspace/Finalproject/devel/lib/python2.7/dist-packages/manipulation/cfg")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python2.7/dist-packages/manipulation" TYPE DIRECTORY FILES "/home/atHomeSS18/God-Watcher/workspace/Finalproject/devel/lib/python2.7/dist-packages/manipulation/cfg")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/manipulation/action" TYPE FILE FILES "/home/atHomeSS18/God-Watcher/workspace/Finalproject/src/manipulation/action/PickUpPose.action")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/manipulation/msg" TYPE FILE FILES
    "/home/atHomeSS18/God-Watcher/workspace/Finalproject/devel/share/manipulation/msg/PickUpPoseAction.msg"
    "/home/atHomeSS18/God-Watcher/workspace/Finalproject/devel/share/manipulation/msg/PickUpPoseActionGoal.msg"
    "/home/atHomeSS18/God-Watcher/workspace/Finalproject/devel/share/manipulation/msg/PickUpPoseActionResult.msg"
    "/home/atHomeSS18/God-Watcher/workspace/Finalproject/devel/share/manipulation/msg/PickUpPoseActionFeedback.msg"
    "/home/atHomeSS18/God-Watcher/workspace/Finalproject/devel/share/manipulation/msg/PickUpPoseGoal.msg"
    "/home/atHomeSS18/God-Watcher/workspace/Finalproject/devel/share/manipulation/msg/PickUpPoseResult.msg"
    "/home/atHomeSS18/God-Watcher/workspace/Finalproject/devel/share/manipulation/msg/PickUpPoseFeedback.msg"
    )
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/manipulation/cmake" TYPE FILE FILES "/home/atHomeSS18/God-Watcher/workspace/Finalproject/build/manipulation/catkin_generated/installspace/manipulation-msg-paths.cmake")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include" TYPE DIRECTORY FILES "/home/atHomeSS18/God-Watcher/workspace/Finalproject/devel/include/manipulation")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/roseus/ros" TYPE DIRECTORY FILES "/home/atHomeSS18/God-Watcher/workspace/Finalproject/devel/share/roseus/ros/manipulation")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/common-lisp/ros" TYPE DIRECTORY FILES "/home/atHomeSS18/God-Watcher/workspace/Finalproject/devel/share/common-lisp/ros/manipulation")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/gennodejs/ros" TYPE DIRECTORY FILES "/home/atHomeSS18/God-Watcher/workspace/Finalproject/devel/share/gennodejs/ros/manipulation")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  execute_process(COMMAND "/usr/bin/python" -m compileall "/home/atHomeSS18/God-Watcher/workspace/Finalproject/devel/lib/python2.7/dist-packages/manipulation")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python2.7/dist-packages" TYPE DIRECTORY FILES "/home/atHomeSS18/God-Watcher/workspace/Finalproject/devel/lib/python2.7/dist-packages/manipulation")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/pkgconfig" TYPE FILE FILES "/home/atHomeSS18/God-Watcher/workspace/Finalproject/build/manipulation/catkin_generated/installspace/manipulation.pc")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/manipulation/cmake" TYPE FILE FILES "/home/atHomeSS18/God-Watcher/workspace/Finalproject/build/manipulation/catkin_generated/installspace/manipulation-msg-extras.cmake")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/manipulation/cmake" TYPE FILE FILES
    "/home/atHomeSS18/God-Watcher/workspace/Finalproject/build/manipulation/catkin_generated/installspace/manipulationConfig.cmake"
    "/home/atHomeSS18/God-Watcher/workspace/Finalproject/build/manipulation/catkin_generated/installspace/manipulationConfig-version.cmake"
    )
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/manipulation" TYPE FILE FILES "/home/atHomeSS18/God-Watcher/workspace/Finalproject/src/manipulation/package.xml")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/manipulation" TYPE PROGRAM FILES
    "/home/atHomeSS18/God-Watcher/workspace/Finalproject/src/manipulation/scripts/pick_and_place_server.py"
    "/home/atHomeSS18/God-Watcher/workspace/Finalproject/src/manipulation/scripts/pick_client.py"
    "/home/atHomeSS18/God-Watcher/workspace/Finalproject/src/manipulation/scripts/spherical_grasps_server.py"
    )
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/manipulation" TYPE DIRECTORY FILES
    "/home/atHomeSS18/God-Watcher/workspace/Finalproject/src/manipulation/launch"
    "/home/atHomeSS18/God-Watcher/workspace/Finalproject/src/manipulation/config"
    )
endif()

