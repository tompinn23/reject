# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.14

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
CMAKE_SOURCE_DIR = /home/tom/code/reject

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/tom/code/reject/build

# Include any dependencies generated for this target.
include dependencies/sdl-gpu/src/CMakeFiles/SDL_gpu.dir/depend.make

# Include the progress variables for this target.
include dependencies/sdl-gpu/src/CMakeFiles/SDL_gpu.dir/progress.make

# Include the compile flags for this target's objects.
include dependencies/sdl-gpu/src/CMakeFiles/SDL_gpu.dir/flags.make

dependencies/sdl-gpu/src/CMakeFiles/SDL_gpu.dir/externals/glew/glew.c.o: dependencies/sdl-gpu/src/CMakeFiles/SDL_gpu.dir/flags.make
dependencies/sdl-gpu/src/CMakeFiles/SDL_gpu.dir/externals/glew/glew.c.o: ../dependencies/sdl-gpu/src/externals/glew/glew.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/tom/code/reject/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object dependencies/sdl-gpu/src/CMakeFiles/SDL_gpu.dir/externals/glew/glew.c.o"
	cd /home/tom/code/reject/build/dependencies/sdl-gpu/src && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/SDL_gpu.dir/externals/glew/glew.c.o   -c /home/tom/code/reject/dependencies/sdl-gpu/src/externals/glew/glew.c

dependencies/sdl-gpu/src/CMakeFiles/SDL_gpu.dir/externals/glew/glew.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/SDL_gpu.dir/externals/glew/glew.c.i"
	cd /home/tom/code/reject/build/dependencies/sdl-gpu/src && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/tom/code/reject/dependencies/sdl-gpu/src/externals/glew/glew.c > CMakeFiles/SDL_gpu.dir/externals/glew/glew.c.i

dependencies/sdl-gpu/src/CMakeFiles/SDL_gpu.dir/externals/glew/glew.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/SDL_gpu.dir/externals/glew/glew.c.s"
	cd /home/tom/code/reject/build/dependencies/sdl-gpu/src && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/tom/code/reject/dependencies/sdl-gpu/src/externals/glew/glew.c -o CMakeFiles/SDL_gpu.dir/externals/glew/glew.c.s

dependencies/sdl-gpu/src/CMakeFiles/SDL_gpu.dir/SDL_gpu.c.o: dependencies/sdl-gpu/src/CMakeFiles/SDL_gpu.dir/flags.make
dependencies/sdl-gpu/src/CMakeFiles/SDL_gpu.dir/SDL_gpu.c.o: ../dependencies/sdl-gpu/src/SDL_gpu.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/tom/code/reject/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building C object dependencies/sdl-gpu/src/CMakeFiles/SDL_gpu.dir/SDL_gpu.c.o"
	cd /home/tom/code/reject/build/dependencies/sdl-gpu/src && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/SDL_gpu.dir/SDL_gpu.c.o   -c /home/tom/code/reject/dependencies/sdl-gpu/src/SDL_gpu.c

dependencies/sdl-gpu/src/CMakeFiles/SDL_gpu.dir/SDL_gpu.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/SDL_gpu.dir/SDL_gpu.c.i"
	cd /home/tom/code/reject/build/dependencies/sdl-gpu/src && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/tom/code/reject/dependencies/sdl-gpu/src/SDL_gpu.c > CMakeFiles/SDL_gpu.dir/SDL_gpu.c.i

dependencies/sdl-gpu/src/CMakeFiles/SDL_gpu.dir/SDL_gpu.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/SDL_gpu.dir/SDL_gpu.c.s"
	cd /home/tom/code/reject/build/dependencies/sdl-gpu/src && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/tom/code/reject/dependencies/sdl-gpu/src/SDL_gpu.c -o CMakeFiles/SDL_gpu.dir/SDL_gpu.c.s

