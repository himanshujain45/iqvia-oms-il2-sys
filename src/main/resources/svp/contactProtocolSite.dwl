output application/java
---
{
	
CONTACT_PROTOCOL_SITE_ROLE : vars.contactRole.primaryRole,
CONTACT_PROTOCOL_SITE_SEC_ROLE : vars.contactRole.secondaryRole,
CONTACT_ID : vars.inputPayload.contactId,
PROTOCOL_SITE_ID : vars.inputPayload.protocolSiteId,
ENTITY_ID : vars.inputPayload.entityId,
RECORD_STATUS : vars.inputPayload.recordStatus,
OWNER : if((vars.users)[0].USER_NAME == null) 'CracNoUser' else ((vars.users)[0].USER_NAME ++ '__c'),
LAST_USER : if((vars.users)[0].USER_NAME == null) 'CracNoUser' else ((vars.users)[0].USER_NAME ++ '__c'),
DATE_CREATED : vars.inputPayload.dateCreated,
DATE_START : vars.inputPayload.dateStart
	
}