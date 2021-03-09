output application/java
---
{
	FIRST_NAME: vars.inputPayload.firstName, 
	LAST_NAME: vars.inputPayload.lastName, 
	CONTACT_STATUS: vars.inputPayload.contactStatus,
	IS_INVESTIGATOR: vars.inputPayload.isInvestigator,
	ENTITY_ID : vars.inputPayload.entityId,
	RECORD_STATUS : vars.inputPayload.recordStatus,
	NOVELLA_EXPERIENCE : vars.inputPayload.novellaExperience,
	QUINTILES_EXPERIENCE : vars.inputPayload.quintilesExperience,
	INV_INFANTS : vars.inputPayload.invInfants,
	INV_NEONATES : vars.inputPayload.invNeoNates,
	INV_PEDIATRIC : vars.inputPayload.invPediatric,
	INV_CENTRAL_IRB : vars.inputPayload.invCentralIrb,
	INV_RETIRED : vars.inputPayload.invRetired,
	INV_DECEASED : vars.inputPayload.invDeceased,
	DATE_CREATED : vars.inputPayload.dateCreated,
	DATE_START : vars.inputPayload.dateStart,
	OWNER: if((vars.users)[0].USER_NAME == null) 'CracNoUser' else ((vars.users)[0].USER_NAME ++ '__c'),
	LAST_USER: if((vars.users)[0].USER_NAME == null) 'CracNoUser' else ((vars.users)[0].USER_NAME ++ '__c') 
	
}