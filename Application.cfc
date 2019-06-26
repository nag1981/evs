 <!---   File name    : Application.cfc
	 Purpose	   : Setup Enviance login application
	 Change History
	 When			By		CQ/Title
	 06/23/2019		NAG		Initial
--->

<cfcomponent output="false">
	
	<cfset this.name = "jqlogin">
	<cfset this.sessionManagement = true>
		
	<!--- Run before the request is processed --->
	<cffunction name="onRequestStart" returnType="boolean" output="false">
		<cfargument name="thePage" type="string" required="true">
		<cfset var page = listLast(arguments.thePage,"/")>
	
		<cfif not listFindNoCase("index.cfm,authentication.cfc",page)>		
			<cfif not structKeyExists(session, "loggedin") or session.loggedin is false>
				<cflocation url="login.cfm" addToken="false">
			</cfif>
		</cfif>
		<cfreturn true>
	</cffunction>
	
	<!--- Runs when your session starts --->
	<cffunction name="onSessionStart" returnType="void" output="false">
		<cfset session.loggedin = false>
	</cffunction>

</cfcomponent>





