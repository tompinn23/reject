#include "reject/Console.h"

#include <algorithm>

namespace reject {
	Console::Console(int width, int height)
		: width(width), height(height)
	{
		for (int l = 0; l < LAYERS_MAX; l++)
		{
			layers.push_back(new cell[width * height]);
		}
	}

	void Console::putc(int x, int y, uint8_t c)
	{
		putc(x, y, { c, fg_colour, bg_colour });
		dirty_layers[layer] = true;
	}

	void Console::putc(int x, int y, cell c)
	{
		layers[layer][x * height + y] = c;
		dirty_layers[layer] = true;
	}

	void Console::clear(uint32_t rgba)
	{
		cell c = {' ', 0x00000000, rgba};
		std::fill(layers[layer], layers[layer] + width * height, c);
		dirty_layers[layer] = false;
	}

	void Console::clear_area(int x, int y, int w, int h, uint32_t rgba)
	{
		for (int i = x; i < w; i++)
			for (int j = y; y < h; j++)
				layers[layer][x * height + y] = { ' ', 0x00000000, rgba };
	}

	void Console::internal_printf(int x, int y, const char* format, fmt::printf_args args)
	{
		std::string msg = fmt::vsprintf(format, args);
		int string_width = msg.size();
		for (int i = 0; i < string_width; i += 2)
		{
			if ((i + 1) > msg.size())
			{
				uint16_t glyph = msg[i] << 8 | 32;
				putc(x + i, y, {glyph, fg_colour, bg_colour });
			}
			uint16_t glyph = msg[i] << 8 | msg[i + 1];
			putc(x + (i / 2), y, { glyph, fg_colour, bg_colour });
		}
	}
}