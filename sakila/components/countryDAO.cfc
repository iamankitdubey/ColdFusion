<cfcomponent displayname="countryDAO">
    <cffunction name="read" output="false" access="public" returntype="country">
        <cfargument name="id" type="numeric" required="true" />

        <cfset var qCountry = "" />
        <cfquery name="qCountry" datasource="sakila">
            select * from country
            where country_id = <cfqueryparam value = '#arguments.id#' cfsqltype="cf_sql_integer" />
        </cfquery>

        <cfif qCountry.recordcount>
            <cfreturn new country().init( argumentCollection = qCountry.getRow(1))/>
        <cfelse>
            <cfreturn new country().init()/>
        </cfif>
    </cffunction>

    <cffunction name="insert" access="public" output="false" returntype="country">
        <cfargument name="country" type="country" required="true">

        <cfset var qCountry = "" />
        <cfquery name="qCountry" datasource="sakila">
            insert into country (country)
            value(
                <cfqueryparam value="#arguments.country.getCountry()#" cfsqltype="cf_sql_varchar" />     
            );
            select last_insert_id() id;
        </cfquery>
        <cfset arguments.country.setCountry_id(qCountry.id) />

        <cfreturn arguments.country />

    </cffunction>

    <cffunction name="update" access="public" output="false" returntype="country">
        <cfargument name ="country" type="country" required="true"/>
    
        <cfquery name = "qCountry" datasource="sakila">
            update country
                set country = <cfqueryparam value="#country.getCountry()#" cfsqltype="cf_sql_varchar" />       
                where country_id = <cfqueryparam value="#country.getCountry_id()#" cfsqltype="cf_sql_integer" />
        </cfquery>
                <cfreturn arguments.country />
    
    </cffunction >


</cfcomponent>