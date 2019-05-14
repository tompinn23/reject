#include "reject/Error.h"

namespace reject {
	static std::string error_message;

	void SetError(std::string message)
	{
		error_message = message;
	}

	void SetError(char* message)
	{
		SetError(std::string(message));
	}

	std::string GetError()
	{
		return error_message;
	}

}