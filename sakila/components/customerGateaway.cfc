<cfcomponent displayname="customerGateaway" output="false" >
    <cfset variables.datasource = 'sakila'>

    <cffunction name="list" access="public" returntype="query">

        <cfargument name= "page" type="numeric" default="1">
        <cfargument name = "maxRow" type="numeric" default="10">

        <cfset local.currentBlock = (arguments.page - 1)*arguments.maxRow />

        <cfquery name = "local.qCustomer" datasource = "sakila" >
            SELECT *
            FROM customer
            order by customer_id desc
            limit #local.currentBlock#,#arguments.maxRow# ;
        </cfquery>

        <cfreturn local.qCustomer>
    </cffunction>

    <cffunction name ="get" access="public" returntype="customer">
        <cfargument name="id" type="numeric" required="true">

        <cfset var customer = new customerDAO().read(id = arguments.id) />
        
        <cfreturn customer>
    </cffunction>

    <cffunction name="save" output="false" access="public" returntype="customer">
        <cfargument name="customer" type="customer" required="true" />


        <cfif customer.getcustomer_id() eq 0>
            <cfreturn new customerDAO().insert(arguments.customer) />
        <cfelse>
            <cfreturn new customerDAO().update(arguments.customer) />
        </cfif>
    </cffunction>
    

   
</cfcomponent>
