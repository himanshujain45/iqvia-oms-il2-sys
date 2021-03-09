import * from dw::core::Strings
output application/java
---
{
MONITORING_VISIT_ID: vars.inputPayload.monitoringVisitID,
DOCUMENT_TYPE: (vars.inputPayload.documentType splitBy(","))[0],
DOCUMENT_SENT_DATE: vars.inputPayload.confirmedDate,
DOCUMENT_VERSION: vars.inputPayload.documentVersion,
LAST_USER : if((vars.users)[0].USER_NAME == null) 'CracNoUser' else ((vars.users)[0].USER_NAME ++ '__c'),
DOC_TYPE: substringAfter((vars.inputPayload.documentType splitBy(","))[0],' ')
	
}