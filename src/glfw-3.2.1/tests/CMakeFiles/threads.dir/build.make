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
CMAKE_SOURCE_DIR = /home/johan/Git/Github/goblet_2_reawakening/src/glfw-3.2.1

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/johan/Git/Github/goblet_2_reawakening/src/glfw-3.2.1

# Include any dependencies generated for this target.
include tests/CMakeFiles/threads.dir/depend.make

# Include the progress variables for this target.
include tests/CMakeFiles/threads.dir/progress.make

# Include the compile flags for this target's objects.
include tests/CMakeFiles/threads.dir/flags.make

tests/CMakeFiles/threads.dir/threads.c.o: tests/CMakeFiles/threads.dir/flags.make
tests/CMakeFiles/threads.dir/threads.c.o: tests/threads.c
	$(CMAKE_COMMAND) -E cmake_progress_report /home/johan/Git/Github/goblet_2_reawakening/src/glfw-3.2.1/CMakeFiles $(CMAKE_PROGRESS_1)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building C object tests/CMakeFiles/threads.dir/threads.c.o"
	cd /home/johan/Git/Github/goblet_2_reawakening/src/glfw-3.2.1/tests && /usr/bin/cc  $(C_DEFINES) $(C_FLAGS) -o CMakeFiles/threads.dir/threads.c.o   -c /home/johan/Git/Github/goblet_2_reawakening/src/glfw-3.2.1/tests/threads.c

tests/CMakeFiles/threads.dir/threads.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/threads.dir/threads.c.i"
	cd /home/johan/Git/Github/goblet_2_reawakening/src/glfw-3.2.1/tests && /usr/bin/cc  $(C_DEFINES) $(C_FLAGS) -E /home/johan/Git/Github/goblet_2_reawakening/src/glfw-3.2.1/tests/threads.c > CMakeFiles/threads.dir/threads.c.i

tests/CMakeFiles/threads.dir/threads.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/threads.dir/threads.c.s"
	cd /home/johan/Git/Github/goblet_2_reawakening/src/glfw-3.2.1/tests && /usr/bin/cc  $(C_DEFINES) $(C_FLAGS) -S /home/johan/Git/Github/goblet_2_reawakening/src/glfw-3.2.1/tests/threads.c -o CMakeFiles/threads.dir/threads.c.s

tests/CMakeFiles/threads.dir/threads.c.o.requires:
.PHONY : tests/CMakeFiles/threads.dir/threads.c.o.requires

tests/CMakeFiles/threads.dir/threads.c.o.provides: tests/CMakeFiles/threads.dir/threads.c.o.requires
	$(MAKE) -f tests/CMakeFiles/threads.dir/build.make tests/CMakeFiles/threads.dir/threads.c.o.provides.build
.PHONY : tests/CMakeFiles/threads.dir/threads.c.o.provides

tests/CMakeFiles/threads.dir/threads.c.o.provides.build: tests/CMakeFiles/threads.dir/threads.c.o

tests/CMakeFiles/threads.dir/__/deps/tinycthread.c.o: tests/CMakeFiles/threads.dir/flags.make
tests/CMakeFiles/threads.dir/__/deps/tinycthread.c.o: deps/tinycthread.c
	$(CMAKE_COMMAND) -E cmake_progress_report /home/johan/Git/Github/goblet_2_reawakening/src/glfw-3.2.1/CMakeFiles $(CMAKE_PROGRESS_2)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building C object tests/CMakeFiles/threads.dir/__/deps/tinycthread.c.o"
	cd /home/johan/Git/Github/goblet_2_reawakening/src/glfw-3.2.1/tests && /usr/bin/cc  $(C_DEFINES) $(C_FLAGS) -o CMakeFiles/threads.dir/__/deps/tinycthread.c.o   -c /home/johan/Git/Github/goblet_2_reawakening/src/glfw-3.2.1/deps/tinycthread.c

tests/CMakeFiles/threads.dir/__/deps/tinycthread.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/threads.dir/__/deps/tinycthread.c.i"
	cd /home/johan/Git/Github/goblet_2_reawakening/src/glfw-3.2.1/tests && /usr/bin/cc  $(C_DEFINES) $(C_FLAGS) -E /home/johan/Git/Github/goblet_2_reawakening/src/glfw-3.2.1/deps/tinycthread.c > CMakeFiles/threads.dir/__/deps/tinycthread.c.i

tests/CMakeFiles/threads.dir/__/deps/tinycthread.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/threads.dir/__/deps/tinycthread.c.s"
	cd /home/johan/Git/Github/goblet_2_reawakening/src/glfw-3.2.1/tests && /usr/bin/cc  $(C_DEFINES) $(C_FLAGS) -S /home/johan/Git/Github/goblet_2_reawakening/src/glfw-3.2.1/deps/tinycthread.c -o CMakeFiles/threads.dir/__/deps/tinycthread.c.s

tests/CMakeFiles/threads.dir/__/deps/tinycthread.c.o.requires:
.PHONY : tests/CMakeFiles/threads.dir/__/deps/tinycthread.c.o.requires

tests/CMakeFiles/threads.dir/__/deps/tinycthread.c.o.provides: tests/CMakeFiles/threads.dir/__/deps/tinycthread.c.o.requires
	$(MAKE) -f tests/CMakeFiles/threads.dir/build.make tests/CMakeFiles/threads.dir/__/deps/tinycthread.c.o.provides.build
.PHONY : tests/CMakeFiles/threads.dir/__/deps/tinycthread.c.o.provides

tests/CMakeFiles/threads.dir/__/deps/tinycthread.c.o.provides.build: tests/CMakeFiles/threads.dir/__/deps/tinycthread.c.o

