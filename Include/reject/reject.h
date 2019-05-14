#pragma once

#include <stdint.h>

#include "SDL.h"
#include "SDL_gpu.h"
#include "fmt/printf.h"
#include "SDL_Screen.h"

#if defined(_MSC_VER)
#include <filesystem>
namespace fs = std::experimental::filesystem;
#endif

#if defined(__GNUC__)
#include <filesystem>
namespace fs = std::filesystem;
#endif

#ifndef REJECT_API
# if defined(__WIN32__) || defined(__WINRT__)
#  define REJECT_API __declspec(dllexport)
# endif
#else
# if defined(__GNUC__) && __GNUC__ >= 4
#  define REJECT_API __attribute__ ((visibility("default")))
# else
#  define REJECT_API
# endif
#endif

#define LAYERS_MAX 8

