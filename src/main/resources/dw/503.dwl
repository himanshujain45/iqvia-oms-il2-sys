%dw 2.0
import * from dw::core::Strings
output application/json
---
{
	error: {
		TenantId : vars.tenantid,
    	systemType: vars.systemType,
    	transactionID: vars.tid,
		//code: p('exception.serviceUnavailable.errorCode'),
		message: if (isBlank(substringAfter(error.description,'Last exception message was:'))) error.errorType.asString else substringAfter(error.description,'Last exception message was:'), 
		details: error.detailedDescription
	}
}