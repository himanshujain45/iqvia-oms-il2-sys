%dw 2.0
output application/java
---
if(error.errorType.namespace == 'VALIDATION') 'Data Error : Data Validation Error'
else if((error.errorType.asString == 'DB:CONNECTIVITY') or (error.errorType.asString == 'DB:RETRY_EXHAUSTED')) 'System Error : Connecting to IL2 DB'
else if ((lower(error.description) contains('bad request')) or (error.errorType.asString == 'DB:BAD_SQL_SYNTAX') or (error.errorType.asString == 'DB:QUERY_EXECUTION')) 'BAD REQUEST'
else 'Internal System Error : Mulesoft' 
