output application/java
---
{
ID: vars.inputPayload.pdDeviationId,	
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
PD_FOLLOW_UP_ACTION_ID : (vars.pdFollowUpActionID)[0].ID,
FOLLOW_UP_CORRECTIVE : vars.inputPayload.followUpCorrective,
FOLLOW_UP_PREVENTATIVE : vars.inputPayload.followUpPreventative,
MAJOR_MINOR : vars.inputPayload.majorMinor,
SPONSOR_ACKNOWLEDGED : vars.inputPayload.sponsorAcknowledged,
LAST_USER : if((vars.users)[0].USER_NAME == null) 'CracNoUser' else ((vars.users)[0].USER_NAME ++ '__c')
	
}