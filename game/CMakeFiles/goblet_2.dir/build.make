# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.2

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
CMAKE_SOURCE_DIR = /home/johan/Git/Github/goblet_2_reawakening/game

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/johan/Git/Github/goblet_2_reawakening/game

# Include any dependencies generated for this target.
include CMakeFiles/goblet_2.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/goblet_2.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/goblet_2.dir/flags.make

CMakeFiles/goblet_2.dir/src/main.cpp.o: CMakeFiles/goblet_2.dir/flags.make
CMakeFiles/goblet_2.dir/src/main.cpp.o: src/main.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /home/johan/Git/Github/goblet_2_reawakening/game/CMakeFiles $(CMAKE_PROGRESS_1)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object CMakeFiles/goblet_2.dir/src/main.cpp.o"
	/usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/goblet_2.dir/src/main.cpp.o -c /home/johan/Git/Github/goblet_2_reawakening/game/src/main.cpp

CMakeFiles/goblet_2.dir/src/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/goblet_2.dir/src/main.cpp.i"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /home/johan/Git/Github/goblet_2_reawakening/game/src/main.cpp > CMakeFiles/goblet_2.dir/src/main.cpp.i

CMakeFiles/goblet_2.dir/src/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/goblet_2.dir/src/main.cpp.s"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /home/johan/Git/Github/goblet_2_reawakening/game/src/main.cpp -o CMakeFiles/goblet_2.dir/src/main.cpp.s

CMakeFiles/goblet_2.dir/src/main.cpp.o.requires:
.PHONY : CMakeFiles/goblet_2.dir/src/main.cpp.o.requires

CMakeFiles/goblet_2.dir/src/main.cpp.o.provides: CMakeFiles/goblet_2.dir/src/main.cpp.o.requires
	$(MAKE) -f CMakeFiles/goblet_2.dir/build.make CMakeFiles/goblet_2.dir/src/main.cpp.o.provides.build
.PHONY : CMakeFiles/goblet_2.dir/src/main.cpp.o.provides

CMakeFiles/goblet_2.dir/src/main.cpp.o.provides.build: CMakeFiles/goblet_2.dir/src/main.cpp.o

CMakeFiles/goblet_2.dir/src/common/shader.cpp.o: CMakeFiles/goblet_2.dir/flags.make
CMakeFiles/goblet_2.dir/src/common/shader.cpp.o: src/common/shader.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /home/johan/Git/Github/goblet_2_reawakening/game/CMakeFiles $(CMAKE_PROGRESS_2)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object CMakeFiles/goblet_2.dir/src/common/shader.cpp.o"
	/usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/goblet_2.dir/src/common/shader.cpp.o -c /home/johan/Git/Github/goblet_2_reawakening/game/src/common/shader.cpp

CMakeFiles/goblet_2.dir/src/common/shader.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/goblet_2.dir/src/common/shader.cpp.i"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /home/johan/Git/Github/goblet_2_reawakening/game/src/common/shader.cpp > CMakeFiles/goblet_2.dir/src/common/shader.cpp.i

CMakeFiles/goblet_2.dir/src/common/shader.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/goblet_2.dir/src/common/shader.cpp.s"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /home/johan/Git/Github/goblet_2_reawakening/game/src/common/shader.cpp -o CMakeFiles/goblet_2.dir/src/common/shader.cpp.s

CMakeFiles/goblet_2.dir/src/common/shader.cpp.o.requires:
.PHONY : CMakeFiles/goblet_2.dir/src/common/shader.cpp.o.requires

CMakeFiles/goblet_2.dir/src/common/shader.cpp.o.provides: CMakeFiles/goblet_2.dir/src/common/shader.cpp.o.requires
	$(MAKE) -f CMakeFiles/goblet_2.dir/build.make CMakeFiles/goblet_2.dir/src/common/shader.cpp.o.provides.build
.PHONY : CMakeFiles/goblet_2.dir/src/common/shader.cpp.o.provides

CMakeFiles/goblet_2.dir/src/common/shader.cpp.o.provides.build: CMakeFiles/goblet_2.dir/src/common/shader.cpp.o