dependencies/sdl-gpu/src/CMakeFiles/SDL_gpu.dir/SDL_gpu_matrix.c.o: dependencies/sdl-gpu/src/CMakeFiles/SDL_gpu.dir/flags.make
dependencies/sdl-gpu/src/CMakeFiles/SDL_gpu.dir/SDL_gpu_matrix.c.o: ../dependencies/sdl-gpu/src/SDL_gpu_matrix.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/tom/code/reject/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building C object dependencies/sdl-gpu/src/CMakeFiles/SDL_gpu.dir/SDL_gpu_matrix.c.o"
	cd /home/tom/code/reject/build/dependencies/sdl-gpu/src && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/SDL_gpu.dir/SDL_gpu_matrix.c.o   -c /home/tom/code/reject/dependencies/sdl-gpu/src/SDL_gpu_matrix.c

dependencies/sdl-gpu/src/CMakeFiles/SDL_gpu.dir/SDL_gpu_matrix.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/SDL_gpu.dir/SDL_gpu_matrix.c.i"
	cd /home/tom/code/reject/build/dependencies/sdl-gpu/src && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/tom/code/reject/dependencies/sdl-gpu/src/SDL_gpu_matrix.c > CMakeFiles/SDL_gpu.dir/SDL_gpu_matrix.c.i

dependencies/sdl-gpu/src/CMakeFiles/SDL_gpu.dir/SDL_gpu_matrix.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/SDL_gpu.dir/SDL_gpu_matrix.c.s"
	cd /home/tom/code/reject/build/dependencies/sdl-gpu/src && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/tom/code/reject/dependencies/sdl-gpu/src/SDL_gpu_matrix.c -o CMakeFiles/SDL_gpu.dir/SDL_gpu_matrix.c.s

dependencies/sdl-gpu/src/CMakeFiles/SDL_gpu.dir/SDL_gpu_renderer.c.o: dependencies/sdl-gpu/src/CMakeFiles/SDL_gpu.dir/flags.make
dependencies/sdl-gpu/src/CMakeFiles/SDL_gpu.dir/SDL_gpu_renderer.c.o: ../dependencies/sdl-gpu/src/SDL_gpu_renderer.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/tom/code/reject/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building C object dependencies/sdl-gpu/src/CMakeFiles/SDL_gpu.dir/SDL_gpu_renderer.c.o"
	cd /home/tom/code/reject/build/dependencies/sdl-gpu/src && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/SDL_gpu.dir/SDL_gpu_renderer.c.o   -c /home/tom/code/reject/dependencies/sdl-gpu/src/SDL_gpu_renderer.c

dependencies/sdl-gpu/src/CMakeFiles/SDL_gpu.dir/SDL_gpu_renderer.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/SDL_gpu.dir/SDL_gpu_renderer.c.i"
	cd /home/tom/code/reject/build/dependencies/sdl-gpu/src && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/tom/code/reject/dependencies/sdl-gpu/src/SDL_gpu_renderer.c > CMakeFiles/SDL_gpu.dir/SDL_gpu_renderer.c.i

dependencies/sdl-gpu/src/CMakeFiles/SDL_gpu.dir/SDL_gpu_renderer.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/SDL_gpu.dir/SDL_gpu_renderer.c.s"
	cd /home/tom/code/reject/build/dependencies/sdl-gpu/src && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/tom/code/reject/dependencies/sdl-gpu/src/SDL_gpu_renderer.c -o CMakeFiles/SDL_gpu.dir/SDL_gpu_renderer.c.s

dependencies/sdl-gpu/src/CMakeFiles/SDL_gpu.dir/SDL_gpu_shapes.c.o: dependencies/sdl-gpu/src/CMakeFiles/SDL_gpu.dir/flags.make
dependencies/sdl-gpu/src/CMakeFiles/SDL_gpu.dir/SDL_gpu_shapes.c.o: ../dependencies/sdl-gpu/src/SDL_gpu_shapes.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/tom/code/reject/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Building C object dependencies/sdl-gpu/src/CMakeFiles/SDL_gpu.dir/SDL_gpu_shapes.c.o"
	cd /home/tom/code/reject/build/dependencies/sdl-gpu/src && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/SDL_gpu.dir/SDL_gpu_shapes.c.o   -c /home/tom/code/reject/dependencies/sdl-gpu/src/SDL_gpu_shapes.c

