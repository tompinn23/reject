#include "SDL_Screen.h"


#include "lodepng.h"
#include "log.h"

typedef std::vector<unsigned char> bytevec;

namespace reject {

#pragma region initialization

	// INITIALIZATION

	int Engine::pre_init()
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
			reject::SetErrorSDL_GetError());
			return 0;
		}
		
		if (SDL_InitSubSystem(SDL_INIT_EVENTS) < 0) {
			reject::SetErrorSDL_GetError());
			return 0;
		}
		return 1;
	}

	Engine* Engine::make(int width, int height, fs::path data_dir)
	{
		GPU_Target* renderer;
		GPU_Image* texture;
		GPU_Image* bg;
		//GPU_SetDebugLevel(GPU_DEBUG_LEVEL_MAX);

		GPU_Rect* tile_clips = new GPU_Rect[256];
		GPU_Rect* font_clips;

		unsigned tw, th;
		unsigned error;
		std::vector<unsigned char> tile_buffer;

		unsigned fw = 0;
		unsigned fh = 0;
		std::vector<unsigned char> font_buffer;
		log_trace("Loading tilemap %s", data_dir / "tiles.png");
		error = lodepng::decode(tile_buffer, tw, th, (data_dir / "tiles.png").string());
		if (error)
		{
			reject::SetError(lodepng_error_text((error)));
			return NULL;
		}

		if (fs::exists(data_dir / "font.png"))
		{
			log_trace("Loading tilemap %s", data_dir / "font.png");
			error = lodepng::decode(font_buffer, fw, fh, (data_dir / "font.png").string());
			if (error)
			{
				reject::SetError(lodepng_error_text((error)));
				return NULL;
			}
		}

		renderer = GPU_Init(width * (tw / 16), height * (th / 16), GPU_DEFAULT_INIT_FLAGS);
		if (renderer == NULL)
			return NULL;

		bool has_font = (fw != 0 && fh != 0);

		texture = GPU_CreateImage(fw + tw, std::max(fh, th), GPU_FORMAT_RGBA);
		//GPU_SetBlendMode(texture, GPU_BLEND_NORMAL_KEEP_ALPHA);
		//bg = GPU_CreateImage(tw / 16, tw / 16, GPU_FORMAT_BGRA);
		//GPU_SetBlendMode(bg, GPU_BLEND_NORMAL);

		//GPU_Rect bg_rct = GPU_MakeRect(0, 0, tw / 16, tw / 16);

		//uint32_t * bg_col = new uint32_t[(tw / 16) * (th / 16)];

		//memset(bg_col, 0xFFFFFFFF, (tw / 16) * (th / 16));

		//GPU_UpdateImageBytes(bg, &bg_rct, (unsigned char*)bg_col, (tw / 16) * 4);

		for (size_t idx = 0; idx < tile_buffer.size(); idx += 4)
		{
			if (tile_buffer[idx] == 255 && tile_buffer[idx + 1] == 0 && tile_buffer[idx + 2] == 255)
				tile_buffer[idx + 3] = 0;
		}

		GPU_Rect tile_rect = GPU_MakeRect(0, 0, tw, th);
		GPU_UpdateImageBytes(texture, &tile_rect, &tile_buffer[0], tw * 4);

		int idx = 0;
		int tile_width = tw / 16;
		int tile_height = th / 16;

		for (int y = 0; y < 16; y++)
			for (int x = 0; x < 16; x++)
			{
				tile_clips[idx++] = GPU_MakeRect((x * tile_width), (y * tile_height), tile_width, tile_height);
			}

		int font_width = 0;
		int font_height = 0;

		if (has_font)
		{
			font_clips = new GPU_Rect[256];
			font_width = fw / 16;
			font_height = fh / 16;
			for (size_t idx = 0; idx < font_buffer.size(); idx += 4)
			{
				if (font_buffer[idx] == 255 && font_buffer[idx + 1] == 0 && font_buffer[idx + 2] == 255)
					font_buffer[idx + 3] = 0;
			}

			GPU_Rect font_rect = GPU_MakeRect(tw, 0, fw, fh);
			GPU_UpdateImageBytes(texture, &font_rect, &font_buffer[0], fw * 4);


			int idx = 0;

			for (int y = 0; y < 16; y++)
				for (int x = 0; x < 16; x++)
				{
					font_clips[idx++] = { (float)((x * font_width) + tw), (float)(y * font_height), (float)font_width, (float)font_height };
				}
		}
		bg = NULL;
		cell* screen = new cell[width * height];
		GPU_Clear(renderer);
		return new Engine(width,
			height,
			tile_width,
			tile_width,
			font_width,
			font_height,
			renderer,
			texture,
			bg,
			tile_clips,
			font_clips,
			screen);
	}

	Engine::Engine(int screen_width, int screen_height, int tile_width, int tile_height, int font_width, int font_height, GPU_Target * renderer, GPU_Image * texture, GPU_Image * bg, GPU_Rect * tile_clips, GPU_Rect * font_clips, cell * screen)
		: screen_width(screen_width), screen_height(screen_height), tile_width(tile_width), tile_height(tile_height), font_width(font_width), font_height(font_height), renderer(renderer), texture(texture), bg(bg), tile_clips(tile_clips), font_clips(font_clips), screen(screen)
	{
		fg_colour = 0xFFFFFFFF;
		bg_colour = 0x000000FF;
	}

