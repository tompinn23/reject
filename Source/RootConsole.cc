#include "reject/RootConsole.h"
#include <bitset>

namespace reject {
	RootConsole::RootConsole(int width, int height, Engine* engine)
		: Console(width, height)
	{

	}

	RootConsole* RootConsole::init(int width, int height, fs::path dataDir)
	{
		Engine* eng = Engine::make(width, height, dataDir);
		if (eng == NULL)
		{
			return NULL;
		}
		return new RootConsole(width, height, eng);
	}

	void RootConsole::putc(int x, int y, uint8_t c)
	{
		putc(x, y, { c, fg_colour, bg_colour });
	}

	void RootConsole::putc(int x, int y, cell c)
	{
		if(layer != 0)
			engine->putc(x, y, c);
		else
		{
			c.bg_colour = 0x00000000;
			engine->putc(x, y, c);
		}
		
	}

	void RootConsole::clear(uint32_t rgba)
	{
		engine->clear(rgba);
	}

	void RootConsole::blit(Console con, int x, int y, int w, int h)
	{
		for(int idx = 0; idx < LAYERS_MAX; idx++)
		{
			if(con.get_dirty(idx))
			{
				cell* layer = con.get_layer(idx);
				for(int i = 0; i < w; i++)
				for(int j = 0; j < h; j++)
				{
					cell c = layer[x * con.get_height() + y];
					if(c.glyph == 32) // IS SPACE
						continue;
					if(c.fg_colour == c.bg_colour) // NOT GONNA SHOW
						continue;
					if(c.fg_colour & 0xFF == 0) //TRANSPARENT
						continue;
					if(layer != 0)
					{
						c.bg_colour = 0x00000000;
						engine->putc(x, y, c);
					}
					else
						engine->putc(x, y, c);
				}
			}
		}
	}

	void RootConsole::update()
	{
		engine->update();
	}
}