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
include csm/sm/CMakeFiles/ld_smooth.dir/depend.make

# Include the progress variables for this target.
include csm/sm/CMakeFiles/ld_smooth.dir/progress.make

# Include the compile flags for this target's objects.
include csm/sm/CMakeFiles/ld_smooth.dir/flags.make

csm/sm/CMakeFiles/ld_smooth.dir/apps/ld_smooth.o: csm/sm/CMakeFiles/ld_smooth.dir/flags.make
csm/sm/CMakeFiles/ld_smooth.dir/apps/ld_smooth.o: /home/alecone/catkin_graph/src/csm/sm/apps/ld_smooth.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/alecone/catkin_graph/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object csm/sm/CMakeFiles/ld_smooth.dir/apps/ld_smooth.o"
	cd /home/alecone/catkin_graph/build/csm/sm && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/ld_smooth.dir/apps/ld_smooth.o   -c /home/alecone/catkin_graph/src/csm/sm/apps/ld_smooth.c

csm/sm/CMakeFiles/ld_smooth.dir/apps/ld_smooth.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/ld_smooth.dir/apps/ld_smooth.i"
	cd /home/alecone/catkin_graph/build/csm/sm && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/alecone/catkin_graph/src/csm/sm/apps/ld_smooth.c > CMakeFiles/ld_smooth.dir/apps/ld_smooth.i

csm/sm/CMakeFiles/ld_smooth.dir/apps/ld_smooth.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/ld_smooth.dir/apps/ld_smooth.s"
	cd /home/alecone/catkin_graph/build/csm/sm && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/alecone/catkin_graph/src/csm/sm/apps/ld_smooth.c -o CMakeFiles/ld_smooth.dir/apps/ld_smooth.s

csm/sm/CMakeFiles/ld_smooth.dir/apps/ld_smooth.o.requires:

.PHONY : csm/sm/CMakeFiles/ld_smooth.dir/apps/ld_smooth.o.requires

csm/sm/CMakeFiles/ld_smooth.dir/apps/ld_smooth.o.provides: csm/sm/CMakeFiles/ld_smooth.dir/apps/ld_smooth.o.requires
	$(MAKE) -f csm/sm/CMakeFiles/ld_smooth.dir/build.make csm/sm/CMakeFiles/ld_smooth.dir/apps/ld_smooth.o.provides.build
.PHONY : csm/sm/CMakeFiles/ld_smooth.dir/apps/ld_smooth.o.provides

csm/sm/CMakeFiles/ld_smooth.dir/apps/ld_smooth.o.provides.build: csm/sm/CMakeFiles/ld_smooth.dir/apps/ld_smooth.o


# Object files for target ld_smooth
ld_smooth_OBJECTS = \
"CMakeFiles/ld_smooth.dir/apps/ld_smooth.o"

# External object files for target ld_smooth
ld_smooth_EXTERNAL_OBJECTS =

csm/sm/ld_smooth: csm/sm/CMakeFiles/ld_smooth.dir/apps/ld_smooth.o
csm/sm/ld_smooth: csm/sm/CMakeFiles/ld_smooth.dir/build.make
csm/sm/ld_smooth: /home/alecone/catkin_graph/devel/lib/libcsm-static.a
csm/sm/ld_smooth: csm/sm/CMakeFiles/ld_smooth.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/alecone/catkin_graph/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking C executable ld_smooth"
	cd /home/alecone/catkin_graph/build/csm/sm && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/ld_smooth.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
csm/sm/CMakeFiles/ld_smooth.dir/build: csm/sm/ld_smooth

.PHONY : csm/sm/CMakeFiles/ld_smooth.dir/build

csm/sm/CMakeFiles/ld_smooth.dir/requires: csm/sm/CMakeFiles/ld_smooth.dir/apps/ld_smooth.o.requires

.PHONY : csm/sm/CMakeFiles/ld_smooth.dir/requires

csm/sm/CMakeFiles/ld_smooth.dir/clean:
	cd /home/alecone/catkin_graph/build/csm/sm && $(CMAKE_COMMAND) -P CMakeFiles/ld_smooth.dir/cmake_clean.cmake
.PHONY : csm/sm/CMakeFiles/ld_smooth.dir/clean

csm/sm/CMakeFiles/ld_smooth.dir/depend:
	cd /home/alecone/catkin_graph/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/alecone/catkin_graph/src /home/alecone/catkin_graph/src/csm/sm /home/alecone/catkin_graph/build /home/alecone/catkin_graph/build/csm/sm /home/alecone/catkin_graph/build/csm/sm/CMakeFiles/ld_smooth.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : csm/sm/CMakeFiles/ld_smooth.dir/depend