dependencies/sdl-gpu/src/CMakeFiles/SDL_gpu.dir/SDL_gpu_shapes.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/SDL_gpu.dir/SDL_gpu_shapes.c.i"
	cd /home/tom/code/reject/build/dependencies/sdl-gpu/src && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/tom/code/reject/dependencies/sdl-gpu/src/SDL_gpu_shapes.c > CMakeFiles/SDL_gpu.dir/SDL_gpu_shapes.c.i

dependencies/sdl-gpu/src/CMakeFiles/SDL_gpu.dir/SDL_gpu_shapes.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/SDL_gpu.dir/SDL_gpu_shapes.c.s"
	cd /home/tom/code/reject/build/dependencies/sdl-gpu/src && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/tom/code/reject/dependencies/sdl-gpu/src/SDL_gpu_shapes.c -o CMakeFiles/SDL_gpu.dir/SDL_gpu_shapes.c.s

dependencies/sdl-gpu/src/CMakeFiles/SDL_gpu.dir/renderer_OpenGL_1_BASE.c.o: dependencies/sdl-gpu/src/CMakeFiles/SDL_gpu.dir/flags.make
dependencies/sdl-gpu/src/CMakeFiles/SDL_gpu.dir/renderer_OpenGL_1_BASE.c.o: ../dependencies/sdl-gpu/src/renderer_OpenGL_1_BASE.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/tom/code/reject/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "Building C object dependencies/sdl-gpu/src/CMakeFiles/SDL_gpu.dir/renderer_OpenGL_1_BASE.c.o"
	cd /home/tom/code/reject/build/dependencies/sdl-gpu/src && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/SDL_gpu.dir/renderer_OpenGL_1_BASE.c.o   -c /home/tom/code/reject/dependencies/sdl-gpu/src/renderer_OpenGL_1_BASE.c

dependencies/sdl-gpu/src/CMakeFiles/SDL_gpu.dir/renderer_OpenGL_1_BASE.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/SDL_gpu.dir/renderer_OpenGL_1_BASE.c.i"
	cd /home/tom/code/reject/build/dependencies/sdl-gpu/src && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/tom/code/reject/dependencies/sdl-gpu/src/renderer_OpenGL_1_BASE.c > CMakeFiles/SDL_gpu.dir/renderer_OpenGL_1_BASE.c.i

dependencies/sdl-gpu/src/CMakeFiles/SDL_gpu.dir/renderer_OpenGL_1_BASE.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/SDL_gpu.dir/renderer_OpenGL_1_BASE.c.s"
	cd /home/tom/code/reject/build/dependencies/sdl-gpu/src && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/tom/code/reject/dependencies/sdl-gpu/src/renderer_OpenGL_1_BASE.c -o CMakeFiles/SDL_gpu.dir/renderer_OpenGL_1_BASE.c.s

dependencies/sdl-gpu/src/CMakeFiles/SDL_gpu.dir/renderer_OpenGL_1.c.o: dependencies/sdl-gpu/src/CMakeFiles/SDL_gpu.dir/flags.make
dependencies/sdl-gpu/src/CMakeFiles/SDL_gpu.dir/renderer_OpenGL_1.c.o: ../dependencies/sdl-gpu/src/renderer_OpenGL_1.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/tom/code/reject/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_7) "Building C object dependencies/sdl-gpu/src/CMakeFiles/SDL_gpu.dir/renderer_OpenGL_1.c.o"
	cd /home/tom/code/reject/build/dependencies/sdl-gpu/src && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/SDL_gpu.dir/renderer_OpenGL_1.c.o   -c /home/tom/code/reject/dependencies/sdl-gpu/src/renderer_OpenGL_1.c

dependencies/sdl-gpu/src/CMakeFiles/SDL_gpu.dir/renderer_OpenGL_1.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/SDL_gpu.dir/renderer_OpenGL_1.c.i"
	cd /home/tom/code/reject/build/dependencies/sdl-gpu/src && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/tom/code/reject/dependencies/sdl-gpu/src/renderer_OpenGL_1.c > CMakeFiles/SDL_gpu.dir/renderer_OpenGL_1.c.i

