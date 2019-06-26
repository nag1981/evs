     <!---File name    : authentication.cfc
	 Purpose	  	   : authentication Enviance login application
	 Change History
	 When			By		CQ/Title
	 06/23/2019		NAG		Initial--->

<cfcomponent>

<cffunction name="processLogin" access="remote" returnType="string" returnformat="plain" output="false">
	<cfargument name="name" required="true">
	<cfargument name="pwd"  required="true">
	
	<cfset var returnStg = "">
	
		<cfquery  name="validateUser" datasource="log_signin">
  			SELECT USERNAME,HASHED_PASSWORD FROM USER_LOGIN WHERE USERNAME=<cfqueryparam value="#arguments.name#" cfsqltype="cf_sql_varchar" maxlength="255"> 
  			AND HASHED_PASSWORD=<cfqueryparam value="#Hash(arguments.pwd,"SHA-512","UTF-8")#" cfsqltype="cf_sql_varchar" maxlength="4000">
  		</cfquery>
		
		<cfif validateUser.RecordCount EQ 1>
			<cfset session.loggedin = true>
			<cfset returnStg = true>
		<cfelse>
			<cfset returnStg = false>
		</cfif>
		
	<cfreturn returnStg>	
</cffunction>
	
</cfcomponent>
