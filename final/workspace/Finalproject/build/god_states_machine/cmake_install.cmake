# Install script for directory: /home/atHomeSS18/God-Watcher/workspace/Finalproject/src/god_states_machine

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
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/pkgconfig" TYPE FILE FILES "/home/atHomeSS18/God-Watcher/workspace/Finalproject/build/god_states_machine/catkin_generated/installspace/god_states_machine.pc")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/god_states_machine/cmake" TYPE FILE FILES
    "/home/atHomeSS18/God-Watcher/workspace/Finalproject/build/god_states_machine/catkin_generated/installspace/god_states_machineConfig.cmake"
    "/home/atHomeSS18/God-Watcher/workspace/Finalproject/build/god_states_machine/catkin_generated/installspace/god_states_machineConfig-version.cmake"
    )
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/god_states_machine" TYPE FILE FILES "/home/atHomeSS18/God-Watcher/workspace/Finalproject/src/god_states_machine/package.xml")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/god_states_machine" TYPE PROGRAM FILES "/home/atHomeSS18/God-Watcher/workspace/Finalproject/src/god_states_machine/scripts/god_state_machine.py")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/god_states_machine" TYPE PROGRAM FILES "/home/atHomeSS18/God-Watcher/workspace/Finalproject/src/god_states_machine/scripts/states_machine.py")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/god_states_machine" TYPE DIRECTORY FILES
    "/home/atHomeSS18/God-Watcher/workspace/Finalproject/src/god_states_machine/launch"
    "/home/atHomeSS18/God-Watcher/workspace/Finalproject/src/god_states_machine/config"
    )
endif()

