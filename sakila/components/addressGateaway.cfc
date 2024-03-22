<cfcomponent displayname="addressGateaway" output="false" >
    <cfset variables.datasource = 'sakila'>

    <cffunction name="list" access="public" returntype="query">

        <cfargument name= "page" type="numeric" default="1">
        <cfargument name = "maxRow" type="numeric" default="10">

        <cfset local.currentBlock = (arguments.page - 1)*arguments.maxRow />

        <cfquery name = "local.qAddress" datasource = "sakila" >
            SELECT *
            FROM address
            order by address_id desc
            limit #local.currentBlock#,#arguments.maxRow# ;
        </cfquery>

        <cfreturn local.qAddress>
    </cffunction>

    <cffunction name ="get" access="public" >
        <cfargument name="id" type="numeric" required="true">

        <cfset var address = new addressDAO().read(id = arguments.id) />
        
        <cfreturn address />
    </cffunction>

    <cffunction name="save" output="false" access="public" returntype="address">
        <cfargument name="address" type="address" required="true" />


        <cfif address.getaddress_id() eq 0>
            <cfreturn new addressDAO().insert(arguments.address) />
        <cfelse>
            <cfreturn new addressDAO().update(arguments.address) />
        </cfif>
    </cffunction>

</cfcomponent>
