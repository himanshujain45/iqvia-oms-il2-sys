%dw 2.0
import * from dw::core::Strings
output application/json
---
{
	error: {
		message: if (isBlank(substringAfter(error.description,'Last exception message was:'))) error.errorType.asString else substringAfter(error.description,'Last exception message was:'), 
		details: error.description
	}
}