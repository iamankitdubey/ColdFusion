<cfset variables.categoryGateaway = new components.categoryGateaway()/>
<cfset variables.category = variables.categoryGateaway.get(id = val(form.category_id)) />

<cfset variables.category.setCategory_id(form.category_id) />
<cfset variables.category.setName(form.name) />

<cfset variables.category = variables.categoryGateaway.save(variables.category) />

<cfset variables.message = form.category_id EQ 0 ? "record inserted successfully" : "record updated successfully" />


<cflocation addtoken="false" url="index.cfm?id=#form.category_id#&message#variables.message#" >

    



                