output application/java
---
{
	ID: vars.inputPayload.studyIssueID,
	OCCURRANCE_DATE: vars.inputPayload.occuranceDate,
	DATE_CLOSED: vars.inputPayload.dateClosed,	
	FOLLOW_UP_DATE: vars.inputPayload.followUpDate,
	COMMENTS: vars.inputPayload.comments,
	STUDY_ISSUE_TYPE_ID: (vars.studyIssueTypeID)[0].ID,
	NOTES: vars.inputPayload.notes,
	STUDY_ISSUE_STATUS_ID: (vars.studyIssueStatusID)[0].ID,
	PROTOCOL_SITE_ID: vars.inputPayload.protocolSiteId,
	RECORD_LOCKED: vars.inputPayload.recordLocked,
	LAST_USER : if((vars.users)[0].USER_NAME == null) 'CracNoUser' else ((vars.users)[0].USER_NAME ++ '__c'),
	ASSIGNED_TO : vars.inputPayload.assignedTo
	
}