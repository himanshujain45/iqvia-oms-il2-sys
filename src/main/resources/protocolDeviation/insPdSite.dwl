output application/java
---
{
PROTOCOL_DEVIATION_ID : vars.protocolDeviationID.generatedKeys.GENERATED_KEYS,
PROTOCOL_SITE_ID : vars.inputPayload.protocolSiteId,
PI_NOTIFIED : vars.inputPayload.piNotified,
ENTITY_ID: vars.inputPayload.entityId,
RECORD_STATUS: vars.inputPayload.recordStatus,
NO_SUBJECT_ASSOCIATED : vars.inputPayload.noSubjectAssociated,
DATE_CREATED : vars.inputPayload.dateCreated,
DATE_START : vars.inputPayload.dateStart,
OWNER : if((vars.users)[0].USER_NAME == null) 'CracNoUser' else ((vars.users)[0].USER_NAME ++ '__c'),
LAST_USER : if((vars.users)[0].USER_NAME == null) 'CracNoUser' else ((vars.users)[0].USER_NAME ++ '__c')
	
}