#pragma once

#include <string>

namespace reject {
	void SetError(std::string message);
	std::string GetError();
}