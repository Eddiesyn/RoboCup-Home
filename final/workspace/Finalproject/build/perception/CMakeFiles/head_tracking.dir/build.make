# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.5

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:


#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:


# Remove some rules from gmake that .SUFFIXES does not remove.
SUFFIXES =

.SUFFIXES: .hpux_make_needs_suffix_list


# Suppress display of executed commands.
$(VERBOSE).SILENT:


# A target that is always out of date.
cmake_force:

.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /usr/bin/cmake

# The command to remove a file.
RM = /usr/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/atHomeSS18/God-Watcher/workspace/Finalproject/src

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/atHomeSS18/God-Watcher/workspace/Finalproject/build

# Include any dependencies generated for this target.
include perception/CMakeFiles/head_tracking.dir/depend.make

# Include the progress variables for this target.
include perception/CMakeFiles/head_tracking.dir/progress.make

# Include the compile flags for this target's objects.
include perception/CMakeFiles/head_tracking.dir/flags.make

perception/CMakeFiles/head_tracking.dir/src/head_tracking.cpp.o: perception/CMakeFiles/head_tracking.dir/flags.make
perception/CMakeFiles/head_tracking.dir/src/head_tracking.cpp.o: /home/atHomeSS18/God-Watcher/workspace/Finalproject/src/perception/src/head_tracking.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/atHomeSS18/God-Watcher/workspace/Finalproject/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object perception/CMakeFiles/head_tracking.dir/src/head_tracking.cpp.o"
	cd /home/atHomeSS18/God-Watcher/workspace/Finalproject/build/perception && /usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/head_tracking.dir/src/head_tracking.cpp.o -c /home/atHomeSS18/God-Watcher/workspace/Finalproject/src/perception/src/head_tracking.cpp

perception/CMakeFiles/head_tracking.dir/src/head_tracking.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/head_tracking.dir/src/head_tracking.cpp.i"
	cd /home/atHomeSS18/God-Watcher/workspace/Finalproject/build/perception && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/atHomeSS18/God-Watcher/workspace/Finalproject/src/perception/src/head_tracking.cpp > CMakeFiles/head_tracking.dir/src/head_tracking.cpp.i

perception/CMakeFiles/head_tracking.dir/src/head_tracking.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/head_tracking.dir/src/head_tracking.cpp.s"
	cd /home/atHomeSS18/God-Watcher/workspace/Finalproject/build/perception && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/atHomeSS18/God-Watcher/workspace/Finalproject/src/perception/src/head_tracking.cpp -o CMakeFiles/head_tracking.dir/src/head_tracking.cpp.s

perception/CMakeFiles/head_tracking.dir/src/head_tracking.cpp.o.requires:

.PHONY : perception/CMakeFiles/head_tracking.dir/src/head_tracking.cpp.o.requires

perception/CMakeFiles/head_tracking.dir/src/head_tracking.cpp.o.provides: perception/CMakeFiles/head_tracking.dir/src/head_tracking.cpp.o.requires
	$(MAKE) -f perception/CMakeFiles/head_tracking.dir/build.make perception/CMakeFiles/head_tracking.dir/src/head_tracking.cpp.o.provides.build
.PHONY : perception/CMakeFiles/head_tracking.dir/src/head_tracking.cpp.o.provides

perception/CMakeFiles/head_tracking.dir/src/head_tracking.cpp.o.provides.build: perception/CMakeFiles/head_tracking.dir/src/head_tracking.cpp.o


# Object files for target head_tracking
head_tracking_OBJECTS = \
"CMakeFiles/head_tracking.dir/src/head_tracking.cpp.o"

# External object files for target head_tracking
head_tracking_EXTERNAL_OBJECTS =

