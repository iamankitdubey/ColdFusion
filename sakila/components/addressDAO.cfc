<cfcomponent displayname="addressDAO">
    <cffunction name="read" output="false" access="public" returntype="address">
        <cfargument name="id" type="numeric" required="true" />

        <cfset var qAddress = "" />
        <cfquery name="qAddress" datasource="sakila">
            select * from address
            where address_id = <cfqueryparam value = '#arguments.id#' cfsqltype="cf_sql_integer" />
        </cfquery>

        <cfif qAddress.recordcount>
            <cfreturn new address().init( argumentCollection = qAddress.getRow(1))/>
        <cfelse>
            <cfreturn new address().init()/>
        </cfif>
    </cffunction>

    <cffunction name="insert" access="public" output="false" returntype="address">
        <cfargument name="address" type="address" required="true">

        <cfset var qAddress = "" />
        <cfquery name="qAddress" datasource="sakila">
            insert into address (address,address2,district,city_id,postal_code,phone)
            value(
                <cfqueryparam value="#arguments.address.getAddress()#" cfsqltype="cf_sql_varchar" />,
                <cfqueryparam value="#arguments.address.getAddress2()#" cfsqltype="cf_sql_varchar" />,
                <cfqueryparam value="#arguments.address.getDistrict()#" cfsqltype="cf_sql_varchar" />,
                <cfqueryparam value="#arguments.address.getCity_id()#" cfsqltype="cf_sql_varchar" />,
                <cfqueryparam value="#arguments.address.getPostal_code()#" cfsqltype="cf_sql_varchar" /> ,
                <cfqueryparam value="#arguments.address.getPhone()#" cfsqltype="cf_sql_varchar" />     
            );
            select last_insert_id() id;
        </cfquery>
        <cfset arguments.address.setAddress_id(qAddress.id) />

        <cfreturn arguments.address />

    </cffunction>

    <cffunction name="update" access="public" output="false" returntype="address">
        <cfargument name ="address" type="address" required="true"/>
    
        <cfquery name = "qAddress" datasource="sakila">
            update address
                set address = <cfqueryparam value="#address.getAddress()#" cfsqltype="cf_sql_varchar" />,
                    address2 = <cfqueryparam value="#address.getAddress2()#" cfsqltype="cf_sql_varchar" />,
                    district = <cfqueryparam value="#address.getDistrict()#" cfsqltype="cf_sql_varchar" />,
                    city_id = <cfqueryparam value="#address.getCity_id()#" cfsqltype="cf_sql_integer" />,
                    postal_code = <cfqueryparam value="#address.getPostal_code()#" cfsqltype="cf_sql_varchar" />,
                    phone = <cfqueryparam value="#address.getPhone()#" cfsqltype="cf_sql_varchar" />
                where address_id = <cfqueryparam value="#address.getAddress_id()#" cfsqltype="cf_sql_integer" />
        </cfquery>
                <cfreturn arguments.address />
    
    </cffunction >

</cfcomponent>