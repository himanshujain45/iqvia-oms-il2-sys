output application/java
---
{
	OWNER : if((vars.users)[0].USER_NAME == null) 'CracNoUser' else ((vars.users)[0].USER_NAME ++ '__c'),
    LAST_USER : if((vars.users)[0].USER_NAME == null) 'CracNoUser' else ((vars.users)[0].USER_NAME ++ '__c'),
	MONITORING_VISIT_ID: vars.inputPayload.monitoringVisitId,
	MIGRATION_DATE: vars.inputPayload.migrationDate,
	RETRIES: vars.inputPayload.retries,
	VERSION: vars.inputPayload.version,
	ENTITY_ID: vars.inputPayload.entityId,
	RECORD_STATUS: vars.inputPayload.recordStatus,
	OBJECT_ID: vars.attachmentId.generatedKeys.GENERATED_KEYS,
	OBJECT_TYPE: vars.inputPayload.objectType,
	VERSION_NUMBER: vars.inpautPayload.versionNumber,
	STATUS: vars.inputPayload.status,
	WS_URL: vars.inputPayload.wsUrl,
	MIGRATION_ERROR: vars.inputPayload.migrationError
}