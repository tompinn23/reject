#include "file.h"

#include "log.h"
#include <cstring>

#ifdef __linux__
#include <unistd.h>
#include <limits.h>
#endif
#ifdef _WIN32
#define NOMINMAX
#include "Windows.h"
#include <vector>
#endif

static fs::path DATA_DIR;
static fs::path EXE_PATH;
static fs::path EXE_DIR;


void initialise_dirs(int argc, char** argv)
{
	log_trace("Initialising paths");
#ifdef __linux__
	char buf[1024];
	memset(buf, 0, sizeof(buf));
	log_trace("Attempting to read '/proc/self/exe'");
	if(readlink("/proc/self/exe", buf, sizeof(buf) - 1) < 0)
	{
		log_error("Failed to get readlink: %s", strerror(errno));	
	}
	EXE_PATH = std::string(buf);
#else
	DWORD last_error;
	DWORD result;
	std::vector<char> path;
	path.resize(1024);
	std::fill(path.begin(), path.end(), 0);
	result = GetModuleFileNameA(0, &path[0], path.size() - 1);
	last_error = GetLastError(); 
	if (result == 0)
	{
		log_fatal("Couldnt get path");
		exit(-1);
	}
	EXE_PATH = std::string(path.begin(), path.end());
#endif
	EXE_DIR = EXE_PATH.parent_path();
	DATA_DIR = EXE_DIR /= "data";
	log_trace("EXE_PATH: %s", EXE_PATH);
	log_trace("EXE_DIR: %s", EXE_DIR);
	log_trace("DATA_DIR: %s", DATA_DIR);
}

fs::path get_data_path()
{
	return DATA_DIR;
}

fs::path get_exe_path()
{
	return EXE_DIR;
}