CMakeFiles/goblet_2.dir/src/common/texture.cpp.o: CMakeFiles/goblet_2.dir/flags.make
CMakeFiles/goblet_2.dir/src/common/texture.cpp.o: src/common/texture.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /home/johan/Git/Github/goblet_2_reawakening/game/CMakeFiles $(CMAKE_PROGRESS_3)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object CMakeFiles/goblet_2.dir/src/common/texture.cpp.o"
	/usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/goblet_2.dir/src/common/texture.cpp.o -c /home/johan/Git/Github/goblet_2_reawakening/game/src/common/texture.cpp

CMakeFiles/goblet_2.dir/src/common/texture.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/goblet_2.dir/src/common/texture.cpp.i"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /home/johan/Git/Github/goblet_2_reawakening/game/src/common/texture.cpp > CMakeFiles/goblet_2.dir/src/common/texture.cpp.i

CMakeFiles/goblet_2.dir/src/common/texture.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/goblet_2.dir/src/common/texture.cpp.s"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /home/johan/Git/Github/goblet_2_reawakening/game/src/common/texture.cpp -o CMakeFiles/goblet_2.dir/src/common/texture.cpp.s

CMakeFiles/goblet_2.dir/src/common/texture.cpp.o.requires:
.PHONY : CMakeFiles/goblet_2.dir/src/common/texture.cpp.o.requires

CMakeFiles/goblet_2.dir/src/common/texture.cpp.o.provides: CMakeFiles/goblet_2.dir/src/common/texture.cpp.o.requires
	$(MAKE) -f CMakeFiles/goblet_2.dir/build.make CMakeFiles/goblet_2.dir/src/common/texture.cpp.o.provides.build
.PHONY : CMakeFiles/goblet_2.dir/src/common/texture.cpp.o.provides

CMakeFiles/goblet_2.dir/src/common/texture.cpp.o.provides.build: CMakeFiles/goblet_2.dir/src/common/texture.cpp.o

# Object files for target goblet_2
goblet_2_OBJECTS = \
"CMakeFiles/goblet_2.dir/src/main.cpp.o" \
"CMakeFiles/goblet_2.dir/src/common/shader.cpp.o" \
"CMakeFiles/goblet_2.dir/src/common/texture.cpp.o"

# External object files for target goblet_2
goblet_2_EXTERNAL_OBJECTS =

goblet_2: CMakeFiles/goblet_2.dir/src/main.cpp.o
goblet_2: CMakeFiles/goblet_2.dir/src/common/shader.cpp.o
goblet_2: CMakeFiles/goblet_2.dir/src/common/texture.cpp.o
goblet_2: CMakeFiles/goblet_2.dir/build.make
goblet_2: /usr/lib/x86_64-linux-gnu/libGL.so
goblet_2: /usr/lib/x86_64-linux-gnu/libGLU.so
goblet_2: /usr/lib/x86_64-linux-gnu/libGL.so
goblet_2: /usr/lib/x86_64-linux-gnu/libGLEW.so
goblet_2: /usr/lib/x86_64-linux-gnu/libGLU.so
goblet_2: /usr/lib/x86_64-linux-gnu/libGLEW.so
goblet_2: CMakeFiles/goblet_2.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --red --bold "Linking CXX executable goblet_2"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/goblet_2.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/goblet_2.dir/build: goblet_2
.PHONY : CMakeFiles/goblet_2.dir/build

CMakeFiles/goblet_2.dir/requires: CMakeFiles/goblet_2.dir/src/main.cpp.o.requires
CMakeFiles/goblet_2.dir/requires: CMakeFiles/goblet_2.dir/src/common/shader.cpp.o.requires
CMakeFiles/goblet_2.dir/requires: CMakeFiles/goblet_2.dir/src/common/texture.cpp.o.requires
.PHONY : CMakeFiles/goblet_2.dir/requires

CMakeFiles/goblet_2.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/goblet_2.dir/cmake_clean.cmake
.PHONY : CMakeFiles/goblet_2.dir/clean

CMakeFiles/goblet_2.dir/depend:
	cd /home/johan/Git/Github/goblet_2_reawakening/game && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/johan/Git/Github/goblet_2_reawakening/game /home/johan/Git/Github/goblet_2_reawakening/game /home/johan/Git/Github/goblet_2_reawakening/game /home/johan/Git/Github/goblet_2_reawakening/game /home/johan/Git/Github/goblet_2_reawakening/game/CMakeFiles/goblet_2.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/goblet_2.dir/depend

