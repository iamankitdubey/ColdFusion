<cfparam name ="url.email" default=""/>
<cfparam name ="url.password" default=""/>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>login Page</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
</head>
<body class="p-0 m-0 ">
    <cfoutput>
    <form  name="loginPage" id="loginPage" action="login-action.cfm" method="get" enctype="multipart/form-data" >
        <div class="d-flex flex-column align-items-center justify-content-center bg-secondary vh-100 vw-100">
            <cfif url.keyExists('message') and trim(url.message) NEQ "">
                <div class="alert alert-warning">
                  #url.message#
                </div>
              </cfif>
            <div class="">
                  <h1 class ="text-white">LOGIN PAGE</h1>  
            </div>
            <div class="d-flex align-items-center justify-content-center w-25 h-50 border rounded bg-info text-white shadow-lg rounded border-0">
                
                <div class="div-login " >
                    <label for="">EMAIL </label>
                    <input type="email" class="p-1 px-4 ms-5 mt-4 border-0 border rounded"  name="email" placeholder="" value="" ><br>
                    <label for="">PASSWORD </label>
                    <input type="password" class="p-1 px-4 ms-2 mt-4 mb-4 border-0 border rounded"  name="password" placeholder="" value="" ><br>
                    <div class="d-flex justify-content-center">
                        <input type="submit"  class="mt-4 px-5 border-0 border rounded btn btn-primary" onclick="" name="button" value="LOGIN">
                    </div>
                
                </div>
            </div>
        </div>
        
    </form>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
</cfoutput>
</body>
</html>