dependencies/sdl-gpu/src/CMakeFiles/SDL_gpu.dir/renderer_OpenGL_1.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/SDL_gpu.dir/renderer_OpenGL_1.c.s"
	cd /home/tom/code/reject/build/dependencies/sdl-gpu/src && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/tom/code/reject/dependencies/sdl-gpu/src/renderer_OpenGL_1.c -o CMakeFiles/SDL_gpu.dir/renderer_OpenGL_1.c.s

dependencies/sdl-gpu/src/CMakeFiles/SDL_gpu.dir/renderer_OpenGL_2.c.o: dependencies/sdl-gpu/src/CMakeFiles/SDL_gpu.dir/flags.make
dependencies/sdl-gpu/src/CMakeFiles/SDL_gpu.dir/renderer_OpenGL_2.c.o: ../dependencies/sdl-gpu/src/renderer_OpenGL_2.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/tom/code/reject/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_8) "Building C object dependencies/sdl-gpu/src/CMakeFiles/SDL_gpu.dir/renderer_OpenGL_2.c.o"
	cd /home/tom/code/reject/build/dependencies/sdl-gpu/src && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/SDL_gpu.dir/renderer_OpenGL_2.c.o   -c /home/tom/code/reject/dependencies/sdl-gpu/src/renderer_OpenGL_2.c

dependencies/sdl-gpu/src/CMakeFiles/SDL_gpu.dir/renderer_OpenGL_2.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/SDL_gpu.dir/renderer_OpenGL_2.c.i"
	cd /home/tom/code/reject/build/dependencies/sdl-gpu/src && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/tom/code/reject/dependencies/sdl-gpu/src/renderer_OpenGL_2.c > CMakeFiles/SDL_gpu.dir/renderer_OpenGL_2.c.i

dependencies/sdl-gpu/src/CMakeFiles/SDL_gpu.dir/renderer_OpenGL_2.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/SDL_gpu.dir/renderer_OpenGL_2.c.s"
	cd /home/tom/code/reject/build/dependencies/sdl-gpu/src && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/tom/code/reject/dependencies/sdl-gpu/src/renderer_OpenGL_2.c -o CMakeFiles/SDL_gpu.dir/renderer_OpenGL_2.c.s

dependencies/sdl-gpu/src/CMakeFiles/SDL_gpu.dir/renderer_OpenGL_3.c.o: dependencies/sdl-gpu/src/CMakeFiles/SDL_gpu.dir/flags.make
dependencies/sdl-gpu/src/CMakeFiles/SDL_gpu.dir/renderer_OpenGL_3.c.o: ../dependencies/sdl-gpu/src/renderer_OpenGL_3.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/tom/code/reject/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_9) "Building C object dependencies/sdl-gpu/src/CMakeFiles/SDL_gpu.dir/renderer_OpenGL_3.c.o"
	cd /home/tom/code/reject/build/dependencies/sdl-gpu/src && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/SDL_gpu.dir/renderer_OpenGL_3.c.o   -c /home/tom/code/reject/dependencies/sdl-gpu/src/renderer_OpenGL_3.c

dependencies/sdl-gpu/src/CMakeFiles/SDL_gpu.dir/renderer_OpenGL_3.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/SDL_gpu.dir/renderer_OpenGL_3.c.i"
	cd /home/tom/code/reject/build/dependencies/sdl-gpu/src && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/tom/code/reject/dependencies/sdl-gpu/src/renderer_OpenGL_3.c > CMakeFiles/SDL_gpu.dir/renderer_OpenGL_3.c.i

dependencies/sdl-gpu/src/CMakeFiles/SDL_gpu.dir/renderer_OpenGL_3.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/SDL_gpu.dir/renderer_OpenGL_3.c.s"
	cd /home/tom/code/reject/build/dependencies/sdl-gpu/src && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/tom/code/reject/dependencies/sdl-gpu/src/renderer_OpenGL_3.c -o CMakeFiles/SDL_gpu.dir/renderer_OpenGL_3.c.s

