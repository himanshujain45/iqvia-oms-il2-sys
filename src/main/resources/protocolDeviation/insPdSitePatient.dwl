output application/java
---
{
PD_SITE_ID : if ((vars.pdSiteID.generatedKeys.GENERATED_KEYS) == null) (vars.pdSite)[0].ID else vars.pdSiteID.generatedKeys.GENERATED_KEYS,
PATIENT_NUMBER : vars.inputPayload.patientNumber,
SUBJECT_WITHDRAWN : vars.inputPayload.subjectWithdrawn,
ENTITY_ID: vars.inputPayload.entityId,
RECORD_STATUS: vars.inputPayload.recordStatus,
DATE_CREATED : vars.inputPayload.dateCreated,
DATE_START : vars.inputPayload.dateStart,
OWNER : if((vars.users)[0].USER_NAME == null) 'CracNoUser' else ((vars.users)[0].USER_NAME ++ '__c'),
LAST_USER : if((vars.users)[0].USER_NAME == null) 'CracNoUser' else ((vars.users)[0].USER_NAME ++ '__c')
	
}