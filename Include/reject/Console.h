#pragma once

#include "reject.h"
#include "SDL_Screen.h"

namespace reject {

	class Console {
	public:
		Console(int width, int height);

		void putc(int x, int y, uint8_t c);
		void putc(int x, int y, cell c);

		template<typename... Args>
		void printf(int x, int y, const char* format, const Args& ... args) {
			internal_printf(x, y, format, fmt::make_printf_args(args...));
		}

		void clear(uint32_t rgba = 0x000000FF);
		void clear_area(int x, int y, int w, int h, uint32_t rgba = 0x000000FF);

		uint32_t fg_colour;
		uint32_t bg_colour;

	private:
		void internal_printf(int x, int y, format, fmt::printf_args args);
		int width;
		int height;

		int layer;
		bool[] dirty_layers = bool[LAYERS_MAX];
		std::vector<cell*> layers;
	};

}