<cfquery name = "variables.qCorrectLogin" datasource = "sakila" >
    SELECT email, password,first_name
    FROM actor;
</cfquery>
  
<cfoutput>
    <cfloop query = "variables.qCorrectLogin"  >
        <cfif variables.qCorrectLogin.email EQ '#url.email#' AND variables.qCorrectLogin.password EQ '#url.password#' >
            <cfset session.name = variables.qCorrectLogin.first_name/>
            <cflocation url="dashboard.cfm/?message=login_Successfully" addtoken="false"/>
        </cfif>
    </cfloop>
</cfoutput>
<cflocation url="/login.cfm?message=please_enter_correct_email_or_password" />
