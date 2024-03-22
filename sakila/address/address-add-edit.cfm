<cfparam name ="url.address_id" default="0"/>
<cfparam name ="form.address" default=""/>
<cfparam name ="form.address2" default=""/>
<cfparam name ="form.district" default=""/>
<cfparam name ="form.city_id" default=""/> 
<cfparam name ="form.postal_code" default=""/>
<cfparam name ="form.phone" default=""/>

<cfparam name ="form.city_id" default=""/>

<cfset variables.qGetAllCities = new components.cityGateaway().qGetAllCities() />

<cfif val(url.address_id)>
    
    <cfset variables.addressGateaway = new components.addressGateaway().get(id = url.address_id) />
    <cfset form.address = variables.addressGateaway.getAddress() />
    <cfset form.address2 = variables.addressGateaway.getAddress2() />
    <cfset form.district = variables.addressGateaway.getDistrict() />
    <cfset form.city_id = variables.addressGateaway.getCity_id() />
    <cfset form.postal_code = variables.addressGateaway.getPostal_code() />
    <cfset form.phone = variables.addressGateaway.getPhone() />


</cfif>


<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>address table</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">


</head>
<cfoutput>
<body class="p-0 m-0 ">
    <div class ="">
        <cfinclude template="../include/header.cfm">   
            <div class="div-add-edit d-flex justify-content-center">
                <form name="myForm" id="myForm" action="add-edit-action.cfm" method="post" enctype="multipart/form-data">

                    <input type="hidden" name="address_id" value="#url.address_id#">

                    <label for="" class="ms-4">Address </label>
                    <input type="text" class="p-1 px-4 ms-4 mt-4 border border-primary  border rounded"  name="address" placeholder="" value="#form.address#" ><br>
                    <label for="" class="ms-4">Address2 </label>
                    <input type="text" class="p-1 px-4 ms-4 mt-4 border border-primary  border rounded"  name="address2" placeholder="" value="#form.address2#" ><br>
                    <label for="" class="ms-4">District </label>
                    <input type="text" class="p-1 px-4 ms-5 mt-4 border border-primary  border rounded"  name="district" placeholder="" value="#form.district#" ><br>
                    <label for="" class="ms-4">Postal_Code </label>
                    <input type="text" class="p-1 px-4 ms-5 mt-4 border border-primary  border rounded"  name="postal_code" placeholder="" value="#form.postal_code#" ><br>
                    <label for="" class="ms-4">Phone </label>
                    <input type="tel" class="p-1 px-4 ms-5 mt-4 border border-primary  border rounded"  name="phone" placeholder="" value="#form.phone#" ><br>
                    

                    <label for="city_id" class="p-1 px-4 mt-4">City </label>
                    <select name="city_id "id="city_id" class="p-1 px-4 ms-5 mt-4 border border-primary  border rounded">
                        <option value="">select city</option>
                            <cfloop query="variables.qGetAllCities">
                                <option value="#variables.qGetAllCities.city_id#">
                                    #variables.qGetAllCities.city# [#variables.qGetAllCities.country#]
                                </option>
                            </cfloop>
                    </select>

                    

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
                        address:address,
                        address2:address2,
                        district:district,
                        postal_code:postal_code,
                        phone:phone,
                        city_id:city_id
                    } = frm;
 
                    if(!isBlank(address, 'Please enter address!')) {
                        return false;
                    }
                    if(!isBlank(address2, 'Please enter address2!')) {
                        return false;
                    }    
                    if(!isBlank(district, 'Please enter district!')){
                        return false;
                    }
                    if(!isBlank(postal_code, 'Please enter postal code!')){
                        return false;
                    }
                    if(!isNumber(phone, 'Please enter valid phone no.!')){
                        return false;
                    }
                    if(!isBlank(city_id, 'Please enter city !')){
                        return false;
                    }
                    //return true;                
                    frm.submit();
                }

    </script>

</body>
</cfoutput>
</html>