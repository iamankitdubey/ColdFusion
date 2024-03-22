<cfcomponent displayname="actorGateaway" output="false" >
    <cfset variables.datasource = 'sakila'>

    <cffunction name="list" access="public" returntype="query">

        <cfargument name= "page" type="numeric" default="1">
        <cfargument name = "maxRow" type="numeric" default="10">

        <cfset local.currentBlock = (arguments.page - 1)*arguments.maxRow />

        <cfquery name = "local.qActor" datasource = "sakila" >
            SELECT *
            FROM actor
            order by actor_id desc
            limit #local.currentBlock#,#arguments.maxRow# ;
        </cfquery>

        <cfreturn local.qActor>
    </cffunction>

    <cffunction name ="get" access="public" >
        <cfargument name="id" type="numeric" required="true" />

        <cfset var actor = new actorDAO().read(id = arguments.id) />

        <cfreturn actor />
    </cffunction>

    <cffunction name="save" output="false" access="public" returntype="actor">
        <cfargument name="actor" type="actor" required="true" />


        <cfif actor.getActor_id() eq 0>
            <cfreturn new actorDAO().insert(arguments.actor) />
        <cfelse>
            <cfreturn new actorDAO().update(arguments.actor) />
        </cfif>
    </cffunction>

</cfcomponent>
