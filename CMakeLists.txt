cmake_minimum_required(VERSION 3.8)

project("reject")

cmake_policy(SET CMP0072 NEW)

set(CMAKE_CXX_STANDARD 17)

set(CMAKE_POSITION_INDEPENDENT_CODE ON)


set(BITS x86)
if(CMAKE_SIZEOF_VOID_P EQUAL 8)
	set(BITS x64)
endif()

add_subdirectory(Dependencies)

if(WIN32)
	add_subdirectory(win32)
else()
	find_package(ZLIB REQUIRED)
endif()

find_package(OpenGL REQUIRED)


set(CMAKE_ARCHIVE_OUTPUT_DIRECTORY ${CMAKE_SOURCE_DIR}/Output/${BITS}/lib)
set(CMAKE_LIBRARY_OUTPUT_DIRECTORY ${CMAKE_SOURCE_DIR}/Output/${BITS}/lib)
set(CMAKE_RUNTIME_OUTPUT_DIRECTORY ${CMAKE_SOURCE_DIR}/Output/${BITS}/bin)

add_library(reject-static STATIC
	Source/Engine2.cc
	Source/log.cc
	Source/file.cc
	)



add_library(reject SHARED
	Source/Engine2.cc
	Source/log.cc
	Source/file.cc
	)

target_include_directories(reject-static PUBLIC ./source Dependencies/sdl-gpu/include)
target_link_libraries(reject-static SDL2 SDL_gpu fmt lodepng SDL2main)

target_include_directories(reject PUBLIC ./source Dependencies/sdl-gpu/include)
target_link_libraries(reject SDL2 SDL_gpu fmt lodepng SDL2main)


if(UNIX)
	target_link_libraries(reject-static stdc++fs OpenGL::OpenGL OpenGL::GLX)
	target_link_libraries(reject stdc++fs OpenGL::OpenGL OpenGL::GLX)
endif()

if(WIN32)
	target_link_libraries(reject-static opengl32)
	target_link_libraries(reject opengl32)
endif()
