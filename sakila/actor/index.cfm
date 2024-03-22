<cfoutput>
<cfparam name="url.page" default="1">
<cfparam name="variables.maxRow" default="10">
<cfset variables.qActor = new components.actorGateaway().list(
    page =url.page,
    maxRow=variables.maxRow
)>


</cfoutput>
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

        <nav data-mdb-navbar-init class="navbar navbar-expand-lg bg-body-tertiary">
            <div class="container-fluid">
              <nav aria-label="breadcrumb">
                <ol class="breadcrumb">
                  <li class="breadcrumb-item"><a href="../dashboard.cfm">Home</a></li>
                  <li class="breadcrumb-item active" aria-current="page"><a href="../actor/index.cfm">actor</a></li>
                </ol>
              </nav>
            </div>
        </nav>

            <div class="container">
                <table class="text-center  table-bordered" cellpadding="3" cellspacing="0" width="100%" >
                    <tr>
                        <td>Id</td>
                        <td>firstName</td>
                        <td>lastName</td>
                        <td>email</td>
                        <td>password</td>
                        <td>last update</td>
                        <td>EDIT</td>
                    
                    </tr>
                    <cfloop query="variables.qActor">
                        <tr>
                            <td>#variables.qActor.actor_id#</td>
                            <td>#variables.qActor.first_name#</td>
                            <td>#variables.qActor.last_name#</td>
                            <td>#variables.qActor.email#</td>
                            <td>#variables.qActor.password#</td>
                            <td>#dateFormat(variables.qActor.last_update,"dd-mm-yyyy")#</td>

                            <td><a class="text-decoration-none" href="actor-add-edit.cfm?actor_id=#variables.qActor.actor_id#">Update</a></td>   
                        </tr>
                    </cfloop>
                </table>
            </div> 
            <div class="d-flex justify-content-between mt-3 mb-3">
                <input type="button" class="ms-5 mt-4 px-5 border-0 border rounded btn btn-primary" value="prev" onclick="prevPage()">
                <input type="hidden" class="p-1" name="page" value="#url.page#">
                <input type="button" class="me-5 mt-4 px-5 border-0 border rounded btn btn-primary" value="next" onclick="nextPage()">
            </div>
            <div class="d-flex justify-content-center mt-3 mb-3">
                <button class="border rounded px-5 btn btn-primary "><a href="actor-add-edit.cfm" class ="text-white text-decoration-none" >INSERT</a></button>
            </div>


    </div>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>

    <script src="../assets/helper.js"></script>



</body>
</cfoutput>
</html>