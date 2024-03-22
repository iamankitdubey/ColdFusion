<cfset variables.customerGateaway = new components.customerGateaway()/>
<cfset variables.customer = variables.customerGateaway.get(id = val(form.customer_id)) />

<cfset variables.customer.setCustomer_id(form.customer_id) />
<cfset variables.customer.setStore_id(form.store_id) />
<cfset variables.customer.setFirst_name(form.first_name) />
<cfset variables.customer.setLast_name(form.last_name) />
<cfset variables.customer.setEmail(form.email) />
<cfset variables.customer.setAddress_id(form.address_id) />

<cfset variables.customer = variables.customerGateaway.save(variables.customer) />
            
<cfset variables.message = form.customer_id EQ 0 ? "record inserted successfully" : "record updated successfully" />

<cflocation addtoken="false" url="index.cfm?id=#form.customer_id#&message#variables.message#" >

            