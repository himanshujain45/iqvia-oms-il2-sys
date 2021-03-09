output application/java
---
{   
	OWNER : if((vars.users)[0].USER_NAME == null) 'CracNoUser' else ((vars.users)[0].USER_NAME ++ '__c'),
    LAST_USER : if((vars.users)[0].USER_NAME == null) 'CracNoUser' else ((vars.users)[0].USER_NAME ++ '__c'),
	VERSION: vars.inputPayload.version,
	ENTITY_ID: vars.inputPayload.entityId,
	RECORD_STATUS: vars.inputPayload.recordStatus,
	DATE_MODIFIED: vars.inputPayload.dateModified,
	DATE_SIGNED: vars.inputPayload.dateSigned,
	DATE_SIGNED_USER: vars.inputPayload.dateSignedUser,
	IS_LOCKED: vars.inputPayload.isLocked,
	LOCATION_DETAIL_ID: (vars.users)[0].LOCATION_DETAIL_ID,
	RELATED_ATTACHMENT_ID: vars.attachmentId.generatedKeys.GENERATED_KEYS,
	RELATED_ATTACHMENT_REV: vars.inputPayload.relatedAttachmentRev,
	RELATED_OBJECT_ID: (vars.documentId)[0].ID,
	RELATED_TYPE_ID: vars.inputPayload.relatedTypeId,
	SIGN_ACTION: vars.inputPayload.signAction,
	SIGN_STATUS: vars.inputPayload.signStatus,
	USERS_ID: (vars.users)[0].ID
}