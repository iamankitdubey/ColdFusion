<cfset variables.addressGateaway = new components.addressGateaway()/>
<cfset variables.address = variables.addressGateaway.get(id = val(form.address_id)) />
        
<cfset variables.address.setAddress_id(form.address_id) />
<cfset variables.address.setAddress(form.address) />
<cfset variables.address.setAddress2(form.address2) />
<cfset variables.address.setDistrict(form.district) />
<cfset variables.address.setCity_id(form.city_id) />
<cfset variables.address.setPostal_code(form.postal_code) />
<cfset variables.address.setPhone(form.phone) />

<cfset variables.address = variables.addressGateaway.save(variables.address) />
            
<cfset variables.message = form.address_id EQ 0 ? "record inserted successfully" : "record updated successfully" />

<cflocation addtoken="false" url="index.cfm?id=#form.address_id#&message#variables.message#" >

                