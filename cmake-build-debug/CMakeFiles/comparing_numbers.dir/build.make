# CMAKE generated file: DO NOT EDIT!
# Generated by "MinGW Makefiles" Generator, CMake Version 3.19

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

SHELL = cmd.exe

# The CMake executable.
CMAKE_COMMAND = "C:\Program Files\JetBrains\CLion 2021.1.1\bin\cmake\win\bin\cmake.exe"

# The command to remove a file.
RM = "C:\Program Files\JetBrains\CLion 2021.1.1\bin\cmake\win\bin\cmake.exe" -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = "D:\c++\Home Task 11\comparing_numbers"

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = "D:\c++\Home Task 11\comparing_numbers\cmake-build-debug"

# Include any dependencies generated for this target.
include CMakeFiles/comparing_numbers.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/comparing_numbers.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/comparing_numbers.dir/flags.make

CMakeFiles/comparing_numbers.dir/main.cpp.obj: CMakeFiles/comparing_numbers.dir/flags.make
CMakeFiles/comparing_numbers.dir/main.cpp.obj: ../main.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir="D:\c++\Home Task 11\comparing_numbers\cmake-build-debug\CMakeFiles" --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/comparing_numbers.dir/main.cpp.obj"
	C:\PROGRA~1\MINGW-~1\X86_64~2.0-P\mingw64\bin\G__~1.EXE $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles\comparing_numbers.dir\main.cpp.obj -c "D:\c++\Home Task 11\comparing_numbers\main.cpp"

CMakeFiles/comparing_numbers.dir/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/comparing_numbers.dir/main.cpp.i"
	C:\PROGRA~1\MINGW-~1\X86_64~2.0-P\mingw64\bin\G__~1.EXE $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E "D:\c++\Home Task 11\comparing_numbers\main.cpp" > CMakeFiles\comparing_numbers.dir\main.cpp.i

CMakeFiles/comparing_numbers.dir/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/comparing_numbers.dir/main.cpp.s"
	C:\PROGRA~1\MINGW-~1\X86_64~2.0-P\mingw64\bin\G__~1.EXE $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S "D:\c++\Home Task 11\comparing_numbers\main.cpp" -o CMakeFiles\comparing_numbers.dir\main.cpp.s

# Object files for target comparing_numbers
comparing_numbers_OBJECTS = \
"CMakeFiles/comparing_numbers.dir/main.cpp.obj"

# External object files for target comparing_numbers
comparing_numbers_EXTERNAL_OBJECTS =

comparing_numbers.exe: CMakeFiles/comparing_numbers.dir/main.cpp.obj
comparing_numbers.exe: CMakeFiles/comparing_numbers.dir/build.make
comparing_numbers.exe: CMakeFiles/comparing_numbers.dir/linklibs.rsp
comparing_numbers.exe: CMakeFiles/comparing_numbers.dir/objects1.rsp
comparing_numbers.exe: CMakeFiles/comparing_numbers.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir="D:\c++\Home Task 11\comparing_numbers\cmake-build-debug\CMakeFiles" --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable comparing_numbers.exe"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles\comparing_numbers.dir\link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/comparing_numbers.dir/build: comparing_numbers.exe

.PHONY : CMakeFiles/comparing_numbers.dir/build

CMakeFiles/comparing_numbers.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles\comparing_numbers.dir\cmake_clean.cmake
.PHONY : CMakeFiles/comparing_numbers.dir/clean

CMakeFiles/comparing_numbers.dir/depend:
	$(CMAKE_COMMAND) -E cmake_depends "MinGW Makefiles" "D:\c++\Home Task 11\comparing_numbers" "D:\c++\Home Task 11\comparing_numbers" "D:\c++\Home Task 11\comparing_numbers\cmake-build-debug" "D:\c++\Home Task 11\comparing_numbers\cmake-build-debug" "D:\c++\Home Task 11\comparing_numbers\cmake-build-debug\CMakeFiles\comparing_numbers.dir\DependInfo.cmake" --color=$(COLOR)
.PHONY : CMakeFiles/comparing_numbers.dir/depend

