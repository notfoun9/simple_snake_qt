# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.27

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:

#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:

# Disable VCS-based implicit rules.
% : %,v

# Disable VCS-based implicit rules.
% : RCS/%

# Disable VCS-based implicit rules.
% : RCS/%,v

# Disable VCS-based implicit rules.
% : SCCS/s.%

# Disable VCS-based implicit rules.
% : s.%

.SUFFIXES: .hpux_make_needs_suffix_list

# Command-line flag to silence nested $(MAKE).
$(VERBOSE)MAKESILENT = -s

#Suppress display of executed commands.
$(VERBOSE).SILENT:

# A target that is always out of date.
cmake_force:
.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /opt/homebrew/Cellar/cmake/3.27.7/bin/cmake

# The command to remove a file.
RM = /opt/homebrew/Cellar/cmake/3.27.7/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /Users/maksim/untitled2

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /Users/maksim/untitled2/build

# Utility rule file for headers.

# Include any custom commands dependencies for this target.
include Libraries/headers/CMakeFiles/headers.dir/compiler_depend.make

# Include the progress variables for this target.
include Libraries/headers/CMakeFiles/headers.dir/progress.make

headers: Libraries/headers/CMakeFiles/headers.dir/build.make
.PHONY : headers

# Rule to build all files generated by this target.
Libraries/headers/CMakeFiles/headers.dir/build: headers
.PHONY : Libraries/headers/CMakeFiles/headers.dir/build

Libraries/headers/CMakeFiles/headers.dir/clean:
	cd /Users/maksim/untitled2/build/Libraries/headers && $(CMAKE_COMMAND) -P CMakeFiles/headers.dir/cmake_clean.cmake
.PHONY : Libraries/headers/CMakeFiles/headers.dir/clean

Libraries/headers/CMakeFiles/headers.dir/depend:
	cd /Users/maksim/untitled2/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/maksim/untitled2 /Users/maksim/untitled2/Libraries/headers /Users/maksim/untitled2/build /Users/maksim/untitled2/build/Libraries/headers /Users/maksim/untitled2/build/Libraries/headers/CMakeFiles/headers.dir/DependInfo.cmake "--color=$(COLOR)"
.PHONY : Libraries/headers/CMakeFiles/headers.dir/depend

