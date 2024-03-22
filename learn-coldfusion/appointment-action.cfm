<cfoutput>
<cfif form.id EQ 0>
    #insertData(
        
        firstName = #form.fname#,
        lastName = #form.lname# ,
        dob = #form.dob#,
        gender = #form.gen# ,
        street = #form.street#, 
        city = #form.city# ,
        state = #form.state# ,
        postalCode = #form.pc#,
        email = #form.email# ,
        mob = #form.mob# ,
        depart = #form.depart#, 
        beforeApplied = #form.ba#,
        apProcess = #form.pro# ,
        bloodGroup = #form.group#, 
        otherDisease = #form.other#, 
        adiDisease = #form.otherText#, 
        appDate = #form.apDate#,
        appTime = #form.apTime# ,
        aadharCard = #form.file#
        )#
        <cfset variables.message = "Data Inserted Successfull !">

<cfelseif form.id GT 0>
    <cfset variables.message = "Data Updated Successfull !">
    #updateData(
        
        firstName = #form.fname#,
        lastName = #form.lname# ,
        dob = #form.dob#,
        gender = #form.gen# ,
        street = #form.street#, 
        city = #form.city# ,
        state = #form.state# ,
        postalCode = #form.pc#,
        email = #form.email# ,
        mob = #form.mob# ,
        depart = #form.depart#, 
        beforeApplied = #form.ba#,
        apProcess = #form.pro# ,
        bloodGroup = #form.group#, 
        otherDisease = #form.other#, 
        adiDisease = #form.otherText#, 
        appDate = #form.apDate#,
        appTime = #form.apTime# ,
        aadharCard = #form.file#,
        id = #form.id#

        )#
   
    </cfif>

<cflocation addtoken="false" url="./appointment-add-edit.cfm?id=#form.id#&message#variables.message#" >

<cffunction name="insertData" access="public">
    <cfargument name ="firstName" required="true"/>
    <cfargument name ="lastName" required="true"/>
    <cfargument name ="dob" required="true"/>
    <cfargument name ="gender" required="true"/>
    <cfargument name ="street" required="true"/>
    <cfargument name ="city" required="true"/>
    <cfargument name ="state" required="true"/>
    <cfargument name ="postalCode" required="true"/>
    <cfargument name ="email" required="true"/>
    <cfargument name ="mob" required="true"/>
    <cfargument name ="depart" required="true"/>
    <cfargument name ="beforeApplied" required="true"/>
    <cfargument name ="apProcess" required="true"/>
    <cfargument name ="bloodGroup" required="true"/>
    <cfargument name ="otherDisease" required="true"/>
    <cfargument name ="adiDisease" required="true"/>
    <cfargument name ="appDate" required="true"/>
    <cfargument name ="appTime" required="true"/>
    <cfargument name ="aadharCard" required="true"/>

    <cfquery datasource="doctorappointment">
        insert into drappointment (firstName,lastName,dob,gender,street,city, state,postalCode,email,mobile,depart,beforeApplied,apProcess,bloodGrp,otherDisease,adiDisease,appDate,appTime,aadharCard)
        values
        (
            <cfqueryparam value="#arguments.firstName#" cfsqltype="cf_sql_varchar" />,
            <cfqueryparam value="#arguments.lastName#" cfsqltype="cf_sql_varchar" />,
            <cfqueryparam value="#arguments.dob#" cfsqltype="cf_sql_date" />,
            <cfqueryparam value="#arguments.gender#" cfsqltype="cf_sql_varchar" />,
            <cfqueryparam value="#arguments.street#" cfsqltype="cf_sql_varchar" />,
            <cfqueryparam value="#arguments.city#" cfsqltype="cf_sql_varchar" />,
            <cfqueryparam value="#arguments.state#" cfsqltype="cf_sql_varchar" />,
            <cfqueryparam value="#arguments.postalCode#" cfsqltype="cf_sql_int" />,
            <cfqueryparam value="#arguments.email#" cfsqltype="cf_sql_varchar" />,
            <cfqueryparam value="#arguments.mob#" cfsqltype="cf_sql_varchar" />,
            <cfqueryparam value="#arguments.depart#" cfsqltype="cf_sql_varchar" />,
            <cfqueryparam value="#arguments.beforeApplied#" cfsqltype="cf_sql_varchar" />,
            <cfqueryparam value="#arguments.apProcess#" cfsqltype="cf_sql_varchar" />,
            <cfqueryparam value="#arguments.bloodGroup#" cfsqltype="cf_sql_varchar" />,
            <cfqueryparam value="#arguments.otherDisease#" cfsqltype="cf_sql_varchar" />,
            <cfqueryparam value="#arguments.adiDisease#" cfsqltype="cf_sql_varchar" />,
            <cfqueryparam value="#arguments.appDate#" cfsqltype="cf_sql_date" />,
            <cfqueryparam value="#arguments.appTime#" cfsqltype="cf_sql_varchar" />,
            <cfqueryparam value="#arguments.aadharCard#" cfsqltype="cf_sql_blob" />
        )     
    </cfquery>
