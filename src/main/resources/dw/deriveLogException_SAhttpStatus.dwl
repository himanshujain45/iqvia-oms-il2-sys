%dw 2.0
output application/java
---
if (lower(error.description) contains('bad request')) p('exception.badRequest.errorCode')
else if (error.errorType.namespace == 'VALIDATION') p('exception.validation.errorCode')
else if (lower(error.description) contains('timeout')) p('exception.timeout.errorCode')
else if (lower(error.description) contains('connect'))  p('exception.internalServerError.errorCode')
else p('exception.serviceUnavailable.errorCode')
