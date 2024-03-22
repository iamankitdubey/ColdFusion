<cfcomponent displayname="categoryDAO">
    <cffunction name="read" output="false" access="public" returntype="category">
        <cfargument name="id" type="numeric" required="true" />

        <cfset var qCategory = "" />
        <cfquery name="qCategory" datasource="sakila">
            select * from category
            where category_id = <cfqueryparam value = '#arguments.id#' cfsqltype="cf_sql_integer" />
        </cfquery>

        <cfif qCategory.recordcount>
            <cfreturn new category().init( argumentCollection = qCategory.getRow(1))/>
        <cfelse>
            <cfreturn new category().init()/>
        </cfif>
    </cffunction>

    <cffunction name="insert" access="public" output="false" returntype="category">
        <cfargument name="category" type="category" required="true">

        <cfset var qCategory = "" />
        <cfquery name="qCategory" datasource="sakila">
            insert into category (name)
            value(
                <cfqueryparam value="#arguments.category.getName()#" cfsqltype="cf_sql_varchar" />     
            );
            select last_insert_id() id;
        </cfquery>
        <cfset arguments.category.setCategory_id(qCategory.id) />

        <cfreturn arguments.category />

    </cffunction>

    <cffunction name="update" access="public" output="false" returntype="category">
        <cfargument name ="category" type="category" required="true"/>
    
        <cfquery name = "qCategory" datasource="sakila">
            update category
                set name = <cfqueryparam value="#category.getName()#" cfsqltype="cf_sql_varchar" />       
                where category_id = <cfqueryparam value="#category.getCategory_id()#" cfsqltype="cf_sql_integer" />
        </cfquery>
                <cfreturn arguments.category />
    
    </cffunction >


</cfcomponent>