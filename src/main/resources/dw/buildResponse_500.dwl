%dw 2.0
output application/json
---
{
	error: {
		message: error.errorType.asString,
		details: error.detailedDescription
	}
} 