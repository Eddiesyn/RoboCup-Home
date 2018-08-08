# Install script for directory: /home/atHomeSS18/God-Watcher/workspace/speech/src/tum_alle_athome_speech/tum_alle_athome_speech_tts

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/home/atHomeSS18/God-Watcher/workspace/speech/install")
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
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/pkgconfig" TYPE FILE FILES "/home/atHomeSS18/God-Watcher/workspace/speech/build/tum_alle_athome_speech/tum_alle_athome_speech_tts/catkin_generated/installspace/tum_alle_athome_speech_tts.pc")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/tum_alle_athome_speech_tts/cmake" TYPE FILE FILES
    "/home/atHomeSS18/God-Watcher/workspace/speech/build/tum_alle_athome_speech/tum_alle_athome_speech_tts/catkin_generated/installspace/tum_alle_athome_speech_ttsConfig.cmake"
    "/home/atHomeSS18/God-Watcher/workspace/speech/build/tum_alle_athome_speech/tum_alle_athome_speech_tts/catkin_generated/installspace/tum_alle_athome_speech_ttsConfig-version.cmake"
    )
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/tum_alle_athome_speech_tts" TYPE FILE FILES "/home/atHomeSS18/God-Watcher/workspace/speech/src/tum_alle_athome_speech/tum_alle_athome_speech_tts/package.xml")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/tum_alle_athome_speech_tts" TYPE PROGRAM FILES "/home/atHomeSS18/God-Watcher/workspace/speech/build/tum_alle_athome_speech/tum_alle_athome_speech_tts/catkin_generated/installspace/text_to_speech.py")
endif()

