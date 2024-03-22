<cfparam name ="url.actor_id" default="0"/>
<cfparam name ="form.fname" default=""/>
<cfparam name ="form.lname" default=""/>
<cfparam name ="form.email" default=""/>

<cfif val(url.actor_id)>
    <cfquery name="variables.qActorTable" datasource="sakila">
        select *
        from actor
        where actor_id = <cfqueryparam value="#url.actor_id#" cfsqltype="cf_sql_integer" />
    </cfquery>
    <cfset form.fname = variables.qActorTable.first_name />
    <cfset form.lname = variables.qActorTable.last_name />
    <cfset form.email = variables.qActorTable.email />

</cfif>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>actor table</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">


</head>
<cfoutput>
<body class="p-0 m-0 ">
    <div class ="">
        <cfinclude template="../include/header.cfm">   
            <div class="div-add-edit d-flex justify-content-center">
                <form name="myForm" id="myForm" action="./add-edit-action.cfm" method="post" enctype="multipart/form-data">

                    <input type="hidden" name="actor_id" value="#url.actor_id#">

                    <label for="" class="ms-3">FIRSTNAME </label>
                    <input type="text" class="p-1 px-4 ms-4 mt-4 border border-primary  border rounded"  name="fname" placeholder="" value="#form.fname#" ><br>
                    <label for="" class="ms-3">LASTNAME </label>
                    <input type="text" class="p-1 px-4 ms-4 mt-4 border border-primary  border rounded"  name="lname" placeholder="" value="#form.lname#" ><br>
                    <label for="" class="ms-4">EMAIL </label>
                    <input type="email" class="p-1 px-4 ms-5 mt-4 border border-primary  border rounded"  name="email" placeholder="" value="#form.email#" ><br>

                    <div class="d-flex justify-content-center">
                        <input type="button" onclick="fun_submit()"  class="mt-4 px-5 border-0 border rounded btn btn-primary" value="submit">
                    </div>
                </form>
            </div> 
    </div>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
    <script src="../assets/helper.js"></script>

    <script>
        function fun_submit() {
                    const frm = document.myForm;
                    const {
                        fname:firstName,
                        lname:lastName,
                        email:email
                    } = frm;
 
                    if(!isBlank(firstName, 'Please enter your first name!')) {
                        return false;
                    }
                    if(!isBlank(lastName, 'Please enter your last name!')) {
                        return false;
                    }    
                    if(!isEmail(email, 'Please enter your valid email!')){
                        return false;
                    }
                    //return true;                
                    frm.submit();
                }

    </script>
</body>
</cfoutput>
</html>