dependencies/sdl-gpu/src/CMakeFiles/SDL_gpu.dir/renderer_OpenGL_4.c.o: dependencies/sdl-gpu/src/CMakeFiles/SDL_gpu.dir/flags.make
dependencies/sdl-gpu/src/CMakeFiles/SDL_gpu.dir/renderer_OpenGL_4.c.o: ../dependencies/sdl-gpu/src/renderer_OpenGL_4.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/tom/code/reject/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_10) "Building C object dependencies/sdl-gpu/src/CMakeFiles/SDL_gpu.dir/renderer_OpenGL_4.c.o"
	cd /home/tom/code/reject/build/dependencies/sdl-gpu/src && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/SDL_gpu.dir/renderer_OpenGL_4.c.o   -c /home/tom/code/reject/dependencies/sdl-gpu/src/renderer_OpenGL_4.c

dependencies/sdl-gpu/src/CMakeFiles/SDL_gpu.dir/renderer_OpenGL_4.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/SDL_gpu.dir/renderer_OpenGL_4.c.i"
	cd /home/tom/code/reject/build/dependencies/sdl-gpu/src && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/tom/code/reject/dependencies/sdl-gpu/src/renderer_OpenGL_4.c > CMakeFiles/SDL_gpu.dir/renderer_OpenGL_4.c.i

dependencies/sdl-gpu/src/CMakeFiles/SDL_gpu.dir/renderer_OpenGL_4.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/SDL_gpu.dir/renderer_OpenGL_4.c.s"
	cd /home/tom/code/reject/build/dependencies/sdl-gpu/src && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/tom/code/reject/dependencies/sdl-gpu/src/renderer_OpenGL_4.c -o CMakeFiles/SDL_gpu.dir/renderer_OpenGL_4.c.s

dependencies/sdl-gpu/src/CMakeFiles/SDL_gpu.dir/renderer_GLES_1.c.o: dependencies/sdl-gpu/src/CMakeFiles/SDL_gpu.dir/flags.make
dependencies/sdl-gpu/src/CMakeFiles/SDL_gpu.dir/renderer_GLES_1.c.o: ../dependencies/sdl-gpu/src/renderer_GLES_1.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/tom/code/reject/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_11) "Building C object dependencies/sdl-gpu/src/CMakeFiles/SDL_gpu.dir/renderer_GLES_1.c.o"
	cd /home/tom/code/reject/build/dependencies/sdl-gpu/src && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/SDL_gpu.dir/renderer_GLES_1.c.o   -c /home/tom/code/reject/dependencies/sdl-gpu/src/renderer_GLES_1.c

dependencies/sdl-gpu/src/CMakeFiles/SDL_gpu.dir/renderer_GLES_1.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/SDL_gpu.dir/renderer_GLES_1.c.i"
	cd /home/tom/code/reject/build/dependencies/sdl-gpu/src && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/tom/code/reject/dependencies/sdl-gpu/src/renderer_GLES_1.c > CMakeFiles/SDL_gpu.dir/renderer_GLES_1.c.i

dependencies/sdl-gpu/src/CMakeFiles/SDL_gpu.dir/renderer_GLES_1.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/SDL_gpu.dir/renderer_GLES_1.c.s"
	cd /home/tom/code/reject/build/dependencies/sdl-gpu/src && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/tom/code/reject/dependencies/sdl-gpu/src/renderer_GLES_1.c -o CMakeFiles/SDL_gpu.dir/renderer_GLES_1.c.s

dependencies/sdl-gpu/src/CMakeFiles/SDL_gpu.dir/renderer_GLES_2.c.o: dependencies/sdl-gpu/src/CMakeFiles/SDL_gpu.dir/flags.make
dependencies/sdl-gpu/src/CMakeFiles/SDL_gpu.dir/renderer_GLES_2.c.o: ../dependencies/sdl-gpu/src/renderer_GLES_2.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/tom/code/reject/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_12) "Building C object dependencies/sdl-gpu/src/CMakeFiles/SDL_gpu.dir/renderer_GLES_2.c.o"
	cd /home/tom/code/reject/build/dependencies/sdl-gpu/src && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/SDL_gpu.dir/renderer_GLES_2.c.o   -c /home/tom/code/reject/dependencies/sdl-gpu/src/renderer_GLES_2.c

dependencies/sdl-gpu/src/CMakeFiles/SDL_gpu.dir/renderer_GLES_2.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/SDL_gpu.dir/renderer_GLES_2.c.i"
	cd /home/tom/code/reject/build/dependencies/sdl-gpu/src && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/tom/code/reject/dependencies/sdl-gpu/src/renderer_GLES_2.c > CMakeFiles/SDL_gpu.dir/renderer_GLES_2.c.i

