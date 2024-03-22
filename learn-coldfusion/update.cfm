<cfquery datasource="doctorappointment">
    update drappointment
        set firstName = <cfqueryparam value="#form.fname#" cfsqltype="cf_sql_varchar" />,
            lastName = <cfqueryparam value="#form.lname#" cfsqltype="cf_sql_varchar" />,
            dob = <cfqueryparam value="#form.dob#" cfsqltype="cf_sql_date" />,
            gender = <cfqueryparam value="#form.gen#" cfsqltype="cf_sql_varchar" />,
            street = <cfqueryparam value="#form.street#" cfsqltype="cf_sql_varchar" />,
            city = <cfqueryparam value="#form.city#" cfsqltype="cf_sql_varchar" />,
            state = <cfqueryparam value="#form.state#" cfsqltype="cf_sql_varchar" />,
            postalCode = <cfqueryparam value="#form.pc#" cfsqltype="cf_sql_int" />,
            email = <cfqueryparam value="#form.email#" cfsqltype="cf_sql_varchar" />,
            mobile= <cfqueryparam value="#form.mob#" cfsqltype="cf_sql_varchar" />,
            depart = <cfqueryparam value="#form.depart#" cfsqltype="cf_sql_varchar" />,
            beforeApplied = <cfqueryparam value="#form.ba#" cfsqltype="cf_sql_varchar" />,
            apProcess = <cfqueryparam value="#form.pro#" cfsqltype="cf_sql_varchar" />,
            bloodGrp = <cfqueryparam value="#form.group#" cfsqltype="cf_sql_varchar" />,
            otherDisease = <cfqueryparam value="#form.other#" cfsqltype="cf_sql_varchar" />,
            adiDisease = <cfqueryparam value="#form.otherText#" cfsqltype="cf_sql_varchar" />,
            appDate = <cfqueryparam value="#form.apDate#" cfsqltype="cf_sql_date" />,
            appTime = <cfqueryparam value="#form.apTime#" cfsqltype="cf_sql_varchar" />,
            aadharCard = <cfqueryparam value="#form.file#" cfsqltype="cf_sql_blob" />
        where id = <cfqueryparam value="#form.id#" cfsqltype="cf_sql_integer" />
</cfquery>
<!DOCTYPE html>
<html lang="en"> 
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Doctor Appointment Form</title>
    <link rel="stylesheet" href="appointment.css">
<style>
    body{
    height: 100%;
    width: 100%;
    display: flex;
    justify-content: center;
    align-items: center;
 }
 .box{
    height: 300px;
    width: 500px;
    background-color:rgb(173, 172, 172);
    display: flex;
    justify-content: center;
    align-items: center;
    margin-top:100px;
    font-size: 30px;
    font-weight:bold;
    box-shadow: 0px 10px 20px grey;
    border-radius: 10px;

 }
</style>
</head>
<cfoutput> 
<body>
    <div class="box">
        <div>Form Updated !</div>
    </div>
</body>
</cfoutput>
</html>
<!--- <script>
    alert("Form Updated !");
</script> --->

<!--- <cfset url.appointmentId = 44 />
<cfset url.fname = 'Ankit' />
<cfset url.lname = 'Dubey' />
<cfset url.dob = '2024-03-18' />
<cfset url.gen = 'male' />
<cfset url.street = 'villa pg' />
<cfset url.city = 'ahmedabad' />
<cfset url.state = 'AP' />
<cfset url.pc = '999999' />
<cfset url.email = 'ankit@isummation.com' />
<cfset url.mob = '1234567890' />
<cfset url.depart = 'phathology' />
<cfset url.ba = 'yes' />
<cfset url.pro = 'Check-up' />
<cfset url.group = 'AB-' />
<cfset url.other = 'asthma' />
<cfset url.apDate = '2024-03-11' />
<cfset url.apTime = '7-8pm' />
<cfset url.file = '' />


<cfquery datasource="doctorappointment">
    update drappointment
        set firstName = <cfqueryparam value="#url.fname#" cfsqltype="cf_sql_varchar" />,
            lastName = <cfqueryparam value="#url.lname#" cfsqltype="cf_sql_varchar" />,
            dob = <cfqueryparam value="#url.dob#" cfsqltype="cf_sql_date" />,
            gender = <cfqueryparam value="#url.gen#" cfsqltype="cf_sql_varchar" />,
            street = <cfqueryparam value="#url.street#" cfsqltype="cf_sql_varchar" />,
            city = <cfqueryparam value="#url.city#" cfsqltype="cf_sql_varchar" />,
            state = <cfqueryparam value="#url.state#" cfsqltype="cf_sql_varchar" />,
            postalCode = <cfqueryparam value="#url.pc#" cfsqltype="cf_sql_int" />,
            email = <cfqueryparam value="#url.email#" cfsqltype="cf_sql_varchar" />,
            mobile= <cfqueryparam value="#url.mob#" cfsqltype="cf_sql_varchar" />,
            depart = <cfqueryparam value="#url.depart#" cfsqltype="cf_sql_varchar" />,
            beforeApplied = <cfqueryparam value="#url.ba#" cfsqltype="cf_sql_varchar" />,
            apProcess = <cfqueryparam value="#url.pro#" cfsqltype="cf_sql_varchar" />,
            bloodGrp = <cfqueryparam value="#url.group#" cfsqltype="cf_sql_varchar" />,
            otherDisease = <cfqueryparam value="#url.other#" cfsqltype="cf_sql_varchar" />,
            appDate = <cfqueryparam value="#url.apDate#" cfsqltype="cf_sql_date" />,
            appTime = <cfqueryparam value="#url.apTime#" cfsqltype="cf_sql_varchar" />,
            aadharCard = <cfqueryparam value="#url.file#" cfsqltype="cf_sql_blob" />
    where appointmentId = <cfqueryparam value="#url.appointmentId#" cfsqltype="cf_sql_integer" />
</cfquery>  --->


