<cfcomponent displayname="customerDAO">
    <cffunction name="read" output="false" access="public" returntype="customer">
        <cfargument name="id" type="numeric" required="true" />

        <cfset var qCustomer = "" />
        <cfquery name="qCustomer" datasource="sakila">
            select * from customer
            where customer_id = <cfqueryparam value = '#arguments.id#' cfsqltype="cf_sql_integer" />
        </cfquery>

        <cfif qCustomer.recordcount>
            <cfreturn new customer().init( argumentCollection = qCustomer.getRow(1))/>
        <cfelse>
            <cfreturn new customer().init()/>
        </cfif>
    </cffunction>

    <cffunction name="insert" access="public" output="false" returntype="customer">
        <cfargument name="customer" type="customer" required="true">

        <cfset var qCustomer = "" />
        <cfquery name="qCustomer" datasource="sakila">
            insert into customer (store_id,first_name,last_name,email,address_id)
            value(
                <cfqueryparam value="#arguments.customer.getStore_id()#" cfsqltype="cf_sql_varchar" />,
                <cfqueryparam value="#arguments.customer.getFirst_name()#" cfsqltype="cf_sql_varchar" />,
                <cfqueryparam value="#arguments.customer.getLast_name()#" cfsqltype="cf_sql_varchar" />,
                <cfqueryparam value="#arguments.customer.getEmail()#" cfsqltype="cf_sql_varchar" />,
                <cfqueryparam value="#arguments.customer.getAddress_id()#" cfsqltype="cf_sql_varchar" /> 
            );
            select last_insert_id() id;
        </cfquery>
        <cfset arguments.customer.setCustomer_id(qCustomer.id) />

        <cfreturn arguments.customer />

    </cffunction>

    <cffunction name="update" access="public" output="false" returntype="customer">
        <cfargument name ="customer" type="customer" required="true"/>
    
        <cfquery name = "qCustomer" datasource="sakila">
            update customer
                set store_id = <cfqueryparam value="#customer.getStore_id()#" cfsqltype="cf_sql_varchar" />,
                    first_name = <cfqueryparam value="#customer.getFirst_name()#" cfsqltype="cf_sql_varchar" />,
                    last_name = <cfqueryparam value="#customer.getLast_name()#" cfsqltype="cf_sql_varchar" />,
                    email = <cfqueryparam value="#customer.getEmail()#" cfsqltype="cf_sql_integer" />,
                    address_id = <cfqueryparam value="#customer.getAddress_id()#" cfsqltype="cf_sql_varchar" />,
                where customer_id = <cfqueryparam value="#customer.getCustomer_id()#" cfsqltype="cf_sql_integer" />
        </cfquery>
                <cfreturn arguments.customer />
    
    </cffunction >

</cfcomponent>