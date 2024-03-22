<cfparam name ="url.id" default="0"/>
<cfparam name ="form.fname" default=""/>
<cfparam name ="form.lname" default=""/>
<cfparam name ="form.dob" default=""/>
<cfparam name ="form.gen" default=""/>
<cfparam name ="form.street" default=""/>
<cfparam name ="form.city" default=""/>
<cfparam name ="form.state" default=""/>
<cfparam name ="form.pc" default=""/>
<cfparam name ="form.email" default=""/>
<cfparam name ="form.mob" default=""/>
<cfparam name ="form.depart" default=""/>
<cfparam name ="form.ba" default=""/>
<cfparam name ="form.pro" default=""/>
<cfparam name ="form.group" default=""/>
<cfparam name ="form.other" default=""/>
<cfparam name ="form.otherText" default=""/>
<cfparam name ="form.apDate" default=""/>
<cfparam name ="form.apTime" default=""/>
<cfparam name ="form.file" default=""/>

<cfif val(url.id)>
    <cfquery name="variables.qGetAppointment" datasource="doctorappointment">
        select *
        from drappointment
        where id = <cfqueryparam value="#url.id#" cfsqltype="cf_sql_integer" />
    </cfquery>

        <cfset form.fname = variables.qGetAppointment.firstName />
        <cfset form.lname = variables.qGetAppointment.lastName />
        <cfset form.dob = variables.qGetAppointment.dob />
        <cfset form.gen = variables.qGetAppointment.gender />
        <cfset form.street = variables.qGetAppointment.street />
        <cfset form.city = variables.qGetAppointment.city />
        <cfset form.state = variables.qGetAppointment.state />
        <cfset form.pc = variables.qGetAppointment.postalCode />
        <cfset form.email = variables.qGetAppointment.email />
        <cfset form.mob = variables.qGetAppointment.mobile />
        <cfset form.depart = variables.qGetAppointment.depart />
        <cfset form.ba = variables.qGetAppointment.beforeApplied />
        <cfset form.pro = variables.qGetAppointment.apProcess />
        <cfset form.group = variables.qGetAppointment.bloodGrp />
        <cfset form.other = variables.qGetAppointment.otherDisease />
        <cfset form.otherText = variables.qGetAppointment.adiDisease />
        <cfset form.apDate = variables.qGetAppointment.appDate />
        <cfset form.apTime = variables.qGetAppointment.appTime />
        <cfset form.file = variables.qGetAppointment.aadharCard />


</cfif>

<!DOCTYPE html>
<html lang="en"> 
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Doctor Appointment Form</title>
    <link rel="stylesheet" href="appointment.css">

