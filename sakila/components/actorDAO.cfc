<cfcomponent displayname="actorDAO">
    <cffunction name="read" output="false" access="public" returntype="actor">
        <cfargument name="id" type="numeric" required="true" />

        <cfset var qActor = "" />
        <cfquery name="qActor" datasource="sakila">
            select * from actor
            where actor_id = <cfqueryparam value = '#arguments.id#' cfsqltype="cf_sql_integer" />
        </cfquery>

        <cfif qActor.recordcount>
            <cfreturn new actor().init( argumentCollection = qActor.getRow(1))/>
        <cfelse>
            <cfreturn new actor().init()/>
        </cfif> 
    </cffunction>

    <cffunction name="insert" access="public" output="false" returntype="actor" >
        <cfargument name="actor" type="actor" required="true">
        
        <cfset var qActor = "" />
        <cfquery name="local.qActor" datasource="sakila">
            insert into actor (first_name,last_name,email)
            value(
                <cfqueryparam value="#arguments.actor.getFirst_name()#" cfsqltype="cf_sql_varchar" />,
                <cfqueryparam value="#arguments.actor.getLast_name()#" cfsqltype="cf_sql_varchar" />,
                <cfqueryparam value="#arguments.actor.getEmail()#" cfsqltype="cf_sql_varchar" />     
            );
            select last_insert_id() id;
        </cfquery>
        <cfset arguments.actor.setActor_id(qActor.id) />

        <cfreturn arguments.actor />
    </cffunction>


    <cffunction name="update" access="public" output="false" returntype="actor">

        <cfargument name ="actor" type="actor" required="true"/>
    
        <cfquery name = "qActor" datasource="sakila">
            update actor
                set first_name = <cfqueryparam value="#actor.getFirst_name()#" cfsqltype="cf_sql_varchar" />,
                    last_name = <cfqueryparam value="#actor.getLast_name()#" cfsqltype="cf_sql_varchar" />,
                    email = <cfqueryparam value="#actor.getEmail()#" cfsqltype="cf_sql_varchar" />
                where actor_id = <cfqueryparam value="#actor.getActor_id()#" cfsqltype="cf_sql_integer" />
        </cfquery>
        <cfreturn arguments.actor />
    
    </cffunction >

</cfcomponent>
