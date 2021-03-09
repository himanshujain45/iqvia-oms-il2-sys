output application/java
---
{
MONITORING_VISIT_ID: vars.monitoringVisit.generatedKeys.GENERATED_KEYS,
DOCUMENT_SKIPPED: vars.inputPayload.documentSkipped,
ENTITY_ID: vars.inputPayload.entityId,
RECORD_STATUS: vars.inputPayload.recordStatus,
DOCUMENT_VERSION: vars.inputPayload.documentVersion,
DOCUMENT_TYPE: (vars.inputPayload.documentType splitBy(","))[0],
DOCUMENT_SENT_DATE: vars.inputPayload.confirmedDate,
DOC_NEEDS_REVIEW: vars.inputPayload.docNeedsReview,
MUST_BE_TRACKED: vars.inputPayload.mustBeTracked,
IS_TEMPLATE: vars.inputPayload.isTemplate,
RF_ENROLLMENT: vars.inputPayload.rfEnrollment,
RF_STUDY: vars.inputPayload.rfStudy,
RF_IP_SHIPMENT: vars.inputPayload.rfIpShipment,
RF_AUDIT: vars.inputPayload.rfAudit,
RF_IRB_EC_SUBMITTAL: vars.inputPayload.rfIrbEcSubmittal,
RT_BEFORE_SEND: vars.inputPayload.rtBeforeSend,
RT_AFTER_RECEIVED: vars.inputPayload.rtAfterReceived,
RT_FINAL: vars.inputPayload.rtFinal,
DATE_CREATED : vars.inputPayload.dateCreated,
DATE_START : vars.inputPayload.dateStart,
OWNER : if((vars.users)[0].USER_NAME == null) 'CracNoUser' else ((vars.users)[0].USER_NAME ++ '__c'),
LAST_USER : if((vars.users)[0].USER_NAME == null) 'CracNoUser' else ((vars.users)[0].USER_NAME ++ '__c')
	
}