dependencies/sdl-gpu/src/CMakeFiles/SDL_gpu.dir/renderer_GLES_2.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/SDL_gpu.dir/renderer_GLES_2.c.s"
	cd /home/tom/code/reject/build/dependencies/sdl-gpu/src && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/tom/code/reject/dependencies/sdl-gpu/src/renderer_GLES_2.c -o CMakeFiles/SDL_gpu.dir/renderer_GLES_2.c.s

dependencies/sdl-gpu/src/CMakeFiles/SDL_gpu.dir/renderer_GLES_3.c.o: dependencies/sdl-gpu/src/CMakeFiles/SDL_gpu.dir/flags.make
dependencies/sdl-gpu/src/CMakeFiles/SDL_gpu.dir/renderer_GLES_3.c.o: ../dependencies/sdl-gpu/src/renderer_GLES_3.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/tom/code/reject/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_13) "Building C object dependencies/sdl-gpu/src/CMakeFiles/SDL_gpu.dir/renderer_GLES_3.c.o"
	cd /home/tom/code/reject/build/dependencies/sdl-gpu/src && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/SDL_gpu.dir/renderer_GLES_3.c.o   -c /home/tom/code/reject/dependencies/sdl-gpu/src/renderer_GLES_3.c

dependencies/sdl-gpu/src/CMakeFiles/SDL_gpu.dir/renderer_GLES_3.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/SDL_gpu.dir/renderer_GLES_3.c.i"
	cd /home/tom/code/reject/build/dependencies/sdl-gpu/src && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/tom/code/reject/dependencies/sdl-gpu/src/renderer_GLES_3.c > CMakeFiles/SDL_gpu.dir/renderer_GLES_3.c.i

dependencies/sdl-gpu/src/CMakeFiles/SDL_gpu.dir/renderer_GLES_3.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/SDL_gpu.dir/renderer_GLES_3.c.s"
	cd /home/tom/code/reject/build/dependencies/sdl-gpu/src && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/tom/code/reject/dependencies/sdl-gpu/src/renderer_GLES_3.c -o CMakeFiles/SDL_gpu.dir/renderer_GLES_3.c.s

dependencies/sdl-gpu/src/CMakeFiles/SDL_gpu.dir/externals/stb_image/stb_image.c.o: dependencies/sdl-gpu/src/CMakeFiles/SDL_gpu.dir/flags.make
dependencies/sdl-gpu/src/CMakeFiles/SDL_gpu.dir/externals/stb_image/stb_image.c.o: ../dependencies/sdl-gpu/src/externals/stb_image/stb_image.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/tom/code/reject/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_14) "Building C object dependencies/sdl-gpu/src/CMakeFiles/SDL_gpu.dir/externals/stb_image/stb_image.c.o"
	cd /home/tom/code/reject/build/dependencies/sdl-gpu/src && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/SDL_gpu.dir/externals/stb_image/stb_image.c.o   -c /home/tom/code/reject/dependencies/sdl-gpu/src/externals/stb_image/stb_image.c

dependencies/sdl-gpu/src/CMakeFiles/SDL_gpu.dir/externals/stb_image/stb_image.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/SDL_gpu.dir/externals/stb_image/stb_image.c.i"
	cd /home/tom/code/reject/build/dependencies/sdl-gpu/src && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/tom/code/reject/dependencies/sdl-gpu/src/externals/stb_image/stb_image.c > CMakeFiles/SDL_gpu.dir/externals/stb_image/stb_image.c.i

dependencies/sdl-gpu/src/CMakeFiles/SDL_gpu.dir/externals/stb_image/stb_image.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/SDL_gpu.dir/externals/stb_image/stb_image.c.s"
	cd /home/tom/code/reject/build/dependencies/sdl-gpu/src && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/tom/code/reject/dependencies/sdl-gpu/src/externals/stb_image/stb_image.c -o CMakeFiles/SDL_gpu.dir/externals/stb_image/stb_image.c.s

