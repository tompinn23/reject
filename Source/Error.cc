#include "reject/Error.h"

namespace reject {
	static std::string error_message;

	void SetError(std::string message)
	{
		error_message = message;
	}

	std::string GetError()
	{
		return error_message;
	}

}