<cfparam name="url.fname" default=""/>
<cfparam name="url.lname" default=""/>
<cfparam name="url.dob" default=""/>
<cfparam name="url.gen" default=""/>
<cfparam name="url.street" default=""/>
<cfparam name="url.city" default=""/>
<cfparam name="url.state" default=""/>
<cfparam name="url.pc" default=""/>
<cfparam name="url.email" default=""/>
<cfparam name="url.mob" default=""/>
<cfparam name="url.depart" default=""/>
<cfparam name="url.ba" default=""/>
<cfparam name="url.pro" default=""/>
<cfparam name="url.group" default=""/>
<cfparam name="url.other" default=""/>
<cfparam name="url.otherText" default=""/>
<cfparam name="url.apDate" default=""/>
<cfparam name="url.apTime" default=""/>
<cfparam name="url.file" default=""/>

<cfquery datasource="doctorappointment">
    insert into drappointment (firstName,lastName,dob,gender,street,city,state,postalCode,email,mobile,depart,beforeApplied,apProcess,bloodGrp,otherDisease,adiDisease,appDate,appTime,aadharCard)
    values
    (
        <cfqueryparam value="#url.fname#" cfsqltype="cf_sql_varchar" />,
        <cfqueryparam value="#url.lname#" cfsqltype="cf_sql_varchar" />,
        <cfqueryparam value="#url.dob#" cfsqltype="cf_sql_date" />,
        <cfqueryparam value="#url.gen#" cfsqltype="cf_sql_varchar" />,
        <cfqueryparam value="#url.street#" cfsqltype="cf_sql_varchar" />,
        <cfqueryparam value="#url.city#" cfsqltype="cf_sql_varchar" />,
        <cfqueryparam value="#url.state#" cfsqltype="cf_sql_varchar" />,
        <cfqueryparam value="#url.pc#" cfsqltype="cf_sql_int" />,
        <cfqueryparam value="#url.email#" cfsqltype="cf_sql_varchar" />,
        <cfqueryparam value="#url.mob#" cfsqltype="cf_sql_varchar" />,
        <cfqueryparam value="#url.depart#" cfsqltype="cf_sql_varchar" />,
        <cfqueryparam value="#url.ba#" cfsqltype="cf_sql_varchar" />,
        <cfqueryparam value="#url.pro#" cfsqltype="cf_sql_varchar" />,
        <cfqueryparam value="#url.group#" cfsqltype="cf_sql_varchar" />,
        <cfqueryparam value="#url.other#" cfsqltype="cf_sql_varchar" />,
        <cfqueryparam value="#url.otherText#" cfsqltype="cf_sql_varchar" />,
        <cfqueryparam value="#url.apDate#" cfsqltype="cf_sql_date" />,
        <cfqueryparam value="#url.apTime#" cfsqltype="cf_sql_varchar" />,
        <cfqueryparam value="#url.file#" cfsqltype="cf_sql_blob" />

    )
    
</cfquery>
 
<!--- <cflocation url="/edit.cfm?id=#form.id#&message=Record Updated successfully" /> --->
 
