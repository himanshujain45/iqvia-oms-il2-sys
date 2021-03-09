output application/java
---
{
	MONITORING_VISIT_ID: vars.inputPayload.monitoringVisitID,
	MONITORING_CONTACT_ID: (vars.contact)[0].ID,
	PRIMARY_VISIT_CONTACT: vars.inputPayload.primaryVisitContact,
	VISIT_DAYS: vars.inputPayload.visitDays,
	RECORD_STATUS: vars.inputPayload.recordStatus,
	LAST_USER : if((vars.users)[0].USER_NAME == null) 'CracNoUser' else ((vars.users)[0].USER_NAME ++ '__c')
}