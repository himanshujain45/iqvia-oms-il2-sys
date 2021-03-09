output application/java
---
{
	MONITORING_VISIT_ID: vars.inputPayload.monitoringVisitID,
	LAST_USER : if((vars.users)[0].USER_NAME == null) 'CracNoUser' else ((vars.users)[0].USER_NAME ++ '__c')
}