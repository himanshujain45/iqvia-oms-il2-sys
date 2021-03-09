output application/java
---
{
	
EMAIL_ADDRESS : vars.inputPayload.emailAddress,
EMAIL_TYPE : vars.inputPayload.emailType,
CONTACT_ID : vars.inputPayload.contactId,
GLOBAL_SITE_ID : (vars.protocolSite)[0].GLOBAL_SITE_ID,
PROTOCOL_ID : (vars.protocolSite)[0].PROTOCOL_ID,
SHARED_EMAIL_ADDRESS : vars.inputPayload.sharedEmailAddress,
IS_PRIMARY: vars.inputPayload.isPrimary,
FROM_ASCO : vars.inputPayload.fromAsco,
ENTITY_ID : vars.inputPayload.entityId,
RECORD_STATUS : vars.inputPayload.recordStatus,
OWNER : if((vars.users)[0].USER_NAME == null) 'CracNoUser' else ((vars.users)[0].USER_NAME ++ '__c'),
LAST_USER : if((vars.users)[0].USER_NAME == null) 'CracNoUser' else ((vars.users)[0].USER_NAME ++ '__c'),
DATE_CREATED : vars.inputPayload.dateCreated,
DATE_START : vars.inputPayload.dateStart
	
}