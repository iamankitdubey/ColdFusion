<cfset variables.actorGateaway = new components.actorGateaway()/>
<cfset variables.actor = variables.actorGateaway.get(id = val(form.actor_id)) />
        
<cfset variables.actor.setFirst_name(form.fname) />
<cfset variables.actor.setLast_name(form.lname) />
<cfset variables.actor.setEmail(form.email) />

<cfset variables.actor = variables.actorGateaway.save(variables.actor) />
            
<cfset variables.message = form.actor_id EQ 0 ? "record inserted successfully" : "record updated successfully" />
   
<cflocation addtoken="false" url="index.cfm?id=#form.actor_id#&message#variables.message#" />

                