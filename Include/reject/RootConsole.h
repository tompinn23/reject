#pragma once

#include "Console.h"

namespace reject {
	class RootConsole : public Console {
		friend class Console;
	public:
		static RootConsole* init(int width, int height, fs::path dataDir);

		void putc(int x, int y, uint8_t c);
		void putc(int x, int y, cell c);

		void clear(uint32_t rgba = 0x000000FF);

		void blit(Console con, int x, int y, int w, int h);
		void update();
		

	private:
		RootConsole(int width, int height, Engine* engine);

		Engine* engine;
	};
}