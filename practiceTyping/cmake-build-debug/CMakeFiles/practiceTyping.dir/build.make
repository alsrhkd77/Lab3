# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.15

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
CMAKE_COMMAND = /home/mingwang/clion-2019.2.5/bin/cmake/linux/bin/cmake

# The command to remove a file.
RM = /home/mingwang/clion-2019.2.5/bin/cmake/linux/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/mingwang/sysprogramming/practiceTyping

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/mingwang/sysprogramming/practiceTyping/cmake-build-debug

# Include any dependencies generated for this target.
include CMakeFiles/practiceTyping.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/practiceTyping.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/practiceTyping.dir/flags.make

CMakeFiles/practiceTyping.dir/main.c.o: CMakeFiles/practiceTyping.dir/flags.make
CMakeFiles/practiceTyping.dir/main.c.o: ../main.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/mingwang/sysprogramming/practiceTyping/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object CMakeFiles/practiceTyping.dir/main.c.o"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/practiceTyping.dir/main.c.o   -c /home/mingwang/sysprogramming/practiceTyping/main.c

CMakeFiles/practiceTyping.dir/main.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/practiceTyping.dir/main.c.i"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/mingwang/sysprogramming/practiceTyping/main.c > CMakeFiles/practiceTyping.dir/main.c.i

CMakeFiles/practiceTyping.dir/main.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/practiceTyping.dir/main.c.s"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/mingwang/sysprogramming/practiceTyping/main.c -o CMakeFiles/practiceTyping.dir/main.c.s

# Object files for target practiceTyping
practiceTyping_OBJECTS = \
"CMakeFiles/practiceTyping.dir/main.c.o"

# External object files for target practiceTyping
practiceTyping_EXTERNAL_OBJECTS =

practiceTyping: CMakeFiles/practiceTyping.dir/main.c.o
practiceTyping: CMakeFiles/practiceTyping.dir/build.make
practiceTyping: CMakeFiles/practiceTyping.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/mingwang/sysprogramming/practiceTyping/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking C executable practiceTyping"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/practiceTyping.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/practiceTyping.dir/build: practiceTyping

.PHONY : CMakeFiles/practiceTyping.dir/build

CMakeFiles/practiceTyping.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/practiceTyping.dir/cmake_clean.cmake
.PHONY : CMakeFiles/practiceTyping.dir/clean

CMakeFiles/practiceTyping.dir/depend:
	cd /home/mingwang/sysprogramming/practiceTyping/cmake-build-debug && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/mingwang/sysprogramming/practiceTyping /home/mingwang/sysprogramming/practiceTyping /home/mingwang/sysprogramming/practiceTyping/cmake-build-debug /home/mingwang/sysprogramming/practiceTyping/cmake-build-debug /home/mingwang/sysprogramming/practiceTyping/cmake-build-debug/CMakeFiles/practiceTyping.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/practiceTyping.dir/depend

