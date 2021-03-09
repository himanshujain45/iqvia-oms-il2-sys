output application/java
---
{
OWNER : if((vars.users)[0].USER_NAME == null) 'CracNoUser' else ((vars.users)[0].USER_NAME ++ '__c'),
LAST_USER : if((vars.users)[0].USER_NAME == null) 'CracNoUser' else ((vars.users)[0].USER_NAME ++ '__c'),
ENTITY_ID: vars.inputPayload.entityId,
RECORD_STATUS: vars.inputPayload.recordStatus,
DATE_SIGNED: vars.inputPayload.dateSigned,
SIGN_STATUS: vars.inputPayload.signStatus,
USERS_ID: (vars.users)[0].ID,
SIGN_ACTION: vars.inputPayload.signAction,
RELATED_TYPE: vars.inputPayload.relatedType,
RELATED_MVR_ID: vars.mvrId.generatedKeys.GENERATED_KEYS,
IS_LOCKED: vars.inputPayload.isLocked,
LOCATION_DETAIL_ID: (vars.users)[0].LOCATION_DETAIL_ID,
VERSION:  vars.inputPayload.version,
DATE_SIGNED_USER: vars.inputPayload.dateSignedUser
}