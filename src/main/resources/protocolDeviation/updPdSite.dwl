output application/java
---
{
//PROTOCOL_DEVIATION_ID : vars.inputPayload.protocolDeviationId,
ID: (vars.pdSite)[0].ID,
PROTOCOL_SITE_ID : vars.inputPayload.protocolSiteId,
NO_SUBJECT_ASSOCIATED : vars.inputPayload.noSubjectAssociated,
LAST_USER : if((vars.users)[0].USER_NAME == null) 'CracNoUser' else ((vars.users)[0].USER_NAME ++ '__c')
	
}