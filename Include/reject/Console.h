#pragma once

#include "reject.h"
#include "SDL_Screen.h"

namespace reject {

	class Console {
	public:
		Console(int width, int height);

		virtual void putc(int x, int y, uint8_t c);
		virtual void putc(int x, int y, cell c);

		template<typename... Args>
		void printf(int x, int y, const char* format, const Args& ... args) {
			internal_printf(x, y, format, fmt::make_printf_args(args...));
		}

		virtual void clear(uint32_t rgba = 0x000000FF);
		void clear_area(int x, int y, int w, int h, uint32_t rgba = 0x000000FF);

		void set_layer(int layer) { this->layer = layer; }

		uint32_t fg_colour;
		uint32_t bg_colour;

		int get_width() { return width; }
		int get_height() { return height; }

		bool get_dirty(int idx) { return dirty_layers[idx]; }
		cell* get_layer(int layer) { return layers[layer]; }

	private:
		void internal_printf(int x, int y, const char* format, fmt::printf_args args);
		int width;
		int height;

	protected:
		int layer = 0;
		bool dirty_layers[LAYERS_MAX];
		std::vector<cell*> layers;
	};

}