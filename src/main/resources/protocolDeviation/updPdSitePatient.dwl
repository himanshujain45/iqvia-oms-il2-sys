output application/java
---
{
PD_SITE_ID : (vars.pdSite)[0].ID,
PATIENT_NUMBER : vars.inputPayload.patientNumber,
SUBJECT_WITHDRAWN : vars.inputPayload.subjectWithdrawn,
LAST_USER : if((vars.users)[0].USER_NAME == null) 'CracNoUser' else ((vars.users)[0].USER_NAME ++ '__c')
	
}