dependencies/sdl-gpu/src/CMakeFiles/SDL_gpu.dir/externals/stb_image_write/stb_image_write.c.o: dependencies/sdl-gpu/src/CMakeFiles/SDL_gpu.dir/flags.make
dependencies/sdl-gpu/src/CMakeFiles/SDL_gpu.dir/externals/stb_image_write/stb_image_write.c.o: ../dependencies/sdl-gpu/src/externals/stb_image_write/stb_image_write.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/tom/code/reject/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_15) "Building C object dependencies/sdl-gpu/src/CMakeFiles/SDL_gpu.dir/externals/stb_image_write/stb_image_write.c.o"
	cd /home/tom/code/reject/build/dependencies/sdl-gpu/src && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/SDL_gpu.dir/externals/stb_image_write/stb_image_write.c.o   -c /home/tom/code/reject/dependencies/sdl-gpu/src/externals/stb_image_write/stb_image_write.c

dependencies/sdl-gpu/src/CMakeFiles/SDL_gpu.dir/externals/stb_image_write/stb_image_write.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/SDL_gpu.dir/externals/stb_image_write/stb_image_write.c.i"
	cd /home/tom/code/reject/build/dependencies/sdl-gpu/src && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/tom/code/reject/dependencies/sdl-gpu/src/externals/stb_image_write/stb_image_write.c > CMakeFiles/SDL_gpu.dir/externals/stb_image_write/stb_image_write.c.i

dependencies/sdl-gpu/src/CMakeFiles/SDL_gpu.dir/externals/stb_image_write/stb_image_write.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/SDL_gpu.dir/externals/stb_image_write/stb_image_write.c.s"
	cd /home/tom/code/reject/build/dependencies/sdl-gpu/src && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/tom/code/reject/dependencies/sdl-gpu/src/externals/stb_image_write/stb_image_write.c -o CMakeFiles/SDL_gpu.dir/externals/stb_image_write/stb_image_write.c.s

# Object files for target SDL_gpu
SDL_gpu_OBJECTS = \
"CMakeFiles/SDL_gpu.dir/externals/glew/glew.c.o" \
"CMakeFiles/SDL_gpu.dir/SDL_gpu.c.o" \
"CMakeFiles/SDL_gpu.dir/SDL_gpu_matrix.c.o" \
"CMakeFiles/SDL_gpu.dir/SDL_gpu_renderer.c.o" \
"CMakeFiles/SDL_gpu.dir/SDL_gpu_shapes.c.o" \
"CMakeFiles/SDL_gpu.dir/renderer_OpenGL_1_BASE.c.o" \
"CMakeFiles/SDL_gpu.dir/renderer_OpenGL_1.c.o" \
"CMakeFiles/SDL_gpu.dir/renderer_OpenGL_2.c.o" \
"CMakeFiles/SDL_gpu.dir/renderer_OpenGL_3.c.o" \
"CMakeFiles/SDL_gpu.dir/renderer_OpenGL_4.c.o" \
"CMakeFiles/SDL_gpu.dir/renderer_GLES_1.c.o" \
"CMakeFiles/SDL_gpu.dir/renderer_GLES_2.c.o" \
"CMakeFiles/SDL_gpu.dir/renderer_GLES_3.c.o" \
"CMakeFiles/SDL_gpu.dir/externals/stb_image/stb_image.c.o" \
"CMakeFiles/SDL_gpu.dir/externals/stb_image_write/stb_image_write.c.o"

# External object files for target SDL_gpu
SDL_gpu_EXTERNAL_OBJECTS =

