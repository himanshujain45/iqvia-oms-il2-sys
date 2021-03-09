output application/java
---
{
	OCCURRANCE_DATE: vars.inputPayload.occuranceDate,
	DATE_CLOSED: vars.inputPayload.dateClosed,	
	FOLLOW_UP_DATE: vars.inputPayload.followUpDate,
	COMMENTS: vars.inputPayload.comments,
	STUDY_ISSUE_TYPE_ID: (vars.studyIssueTypeID)[0].ID,
	NOTES: vars.inputPayload.notes,
	STUDY_ISSUE_STATUS_ID: (vars.studyIssueStatusID)[0].ID,
	PROTOCOL_SITE_ID: vars.inputPayload.protocolSiteId,
	ENTITY_ID: vars.inputPayload.entityId,
	RECORD_STATUS: vars.inputPayload.recordStatus,
	ALLOW_OMVR_UPDATES: vars.inputPayload.allowOMVRUpdates,
	RECORD_LOCKED: vars.inputPayload.recordLocked,
	DATE_CREATED: vars.inputPayload.dateCreated,
	DATE_START: vars.inputPayload.dateStart,
	OWNER : if((vars.users)[0].USER_NAME == null) 'CracNoUser' else ((vars.users)[0].USER_NAME ++ '__c'),
	LAST_USER : if((vars.users)[0].USER_NAME == null) 'CracNoUser' else ((vars.users)[0].USER_NAME ++ '__c'),
	ASSIGNED_TO : vars.inputPayload.assignedTo
}