# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.10

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
CMAKE_SOURCE_DIR = /home/alecone/catkin_graph/src

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/alecone/catkin_graph/build

# Include any dependencies generated for this target.
include csm/sm/CMakeFiles/sm1.dir/depend.make

# Include the progress variables for this target.
include csm/sm/CMakeFiles/sm1.dir/progress.make

# Include the compile flags for this target's objects.
include csm/sm/CMakeFiles/sm1.dir/flags.make

csm/sm/CMakeFiles/sm1.dir/apps/sm1.o: csm/sm/CMakeFiles/sm1.dir/flags.make
csm/sm/CMakeFiles/sm1.dir/apps/sm1.o: /home/alecone/catkin_graph/src/csm/sm/apps/sm1.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/alecone/catkin_graph/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object csm/sm/CMakeFiles/sm1.dir/apps/sm1.o"
	cd /home/alecone/catkin_graph/build/csm/sm && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/sm1.dir/apps/sm1.o   -c /home/alecone/catkin_graph/src/csm/sm/apps/sm1.c

csm/sm/CMakeFiles/sm1.dir/apps/sm1.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/sm1.dir/apps/sm1.i"
	cd /home/alecone/catkin_graph/build/csm/sm && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/alecone/catkin_graph/src/csm/sm/apps/sm1.c > CMakeFiles/sm1.dir/apps/sm1.i

csm/sm/CMakeFiles/sm1.dir/apps/sm1.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/sm1.dir/apps/sm1.s"
	cd /home/alecone/catkin_graph/build/csm/sm && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/alecone/catkin_graph/src/csm/sm/apps/sm1.c -o CMakeFiles/sm1.dir/apps/sm1.s

csm/sm/CMakeFiles/sm1.dir/apps/sm1.o.requires:

.PHONY : csm/sm/CMakeFiles/sm1.dir/apps/sm1.o.requires

csm/sm/CMakeFiles/sm1.dir/apps/sm1.o.provides: csm/sm/CMakeFiles/sm1.dir/apps/sm1.o.requires
	$(MAKE) -f csm/sm/CMakeFiles/sm1.dir/build.make csm/sm/CMakeFiles/sm1.dir/apps/sm1.o.provides.build
.PHONY : csm/sm/CMakeFiles/sm1.dir/apps/sm1.o.provides

csm/sm/CMakeFiles/sm1.dir/apps/sm1.o.provides.build: csm/sm/CMakeFiles/sm1.dir/apps/sm1.o


# Object files for target sm1
sm1_OBJECTS = \
"CMakeFiles/sm1.dir/apps/sm1.o"

# External object files for target sm1
sm1_EXTERNAL_OBJECTS =

csm/sm/sm1: csm/sm/CMakeFiles/sm1.dir/apps/sm1.o
csm/sm/sm1: csm/sm/CMakeFiles/sm1.dir/build.make
csm/sm/sm1: /home/alecone/catkin_graph/devel/lib/libcsm-static.a
csm/sm/sm1: csm/sm/CMakeFiles/sm1.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/alecone/catkin_graph/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking C executable sm1"
	cd /home/alecone/catkin_graph/build/csm/sm && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/sm1.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
csm/sm/CMakeFiles/sm1.dir/build: csm/sm/sm1

.PHONY : csm/sm/CMakeFiles/sm1.dir/build

csm/sm/CMakeFiles/sm1.dir/requires: csm/sm/CMakeFiles/sm1.dir/apps/sm1.o.requires

.PHONY : csm/sm/CMakeFiles/sm1.dir/requires

csm/sm/CMakeFiles/sm1.dir/clean:
	cd /home/alecone/catkin_graph/build/csm/sm && $(CMAKE_COMMAND) -P CMakeFiles/sm1.dir/cmake_clean.cmake
.PHONY : csm/sm/CMakeFiles/sm1.dir/clean

csm/sm/CMakeFiles/sm1.dir/depend:
	cd /home/alecone/catkin_graph/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/alecone/catkin_graph/src /home/alecone/catkin_graph/src/csm/sm /home/alecone/catkin_graph/build /home/alecone/catkin_graph/build/csm/sm /home/alecone/catkin_graph/build/csm/sm/CMakeFiles/sm1.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : csm/sm/CMakeFiles/sm1.dir/depend
