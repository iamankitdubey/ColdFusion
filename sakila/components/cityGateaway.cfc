<cfcomponent displayname="cityGateaway" output="false">
    <cffunction name="qGetAllCities" access="public" returntype="query">

        <cfset var qCities = "">
        <cfquery datasource="sakila" name="qCities">

            select c.city_id,c.city ,country.country
            from sakila.city c
                    inner join country on country.country_id = c.country_id
            order by country.country , c.city;
        
        </cfquery>
        <cfreturn qCities>
    </cffunction>
</cfcomponent>

    