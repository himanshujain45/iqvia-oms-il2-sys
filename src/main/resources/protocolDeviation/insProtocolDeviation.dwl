output application/java
---
{
	
RECORD_LOCKED : vars.inputPayload.recordLocked,
NO_SUBJECT_ASSOCIATED : vars.inputPayload.noSubjectAssociated,
PROTOCOL_ID : vars.inputPayload.protocolId,
DATE_REPORTED : vars.inputPayload.dateReported,
DATE_OCCURED : vars.inputPayload.dateOccurred,
PD_CATEGORY_ID : (vars.pdCategoryID)[0].ID,
CAUSALITY : vars.inputPayload.causality,
DESCRIPTION : vars.inputPayload.description,
IRBEC_REPORT_REQ : vars.inputPayload.irbecReportReq,
ACTUAL_IRBEC_REPORT_DATE : vars.inputPayload.actualIrbecReportDate,
EXPECTED_IRBEC_REPORT_DATE : vars.inputPayload.expectedIrbecReportDate,
DATE_SPONSOR_NOTIFIED : vars.inputPayload.dateSponsorNotified,
DATE_SPONSOR_ACKNOWLEDGED : vars.inputPayload.dateSponsorAcknowledged,
STATUS : vars.inputPayload.status,
FOLLOW_UP_REQUIRED : vars.inputPayload.followUpRequired,
ENTITY_ID: vars.inputPayload.entityId,
RECORD_STATUS: vars.inputPayload.recordStatus,
PD_FOLLOW_UP_ACTION_ID : (vars.pdFollowUpActionID)[0].ID,
FOLLOW_UP_CORRECTIVE : vars.inputPayload.followUpCorrective,
FOLLOW_UP_PREVENTATIVE : vars.inputPayload.followUpPreventative,
MAJOR_MINOR : vars.inputPayload.majorMinor,
DATE_CREATED : vars.inputPayload.dateCreated,
DATE_START : vars.inputPayload.dateStart,
SPONSOR_ACKNOWLEDGED : vars.inputPayload.sponsorAcknowledged,
OWNER : if((vars.users)[0].USER_NAME == null) 'CracNoUser' else ((vars.users)[0].USER_NAME ++ '__c'),
LAST_USER : if((vars.users)[0].USER_NAME == null) 'CracNoUser' else ((vars.users)[0].USER_NAME ++ '__c')
	
}