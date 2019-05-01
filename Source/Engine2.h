#pragma once

#include <stdint.h>

#include "SDL.h"
#include "SDL_gpu.h"
#include "fmt/printf.h"

#if defined(_MSC_VER)
#include <filesystem>
namespace fs = std::experimental::filesystem;
#endif

#if defined(__GNUC__)
#include <filesystem>
namespace fs = std::filesystem;
#endif


struct cell {
	uint16_t glyph;
	uint32_t fg_colour;
	uint32_t bg_colour;
};

struct internal_cell {
	uint8_t glyph;
	uint32_t fg_colour;
	SDL_Rect src;
	SDL_Rect dst;
};

struct dimensions {
	int screen_width;
	int screen_height;
	int tile_width;
	int tile_height;
	int font_width;
	int font_height;
};

class Window;

class Engine {
	friend class Window;
public:
	static int pre_init();
	/*
	 * Makes a brand new engine.
	 */
	static Engine* make(int width, int height, fs::path data_dir);
	/*
	 * Putc collection:
	 *
	 * Puts a single character on the screen at a given set of coords.
	 */
	void putc(int x, int y, int c);
	void putc(int x, int y, cell c);
	void putc(int x, int y, int c1, int c2);
	void putc_combine(int x, int y, int c);
	/*
	 * Prints a string to the screen using printf formatting.
	 */
	template<typename... Args>
	void printf(int x, int y, const char* format, const Args&... args) {
		internal_printf(x, y, format, fmt::make_printf_args(args...));		
	}


	void set_fg(int r, int g, int b) { fg_colour = r << 24 | g << 16 | b << 8 | 0xFF; }
	void set_fg(int r, int g, int b, int a) { fg_colour = r << 24 | g << 16 | b << 8 | a; } 

	void set_bg(int r, int g, int b) { bg_colour = r << 24 | g << 16 | b << 8 | 0xFF; }
	void set_bg(int r, int g, int b, int a) { bg_colour = r << 24 | g << 16 | b << 8 | a; }

	void update();
	void clear();
	void clear(uint8_t r, uint8_t g, uint8_t b);
	void clear_rect(int x, int y, int width, int height);
	

	uint32_t fg_colour;
	uint32_t bg_colour;
private:
	Engine(int screen_width,
		int screen_height,
		int tile_width,
		int tile_height,
		int font_width,
		int font_height,
		GPU_Target* renderer,
		GPU_Image* texture,
		GPU_Image* bg,
		GPU_Rect* tile_clips,
		GPU_Rect* font_clips,
        cell* screen);

	void internal_printf(int x, int y, const char* fmt, fmt::printf_args args);
	
	int screen_width;
	int screen_height;
	int tile_width;
	int tile_height;
	int font_width;
	int font_height;

    cell* screen;
    cell* screen_layer2;

	GPU_Target* renderer;
	GPU_Image* texture;
	GPU_Image* bg;
	GPU_Rect* tile_clips;
	GPU_Rect* font_clips;
};
