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

# Include any dependencies generated for this target.
include Libraries/game/CMakeFiles/game.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include Libraries/game/CMakeFiles/game.dir/compiler_depend.make

# Include the progress variables for this target.
include Libraries/game/CMakeFiles/game.dir/progress.make

# Include the compile flags for this target's objects.
include Libraries/game/CMakeFiles/game.dir/flags.make

Libraries/game/CMakeFiles/game.dir/game_autogen/mocs_compilation.cpp.o: Libraries/game/CMakeFiles/game.dir/flags.make
Libraries/game/CMakeFiles/game.dir/game_autogen/mocs_compilation.cpp.o: Libraries/game/game_autogen/mocs_compilation.cpp
Libraries/game/CMakeFiles/game.dir/game_autogen/mocs_compilation.cpp.o: Libraries/game/CMakeFiles/game.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/Users/maksim/untitled2/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object Libraries/game/CMakeFiles/game.dir/game_autogen/mocs_compilation.cpp.o"
	cd /Users/maksim/untitled2/build/Libraries/game && /usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT Libraries/game/CMakeFiles/game.dir/game_autogen/mocs_compilation.cpp.o -MF CMakeFiles/game.dir/game_autogen/mocs_compilation.cpp.o.d -o CMakeFiles/game.dir/game_autogen/mocs_compilation.cpp.o -c /Users/maksim/untitled2/build/Libraries/game/game_autogen/mocs_compilation.cpp

Libraries/game/CMakeFiles/game.dir/game_autogen/mocs_compilation.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/game.dir/game_autogen/mocs_compilation.cpp.i"
	cd /Users/maksim/untitled2/build/Libraries/game && /usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/maksim/untitled2/build/Libraries/game/game_autogen/mocs_compilation.cpp > CMakeFiles/game.dir/game_autogen/mocs_compilation.cpp.i

Libraries/game/CMakeFiles/game.dir/game_autogen/mocs_compilation.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/game.dir/game_autogen/mocs_compilation.cpp.s"
	cd /Users/maksim/untitled2/build/Libraries/game && /usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/maksim/untitled2/build/Libraries/game/game_autogen/mocs_compilation.cpp -o CMakeFiles/game.dir/game_autogen/mocs_compilation.cpp.s

Libraries/game/CMakeFiles/game.dir/game.cpp.o: Libraries/game/CMakeFiles/game.dir/flags.make
Libraries/game/CMakeFiles/game.dir/game.cpp.o: /Users/maksim/untitled2/Libraries/game/game.cpp
Libraries/game/CMakeFiles/game.dir/game.cpp.o: Libraries/game/CMakeFiles/game.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/Users/maksim/untitled2/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object Libraries/game/CMakeFiles/game.dir/game.cpp.o"
	cd /Users/maksim/untitled2/build/Libraries/game && /usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT Libraries/game/CMakeFiles/game.dir/game.cpp.o -MF CMakeFiles/game.dir/game.cpp.o.d -o CMakeFiles/game.dir/game.cpp.o -c /Users/maksim/untitled2/Libraries/game/game.cpp

Libraries/game/CMakeFiles/game.dir/game.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/game.dir/game.cpp.i"
	cd /Users/maksim/untitled2/build/Libraries/game && /usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/maksim/untitled2/Libraries/game/game.cpp > CMakeFiles/game.dir/game.cpp.i

Libraries/game/CMakeFiles/game.dir/game.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/game.dir/game.cpp.s"
	cd /Users/maksim/untitled2/build/Libraries/game && /usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/maksim/untitled2/Libraries/game/game.cpp -o CMakeFiles/game.dir/game.cpp.s

# Object files for target game
game_OBJECTS = \
"CMakeFiles/game.dir/game_autogen/mocs_compilation.cpp.o" \
"CMakeFiles/game.dir/game.cpp.o"

# External object files for target game
game_EXTERNAL_OBJECTS =

Libraries/game/libgame.a: Libraries/game/CMakeFiles/game.dir/game_autogen/mocs_compilation.cpp.o
Libraries/game/libgame.a: Libraries/game/CMakeFiles/game.dir/game.cpp.o
Libraries/game/libgame.a: Libraries/game/CMakeFiles/game.dir/build.make
Libraries/game/libgame.a: Libraries/game/CMakeFiles/game.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --bold --progress-dir=/Users/maksim/untitled2/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Linking CXX static library libgame.a"
	cd /Users/maksim/untitled2/build/Libraries/game && $(CMAKE_COMMAND) -P CMakeFiles/game.dir/cmake_clean_target.cmake
	cd /Users/maksim/untitled2/build/Libraries/game && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/game.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
Libraries/game/CMakeFiles/game.dir/build: Libraries/game/libgame.a
.PHONY : Libraries/game/CMakeFiles/game.dir/build

Libraries/game/CMakeFiles/game.dir/clean:
	cd /Users/maksim/untitled2/build/Libraries/game && $(CMAKE_COMMAND) -P CMakeFiles/game.dir/cmake_clean.cmake
.PHONY : Libraries/game/CMakeFiles/game.dir/clean

Libraries/game/CMakeFiles/game.dir/depend:
	cd /Users/maksim/untitled2/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/maksim/untitled2 /Users/maksim/untitled2/Libraries/game /Users/maksim/untitled2/build /Users/maksim/untitled2/build/Libraries/game /Users/maksim/untitled2/build/Libraries/game/CMakeFiles/game.dir/DependInfo.cmake "--color=$(COLOR)"
.PHONY : Libraries/game/CMakeFiles/game.dir/depend

