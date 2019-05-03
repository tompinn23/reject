cmake_minimum_required(VERSION 3.8)

project("reject")

cmake_policy(SET CMP0072 NEW)

set(CMAKE_CXX_STANDARD 17)

set(CMAKE_POSITION_INDEPENDENT_CODE ON)


set(BITS x86)
if(CMAKE_SIZEOF_VOID_P EQUAL 8)
	set(BITS x64)
endif()

option(BUILD_EXAMPLES "Build the examples" ON)
option(BUILD_STATIC "Build the static versions" ON)
option(BUILD_SHARED "Build the shared versions" OFF)
 
option(SDL_LINK_STATIC "Link SDL statically" ON)
option(SDL_GPU_SHARED "Link SDL_gpu shared" OFF)

option(REJECT_PUBLIC_BUILD "Reject Public BUild (No DEBUG)" ON)

set(SDL_LIBS SDL2 SDL2main)

if(SDL_LINK_STATIC)
	set(SDL_LIBS SDL2-static SDL2main)
endif()

set(SDL_GPU_LIB SDL_gpu)
if(SDL_GPU_SHARED)
	set(SDL_GPU_LIB SDL_gpu_shared)
endif()


if(REJECT_PUBLIC_BUILD)
	set(CMAKE_BUILD_TYPE Release)
endif()


add_subdirectory(Dependencies)


find_package(OpenGL REQUIRED)

set(CMAKE_ARCHIVE_OUTPUT_DIRECTORY ${CMAKE_SOURCE_DIR}/Output/${BITS}/lib)
set(CMAKE_LIBRARY_OUTPUT_DIRECTORY ${CMAKE_SOURCE_DIR}/Output/${BITS}/lib)
set(CMAKE_RUNTIME_OUTPUT_DIRECTORY ${CMAKE_SOURCE_DIR}/Output/${BITS}/bin)

message(STATUS "REJECT OPTIONS")
message(STATUS "")
if(BUILD_EXAMPLES)
message(STATUS "Build Examples: ON")
else()
message(STATUS "Build Examples: OFF")
endif()
if(BUILD_SHARED)
message(STATUS "Build Shared Library: ON")
else()
message(STATUS "Build Shared Library: OFF")
endif()
if(BUILD_STATIC)
message(STATUS "Build Static Library: ON")
else()
message(STATUS "Build Static Library: OFF")
endif()
if(SDL_LINK_STATIC)
message(STATUS "Link SDL static: ON")
else()
message(STATUS "Link SDL static: OFF")
endif()

if(SDL_GPU_SHARED)
message(STATUS "Link SDL_gpu shared: ON")
else()
message(STATUS "Link SDL_gpu shared: OFF")
endif()

if(REJECT_PUBLIC_BUILD)
message(STATUS "Public Reject Build: ON")
else()
message(STATUS "Public Reject Build: OFF")
endif()


set(REJECT_HEADER_LOCATIONS ${CMAKE_SOURCE_DIR}/Include ${CMAKE_SOURCE_DIR}/Source ${CMAKE_SOURCE_DIR}/Dependencies/sdl-gpu/include)


if(BUILD_SHARED)
	add_library(reject SHARED

		Source/Engine2.cc
		Source/log.cc
		Source/file.cc
		)
	target_include_directories(reject PUBLIC ${REJECT_HEADER_LOCATIONS})
	target_link_libraries(reject ${SDL_LIBS} ${SDL_GPU_LIB} fmt lodepng )

	if(UNIX)
		target_link_libraries(reject stdc++fs OpenGL::OpenGL OpenGL::GLX)
	endif()

	if(WIN32)
		target_link_libraries(reject opengl32)
	endif()

	
	if(REJECT_PUBLIC_BUILD)
		target_compile_definitions(reject PUBLIC REJECT_PUBLIC_BUILD BUILD_DLL)
	endif()
endif()


if(BUILD_STATIC)
	add_library(reject-static STATIC

		Source/Engine2.cc
		Source/log.cc
		Source/file.cc
		)
	target_include_directories(reject-static PUBLIC ${REJECT_HEADER_LOCATIONS})
	target_link_libraries(reject-static ${SDL_LIBS} ${SDL_GPU_LIB} fmt lodepng )

	if(UNIX)
		target_link_libraries(reject-static stdc++fs OpenGL::OpenGL OpenGL::GLX)
	endif()

	if(WIN32)
		target_link_libraries(reject-static opengl32)
	endif()

	if(REJECT_PUBLIC_BUILD)
		target_compile_definitions(reject-static PUBLIC REJECT_PUBLIC_BUILD)
	endif()
endif()
if(BUILD_SHARED)
	if(NOT SDL_LINK_STATIC)
		add_custom_command(TARGET reject POST_BUILD
			COMMAND ${CMAKE_COMMAND} -E copy
				$<TARGET_FILE:SDL2>
				${CMAKE_SOURCE_DIR}/Output/${BITS}/bin)
	endif()
else()
	if(NOT SDL_LINK_STATIC)
		add_custom_command(TARGET reject-static POST_BUILD
			COMMAND ${CMAKE_COMMAND} -E copy
				$<TARGET_FILE:SDL2>
				${CMAKE_SOURCE_DIR}/Output/${BITS}/bin)
	endif()
endif()




add_subdirectory(Example)