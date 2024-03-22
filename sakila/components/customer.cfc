<cfcomponent displayname="actor">
    <cfproperty name="customer_id" type="numeric" default="0" />
    <cfproperty name="store_id" type="string" default="" />    
    <cfproperty name="first_name" type="string" default="" />    
    <cfproperty name="last_name" type="string" default="" />
    <cfproperty name="email" type="string" default="" />
    <cfproperty name="address_id" type="string" default="" />

    <cfset variables.instance = {} />

    <cffunction name="init" access="public" returntype="customer" output="false">
        <cfargument name="customer_id" type="numeric" default="0" />
        <cfargument name="store_id" type="string" default="" />    
        <cfargument name="first_name" type="string" default="" />    
        <cfargument name="last_name" type="string" default="" />
        <cfargument name="email" type="string" default="" />
        <cfargument name="address_id" type="string" default="" />

        <cfset this.setCustomer_id(arguments.customer_id) />
        <cfset this.setStore_id(arguments.store_id) />
        <cfset this.setFirst_name(arguments.first_name) />
        <cfset this.setLast_name(arguments.last_name) />
        <cfset this.setEmail(arguments.email) />
        <cfset this.setAddress_id(arguments.address_id) />

        <cfreturn this />
    </cffunction>

    <cffunction name="setCustomer_id" access="public" returntype="void" output="false">
        <cfargument name="customer_id" type="numeric" required="true">

        <cfset variables.instance.customer_id = arguments.customer_id />
    
    </cffunction>

    <cffunction name="getCustomer_id" access="public" returntype="string" output="false">
        <cfreturn variables.instance.customer_id />
    </cffunction>

    <cffunction name="setStore_id" access="public" returntype="void" output="false">
        <cfargument name="store_id" type="string" required="true">

        <cfset variables.instance.store_id = arguments.store_id />
    
    </cffunction>

    <cffunction name="getStore_id" access="public" returntype="string" output="false">
        <cfreturn variables.instance.store_id />
    </cffunction>


    <cffunction name="setFirst_name" access="public" returntype="void" output="false">
        <cfargument name="first_name" type="string" required="true">

        <cfset variables.instance.first_name = arguments.first_name />
    </cffunction>

    <cffunction name="getFirst_name" access="public" returntype="string" output="false">
        <cfreturn variables.instance.first_name />
    </cffunction>


    <cffunction name="setLast_name" access="public" returntype="void" output="false">
        <cfargument name="last_name" type="string" required="true">

        <cfset variables.instance.last_name = arguments.last_name />
    </cffunction>

    <cffunction name="getLast_name" access="public" returntype="string" output="false">
        <cfreturn variables.instance.last_name />
    </cffunction>


    <cffunction name="setEmail" access="public" returntype="void" output="false">
        <cfargument name="email" type="string" required="true">

        <cfset variables.instance.email = arguments.email />
    </cffunction>

    <cffunction name="getEmail" access="public" returntype="string" output="false">
        <cfreturn variables.instance.email />
    </cffunction>

    <cffunction name="setAddress_id" access="public" returntype="void" output="false">
        <cfargument name="address_id" type="string" required="true">

        <cfset variables.instance.address_id = arguments.address_id />
    
    </cffunction>

    <cffunction name="getAddress_id" access="public" returntype="string" output="false">
        <cfreturn variables.instance.address_id />
    </cffunction>

</cfcomponent>

