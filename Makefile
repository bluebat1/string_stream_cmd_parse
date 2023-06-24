# CMAKE generated file: DO NOT EDIT!
# Generated by "MinGW Makefiles" Generator, CMake Version 3.23

# Default target executed when no arguments are given to make.
default_target: all
.PHONY : default_target

# Allow only one "make -f Makefile2" at a time, but pass parallelism.
.NOTPARALLEL:

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
CMAKE_COMMAND = "E:\Program Files\CMake\bin\cmake.exe"

# The command to remove a file.
RM = "E:\Program Files\CMake\bin\cmake.exe" -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = F:\FS\C_C++\string_stream_parse

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = F:\FS\C_C++\string_stream_parse

#=============================================================================
# Targets provided globally by CMake.

# Special rule for the target edit_cache
edit_cache:
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --cyan "Running CMake cache editor..."
	"E:\Program Files\CMake\bin\cmake-gui.exe" -S$(CMAKE_SOURCE_DIR) -B$(CMAKE_BINARY_DIR)
.PHONY : edit_cache

# Special rule for the target edit_cache
edit_cache/fast: edit_cache
.PHONY : edit_cache/fast

# Special rule for the target rebuild_cache
rebuild_cache:
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --cyan "Running CMake to regenerate build system..."
	"E:\Program Files\CMake\bin\cmake.exe" --regenerate-during-build -S$(CMAKE_SOURCE_DIR) -B$(CMAKE_BINARY_DIR)
.PHONY : rebuild_cache

# Special rule for the target rebuild_cache
rebuild_cache/fast: rebuild_cache
.PHONY : rebuild_cache/fast

# The main all target
all: cmake_check_build_system
	$(CMAKE_COMMAND) -E cmake_progress_start F:\FS\C_C++\string_stream_parse\CMakeFiles F:\FS\C_C++\string_stream_parse\\CMakeFiles\progress.marks
	$(MAKE) $(MAKESILENT) -f CMakeFiles\Makefile2 all
	$(CMAKE_COMMAND) -E cmake_progress_start F:\FS\C_C++\string_stream_parse\CMakeFiles 0
.PHONY : all

# The main clean target
clean:
	$(MAKE) $(MAKESILENT) -f CMakeFiles\Makefile2 clean
.PHONY : clean

# The main clean target
clean/fast: clean
.PHONY : clean/fast

# Prepare targets for installation.
preinstall: all
	$(MAKE) $(MAKESILENT) -f CMakeFiles\Makefile2 preinstall
.PHONY : preinstall

# Prepare targets for installation.
preinstall/fast:
	$(MAKE) $(MAKESILENT) -f CMakeFiles\Makefile2 preinstall
.PHONY : preinstall/fast

# clear depends
depend:
	$(CMAKE_COMMAND) -S$(CMAKE_SOURCE_DIR) -B$(CMAKE_BINARY_DIR) --check-build-system CMakeFiles\Makefile.cmake 1
.PHONY : depend

#=============================================================================
# Target rules for targets named string_stream_parse

# Build rule for target.
string_stream_parse: cmake_check_build_system
	$(MAKE) $(MAKESILENT) -f CMakeFiles\Makefile2 string_stream_parse
.PHONY : string_stream_parse

# fast build rule for target.
string_stream_parse/fast:
	$(MAKE) $(MAKESILENT) -f CMakeFiles\string_stream_parse.dir\build.make CMakeFiles/string_stream_parse.dir/build
.PHONY : string_stream_parse/fast

src/main.obj: src/main.c.obj
.PHONY : src/main.obj

# target to build an object file
src/main.c.obj:
	$(MAKE) $(MAKESILENT) -f CMakeFiles\string_stream_parse.dir\build.make CMakeFiles/string_stream_parse.dir/src/main.c.obj
.PHONY : src/main.c.obj

src/main.i: src/main.c.i
.PHONY : src/main.i

# target to preprocess a source file
src/main.c.i:
	$(MAKE) $(MAKESILENT) -f CMakeFiles\string_stream_parse.dir\build.make CMakeFiles/string_stream_parse.dir/src/main.c.i
.PHONY : src/main.c.i

src/main.s: src/main.c.s
.PHONY : src/main.s

# target to generate assembly for a file
src/main.c.s:
	$(MAKE) $(MAKESILENT) -f CMakeFiles\string_stream_parse.dir\build.make CMakeFiles/string_stream_parse.dir/src/main.c.s
.PHONY : src/main.c.s

src/string_parse.obj: src/string_parse.c.obj
.PHONY : src/string_parse.obj

# target to build an object file
src/string_parse.c.obj:
	$(MAKE) $(MAKESILENT) -f CMakeFiles\string_stream_parse.dir\build.make CMakeFiles/string_stream_parse.dir/src/string_parse.c.obj
.PHONY : src/string_parse.c.obj

src/string_parse.i: src/string_parse.c.i
.PHONY : src/string_parse.i

# target to preprocess a source file
src/string_parse.c.i:
	$(MAKE) $(MAKESILENT) -f CMakeFiles\string_stream_parse.dir\build.make CMakeFiles/string_stream_parse.dir/src/string_parse.c.i
.PHONY : src/string_parse.c.i

src/string_parse.s: src/string_parse.c.s
.PHONY : src/string_parse.s

# target to generate assembly for a file
src/string_parse.c.s:
	$(MAKE) $(MAKESILENT) -f CMakeFiles\string_stream_parse.dir\build.make CMakeFiles/string_stream_parse.dir/src/string_parse.c.s
.PHONY : src/string_parse.c.s

src/time33.obj: src/time33.c.obj
.PHONY : src/time33.obj

# target to build an object file
src/time33.c.obj:
	$(MAKE) $(MAKESILENT) -f CMakeFiles\string_stream_parse.dir\build.make CMakeFiles/string_stream_parse.dir/src/time33.c.obj
.PHONY : src/time33.c.obj

src/time33.i: src/time33.c.i
.PHONY : src/time33.i

# target to preprocess a source file
src/time33.c.i:
	$(MAKE) $(MAKESILENT) -f CMakeFiles\string_stream_parse.dir\build.make CMakeFiles/string_stream_parse.dir/src/time33.c.i
.PHONY : src/time33.c.i

src/time33.s: src/time33.c.s
.PHONY : src/time33.s

# target to generate assembly for a file
src/time33.c.s:
	$(MAKE) $(MAKESILENT) -f CMakeFiles\string_stream_parse.dir\build.make CMakeFiles/string_stream_parse.dir/src/time33.c.s
.PHONY : src/time33.c.s

# Help Target
help:
	@echo The following are some of the valid targets for this Makefile:
	@echo ... all (the default if no target is provided)
	@echo ... clean
	@echo ... depend
	@echo ... edit_cache
	@echo ... rebuild_cache
	@echo ... string_stream_parse
	@echo ... src/main.obj
	@echo ... src/main.i
	@echo ... src/main.s
	@echo ... src/string_parse.obj
	@echo ... src/string_parse.i
	@echo ... src/string_parse.s
	@echo ... src/time33.obj
	@echo ... src/time33.i
	@echo ... src/time33.s
.PHONY : help



#=============================================================================
# Special targets to cleanup operation of make.

# Special rule to run CMake to check the build system integrity.
# No rule that depends on this can have commands that come from listfiles
# because they might be regenerated.
cmake_check_build_system:
	$(CMAKE_COMMAND) -S$(CMAKE_SOURCE_DIR) -B$(CMAKE_BINARY_DIR) --check-build-system CMakeFiles\Makefile.cmake 0
.PHONY : cmake_check_build_system

