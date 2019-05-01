# Install script for directory: /home/tom/code/reject/Dependencies/SDL2-2.0.9

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/usr/local")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "")
  endif()
  message(STATUS "Install configuration: \"${CMAKE_INSTALL_CONFIG_NAME}\"")
endif()

# Set the component getting installed.
if(NOT CMAKE_INSTALL_COMPONENT)
  if(COMPONENT)
    message(STATUS "Install component: \"${COMPONENT}\"")
    set(CMAKE_INSTALL_COMPONENT "${COMPONENT}")
  else()
    set(CMAKE_INSTALL_COMPONENT)
  endif()
endif()

# Install shared libraries without execute permission?
if(NOT DEFINED CMAKE_INSTALL_SO_NO_EXE)
  set(CMAKE_INSTALL_SO_NO_EXE "0")
endif()

# Is this installation the result of a crosscompile?
if(NOT DEFINED CMAKE_CROSSCOMPILING)
  set(CMAKE_CROSSCOMPILING "FALSE")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE SHARED_LIBRARY FILES
    "/home/tom/code/reject/build/Dependencies/SDL2-2.0.9/libSDL2-2.0.so.0.9.0"
    "/home/tom/code/reject/build/Dependencies/SDL2-2.0.9/libSDL2-2.0.so.0"
    )
  foreach(file
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libSDL2-2.0.so.0.9.0"
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libSDL2-2.0.so.0"
      )
    if(EXISTS "${file}" AND
       NOT IS_SYMLINK "${file}")
      if(CMAKE_INSTALL_DO_STRIP)
        execute_process(COMMAND "/usr/bin/strip" "${file}")
      endif()
    endif()
  endforeach()
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE SHARED_LIBRARY FILES "/home/tom/code/reject/build/Dependencies/SDL2-2.0.9/libSDL2-2.0.so")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libSDL2-2.0.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libSDL2-2.0.so")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libSDL2-2.0.so")
    endif()
  endif()
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE STATIC_LIBRARY FILES "/home/tom/code/reject/build/Dependencies/SDL2-2.0.9/libSDL2main.a")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/cmake/SDL2/SDL2Targets.cmake")
    file(DIFFERENT EXPORT_FILE_CHANGED FILES
         "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/cmake/SDL2/SDL2Targets.cmake"
         "/home/tom/code/reject/build/Dependencies/SDL2-2.0.9/CMakeFiles/Export/lib/cmake/SDL2/SDL2Targets.cmake")
    if(EXPORT_FILE_CHANGED)
      file(GLOB OLD_CONFIG_FILES "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/cmake/SDL2/SDL2Targets-*.cmake")
      if(OLD_CONFIG_FILES)
        message(STATUS "Old export file \"$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/cmake/SDL2/SDL2Targets.cmake\" will be replaced.  Removing files [${OLD_CONFIG_FILES}].")
        file(REMOVE ${OLD_CONFIG_FILES})
      endif()
    endif()
  endif()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/cmake/SDL2" TYPE FILE FILES "/home/tom/code/reject/build/Dependencies/SDL2-2.0.9/CMakeFiles/Export/lib/cmake/SDL2/SDL2Targets.cmake")
  if("${CMAKE_INSTALL_CONFIG_NAME}" MATCHES "^()$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/cmake/SDL2" TYPE FILE FILES "/home/tom/code/reject/build/Dependencies/SDL2-2.0.9/CMakeFiles/Export/lib/cmake/SDL2/SDL2Targets-noconfig.cmake")
  endif()
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xDevelx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/cmake/SDL2" TYPE FILE FILES
    "/home/tom/code/reject/Dependencies/SDL2-2.0.9/SDL2Config.cmake"
    "/home/tom/code/reject/build/SDL2ConfigVersion.cmake"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/SDL2" TYPE FILE FILES
    "/home/tom/code/reject/Dependencies/SDL2-2.0.9/include/SDL.h"
    "/home/tom/code/reject/Dependencies/SDL2-2.0.9/include/SDL_assert.h"
    "/home/tom/code/reject/Dependencies/SDL2-2.0.9/include/SDL_atomic.h"
    "/home/tom/code/reject/Dependencies/SDL2-2.0.9/include/SDL_audio.h"
    "/home/tom/code/reject/Dependencies/SDL2-2.0.9/include/SDL_bits.h"
    "/home/tom/code/reject/Dependencies/SDL2-2.0.9/include/SDL_blendmode.h"
    "/home/tom/code/reject/Dependencies/SDL2-2.0.9/include/SDL_clipboard.h"
    "/home/tom/code/reject/Dependencies/SDL2-2.0.9/include/SDL_config_android.h"
    "/home/tom/code/reject/Dependencies/SDL2-2.0.9/include/SDL_config_iphoneos.h"
    "/home/tom/code/reject/Dependencies/SDL2-2.0.9/include/SDL_config_macosx.h"
    "/home/tom/code/reject/Dependencies/SDL2-2.0.9/include/SDL_config_minimal.h"
    "/home/tom/code/reject/Dependencies/SDL2-2.0.9/include/SDL_config_os2.h"
    "/home/tom/code/reject/Dependencies/SDL2-2.0.9/include/SDL_config_pandora.h"
    "/home/tom/code/reject/Dependencies/SDL2-2.0.9/include/SDL_config_psp.h"
    "/home/tom/code/reject/Dependencies/SDL2-2.0.9/include/SDL_config_windows.h"
    "/home/tom/code/reject/Dependencies/SDL2-2.0.9/include/SDL_config_winrt.h"
    "/home/tom/code/reject/Dependencies/SDL2-2.0.9/include/SDL_config_wiz.h"
    "/home/tom/code/reject/Dependencies/SDL2-2.0.9/include/SDL_copying.h"
    "/home/tom/code/reject/Dependencies/SDL2-2.0.9/include/SDL_cpuinfo.h"
    "/home/tom/code/reject/Dependencies/SDL2-2.0.9/include/SDL_egl.h"
    "/home/tom/code/reject/Dependencies/SDL2-2.0.9/include/SDL_endian.h"
    "/home/tom/code/reject/Dependencies/SDL2-2.0.9/include/SDL_error.h"
    "/home/tom/code/reject/Dependencies/SDL2-2.0.9/include/SDL_events.h"
    "/home/tom/code/reject/Dependencies/SDL2-2.0.9/include/SDL_filesystem.h"
    "/home/tom/code/reject/Dependencies/SDL2-2.0.9/include/SDL_gamecontroller.h"
    "/home/tom/code/reject/Dependencies/SDL2-2.0.9/include/SDL_gesture.h"
    "/home/tom/code/reject/Dependencies/SDL2-2.0.9/include/SDL_haptic.h"
    "/home/tom/code/reject/Dependencies/SDL2-2.0.9/include/SDL_hints.h"
    "/home/tom/code/reject/Dependencies/SDL2-2.0.9/include/SDL_joystick.h"
    "/home/tom/code/reject/Dependencies/SDL2-2.0.9/include/SDL_keyboard.h"
    "/home/tom/code/reject/Dependencies/SDL2-2.0.9/include/SDL_keycode.h"
    "/home/tom/code/reject/Dependencies/SDL2-2.0.9/include/SDL_loadso.h"
    "/home/tom/code/reject/Dependencies/SDL2-2.0.9/include/SDL_log.h"
    "/home/tom/code/reject/Dependencies/SDL2-2.0.9/include/SDL_main.h"
    "/home/tom/code/reject/Dependencies/SDL2-2.0.9/include/SDL_messagebox.h"
    "/home/tom/code/reject/Dependencies/SDL2-2.0.9/include/SDL_mouse.h"
    "/home/tom/code/reject/Dependencies/SDL2-2.0.9/include/SDL_mutex.h"
    "/home/tom/code/reject/Dependencies/SDL2-2.0.9/include/SDL_name.h"
    "/home/tom/code/reject/Dependencies/SDL2-2.0.9/include/SDL_opengl.h"
    "/home/tom/code/reject/Dependencies/SDL2-2.0.9/include/SDL_opengl_glext.h"
    "/home/tom/code/reject/Dependencies/SDL2-2.0.9/include/SDL_opengles.h"
    "/home/tom/code/reject/Dependencies/SDL2-2.0.9/include/SDL_opengles2.h"
    "/home/tom/code/reject/Dependencies/SDL2-2.0.9/include/SDL_opengles2_gl2.h"
    "/home/tom/code/reject/Dependencies/SDL2-2.0.9/include/SDL_opengles2_gl2ext.h"
    "/home/tom/code/reject/Dependencies/SDL2-2.0.9/include/SDL_opengles2_gl2platform.h"
    "/home/tom/code/reject/Dependencies/SDL2-2.0.9/include/SDL_opengles2_khrplatform.h"
    "/home/tom/code/reject/Dependencies/SDL2-2.0.9/include/SDL_pixels.h"
    "/home/tom/code/reject/Dependencies/SDL2-2.0.9/include/SDL_platform.h"
    "/home/tom/code/reject/Dependencies/SDL2-2.0.9/include/SDL_power.h"
    "/home/tom/code/reject/Dependencies/SDL2-2.0.9/include/SDL_quit.h"
    "/home/tom/code/reject/Dependencies/SDL2-2.0.9/include/SDL_rect.h"
    "/home/tom/code/reject/Dependencies/SDL2-2.0.9/include/SDL_render.h"
    "/home/tom/code/reject/Dependencies/SDL2-2.0.9/include/SDL_revision.h"
    "/home/tom/code/reject/Dependencies/SDL2-2.0.9/include/SDL_rwops.h"
    "/home/tom/code/reject/Dependencies/SDL2-2.0.9/include/SDL_scancode.h"
    "/home/tom/code/reject/Dependencies/SDL2-2.0.9/include/SDL_sensor.h"
    "/home/tom/code/reject/Dependencies/SDL2-2.0.9/include/SDL_shape.h"
    "/home/tom/code/reject/Dependencies/SDL2-2.0.9/include/SDL_stdinc.h"
    "/home/tom/code/reject/Dependencies/SDL2-2.0.9/include/SDL_surface.h"
    "/home/tom/code/reject/Dependencies/SDL2-2.0.9/include/SDL_system.h"
    "/home/tom/code/reject/Dependencies/SDL2-2.0.9/include/SDL_syswm.h"
    "/home/tom/code/reject/Dependencies/SDL2-2.0.9/include/SDL_test.h"
    "/home/tom/code/reject/Dependencies/SDL2-2.0.9/include/SDL_test_assert.h"
    "/home/tom/code/reject/Dependencies/SDL2-2.0.9/include/SDL_test_common.h"
    "/home/tom/code/reject/Dependencies/SDL2-2.0.9/include/SDL_test_compare.h"
    "/home/tom/code/reject/Dependencies/SDL2-2.0.9/include/SDL_test_crc32.h"
    "/home/tom/code/reject/Dependencies/SDL2-2.0.9/include/SDL_test_font.h"
    "/home/tom/code/reject/Dependencies/SDL2-2.0.9/include/SDL_test_fuzzer.h"
    "/home/tom/code/reject/Dependencies/SDL2-2.0.9/include/SDL_test_harness.h"
    "/home/tom/code/reject/Dependencies/SDL2-2.0.9/include/SDL_test_images.h"
    "/home/tom/code/reject/Dependencies/SDL2-2.0.9/include/SDL_test_log.h"
    "/home/tom/code/reject/Dependencies/SDL2-2.0.9/include/SDL_test_md5.h"
    "/home/tom/code/reject/Dependencies/SDL2-2.0.9/include/SDL_test_memory.h"
    "/home/tom/code/reject/Dependencies/SDL2-2.0.9/include/SDL_test_random.h"
    "/home/tom/code/reject/Dependencies/SDL2-2.0.9/include/SDL_thread.h"
    "/home/tom/code/reject/Dependencies/SDL2-2.0.9/include/SDL_timer.h"
    "/home/tom/code/reject/Dependencies/SDL2-2.0.9/include/SDL_touch.h"
    "/home/tom/code/reject/Dependencies/SDL2-2.0.9/include/SDL_types.h"
    "/home/tom/code/reject/Dependencies/SDL2-2.0.9/include/SDL_version.h"
    "/home/tom/code/reject/Dependencies/SDL2-2.0.9/include/SDL_video.h"
    "/home/tom/code/reject/Dependencies/SDL2-2.0.9/include/SDL_vulkan.h"
    "/home/tom/code/reject/Dependencies/SDL2-2.0.9/include/begin_code.h"
    "/home/tom/code/reject/Dependencies/SDL2-2.0.9/include/close_code.h"
    "/home/tom/code/reject/build/Dependencies/SDL2-2.0.9/include/SDL_config.h"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  
          execute_process(COMMAND /usr/bin/cmake -E create_symlink
            "libSDL2-2.0.so" "libSDL2.so")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE FILE FILES "/home/tom/code/reject/build/Dependencies/SDL2-2.0.9/libSDL2.so")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/pkgconfig" TYPE FILE FILES "/home/tom/code/reject/build/Dependencies/SDL2-2.0.9/sdl2.pc")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/bin" TYPE PROGRAM FILES "/home/tom/code/reject/build/Dependencies/SDL2-2.0.9/sdl2-config")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/usr/local/share/aclocal/sdl2.m4")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
file(INSTALL DESTINATION "/usr/local/share/aclocal" TYPE FILE FILES "/home/tom/code/reject/Dependencies/SDL2-2.0.9/sdl2.m4")
endif()
