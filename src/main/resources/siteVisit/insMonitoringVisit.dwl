output application/java
---
{

MONITORING_METHOD : vars.inputPayload.monitoringMethod,
ENTITY_ID: vars.inputPayload.entityId,
RECORD_STATUS: vars.inputPayload.recordStatus,
MVR_DOC_STATUS: vars.inputPayload.mvrDocStatus,
MONITORING_VISIT_TYPE : vars.inputPayload.monitoringVisitType,
ACTUAL_VISIT_DATE : vars.inputPayload.actualVisitDate,
VISIT_END_DATE : vars.inputPayload.visitEndDate,
VISIT_DATE: if(vars.inputPayload.plannedVisitDate != null) vars.inputPayload.plannedVisitDate else if(vars.inputPayload.actualVisitDate != null) vars.inputPayload.actualVisitDate else null,
VISIT_STATUS : vars.inputPayload.visitStatus,
PLANNED_VISIT_DATE : vars.inputPayload.plannedVisitDate,
PROTOCOL_SITE_ID: vars.inputPayload.protocolSiteID,
IS_WAIVED : vars.inputPayload.isWaived,
DATE_CREATED : vars.inputPayload.dateCreated,
DATE_START : vars.inputPayload.dateStart,
OWNER : if((vars.users)[0].USER_NAME == null) 'CracNoUser' else ((vars.users)[0].USER_NAME ++ '__c'),
LAST_USER : if((vars.users)[0].USER_NAME == null) 'CracNoUser' else ((vars.users)[0].USER_NAME ++ '__c')
	
}