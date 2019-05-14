#include "reject/RootConsole.h"

namespace reject {
	RootConsole::RootConsole(int width, int height, Engine* engine)
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

}