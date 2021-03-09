 output application/java
 ---
 {
 	IS_PRIMARY: vars.inputPayload.isPrimary, 
 	SHARED_EMAIL_ADDRESS: vars.inputPayload.sharedEmailAddress,
 	EMAIL_ADDRESS: vars.inputPayload.emailAddress, 
 	EMAIL_TYPE: vars.inputPayload.emailType, 
 	CONTACT_ID: vars.contact.generatedKeys.GENERATED_KEYS,
 	ENTITY_ID : vars.inputPayload.entityId,
	RECORD_STATUS : vars.inputPayload.recordStatus,
	FROM_ASCO : vars.inputPayload.fromAsco,
	DATE_CREATED : vars.inputPayload.dateCreated,
	DATE_START : vars.inputPayload.dateStart,
		OWNER: if((vars.users)[0].USER_NAME == null) 'CracNoUser' else ((vars.users)[0].USER_NAME ++ '__c'),
	LAST_USER: if((vars.users)[0].USER_NAME == null) 'CracNoUser' else ((vars.users)[0].USER_NAME ++ '__c') 
 	
 }