#pragma endregion Initialization Functions

#pragma region drawing

	REJECT_API void Engine::putc(int x, int y, uint8_t character)
	{
		if ((x < 0 || y < 0) || (x > screen_width || y > screen_height))
			return;
		putc(x, y, { c, fg_colour, bg_colour });
	}

	REJECT_API void Engine::putc(int x, int y, cell character)
	{
		if ((x < 0 || y < 0) || (x > screen_width || y > screen_height))
			return;
		GPU_Rect bg_rect = tile_clips[253];
		if (character.glyph > 255)
		{
			GPU_SetRGBA(texture,
				character.bg_colour >> 24 & 0xFF,
				character.bg_colour >> 16 & 0xFF,
				character.bg_colour >> 8 & 0xFF,
				character.bg_colour & 0xFF);

			GPU_Rect dst = GPU_MakeRect((x * tile_width), (y * tile_width), tile_width, tile_height);
			//GPU_RectangleFilled2(renderer, dst, { bg_colour >> 24 & 0xFF, bg_colour >> 16 & 0xFF, bg_colour >> 8 & 0xFF, bg_colour & 0xFF });
			GPU_BlitRect(texture, &bg_rect, renderer, &dst);
			GPU_SetRGBA(texture,
				character.fg_colour >> 24 & 0xFF,
				character.fg_colour >> 16 & 0xFF,
				character.fg_colour >> 8 & 0xFF,
				character.fg_colour & 0xFF);

			GPU_Rect src1 = font_clips[character.glyph >> 8 & 0xFF];
			GPU_Rect src2 = font_clips[character.glyph & 0xFF];

			GPU_Blit(texture, &src1, renderer, (x * tile_width) + font_width / 2, (y * tile_height) + tile_height / 2);
			GPU_Blit(texture, &src2, renderer, (x * tile_width) + (tile_width / 2) + (font_width / 2), (y * tile_height) + (tile_height / 2));
		}
		else
		{
			GPU_SetRGBA(texture,
				character.bg_colour >> 24 & 0xFF,
				character.bg_colour >> 16 & 0xFF,
				character.bg_colour >> 8 & 0xFF,
				character.bg_colour & 0xFF);
			GPU_Rect src = tile_clips[character.glyph];
			GPU_Rect dst = GPU_MakeRect((x * tile_width), (y * tile_width), tile_width, tile_height);
			//GPU_RectangleFilled2(renderer, dst, { bg_colour >> 24 & 0xFF, bg_colour >> 16 & 0xFF, bg_colour >> 8 & 0xFF, bg_colour & 0xFF });
			GPU_BlitRect(texture, &bg_rect, renderer, &dst);
			GPU_SetRGBA(texture,
				character.fg_colour >> 24 & 0xFF,
				character.fg_colour >> 16 & 0xFF,
				character.fg_colour >> 8 & 0xFF,
				character.fg_colour & 0xFF);
			GPU_Blit(texture, &src, renderer, (x * tile_width) + tile_width / 2, (y * tile_height) + tile_height / 2);
		}
	}

	REJECT_API void Engine::putc(int x, int y, uint8_t character1, uint8_t character2)
	{
		if ((x < 0 || y < 0) || (x > screen_width || y > screen_height))
			return;
		cell g;
		g.glyph = c1 << 8 | c2;
		g.fg_colour = fg_colour;
		g.bg_colour = bg_colour;
		putc(x, y, g);
	}

	REJECT_API void internal_printf(int x, int y, const char* fmt, fmt::printf_args args)
	{
		std::string str = fmt::vsprintf(fmt, args);
		if (str.find("[fullsize=true]") == 0)
		{
			str = str.substr(15);
			for (auto& a : str)
			{
				putc(x++, y, a);
			}
			return;
		}
		int string_width = str.size();
		for (int i = 0; i < string_width; i += 2)
		{
			if ((i + 1) > str.size())
			{
				putc(x + i, y, str[i], 32);
			}
			putc(x + (i / 2), y, str[i], str[i + 1]);
		}
	}

#pragma endregion Drawing functions

#pragma region utility
	REJECT_API void update()
	{
		GPU_Flip(renderer);
	}

	REJECT_API void clear()
	{
		GPU_Clear();
	}

	REJECT_API void clear(uint8_t r, uint8_t g, uint8_t b)
	{
		GPU_ClearRGB(r, g, b);
	}

	REJECT_API void clear(uint32_t colour)
	{
		GPU_ClearRGBA(colour >> 24 & 0xFF, colour >> 16 & 0xFF, colour >> 8 && 0xFF, colour & 0xFF);
	}
#pragma endregion Utility Functions

}