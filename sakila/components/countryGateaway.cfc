<cfcomponent displayname="countryGateaway" output="false" >
    <cfset variables.datasource = 'sakila'>

    <cffunction name="list" access="public" returntype="query">

        <cfargument name= "page" type="numeric" default="1">
        <cfargument name = "maxRow" type="numeric" default="10">

        <cfset local.currentBlock = (arguments.page - 1)*arguments.maxRow />

        <cfquery name = "local.qCountry" datasource = "sakila" >
            SELECT *
            FROM country
            order by country_id desc
            limit #local.currentBlock#,#arguments.maxRow# ;
        </cfquery>

        <cfreturn local.qCountry>
    </cffunction>

    <cffunction name ="get" access="public">
        <cfargument name="id" type="numeric" required="true">

        <cfset var country = new countryDAO().read(id = arguments.id) />
        
        <cfreturn country>
    </cffunction>

    <cffunction name="save" output="false" access="public" returntype="country">
        <cfargument name="country" type="country" required="true" />


        <cfif country.getCountry_id() eq 0>
            <cfreturn new countryDAO().insert(arguments.country) />
        <cfelse>
            <cfreturn new countryDAO().update(arguments.country) />
        </cfif>
    </cffunction>

    
</cfcomponent>
