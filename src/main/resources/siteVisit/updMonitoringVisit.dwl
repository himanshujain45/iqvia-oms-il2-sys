output application/java
---
{
ID: vars.inputPayload.monitoringVisitID,
MONITORING_METHOD : vars.inputPayload.monitoringMethod,
MONITORING_VISIT_TYPE : vars.inputPayload.monitoringVisitType,
ACTUAL_VISIT_DATE : vars.inputPayload.actualVisitDate,
VISIT_END_DATE : vars.inputPayload.visitEndDate,
VISIT_STATUS : vars.inputPayload.visitStatus,
PLANNED_VISIT_DATE : if(vars.inputPayload.visitStatus == 'Actual') (vars.visitDate)[0].PLANNED_VISIT_DATE else vars.inputPayload.plannedVisitDate,
PROTOCOL_SITE_ID: vars.inputPayload.protocolSiteID,
IS_WAIVED : vars.inputPayload.isWaived,
RECORD_STATUS: vars.inputPayload.recordStatus,
LAST_USER : if((vars.users)[0].USER_NAME == null) 'CracNoUser' else ((vars.users)[0].USER_NAME ++ '__c'),
VISIT_DATE: if(vars.inputPayload.plannedVisitDate != null) vars.inputPayload.plannedVisitDate else if(vars.inputPayload.actualVisitDate != null) vars.inputPayload.actualVisitDate else null
	
}