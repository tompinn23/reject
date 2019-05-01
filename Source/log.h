/**
 * Copyright (c) 2017 rxi
 *
 * This library is free software; you can redistribute it and/or modify it
 * under the terms of the MIT license. See `log.c` for details.
 */

#ifndef LOG_H
#define LOG_H

#define _CRT_SECURE_NO_WARNINGS 1

#include <stdio.h>
#include <stdarg.h>

#include "fmt/format.h"
#include "fmt/printf.h"


#define LOG_VERSION "0.1.0"
//#define LOG_USE_COLOR

typedef void(*log_LockFn)(void *udata, int lock);

enum { LOG_TRACE, LOG_DEBUG, LOG_INFO, LOG_WARN, LOG_ERROR, LOG_FATAL };
#if defined(WIN32) || defined(_WIN32)
constexpr const char* str_end(const char* str) {
	return *str ? str_end(str + 1) : str;
}

constexpr bool str_slant(const char* str) {
	return *str == '\\' ? true : (*str ? str_slant(str + 1) : false);
}

constexpr const char* r_slant(const char* str) {
	return *str == '\\' ? (str + 1) : r_slant(str - 1);
}
constexpr const char* file_name(const char* str) {
	return str_slant(str) ? r_slant(str_end(str)) : str;
}

#else
constexpr const char* str_end(const char* str) {
	return *str ? str_end(str + 1) : str;
}

constexpr bool str_slant(const char* str) {
	return *str == '/' ? true : (*str ? str_slant(str + 1) : false);
}

constexpr const char* r_slant(const char* str) {
	return *str == '/' ? (str + 1) : r_slant(str - 1);
}
constexpr const char* file_name(const char* str) {
	return str_slant(str) ? r_slant(str_end(str)) : str;
}

#endif

//#if defined(WIN32) || defined(_WIN32)
#define __SHORT_FILE__ __FILE__
/*#else 
using cstr = const char * const;

static constexpr cstr past_last_slash(cstr str, cstr last_slash)
{
    return
        *str == '\0' ? last_slash :
        *str == '/'  ? past_last_slash(str + 1, str + 1) :
                       past_last_slash(str + 1, last_slash);
}

static constexpr cstr past_last_slash(cstr str) 
{ 
    return past_last_slash(str, str);
}

#define __SHORT_FILE__ ({constexpr cstr sf__ {past_last_slash(__FILE__)}; sf__;})

#endif*/

#define log_trace(...) fmt_log_log(LOG_TRACE, file_name(__SHORT_FILE__), __LINE__, __VA_ARGS__)
#define log_debug(...) fmt_log_log(LOG_DEBUG, file_name(__SHORT_FILE__), __LINE__, __VA_ARGS__)
#define log_info(...)  fmt_log_log(LOG_INFO,  file_name(__SHORT_FILE__), __LINE__, __VA_ARGS__)
#define log_warn(...)  fmt_log_log(LOG_WARN,  file_name(__SHORT_FILE__), __LINE__, __VA_ARGS__)
#define log_error(...) fmt_log_log(LOG_ERROR, file_name(__SHORT_FILE__), __LINE__, __VA_ARGS__)
#define log_fatal(...) fmt_log_log(LOG_FATAL, file_name(__SHORT_FILE__), __LINE__, __VA_ARGS__)

void log_set_udata(void *udata);
void log_set_lock(log_LockFn fn);
void log_set_fp(FILE *fp);
void log_set_level(int level);
void log_set_quiet(int enable);

void log_log(int level, const char *file, int line, const char *fmt, ...);
void fmt_log(int level, const char* file, int line, const char* format, fmt::printf_args args);

template<typename... Args>
void fmt_log_log(int level, const char* file, int line, const char* format, const Args&... args) {
	fmt_log(level, file, line, format, fmt::make_printf_args(args...));
}

#endif
