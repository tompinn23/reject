#include <iostream>

#include "reject/RootConsole.h"

int main(int argc, char** argv)
{
	reject::pre_init();
	reject::RootConsole* con = reject::RootConsole::init(80, 110, "data");
	con->putc(2, 2, '2');
	reject::Console new_con = reject::Console(20, 10);
	new_con.putc(5, 5, 'T');
	new_con.fg_colour = 0xFF33FFFF;
	new_con.printf(5, 6, "HELLLO");
	con->blit(new_con, 10, 10, 20, 10);
	std::cout << "Hello World\n";
	

	while(true)
	{
		con->update();
	}

	return 0;
}