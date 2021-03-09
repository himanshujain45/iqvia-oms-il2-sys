%dw 2.0
output application/json
---
{
    error:{
             
             TenantId : vars.tenantid,
    		 systemType: vars.systemType,
    		 transactionID: vars.tid,
             code: p('exception.methodNotAllowed.errorCode'),
             message: error.errorType.asString,
			 details: error.detailedDescription
             }
}