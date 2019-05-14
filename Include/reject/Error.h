#pragma once

#include <string>

namespace reject {
	void SetError(std::string message);
	void SetError(char* message);
	std::string GetError();
}