<cfoutput>
    <cfparam name="url.page" default="1">
    <cfparam name="variables.maxRow" default="10">
    <cfset variables.qFilm = new components.filmGateaway().list(
        page =url.page,
        maxRow=variables.maxRow
    )/>

    <script>
        function nextPage(){
            let page = document.querySelector("input[name=page]").value;
            document.querySelector("input[name=page]").value = page++;
            window.location.href = `${location.origin}/${location.pathname}?page=${page}`;
        }
    
        function prevPage(){
            let page = document.querySelector("input[name=page]").value;
            document.querySelector("input[name=page]").value = page--;
            window.location.href = `${location.origin}/${location.pathname}?page=${page}`;
            
        }
    </script>

</cfoutput>
<!DOCTYPE html>
    <html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Film table</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
    
    </head>
    <cfoutput>
    <body class="p-0 m-0 ">
        <div class ="">
            <cfinclude template="../include/header.cfm">   
                <div class="container">
                    <cfset variables.columns = [
                        {
                            "label": "Id",
                            "fieldName": "film_id",
                            "classes": "text-center"
                        },
                        {
                           "label" : "Title",
                           "fieldName":"title"
                        },
                        {
                            "label" : "Description",
                            "fieldName":"description"
                         },
                         {
                            "label" : "ReleaseYear",
                            "fieldName":"release_year",
                            "classes": "text-center"
                         },
                         {
                            "label" : "RentalRate",
                            "fieldName":"rental_rate",
                            "classes": "text-center"
                         },
                         {
                            "label" : "length",
                            "fieldName":"length",
                            "classes": "text-center"
                         },
                         {
                            "label" : "ReplacementCost",
                            "fieldName":"replacement_cost",
                            "classes": "text-center"
                         },
                         {
                            "label" : "Rating",
                            "fieldName":"rating",
                            "classes": "text-center"
                         },
                         {
                            "label" : "SpecialFeatures",
                            "fieldName":"special_feature",
                            "classes": "text-center"
                         },
                        {
                           "label" : "Action",
                           "classes": "text-center",
                           "content":(film)=> {
                               return '<a href ="film-add-edit.cfm?id=#film.film_id# " class ="text-decoration-none">Edit</a>'
                                    
                           }
                        }
                    ]>
                         
                    #new components.utility().PrintTable(
                        columns = variables.columns,
                        qData = variables.qFilm
                    )#
                    
                </div> 
                <div class="d-flex justify-content-between mt-3 mb-3">
                    <input type="button" class="ms-5 mt-4 px-5 border-0 border rounded btn btn-primary" value="prev" onclick="prevPage()">
                    <input type="hidden" class="p-1" name="page" value="#url.page#">
                    <input type="button" class="me-5 mt-4 px-5 border-0 border rounded btn btn-primary" value="next" onclick="nextPage()">
                </div>
                <div class="d-flex justify-content-center mt-3 mb-3">
                    <button class="border rounded px-5 btn btn-primary "><a href="film-add-edit.cfm" class ="text-white text-decoration-none" >INSERT</a></button>
                </div>
    
    
        </div>
    
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
    
    </body>
    </cfoutput>
    </html>