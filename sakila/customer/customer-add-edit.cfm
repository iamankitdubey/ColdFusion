<cfparam name ="url.id" default="0"/>
<cfparam name ="form.store_id" default=""/>
<cfparam name ="form.first_name" default=""/>
<cfparam name ="form.last_name" default=""/>
<cfparam name ="form.email" default=""/> 
<cfparam name ="form.address_id" default=""/>


<!--- <cfset variables.qGetAllCities = new components.cityGateaway().qGetAllCities() /> --->

<cfif val(url.id)>
    <cfset variables.qCustomer = new components.customerGateaway().get(
        id = url.id
    )/>
    <cfset form.store_id = variables.qCustomer.store_id />
    <cfset form.first_name = variables.qCustomer.first_name />
    <cfset form.last_name = variables.qCustomer.last_name />
    <cfset form.email = variables.qCustomer.email />
    <cfset form.address_id = variables.qCustomer.address_id />

</cfif>


<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>customer table</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">


</head>
<cfoutput>
<body class="p-0 m-0 ">
    <div class ="">
        <cfinclude template="../include/header.cfm">   
            <div class="div-add-edit d-flex justify-content-center">
                <form name="myForm" id="myForm" action="add-edit-action.cfm" method="post" enctype="multipart/form-data">

                    <input type="hidden" name="customer_id" value="#url.id#">

                    <label for="store_id" class="ms-4">store_id </label>
                    <select name="store_id "id="store_id" class="p-1 px-4 ms-5 mt-4 border border-primary  border rounded">
                        <option value="1" <cfif form.store_id EQ 1>selected</cfif> >1</option>
                        <option value="2" <cfif form.store_id EQ 2>selected</cfif>  >2</option>

                    </select><br>
                    <label for="" class="ms-4">first_name </label>
                    <input type="text" class="p-1 px-4 ms-4 mt-4 border border-primary  border rounded"  name="first_name" placeholder="" value="#form.first_name#" ><br>
                    <label for="" class="ms-4">last_name </label>
                    <input type="text" class="p-1 px-4 ms-5 mt-4 border border-primary  border rounded"  name="last_name" placeholder="" value="#form.last_name#" ><br>
                    <label for="" class="ms-4">email </label>
                    <input type="text" class="p-1 px-4 ms-5 mt-4 border border-primary  border rounded"  name="email" placeholder="" value="#form.email#" ><br>
                    <label for="" class="ms-4">address_id </label>
                    <input type="tel" class="p-1 px-4 ms-5 mt-4 border border-primary  border rounded"  name="address_id" placeholder="" value="#form.address_id#" ><br>
                                        

                    <div class="d-flex justify-content-center">
                        <input type="button" onclick="fun_submit()" class="mt-4 px-5 border-0 border rounded btn btn-primary" href="" name="button" value="submit">
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
                        store_id:store_id,
                        first_name:first_name,
                        last_name:last_name,
                        email:email,
                        address_id:address_id

                    } = frm;
 
                    if(!isBlank(store_id, 'Please enter store id !')) {
                        return false;
                    }
                    if(!isBlank(first_name, 'Please enter first_name !')) {
                        return false;
                    }
                    if(!isBlank(last_name, 'Please enter last_name !')) {
                        return false;
                    }
                    if(!isEmail(email, 'Please enter valid email !')) {
                        return false;
                    }
                    if(!isBlank(address_id, 'Please enter address id  !')) {
                        return false;
                    }
                    //return true;                
                    frm.submit();
                }

    </script>

</body>
</cfoutput>
</html>