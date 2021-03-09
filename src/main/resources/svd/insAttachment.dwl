output application/java
---
{
	OWNER : if((vars.users)[0].USER_NAME == null) 'CracNoUser' else ((vars.users)[0].USER_NAME ++ '__c'),
    LAST_USER : if((vars.users)[0].USER_NAME == null) 'CracNoUser' else ((vars.users)[0].USER_NAME ++ '__c'),
	ENTITY_ID: vars.inputPayload.entityId,
	RECORD_STATUS: vars.inputPayload.recordStatus,
	ATTACHMENT_NAME: vars.inputPayload.attachmentName,
	AUTHOR: if((vars.users)[0].USER_NAME == null) 'CracNoUser' else ((vars.users)[0].USER_NAME ++ '__c'),
	CONTENT_SIZE: vars.inputPayload.contentSize,
	DATE_MODIFIED: vars.inputPayload.dateModified,
	DOCUMENT_ID: (vars.documentId)[0].ID,
	IS_CHECKED_OUT: vars.inputPayload.isCheckedOut,
	IS_INTERNAL_VIEW_ONLY: vars.inputPayload.isInternalViewOnly,
	REVISION_NUMBER: vars.inputPayload.revisionNumber
}