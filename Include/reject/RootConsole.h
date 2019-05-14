#pragma once

#include "Console.h"

namespace reject {
	class RootConsole : public Console {
	public:
		RootConsole* init(int width, fs::path dataDir);

		

	private:
		RootConsole(int width, int height, Engine* engine);

		Engine* engine;
	};
}