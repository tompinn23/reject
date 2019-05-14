#include "reject/reject.h"

#include "reject/Error.h"

#include "SDL.h"


namespace reject {
    int pre_init()
    {
        if (SDL_Init(0) < 0)
		{
			reject::SetError(SDL_GetError());
			return 0;
		}
		
		if (SDL_InitSubSystem(SDL_INIT_TIMER) < 0) {
			reject::SetError(SDL_GetError());
			return 0;
		}

		if (SDL_InitSubSystem(SDL_INIT_VIDEO) < 0) {
			reject::SetError(SDL_GetError());
			return 0;
		}
		
		if (SDL_InitSubSystem(SDL_INIT_EVENTS) < 0) {
			reject::SetError(SDL_GetError());
			return 0;
		}
		return 1;
    }
}