/home/atHomeSS18/God-Watcher/workspace/Finalproject/devel/lib/perception/head_tracking: perception/CMakeFiles/head_tracking.dir/src/head_tracking.cpp.o
/home/atHomeSS18/God-Watcher/workspace/Finalproject/devel/lib/perception/head_tracking: perception/CMakeFiles/head_tracking.dir/build.make
/home/atHomeSS18/God-Watcher/workspace/Finalproject/devel/lib/perception/head_tracking: /opt/ros/kinetic/lib/libcv_bridge.so
/home/atHomeSS18/God-Watcher/workspace/Finalproject/devel/lib/perception/head_tracking: /opt/ros/kinetic/lib/x86_64-linux-gnu/libopencv_core3.so.3.3.1
/home/atHomeSS18/God-Watcher/workspace/Finalproject/devel/lib/perception/head_tracking: /opt/ros/kinetic/lib/x86_64-linux-gnu/libopencv_imgproc3.so.3.3.1
/home/atHomeSS18/God-Watcher/workspace/Finalproject/devel/lib/perception/head_tracking: /opt/ros/kinetic/lib/x86_64-linux-gnu/libopencv_imgcodecs3.so.3.3.1
/home/atHomeSS18/God-Watcher/workspace/Finalproject/devel/lib/perception/head_tracking: /opt/ros/kinetic/lib/libimage_transport.so
/home/atHomeSS18/God-Watcher/workspace/Finalproject/devel/lib/perception/head_tracking: /usr/lib/x86_64-linux-gnu/libtinyxml2.so
/home/atHomeSS18/God-Watcher/workspace/Finalproject/devel/lib/perception/head_tracking: /opt/ros/kinetic/lib/libclass_loader.so
/home/atHomeSS18/God-Watcher/workspace/Finalproject/devel/lib/perception/head_tracking: /usr/lib/libPocoFoundation.so
/home/atHomeSS18/God-Watcher/workspace/Finalproject/devel/lib/perception/head_tracking: /usr/lib/x86_64-linux-gnu/libdl.so
/home/atHomeSS18/God-Watcher/workspace/Finalproject/devel/lib/perception/head_tracking: /opt/ros/kinetic/lib/libroslib.so
/home/atHomeSS18/God-Watcher/workspace/Finalproject/devel/lib/perception/head_tracking: /opt/ros/kinetic/lib/librospack.so
/home/atHomeSS18/God-Watcher/workspace/Finalproject/devel/lib/perception/head_tracking: /usr/lib/x86_64-linux-gnu/libpython2.7.so
/home/atHomeSS18/God-Watcher/workspace/Finalproject/devel/lib/perception/head_tracking: /usr/lib/x86_64-linux-gnu/libboost_program_options.so
/home/atHomeSS18/God-Watcher/workspace/Finalproject/devel/lib/perception/head_tracking: /usr/lib/x86_64-linux-gnu/libtinyxml.so
/home/atHomeSS18/God-Watcher/workspace/Finalproject/devel/lib/perception/head_tracking: /opt/ros/kinetic/lib/libtf.so
/home/atHomeSS18/God-Watcher/workspace/Finalproject/devel/lib/perception/head_tracking: /opt/ros/kinetic/lib/libtf2_ros.so
/home/atHomeSS18/God-Watcher/workspace/Finalproject/devel/lib/perception/head_tracking: /opt/ros/kinetic/lib/libactionlib.so
/home/atHomeSS18/God-Watcher/workspace/Finalproject/devel/lib/perception/head_tracking: /opt/ros/kinetic/lib/libtf2.so
/home/atHomeSS18/God-Watcher/workspace/Finalproject/devel/lib/perception/head_tracking: /opt/ros/kinetic/lib/libmessage_filters.so
/home/atHomeSS18/God-Watcher/workspace/Finalproject/devel/lib/perception/head_tracking: /opt/ros/kinetic/lib/libroscpp.so
/home/atHomeSS18/God-Watcher/workspace/Finalproject/devel/lib/perception/head_tracking: /usr/lib/x86_64-linux-gnu/libboost_filesystem.so
/home/atHomeSS18/God-Watcher/workspace/Finalproject/devel/lib/perception/head_tracking: /usr/lib/x86_64-linux-gnu/libboost_signals.so
/home/atHomeSS18/God-Watcher/workspace/Finalproject/devel/lib/perception/head_tracking: /opt/ros/kinetic/lib/libroscpp_serialization.so
/home/atHomeSS18/God-Watcher/workspace/Finalproject/devel/lib/perception/head_tracking: /opt/ros/kinetic/lib/libxmlrpcpp.so
/home/atHomeSS18/God-Watcher/workspace/Finalproject/devel/lib/perception/head_tracking: /opt/ros/kinetic/lib/librosconsole.so
/home/atHomeSS18/God-Watcher/workspace/Finalproject/devel/lib/perception/head_tracking: /opt/ros/kinetic/lib/librosconsole_log4cxx.so
/home/atHomeSS18/God-Watcher/workspace/Finalproject/devel/lib/perception/head_tracking: /opt/ros/kinetic/lib/librosconsole_backend_interface.so
/home/atHomeSS18/God-Watcher/workspace/Finalproject/devel/lib/perception/head_tracking: /usr/lib/x86_64-linux-gnu/liblog4cxx.so
/home/atHomeSS18/God-Watcher/workspace/Finalproject/devel/lib/perception/head_tracking: /usr/lib/x86_64-linux-gnu/libboost_regex.so
/home/atHomeSS18/God-Watcher/workspace/Finalproject/devel/lib/perception/head_tracking: /opt/ros/kinetic/lib/librostime.so
/home/atHomeSS18/God-Watcher/workspace/Finalproject/devel/lib/perception/head_tracking: /opt/ros/kinetic/lib/libcpp_common.so
/home/atHomeSS18/God-Watcher/workspace/Finalproject/devel/lib/perception/head_tracking: /usr/lib/x86_64-linux-gnu/libboost_system.so
/home/atHomeSS18/God-Watcher/workspace/Finalproject/devel/lib/perception/head_tracking: /usr/lib/x86_64-linux-gnu/libboost_thread.so
/home/atHomeSS18/God-Watcher/workspace/Finalproject/devel/lib/perception/head_tracking: /usr/lib/x86_64-linux-gnu/libboost_chrono.so
/home/atHomeSS18/God-Watcher/workspace/Finalproject/devel/lib/perception/head_tracking: /usr/lib/x86_64-linux-gnu/libboost_date_time.so
/home/atHomeSS18/God-Watcher/workspace/Finalproject/devel/lib/perception/head_tracking: /usr/lib/x86_64-linux-gnu/libboost_atomic.so
/home/atHomeSS18/God-Watcher/workspace/Finalproject/devel/lib/perception/head_tracking: /usr/lib/x86_64-linux-gnu/libpthread.so
/home/atHomeSS18/God-Watcher/workspace/Finalproject/devel/lib/perception/head_tracking: /usr/lib/x86_64-linux-gnu/libconsole_bridge.so
/home/atHomeSS18/God-Watcher/workspace/Finalproject/devel/lib/perception/head_tracking: perception/CMakeFiles/head_tracking.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/atHomeSS18/God-Watcher/workspace/Finalproject/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable /home/atHomeSS18/God-Watcher/workspace/Finalproject/devel/lib/perception/head_tracking"
	cd /home/atHomeSS18/God-Watcher/workspace/Finalproject/build/perception && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/head_tracking.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
