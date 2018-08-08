# Install script for directory: /home/atHomeSS18/God-Watcher/workspace/Finalproject/src

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
  
      if (NOT EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}")
        file(MAKE_DIRECTORY "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}")
      endif()
      if (NOT EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/.catkin")
        file(WRITE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/.catkin" "")
      endif()
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/home/atHomeSS18/God-Watcher/workspace/Finalproject/install/_setup_util.py")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
file(INSTALL DESTINATION "/home/atHomeSS18/God-Watcher/workspace/Finalproject/install" TYPE PROGRAM FILES "/home/atHomeSS18/God-Watcher/workspace/Finalproject/build/catkin_generated/installspace/_setup_util.py")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/home/atHomeSS18/God-Watcher/workspace/Finalproject/install/env.sh")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
file(INSTALL DESTINATION "/home/atHomeSS18/God-Watcher/workspace/Finalproject/install" TYPE PROGRAM FILES "/home/atHomeSS18/God-Watcher/workspace/Finalproject/build/catkin_generated/installspace/env.sh")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/home/atHomeSS18/God-Watcher/workspace/Finalproject/install/setup.bash")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
file(INSTALL DESTINATION "/home/atHomeSS18/God-Watcher/workspace/Finalproject/install" TYPE FILE FILES "/home/atHomeSS18/God-Watcher/workspace/Finalproject/build/catkin_generated/installspace/setup.bash")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/home/atHomeSS18/God-Watcher/workspace/Finalproject/install/setup.sh")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
file(INSTALL DESTINATION "/home/atHomeSS18/God-Watcher/workspace/Finalproject/install" TYPE FILE FILES "/home/atHomeSS18/God-Watcher/workspace/Finalproject/build/catkin_generated/installspace/setup.sh")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/home/atHomeSS18/God-Watcher/workspace/Finalproject/install/setup.zsh")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
file(INSTALL DESTINATION "/home/atHomeSS18/God-Watcher/workspace/Finalproject/install" TYPE FILE FILES "/home/atHomeSS18/God-Watcher/workspace/Finalproject/build/catkin_generated/installspace/setup.zsh")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/home/atHomeSS18/God-Watcher/workspace/Finalproject/install/.rosinstall")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
file(INSTALL DESTINATION "/home/atHomeSS18/God-Watcher/workspace/Finalproject/install" TYPE FILE FILES "/home/atHomeSS18/God-Watcher/workspace/Finalproject/build/catkin_generated/installspace/.rosinstall")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for each subdirectory.
  include("/home/atHomeSS18/God-Watcher/workspace/Finalproject/build/gtest/cmake_install.cmake")
  include("/home/atHomeSS18/God-Watcher/workspace/Finalproject/build/all_msgs/cmake_install.cmake")
  include("/home/atHomeSS18/God-Watcher/workspace/Finalproject/build/speech/src/tum_alle_athome_speech/tum_alle_athome_speech_msgs/cmake_install.cmake")
  include("/home/atHomeSS18/God-Watcher/workspace/Finalproject/build/tum_alle_common_msgs/cmake_install.cmake")
  include("/home/atHomeSS18/God-Watcher/workspace/Finalproject/build/speech/src/tum_alle_athome_speech/tum_alle_athome_speech_hotword/cmake_install.cmake")
  include("/home/atHomeSS18/God-Watcher/workspace/Finalproject/build/speech/src/tum_alle_athome_speech/tum_alle_athome_speech_recognition/cmake_install.cmake")
  include("/home/atHomeSS18/God-Watcher/workspace/Finalproject/build/god_watcher/cmake_install.cmake")
  include("/home/atHomeSS18/God-Watcher/workspace/Finalproject/build/god_states_machine/cmake_install.cmake")
  include("/home/atHomeSS18/God-Watcher/workspace/Finalproject/build/betracker/cmake_install.cmake")
  include("/home/atHomeSS18/God-Watcher/workspace/Finalproject/build/navigation/cmake_install.cmake")
  include("/home/atHomeSS18/God-Watcher/workspace/Finalproject/build/perception/cmake_install.cmake")
  include("/home/atHomeSS18/God-Watcher/workspace/Finalproject/build/manipulation/cmake_install.cmake")
  include("/home/atHomeSS18/God-Watcher/workspace/Finalproject/build/speech/src/tum_alle_athome_speech/tum_alle_athome_speech_nlp/cmake_install.cmake")
  include("/home/atHomeSS18/God-Watcher/workspace/Finalproject/build/speech/src/tum_alle_athome_speech/tum_alle_athome_speech_tts/cmake_install.cmake")
  include("/home/atHomeSS18/God-Watcher/workspace/Finalproject/build/operator_identify/cmake_install.cmake")

endif()

if(CMAKE_INSTALL_COMPONENT)
  set(CMAKE_INSTALL_MANIFEST "install_manifest_${CMAKE_INSTALL_COMPONENT}.txt")
else()
  set(CMAKE_INSTALL_MANIFEST "install_manifest.txt")
endif()

string(REPLACE ";" "\n" CMAKE_INSTALL_MANIFEST_CONTENT
       "${CMAKE_INSTALL_MANIFEST_FILES}")
file(WRITE "/home/atHomeSS18/God-Watcher/workspace/Finalproject/build/${CMAKE_INSTALL_MANIFEST}"
     "${CMAKE_INSTALL_MANIFEST_CONTENT}")
