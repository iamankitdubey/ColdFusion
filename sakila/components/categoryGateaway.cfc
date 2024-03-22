<cfcomponent displayname="categoryGateaway" output="false" >
    <cfset variables.datasource = 'sakila'>

    <cffunction name="list" access="public" returntype="query">

        <cfargument name= "page" type="numeric" default="1">
        <cfargument name = "maxRow" type="numeric" default="10">

        <cfset local.currentBlock = (arguments.page - 1)*arguments.maxRow />

        <cfquery name = "local.qCategory" datasource = "sakila" >
            SELECT *
            FROM category
            order by category_id desc
            limit #local.currentBlock#,#arguments.maxRow# ;
        </cfquery>

        <cfreturn local.qCategory>
    </cffunction>

    <cffunction name ="get" access="public" >
        <cfargument name="id" type="numeric" required="true">
        
        <cfset var category = new categoryDAO().read(id = arguments.id) />

        <cfreturn category>
    </cffunction>

    <cffunction name="save" output="false" access="public" returntype="category">
        <cfargument name="category" type="category" required="true" />


        <cfif category.getCategory_id() eq 0>
            <cfreturn new categoryDAO().insert(arguments.category) />
        <cfelse>
            <cfreturn new categoryDAO().update(arguments.category) />
        </cfif>
    </cffunction>

</cfcomponent>