</cffunction >

<cffunction name="updateData" access="public">
    <cfargument name ="firstName" required="true"/>
    <cfargument name ="lastName" required="true"/>
    <cfargument name ="dob" required="true"/>
    <cfargument name ="gender" required="true"/>
    <cfargument name ="street" required="true"/>
    <cfargument name ="city" required="true"/>
    <cfargument name ="state" required="true"/>
    <cfargument name ="postalCode" required="true"/>
    <cfargument name ="email" required="true"/>
    <cfargument name ="mob" required="true"/>
    <cfargument name ="depart" required="true"/>
    <cfargument name ="beforeApplied" required="true"/>
    <cfargument name ="apProcess" required="true"/>
    <cfargument name ="bloodGroup" required="true"/>
    <cfargument name ="otherDisease" required="true"/>
    <cfargument name ="adiDisease" required="true"/>
    <cfargument name ="appDate" required="true"/>
    <cfargument name ="appTime" required="true"/>
    <cfargument name ="aadharCard" required="true"/>
    <cfargument name ="id" required="true"/>

    <cfquery datasource="doctorappointment">
        update drappointment
            set firstName = <cfqueryparam value="#arguments.firstName#" cfsqltype="cf_sql_varchar" />,
                lastName = <cfqueryparam value="#arguments.lastName#" cfsqltype="cf_sql_varchar" />,
                dob = <cfqueryparam value="#arguments.dob#" cfsqltype="cf_sql_date" />,
                gender = <cfqueryparam value="#arguments.gender#" cfsqltype="cf_sql_varchar" />,
                street = <cfqueryparam value="#arguments.street#" cfsqltype="cf_sql_varchar" />,
                city = <cfqueryparam value="#arguments.city#" cfsqltype="cf_sql_varchar" />,
                state = <cfqueryparam value="#arguments.state#" cfsqltype="cf_sql_varchar" />,
                postalCode = <cfqueryparam value="#arguments.postalCode#" cfsqltype="cf_sql_int" />,
                email = <cfqueryparam value="#arguments.email#" cfsqltype="cf_sql_varchar" />,
                mobile = <cfqueryparam value="#arguments.mob#" cfsqltype="cf_sql_varchar" />,
                depart = <cfqueryparam value="#arguments.depart#" cfsqltype="cf_sql_varchar" />,
                beforeApplied = <cfqueryparam value="#arguments.beforeApplied#" cfsqltype="cf_sql_varchar" />,
                apProcess = <cfqueryparam value="#arguments.apProcess#" cfsqltype="cf_sql_varchar" />,
                bloodGrp = <cfqueryparam value="#arguments.bloodGroup#" cfsqltype="cf_sql_varchar" />,
                otherDisease = <cfqueryparam value="#arguments.otherDisease#" cfsqltype="cf_sql_varchar" />,
                adiDisease = <cfqueryparam value="#arguments.adiDisease#" cfsqltype="cf_sql_varchar" />,
                appDate = <cfqueryparam value="#arguments.appDate#" cfsqltype="cf_sql_date" />,
                appTime = <cfqueryparam value="#arguments.appTime#" cfsqltype="cf_sql_varchar" />,
                aadharCard = <cfqueryparam value="#arguments.aadharCard#" cfsqltype="cf_sql_blob" />
            where id = <cfqueryparam value="#arguments.id#" cfsqltype="cf_sql_integer" />
    </cfquery>
</cffunction >
</cfoutput>