</head>
<cfoutput> 
<body>
    <form name="myForm" id="myForm" action="./appointment-action.cfm" method="post" enctype="multipart/form-data">
        
        <input type="hidden" name="id" value="#url.id#">

        <div class="header">
            <h1>DOCTOR APPOINTMENT REQUEST FORM</h1>
            <h3>Fill the form below and we will get back soon to you for more updates and plan your appointment.</h3>
        </div>
        <br>
        <div class="div-details">
        <div class="patient-name" id="patient">
            <label for="patient">Patient Name<span>*</span> :</label><br>
            <div class="name-box">
                <input type="text" id="patient" name="fname" placeholder="First name" value ="#form.fname#">
                <input type="text" id="patient" name="lname" placeholder="Last name" value="#form.lname#" style="margin-left: 10px;">
           </div>
        </div>
           <div class="div-date">
                <label for="date">Date of Birth<span>*</span> : </label><br>
                <input type="text" id="date" name="dob" value="#dateFormat(form.dob,'dd-mm-yyyy')#">
            </div>
            <div class="div-gender">
                <label for="">Gender<span>*</span> : </label><br>
                <input type="radio" id="male" name="gen" value="male" <cfif listFindNoCase(form.gen, 'male')>checked</cfif>>
                <label for="male">Male</label>
                <input type="radio" id="female" name="gen" value="female" <cfif listFindNoCase(form.gen, 'female')>checked</cfif> style="margin-left: 10px;">
                <label for="female">Female</label>
                <input type="radio" id="gender" name="gen" value="other" <cfif listFindNoCase(form.gen, 'other')>checked</cfif> style="margin-left: 10px;">
                <label for="gender">Other</label>
            </div><br>  
            <div class="div-address">
                <label for="address">Address<span>*</span> : </label><br>
                <input type="text" id="address" value="#form.street#" name="street" placeholder="Street address">
                <input type="text" id="address" value="#form.city#" name="city" placeholder="City" style="margin-left: 10px;"><br>
                <input type="text" id="address" value="#form.state#" name="state" placeholder="State">
                <input type="text" id="address" value="#form.pc#" name="pc" placeholder="Postal code" style="margin-left: 10px;">
            </div><br>
            <div class="div-contact">
                <div class="div-email">
                    <label for="email">Email <span>*</span>: </label><br>
                    <input type="email" id="email" name="email" value="#form.email#" placeholder="myname@gmail.com">
                </div>
                <div class="div-mobile">
                    <label for="mobile">Mobile <span>*</span>: </label><br>
                    <input type="tel" id="mobile" name="mob" value="#form.mob#" placeholder="1234567890">
                </div>
            </div><br>
            <div class="div-before">
                <label for="before-applied">Have you ever applied to our facility before?<span>*</span></label><br>
                <input type="radio" id="yes" name="ba" value="yes" <cfif listFindNoCase(form.ba, 'yes')>checked</cfif>>
                <label for="yes">Yes</label>
                <input type="radio" id="no" name="ba" value="no" <cfif listFindNoCase(form.ba, 'no')>checked</cfif> style="margin-left: 10px;">
                <label for="no">No</label>
            </div><br>
            <div class="div-department">
                <label for="department">Which department would you like to get an appointment from?<span>*</span></label><br>
                <select id="department" name="depart" style="padding: 7px; margin-top:10px; border: none;">
                    <option value="">Please select</option>
                    <option value="General medicine" <cfif form.depart eq 'General medicine'>selected</cfif>>General medicine</option>
                    <option value="cardiology" <cfif form.depart eq 'cardiology'>selected</cfif>>cardiology</option>
                    <option value="neurology" <cfif form.depart eq 'neurology'>selected</cfif>>neurology</option>
                    <option value="neurosurgery" <cfif form.depart eq 'neurosurgery'>selected</cfif>>neurosurgery</option>
                    <option value="orthopedic" <cfif form.depart eq 'orthopedic'>selected</cfif>>orthopedic</option>
                    <option value="dermatology" <cfif form.depart eq 'dermatology'>selected</cfif>>dermatology</option>
                    <option value="dentistry" <cfif form.depart eq 'dentistry'>selected</cfif>>dentistry</option>
                    <option value="physiology" <cfif form.depart eq 'physiology'>selected</cfif>>physiology</option>
                    <option value="general surgury" <cfif form.depart eq 'general surgury'>selected</cfif>>general surgury</option>
                    <option value="pathology" <cfif form.depart eq 'pathology'>selected</cfif>>pathology</option>
                </select>
            </div><br>
            <div class="div-multi">
                <label for="process">Which procedure do you want to make an appointment for?<span>*</span></label><br>
                <select id="process" name="pro" style="padding: 7px;margin-top:10px; border: none;" multiple>
                    <option value="Medical examination" <cfif listFindNoCase(form.pro, 'Medical examination')>selected</cfif>>Medical examination</option>
                    <option value="Doctor check" <cfif listFindNoCase(form.pro, 'Doctor check')>selected</cfif>>Doctor check</option>
                    <option value="Result Analysis" <cfif listFindNoCase(form.pro, 'Result Analysis')>selected</cfif>>Result Analysis</option>
                    <option value="Check-up" <cfif listFindNoCase(form.pro, 'Check-up')>selected</cfif>>Check-up </option>
                </select>
            </div><br>
            <div class="blood-group">
                <label for="group">blood-group<span>*</span> :</label><br>
                <select id="group" name="group" style="padding: 7px; margin-top: 10px; border: none;">
                    <option value="">Please select</option>
                    <option value="A+" <cfif form.group eq 'A+'>selected</cfif>>A+</option>
                    <option value="B+" <cfif form.group eq 'B+'>selected</cfif>>B+</option>
                    <option value="AB+"<cfif form.group eq 'AB+'>selected</cfif>>AB+</option>
                    <option value="O+" <cfif form.group eq 'O+'>selected</cfif>>O+</option>
                    <option value="A-" <cfif form.group eq 'A-'>selected</cfif>>A-</option>
                    <option value="B-" <cfif form.group eq 'B-'>selected</cfif>>B-</option>
                    <option value="AB-"<cfif form.group eq 'AB-'>selected</cfif>>AB-</option>
                    <option value="O-" <cfif form.group eq 'O-'>selected</cfif>>0-</option> 
                </select>
            </div><br>
            <div class="div-disease">
                <label for="disease">Additional disease :</label><br>
                <input type="checkbox" name="other" value="bloodpressure" <cfif listFindNoCase(form.other, 'bloodpressure')>checked</cfif> id="bp">
                <label for="bp">BP</label>
                <input type="checkbox" name="other" value="diabetes" <cfif listFindNoCase(form.other, 'diabetes')>checked</cfif> id="diabetes"style="margin-left: 10px;">
                <label for="diabetes">Diabetes</label>
                <input type="checkbox" name="other" value="asthma" <cfif listFindNoCase(form.other, 'asthma')>checked</cfif> id="asthma"style="margin-left: 10px;">
                <label for="asthma">Asthma</label>
                <input type="checkbox" name="other" value="other" <cfif listFindNoCase(form.other, 'other')>checked</cfif> id="others"  style="margin-left: 10px;" onclick="showOther(this)">
                <label for="others">Other</label>
                <input type="text" name="otherText" value="#form.otherText#" id="other" placeholder="Other disease" style="display: none"/>
                
            </div><br>
            <div class="div-appointment">
               <label for="appointment">Preferred Appointment Date<span>*</span>:</label><br>
               <input type="text" name="apDate" id="appointment" value="#dateFormat(form.apDate,'dd-mm-yyyy')#" style="padding: 7px; border: none;">
               <select id="appointment" name="apTime" style="padding: 7px; border: none; margin-left: 10px;">
                    <option value="" >Please select</option>
                    <option value="9-10am"  <cfif form.apTime eq '9-10am'>selected</cfif>>9-10am</option>
                    <option value="10-11am" <cfif form.apTime eq '10-11am'>selected</cfif>>10-11am</option>
                    <option value="11-12pm" <cfif form.apTime eq '11-12pm'>selected</cfif>>11-12pm</option>
                    <option value="12-1pm"  <cfif form.apTime eq '12-1pm'>selected</cfif>>12-1pm</option>
                    <option value="4-5pm"   <cfif form.apTime eq '4-5pm'>selected</cfif>>4-5pm</option>
                    <option value="5-6pm"   <cfif form.apTime eq '5-6pm'>selected</cfif>>5-6pm</option>
                    <option value="6-7pm"   <cfif form.apTime eq '6-7pm'>selected</cfif>>6-7pm</option>
                    <option value="7-8pm"   <cfif form.apTime eq '7-8pm'>selected</cfif>>7-8pm</option>  
                </select>
            </div><br>
            <div class="div-file">
                <label for="file">Upload your aadhar<span>*</span>:</label>
                <input type="file" name="file" value="#form.file#" id="file">
            </div>
            <div class="button">
                <!--- <button type="button" onclick="fun_submit()">SUBMIT</button> --->
                <button type="submit">SUBMIT</button>
                <!-- <input type="submit" value="Submit" id="submit"> -->
            </div>
            
        </div>
    </form>
    <script src="/assets/helper.js"></script>

    <!--- <script>
        function fun_submit() {
                    const frm = document.myForm;
                    const {
                        fname:firstName,
                        lname:lastName,
                        dob:dateOfBirth,
                        gen:gender,
                        street:strAddress,
                        city:cityAddress,
                        state:stateAddress,
                        pc:postalCode,
                        email:email,
                        mob:mobile,
                        ba:beforeApply,
                        depart:department,
                        pro:process,
                        group:bloodGroup,
                        other:otherDisease,
                        apDate:selectDate,
                        apTime:selectTime,
                        file:selectFile
            

                    } = frm;
 
                    if(!isBlank(firstName, 'Please enter your first name!')) {
                        return false;
                    }
                    if(!isBlank(lastName, 'Please enter your last name!')) {
                        return false;
                    }
                    if(!isBlank(dateOfBirth, 'Please enter your date of birth!')){
                        return false;
                    }
                    if(!isBlank(gender, 'Please enter your gender!')){
                        return false;
                    }
                    if(!isBlank(strAddress, 'Please enter your street!')){
                        return false;
                    }
                    if(!isBlank(cityAddress, 'Please enter your city!')){
                        return false;
                    }
                    if(!isBlank(stateAddress, 'Please enter your state!')){
                        return false;
                    }
                    if(!isBlank(postalCode, 'Please enter your postal code!')){
                        return false;
                    }
                    if(!isEmail(email, 'Please enter your valid email!')){
                        return false;
                    }
                    if(!isNumber(mobile, 'Please enter your valid mobile no.!')){
                        return false;
                    }
                    if(!isBlank(beforeApply, 'Please enter Yes or No!')){
                        return false;
                    }
                    if(!isBlank(department, 'Please enter Department!')){
                        return false;
                    }
                    if(!isBlank(process, 'Please enter appointment process!')){
                        return false;
                    }
                    if(!isBlank(bloodGroup, 'Please enter your blood group!')){
                        return false;
                    }
                    
                    if(!isCheck(otherDisease, 'Please enter additional disease!')){
                        return false;
                    }

                    // const otherDisease = Array.from(validDisease).filter(element => element.value === 'otherText');
                    // if(otherDisease.length > 0 && !isBlank(validDisease, 'Please')) {
                    // }

                    if(!isBlank(selectDate, 'Please enter appointment date!')){
                        return false;
                    }   
                    if(!isBlank(selectTime, 'Please enter appointment timing!')){
                        return false;
                    }
                    if(!isBlank(selectFile, 'Please upload aadhar card!')){
                        return false;
                    }
                    //return true;                
                    frm.submit();
                }

    </script> --->
</body>
</cfoutput>
</html>

