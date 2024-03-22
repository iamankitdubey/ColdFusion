<cfparam name ="url.id" default="0"/>
<cfparam name ="form.name" default=""/>

<cfif val(url.id)>
    <cfset variables.qCategory = new components.categoryGateaway().get(id = url.id)/>

    <cfset form.name = variables.qCategory.getName() />
    

</cfif>


<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>category table</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">


</head>
<cfoutput>
<body class="p-0 m-0 ">
    <div class ="">
        <cfinclude template="../include/header.cfm">   
            <div class="div-add-edit d-flex justify-content-center">
                <form name="myForm" id="myForm" action="add-edit-action.cfm" method="post" enctype="multipart/form-data">

                    <input type="hidden" name="category_id" value="#url.id#">

                    <label for="" class="ms-4">name </label>
                    <input type="text" class="p-1 px-4 ms-4 mt-4 border border-primary  border rounded"  name="name" placeholder="" value="#form.name#" ><br>
                                        
                    <div class="d-flex justify-content-center">
                        <input type="button" onclick="fun_submit()"  class="mt-4 px-5 border-0 border rounded btn btn-primary" href="" name="button" value="submit">
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
                        name:name
                    } = frm;
 
                    if(!isBlank(name, 'Please enter category !')) {
                        return false;
                    }
                    //return true;                
                    frm.submit();
                }

    </script>

</body>
</cfoutput>
</html>