perception/CMakeFiles/head_tracking.dir/build: /home/atHomeSS18/God-Watcher/workspace/Finalproject/devel/lib/perception/head_tracking

.PHONY : perception/CMakeFiles/head_tracking.dir/build

perception/CMakeFiles/head_tracking.dir/requires: perception/CMakeFiles/head_tracking.dir/src/head_tracking.cpp.o.requires

.PHONY : perception/CMakeFiles/head_tracking.dir/requires

perception/CMakeFiles/head_tracking.dir/clean:
	cd /home/atHomeSS18/God-Watcher/workspace/Finalproject/build/perception && $(CMAKE_COMMAND) -P CMakeFiles/head_tracking.dir/cmake_clean.cmake
.PHONY : perception/CMakeFiles/head_tracking.dir/clean

perception/CMakeFiles/head_tracking.dir/depend:
	cd /home/atHomeSS18/God-Watcher/workspace/Finalproject/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/atHomeSS18/God-Watcher/workspace/Finalproject/src /home/atHomeSS18/God-Watcher/workspace/Finalproject/src/perception /home/atHomeSS18/God-Watcher/workspace/Finalproject/build /home/atHomeSS18/God-Watcher/workspace/Finalproject/build/perception /home/atHomeSS18/God-Watcher/workspace/Finalproject/build/perception/CMakeFiles/head_tracking.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : perception/CMakeFiles/head_tracking.dir/depend
