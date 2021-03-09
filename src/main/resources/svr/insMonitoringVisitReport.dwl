output application/java
---
{
OWNER : if((vars.users)[0].USER_NAME == null) 'CracNoUser' else ((vars.users)[0].USER_NAME ++ '__c'),
LAST_USER : if((vars.users)[0].USER_NAME == null) 'CracNoUser' else ((vars.users)[0].USER_NAME ++ '__c'),
MONITORING_VISIT_ID: vars.inputPayload.monitoringVisitId,
TEMPLATE_ID: (vars.templateId)[0].ID,
REPORT_STATUS: vars.inputPayload.reportStatus,
LAST_MVR_USER: if((vars.users)[0].USER_NAME == null) 'CracNoUser' else ((vars.users)[0].USER_NAME ++ '__c'),
VERSION: vars.inputPayload.version,
ENTITY_ID: vars.inputPayload.entityId,
RECORD_STATUS: vars.inputPayload.recordStatus,
REPORT_ITERATION: vars.inputPayload.reportIteration,
DATE_UPLOADED_TO_WS: vars.inputPayload.dateUploadedToWs,
ID: vars.mvrId.generatedKeys.GENERATED_KEYS
}