SDL_gpu-0.11.0/lib/libSDL2_gpu.a: dependencies/sdl-gpu/src/CMakeFiles/SDL_gpu.dir/externals/glew/glew.c.o
SDL_gpu-0.11.0/lib/libSDL2_gpu.a: dependencies/sdl-gpu/src/CMakeFiles/SDL_gpu.dir/SDL_gpu.c.o
SDL_gpu-0.11.0/lib/libSDL2_gpu.a: dependencies/sdl-gpu/src/CMakeFiles/SDL_gpu.dir/SDL_gpu_matrix.c.o
SDL_gpu-0.11.0/lib/libSDL2_gpu.a: dependencies/sdl-gpu/src/CMakeFiles/SDL_gpu.dir/SDL_gpu_renderer.c.o
SDL_gpu-0.11.0/lib/libSDL2_gpu.a: dependencies/sdl-gpu/src/CMakeFiles/SDL_gpu.dir/SDL_gpu_shapes.c.o
SDL_gpu-0.11.0/lib/libSDL2_gpu.a: dependencies/sdl-gpu/src/CMakeFiles/SDL_gpu.dir/renderer_OpenGL_1_BASE.c.o
SDL_gpu-0.11.0/lib/libSDL2_gpu.a: dependencies/sdl-gpu/src/CMakeFiles/SDL_gpu.dir/renderer_OpenGL_1.c.o
SDL_gpu-0.11.0/lib/libSDL2_gpu.a: dependencies/sdl-gpu/src/CMakeFiles/SDL_gpu.dir/renderer_OpenGL_2.c.o
SDL_gpu-0.11.0/lib/libSDL2_gpu.a: dependencies/sdl-gpu/src/CMakeFiles/SDL_gpu.dir/renderer_OpenGL_3.c.o
SDL_gpu-0.11.0/lib/libSDL2_gpu.a: dependencies/sdl-gpu/src/CMakeFiles/SDL_gpu.dir/renderer_OpenGL_4.c.o
SDL_gpu-0.11.0/lib/libSDL2_gpu.a: dependencies/sdl-gpu/src/CMakeFiles/SDL_gpu.dir/renderer_GLES_1.c.o
SDL_gpu-0.11.0/lib/libSDL2_gpu.a: dependencies/sdl-gpu/src/CMakeFiles/SDL_gpu.dir/renderer_GLES_2.c.o
SDL_gpu-0.11.0/lib/libSDL2_gpu.a: dependencies/sdl-gpu/src/CMakeFiles/SDL_gpu.dir/renderer_GLES_3.c.o
SDL_gpu-0.11.0/lib/libSDL2_gpu.a: dependencies/sdl-gpu/src/CMakeFiles/SDL_gpu.dir/externals/stb_image/stb_image.c.o
SDL_gpu-0.11.0/lib/libSDL2_gpu.a: dependencies/sdl-gpu/src/CMakeFiles/SDL_gpu.dir/externals/stb_image_write/stb_image_write.c.o
SDL_gpu-0.11.0/lib/libSDL2_gpu.a: dependencies/sdl-gpu/src/CMakeFiles/SDL_gpu.dir/build.make
SDL_gpu-0.11.0/lib/libSDL2_gpu.a: dependencies/sdl-gpu/src/CMakeFiles/SDL_gpu.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/tom/code/reject/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_16) "Linking C static library ../../../SDL_gpu-0.11.0/lib/libSDL2_gpu.a"
	cd /home/tom/code/reject/build/dependencies/sdl-gpu/src && $(CMAKE_COMMAND) -P CMakeFiles/SDL_gpu.dir/cmake_clean_target.cmake
	cd /home/tom/code/reject/build/dependencies/sdl-gpu/src && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/SDL_gpu.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
dependencies/sdl-gpu/src/CMakeFiles/SDL_gpu.dir/build: SDL_gpu-0.11.0/lib/libSDL2_gpu.a

.PHONY : dependencies/sdl-gpu/src/CMakeFiles/SDL_gpu.dir/build

dependencies/sdl-gpu/src/CMakeFiles/SDL_gpu.dir/clean:
	cd /home/tom/code/reject/build/dependencies/sdl-gpu/src && $(CMAKE_COMMAND) -P CMakeFiles/SDL_gpu.dir/cmake_clean.cmake
.PHONY : dependencies/sdl-gpu/src/CMakeFiles/SDL_gpu.dir/clean

dependencies/sdl-gpu/src/CMakeFiles/SDL_gpu.dir/depend:
	cd /home/tom/code/reject/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/tom/code/reject /home/tom/code/reject/dependencies/sdl-gpu/src /home/tom/code/reject/build /home/tom/code/reject/build/dependencies/sdl-gpu/src /home/tom/code/reject/build/dependencies/sdl-gpu/src/CMakeFiles/SDL_gpu.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : dependencies/sdl-gpu/src/CMakeFiles/SDL_gpu.dir/depend
