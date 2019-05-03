#include <iostream>

#include "reject.h"

int main(int argc, char** argv)
{
	reject::Engine::pre_init();
	reject::Engine* eng = reject::Engine::make(120, 80, "data/");
	eng->clear();
	eng->putc(1, 1, 'T');
	eng->printf(1, 2, "Tom Pinnock %n, %s", 4, "Testing");
	eng->update();
	while (1);

	std::cout << "Hello World\n";

	return 0;
}