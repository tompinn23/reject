#include "reject.h"


#include "lodepng.h"
#include "log.h"


#if defined(REJECT_PUBLIC_BUILD)
namespace reject {
#endif
REJECT_API int Engine::pre_init(bool log_to_con, bool log_to_file)
{

	// Initialise the SDL Subsystems.
	log_trace("Attempting to initialise SDL");
	if (SDL_Init(0) < 0)
	{
		log_fatal("Failed to initialise SDL: %s", SDL_GetError());
		return 0;
	}
	log_trace("Initialising TIMERS");
	if (SDL_InitSubSystem(SDL_INIT_TIMER) < 0) {
		log_fatal("Failed to initiise the SDL Timer: %s", SDL_GetError());
		return 0;
	}
	log_trace("Initialising VIDEO");
	if (SDL_InitSubSystem(SDL_INIT_VIDEO) < 0) {
		log_fatal("Failed to initialise SDL Video: %s", SDL_GetError());
		return 0;
	}
	log_trace("Initialising EVENTS");
	if (SDL_InitSubSystem(SDL_INIT_EVENTS) < 0) {
		log_fatal("Failed to initialise SDL Events: %s", SDL_GetError());
		return 0;
	}
	return 1;
}

REJECT_API Engine* Engine::make(int width, int height, fs::path data_dir)
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
		log_error("Error occured in decoding file: %s", lodepng_error_text(error));
		return NULL;
	}

	if (fs::exists(data_dir / "font.png"))
	{
		log_trace("Loading tilemap %s", data_dir / "font.png");
		error = lodepng::decode(font_buffer, fw, fh, (data_dir / "font.png").string());
		if (error)
		{
			log_error("Error occured in decoding file: %s", lodepng_error_text(error));
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

Engine::Engine(int screen_width, int screen_height, int tile_width, int tile_height, int font_width, int font_height, GPU_Target* renderer, GPU_Image* texture, GPU_Image* bg, GPU_Rect* tile_clips, GPU_Rect* font_clips, cell* screen)
	: screen_width(screen_width), screen_height(screen_height), tile_width(tile_width), tile_height(tile_height), font_width(font_width), font_height(font_height), renderer(renderer), texture(texture), bg(bg), tile_clips(tile_clips), font_clips(font_clips), screen(screen)
{
	fg_colour = 0xFFFFFFFF;
	bg_colour = 0x000000FF;
    screen_layer2 = new cell[screen_width * screen_height];
}

REJECT_API void Engine::putc(int x, int y, uint8_t c)
{
   	if ((x < 0 || y < 0) || (x > screen_width || y > screen_height))
		return;
    putc(x, y, {c, fg_colour, bg_colour});
}

REJECT_API void Engine::putc(int x, int y, cell c)
{
    if ((x < 0 || y < 0) || (x > screen_width || y > screen_height))
		return;
    screen[y * screen_width + x] = c;
}

REJECT_API void Engine::putc(int x, int y, int c1, int c2)
{
    if ((x < 0 || y < 0) || (x > screen_width || y > screen_height))
		return;
    cell g;
    g.glyph = c1 << 8 | c2;
    g.fg_colour = fg_colour;
    g.bg_colour = bg_colour;
    putc(x, y, g);
}

REJECT_API void Engine::putc_combine(int x, int y, uint8_t c)
{
    screen_layer2[y * screen_width + x] = {c, fg_colour, 0x00000000};
}

REJECT_API void Engine::internal_printf(int x, int y, const char* fmt, fmt::printf_args args)
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

REJECT_API void Engine::update()
{
    for(int idx = 0; idx < screen_width * screen_height; idx++)
    {
        int x = idx % screen_width;
        int y = idx / screen_width;
        cell c = screen[idx];
        // Double Cell
        if(c.glyph > 255)
        {
            GPU_SetRGBA(texture,
		        c.bg_colour >> 24 & 0xFF,
		        c.bg_colour >> 16 & 0xFF,
		        c.bg_colour >> 8 & 0xFF,
		        c.bg_colour & 0xFF);

	        GPU_Rect bg_rct = tile_clips[253];
	        GPU_Rect dst = GPU_MakeRect((x * tile_width), (y * tile_width), tile_width, tile_height);
	        //GPU_RectangleFilled2(renderer, dst, { bg_colour >> 24 & 0xFF, bg_colour >> 16 & 0xFF, bg_colour >> 8 & 0xFF, bg_colour & 0xFF });
	        GPU_BlitRect(texture, &bg_rct, renderer, &dst);
	        GPU_SetRGBA(texture,
		        c.fg_colour >> 24 & 0xFF,
		        c.fg_colour >> 16 & 0xFF,
		        c.fg_colour >> 8 & 0xFF,
		        c.fg_colour & 0xFF);

	        GPU_Rect src1 = font_clips[c.glyph >> 8 & 0xFF];
	        GPU_Rect src2 = font_clips[c.glyph & 0xFF];

        	GPU_Blit(texture, &src1, renderer, (x * tile_width) + font_width / 2, (y * tile_height) + tile_height / 2);
	        GPU_Blit(texture, &src2, renderer, (x * tile_width) + (tile_width / 2) + (font_width / 2), (y * tile_height) + (tile_height  / 2));
        }
        else
        {
	        GPU_SetRGBA(texture,
		        c.bg_colour >> 24 & 0xFF,
		        c.bg_colour >> 16 & 0xFF,
		        c.bg_colour >> 8 & 0xFF,
		        c.bg_colour & 0xFF);
	        GPU_Rect src = tile_clips[c.glyph];
	        GPU_Rect bg_rct = tile_clips[253];
	        GPU_Rect dst = GPU_MakeRect((x * tile_width), (y * tile_width), tile_width, tile_height);
	        //GPU_RectangleFilled2(renderer, dst, { bg_colour >> 24 & 0xFF, bg_colour >> 16 & 0xFF, bg_colour >> 8 & 0xFF, bg_colour & 0xFF });
	        GPU_BlitRect(texture, &bg_rct, renderer, &dst);
	        GPU_SetRGBA(texture,
		        c.fg_colour >> 24 & 0xFF,
		        c.fg_colour >> 16 & 0xFF,
		        c.fg_colour >> 8 & 0xFF,
		        c.fg_colour & 0xFF);
	        GPU_Blit(texture, &src, renderer, (x * tile_width) + tile_width / 2, (y * tile_height) + tile_height / 2);
        }
    }
    for(int idx = 0; idx < screen_width * screen_height; idx++)
    {
        int x = idx % screen_width;
        int y = idx / screen_width;
        cell c = screen_layer2[idx];
        // Double Cell
        if(c.glyph > 255)
        {
	        GPU_Rect dst = GPU_MakeRect((x * tile_width), (y * tile_width), tile_width, tile_height);
	        GPU_SetRGBA(texture,
		        c.fg_colour >> 24 & 0xFF,
		        c.fg_colour >> 16 & 0xFF,
		        c.fg_colour >> 8 & 0xFF,
		        c.fg_colour & 0xFF);

	        GPU_Rect src1 = font_clips[c.glyph >> 8 & 0xFF];
	        GPU_Rect src2 = font_clips[c.glyph & 0xFF];

        	GPU_Blit(texture, &src1, renderer, (x * tile_width) + font_width / 2, (y * tile_height) + font_height / 2);
	        GPU_Blit(texture, &src2, renderer, (x * tile_width) + (tile_width / 2) + (font_width / 2), (y * tile_height) + (font_height / 2));
        }
        else
        {
	        GPU_Rect src = tile_clips[c.glyph];
	        GPU_Rect dst = GPU_MakeRect((x * tile_width), (y * tile_width), tile_width, tile_height);
	        //GPU_RectangleFilled2(renderer, dst, { bg_colour >> 24 & 0xFF, bg_colour >> 16 & 0xFF, bg_colour >> 8 & 0xFF, bg_colour & 0xFF });
	        GPU_SetRGBA(texture,
		        c.fg_colour >> 24 & 0xFF,
		        c.fg_colour >> 16 & 0xFF,
		        c.fg_colour >> 8 & 0xFF,
		        c.fg_colour & 0xFF);
	        GPU_Blit(texture, &src, renderer, (x * tile_width) + tile_width / 2, (y * tile_height) + tile_height / 2);
        }
    }
    GPU_Flip(renderer);
}

REJECT_API void Engine::clear()
{
    cell c = {32, 0xFFFFFFFF, 0x000000FF};
    std::fill(screen, screen + (screen_width * screen_height), c);
	std::fill(screen_layer2, screen_layer2 + (screen_width * screen_height), c);
}

REJECT_API void Engine::clear(uint8_t r, uint8_t g, uint8_t b)
{
    uint32_t bg = r << 24 | g << 16 | b << 8 | 0xFF;
    cell c = {32, 0xFFFFFFFF, bg};
    std::fill(screen, screen + (screen_width * screen_height), c);
	std::fill(screen_layer2, screen_layer2 + (screen_width * screen_height), c);
}

REJECT_API void Engine::clear_rect(int x, int y, int width, int height)
{
    cell c = {32, 0xFFFFFFFF, bg_colour};
    for(int i = x; i < x + width; i++)
    for(int j = y; j < y + height; j++)
    {
        screen[j * screen_width + i] = c;
    }
}

#if defined(REJECT_PUBLIC_BUILD)
}
#endif