tests/CMakeFiles/threads.dir/__/deps/glad.c.o: tests/CMakeFiles/threads.dir/flags.make
tests/CMakeFiles/threads.dir/__/deps/glad.c.o: deps/glad.c
	$(CMAKE_COMMAND) -E cmake_progress_report /home/johan/Git/Github/goblet_2_reawakening/src/glfw-3.2.1/CMakeFiles $(CMAKE_PROGRESS_3)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building C object tests/CMakeFiles/threads.dir/__/deps/glad.c.o"
	cd /home/johan/Git/Github/goblet_2_reawakening/src/glfw-3.2.1/tests && /usr/bin/cc  $(C_DEFINES) $(C_FLAGS) -o CMakeFiles/threads.dir/__/deps/glad.c.o   -c /home/johan/Git/Github/goblet_2_reawakening/src/glfw-3.2.1/deps/glad.c

tests/CMakeFiles/threads.dir/__/deps/glad.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/threads.dir/__/deps/glad.c.i"
	cd /home/johan/Git/Github/goblet_2_reawakening/src/glfw-3.2.1/tests && /usr/bin/cc  $(C_DEFINES) $(C_FLAGS) -E /home/johan/Git/Github/goblet_2_reawakening/src/glfw-3.2.1/deps/glad.c > CMakeFiles/threads.dir/__/deps/glad.c.i

tests/CMakeFiles/threads.dir/__/deps/glad.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/threads.dir/__/deps/glad.c.s"
	cd /home/johan/Git/Github/goblet_2_reawakening/src/glfw-3.2.1/tests && /usr/bin/cc  $(C_DEFINES) $(C_FLAGS) -S /home/johan/Git/Github/goblet_2_reawakening/src/glfw-3.2.1/deps/glad.c -o CMakeFiles/threads.dir/__/deps/glad.c.s

tests/CMakeFiles/threads.dir/__/deps/glad.c.o.requires:
.PHONY : tests/CMakeFiles/threads.dir/__/deps/glad.c.o.requires

tests/CMakeFiles/threads.dir/__/deps/glad.c.o.provides: tests/CMakeFiles/threads.dir/__/deps/glad.c.o.requires
	$(MAKE) -f tests/CMakeFiles/threads.dir/build.make tests/CMakeFiles/threads.dir/__/deps/glad.c.o.provides.build
.PHONY : tests/CMakeFiles/threads.dir/__/deps/glad.c.o.provides

tests/CMakeFiles/threads.dir/__/deps/glad.c.o.provides.build: tests/CMakeFiles/threads.dir/__/deps/glad.c.o

# Object files for target threads
threads_OBJECTS = \
"CMakeFiles/threads.dir/threads.c.o" \
"CMakeFiles/threads.dir/__/deps/tinycthread.c.o" \
"CMakeFiles/threads.dir/__/deps/glad.c.o"

# External object files for target threads
threads_EXTERNAL_OBJECTS =

tests/threads: tests/CMakeFiles/threads.dir/threads.c.o
tests/threads: tests/CMakeFiles/threads.dir/__/deps/tinycthread.c.o
tests/threads: tests/CMakeFiles/threads.dir/__/deps/glad.c.o
tests/threads: tests/CMakeFiles/threads.dir/build.make
tests/threads: src/libglfw3.a
tests/threads: /usr/lib/x86_64-linux-gnu/librt.so
tests/threads: /usr/lib/x86_64-linux-gnu/libm.so
tests/threads: /usr/lib/x86_64-linux-gnu/libX11.so
tests/threads: /usr/lib/x86_64-linux-gnu/libXrandr.so
tests/threads: /usr/lib/x86_64-linux-gnu/libXinerama.so
tests/threads: /usr/lib/x86_64-linux-gnu/libXxf86vm.so
tests/threads: /usr/lib/x86_64-linux-gnu/libXcursor.so
tests/threads: tests/CMakeFiles/threads.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --red --bold "Linking C executable threads"
	cd /home/johan/Git/Github/goblet_2_reawakening/src/glfw-3.2.1/tests && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/threads.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
tests/CMakeFiles/threads.dir/build: tests/threads
.PHONY : tests/CMakeFiles/threads.dir/build

tests/CMakeFiles/threads.dir/requires: tests/CMakeFiles/threads.dir/threads.c.o.requires
tests/CMakeFiles/threads.dir/requires: tests/CMakeFiles/threads.dir/__/deps/tinycthread.c.o.requires
tests/CMakeFiles/threads.dir/requires: tests/CMakeFiles/threads.dir/__/deps/glad.c.o.requires
.PHONY : tests/CMakeFiles/threads.dir/requires

tests/CMakeFiles/threads.dir/clean:
	cd /home/johan/Git/Github/goblet_2_reawakening/src/glfw-3.2.1/tests && $(CMAKE_COMMAND) -P CMakeFiles/threads.dir/cmake_clean.cmake
.PHONY : tests/CMakeFiles/threads.dir/clean

tests/CMakeFiles/threads.dir/depend:
	cd /home/johan/Git/Github/goblet_2_reawakening/src/glfw-3.2.1 && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/johan/Git/Github/goblet_2_reawakening/src/glfw-3.2.1 /home/johan/Git/Github/goblet_2_reawakening/src/glfw-3.2.1/tests /home/johan/Git/Github/goblet_2_reawakening/src/glfw-3.2.1 /home/johan/Git/Github/goblet_2_reawakening/src/glfw-3.2.1/tests /home/johan/Git/Github/goblet_2_reawakening/src/glfw-3.2.1/tests/CMakeFiles/threads.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : tests/CMakeFiles/threads.dir/depend

