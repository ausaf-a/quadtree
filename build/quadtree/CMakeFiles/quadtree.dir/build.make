# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.16

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
CMAKE_SOURCE_DIR = /home/ausaf/Documents/cpp_tutorials/quadtree

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/ausaf/Documents/cpp_tutorials/quadtree/build

# Include any dependencies generated for this target.
include quadtree/CMakeFiles/quadtree.dir/depend.make

# Include the progress variables for this target.
include quadtree/CMakeFiles/quadtree.dir/progress.make

# Include the compile flags for this target's objects.
include quadtree/CMakeFiles/quadtree.dir/flags.make

quadtree/CMakeFiles/quadtree.dir/src/quadtree/quadtree.cpp.o: quadtree/CMakeFiles/quadtree.dir/flags.make
quadtree/CMakeFiles/quadtree.dir/src/quadtree/quadtree.cpp.o: ../quadtree/src/quadtree/quadtree.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/ausaf/Documents/cpp_tutorials/quadtree/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object quadtree/CMakeFiles/quadtree.dir/src/quadtree/quadtree.cpp.o"
	cd /home/ausaf/Documents/cpp_tutorials/quadtree/build/quadtree && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/quadtree.dir/src/quadtree/quadtree.cpp.o -c /home/ausaf/Documents/cpp_tutorials/quadtree/quadtree/src/quadtree/quadtree.cpp

quadtree/CMakeFiles/quadtree.dir/src/quadtree/quadtree.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/quadtree.dir/src/quadtree/quadtree.cpp.i"
	cd /home/ausaf/Documents/cpp_tutorials/quadtree/build/quadtree && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/ausaf/Documents/cpp_tutorials/quadtree/quadtree/src/quadtree/quadtree.cpp > CMakeFiles/quadtree.dir/src/quadtree/quadtree.cpp.i

quadtree/CMakeFiles/quadtree.dir/src/quadtree/quadtree.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/quadtree.dir/src/quadtree/quadtree.cpp.s"
	cd /home/ausaf/Documents/cpp_tutorials/quadtree/build/quadtree && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/ausaf/Documents/cpp_tutorials/quadtree/quadtree/src/quadtree/quadtree.cpp -o CMakeFiles/quadtree.dir/src/quadtree/quadtree.cpp.s

# Object files for target quadtree
quadtree_OBJECTS = \
"CMakeFiles/quadtree.dir/src/quadtree/quadtree.cpp.o"

# External object files for target quadtree
quadtree_EXTERNAL_OBJECTS =

quadtree/libquadtree.a: quadtree/CMakeFiles/quadtree.dir/src/quadtree/quadtree.cpp.o
quadtree/libquadtree.a: quadtree/CMakeFiles/quadtree.dir/build.make
quadtree/libquadtree.a: quadtree/CMakeFiles/quadtree.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/ausaf/Documents/cpp_tutorials/quadtree/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX static library libquadtree.a"
	cd /home/ausaf/Documents/cpp_tutorials/quadtree/build/quadtree && $(CMAKE_COMMAND) -P CMakeFiles/quadtree.dir/cmake_clean_target.cmake
	cd /home/ausaf/Documents/cpp_tutorials/quadtree/build/quadtree && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/quadtree.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
quadtree/CMakeFiles/quadtree.dir/build: quadtree/libquadtree.a

.PHONY : quadtree/CMakeFiles/quadtree.dir/build

quadtree/CMakeFiles/quadtree.dir/clean:
	cd /home/ausaf/Documents/cpp_tutorials/quadtree/build/quadtree && $(CMAKE_COMMAND) -P CMakeFiles/quadtree.dir/cmake_clean.cmake
.PHONY : quadtree/CMakeFiles/quadtree.dir/clean

quadtree/CMakeFiles/quadtree.dir/depend:
	cd /home/ausaf/Documents/cpp_tutorials/quadtree/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/ausaf/Documents/cpp_tutorials/quadtree /home/ausaf/Documents/cpp_tutorials/quadtree/quadtree /home/ausaf/Documents/cpp_tutorials/quadtree/build /home/ausaf/Documents/cpp_tutorials/quadtree/build/quadtree /home/ausaf/Documents/cpp_tutorials/quadtree/build/quadtree/CMakeFiles/quadtree.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : quadtree/CMakeFiles/quadtree.dir/depend

