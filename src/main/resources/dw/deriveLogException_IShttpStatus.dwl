%dw 2.0
output application/java
---
if ((lower(error.description) contains('bad request')) or (error.errorType.asString == 'DB:BAD_SQL_SYNTAX') or (error.errorType.asString == 'DB:QUERY_EXECUTION')) p('exception.badRequest.errorCode')
else if (error.errorType.namespace == 'VALIDATION') p('exception.validation.errorCode')
else if (lower(error.description) contains('timeout')) p('exception.timeout.errorCode')
else p('exception.internalServerError.errorCode')