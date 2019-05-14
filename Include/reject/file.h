#pragma once

#include <string>


#if defined(_MSC_VER)
#include <filesystem>
namespace fs = std::experimental::filesystem;
#endif

#if defined(__GNUC__)
#include <filesystem>
namespace fs = std::filesystem;
#endif

void initialise_dirs(int argc, char** argv);

fs::path get_data_path();
fs::path get_exe_path();


