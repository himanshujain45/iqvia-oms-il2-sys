output application/java
---
{
	MONITORING_VISIT_ID: if ((vars.monitoringVisit.generatedKeys.GENERATED_KEYS) == null) vars.inputPayload.monitoringVisitID else vars.monitoringVisit.generatedKeys.GENERATED_KEYS,
	MONITORING_CONTACT_ID: (vars.contact)[0].ID,
	PRIMARY_VISIT_CONTACT: vars.inputPayload.primaryVisitContact,
	ENTITY_ID: vars.inputPayload.entityId,
	RECORD_STATUS: vars.inputPayload.recordStatus,
	VISIT_DAYS: vars.inputPayload.visitDays,
	DATE_CREATED : vars.inputPayload.dateCreated,
	DATE_START : vars.inputPayload.dateStart,
	OWNER : if((vars.users)[0].USER_NAME == null) 'CracNoUser' else ((vars.users)[0].USER_NAME ++ '__c'),
	LAST_USER : if((vars.users)[0].USER_NAME == null) 'CracNoUser' else ((vars.users)[0].USER_NAME ++ '__c')
}