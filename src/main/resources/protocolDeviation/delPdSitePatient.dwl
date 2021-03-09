output application/java
---
{
PD_SITE_ID: (vars.pdSite)[0].ID,
LAST_USER : if((vars.users)[0].USER_NAME == null) 'CracNoUser' else ((vars.users)[0].USER_NAME ++ '__c')
	
}