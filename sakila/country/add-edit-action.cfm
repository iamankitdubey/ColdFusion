<cfset variables.countryGateaway = new components.countryGateaway()/>
<cfset variables.country = variables.countryGateaway.get(id = val(form.country_id)) />

<cfset variables.country.setCountry(form.country) />


<cfset variables.country = variables.countryGateaway.save(variables.country) />

<cfset variables.message = form.country_id EQ 0 ? "record inserted successfully" : "record updated successfully" />


<cflocation addtoken="false" url="index.cfm?id=#form.country_id#&message#variables.message#" >

    



                