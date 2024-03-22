<cfparam name ="url.id" default=""/>
<cfparam name ="url.fname" default=""/>
<cfparam name ="url.lname" default=""/>
<cfparam name ="url.dob" default=""/>
<cfparam name ="url.gen" default=""/>
<cfparam name ="url.street" default=""/>
<cfparam name ="url.city" default=""/>
<cfparam name ="url.state" default=""/>
<cfparam name ="url.pc" default=""/>
<cfparam name ="url.email" default=""/>
<cfparam name ="url.mob" default=""/>
<cfparam name ="url.depart" default=""/>
<cfparam name ="url.ba" default=""/>
<cfparam name ="url.pro" default=""/>
<cfparam name ="url.group" default=""/>
<cfparam name ="url.other" default=""/>
<cfparam name ="url.otherText" default=""/>
<cfparam name ="url.apDate" default=""/>
<cfparam name ="url.apTime" default=""/>
<cfparam name ="url.file" default=""/>


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
    <form name="myForm" id="myForm" action="insert.cfm" method="get" enctype="multipart/form-data">
        <input type="Hidden" name="id" value="#url.id#">
        <div class="header">
            <h1>DOCTOR APPOINTMENT REQUEST FORM</h1>
            <h3>Fill the form below and we will get back soon to you for more updates and plan your appointment.</h3>
        </div>
        <br>
        <div class="div-details">
        <div class="patient-name" id="patient">
            <label for="patient">Patient Name<span>*</span> :</label><br>
            <div class="name-box">
                <input type="text" id="patient" name="fname" placeholder="First name" value ="#url.fname#">
                <input type="text" id="patient" name="lname" placeholder="Last name" value="#url.lname#" style="margin-left: 10px;">
           </div>
        </div>
           <div class="div-date">
                <label for="date">Date of Birth<span>*</span> : </label><br>
                <input type="date" id="date" name="dob" value="#url.dob#">
            </div>
            <div class="div-gender">
                <label for="">Gender<span>*</span> : </label><br>
                <input type="radio" id="male" name="gen" value="male">
                <label for="male">Male</label>
                <input type="radio" id="female" name="gen" value="female"style="margin-left: 10px;">
                <label for="female">Female</label>
                <input type="radio" id="gender" name="gen" value="other"style="margin-left: 10px;">
                <label for="gender">Other</label>
            </div><br>  
            <div class="div-address">
                <label for="address">Address<span>*</span> : </label><br>
                <input type="text" id="address" value="#url.street#" name="street" placeholder="Street address">
                <input type="text" id="address" value="#url.city#" name="city" placeholder="City" style="margin-left: 10px;"><br>
                <input type="text" id="address" value="#url.state#" name="state" placeholder="State">
                <input type="text" id="address" value="#url.pc#" name="pc" placeholder="Postal code" style="margin-left: 10px;">
            </div><br>
            <div class="div-contact">
                <div class="div-email">
                    <label for="email">Email <span>*</span>: </label><br>
                    <input type="email" id="email" name="email" value="#url.email#" placeholder="myname@gmail.com">
                </div>
                <div class="div-mobile">
                    <label for="mobile">Mobile <span>*</span>: </label><br>
                    <input type="tel" id="mobile" name="mob" value="#url.mob#" placeholder="1234567890">
                </div>
            </div><br>
            <div class="div-before">
                <label for="before-applied">Have you ever applied to our facility before?<span>*</span></label><br>
                <input type="radio" id="yes" name="ba" value="yes">
                <label for="yes">Yes</label>
                <input type="radio" id="no" name="ba" value="no" style="margin-left: 10px;">
                <label for="no">No</label>
            </div><br>
            <div class="div-department">
                <label for="department">Which department would you like to get an appointment from?<span>*</span></label><br>
                <select id="department" name="depart" style="padding: 7px; margin-top:10px; border: none;">
                    <option value="">Please select</option>
                    <option value="general medicine">General medicine</option>
                    <option value="cardiology">cardiology</option>
                    <option value="neurology">neurology</option>
                    <option value="neurosurgery">neurosurgery</option>
                    <option value="orthopedic">orthopedic</option>
                    <option value="dermatology">dermatology</option>
                    <option value="dentistry">dentistry</option>
                    <option value="physiology">physiology</option>
                    <option value="general surgury">general surgury</option>
                    <option value="pathology">pathology</option>
                </select>
            </div><br>
            <div class="div-multi">
                <label for="process">Which procedure do you want to make an appointment for?<span>*</span></label><br>
                <select id="process" name="pro" style="padding: 7px;margin-top:10px; border: none;" multiple>
                    <option value="medical examination">Medical examination</option>
                    <option value="doctor check">Doctor check</option>
                    <option value="result Analysis">Result Analysis</option>
                    <option value="check-up">Check-up </option>
                </select>
            </div><br>
            <div class="blood-group">
                <label for="group">blood-group<span>*</span> :</label><br>
                <select id="group" name="group" style="padding: 7px; margin-top: 10px; border: none;">
                    <option value="">Please select</option>
                    <option value="A+">A+</option>
                    <option value="B+">B+</option>
                    <option value="AB+">AB+</option>
                    <option value="O+">O+</option>
                    <option value="A-">A-</option>
                    <option value="B-">B-</option>
                    <option value="AB-">AB-</option>
                    <option value="0-">0-</option>  
                </select>
            </div><br>
            <div class="div-disease">
                <label for="disease">Additional disease :</label><br>
                <input type="checkbox" name="other" value="bloodpressure" id="bp">
                <label for="bp">BP</label>
                <input type="checkbox" name="other" value="diabetes" id="diabetes"style="margin-left: 10px;">
                <label for="diabetes">Diabetes</label>
                <input type="checkbox" name="other" value="asthma" id="asthma"style="margin-left: 10px;">
                <label for="asthma">Asthma</label>
                <input type="checkbox" name="other" value="other" id="others"  style="margin-left: 10px;" onclick="showOther(this)">
                <label for="others">Other</label>
                <input type="text" name="otherText" id="other" placeholder="Other disease" style="display: none"/>
                
            </div><br>
            <div class="div-appointment">
               <label for="appointment">Preferred Appointment Date<span>*</span>:</label><br>
               <input type="date" name="apDate" id="appointment" value="" style="padding: 7px; border: none;">
               <select id="appointment" name="apTime" style="padding: 7px; border: none; margin-left: 10px;">
                    <option value="">Please select</option>
                    <option value="9-10am">9-10am</option>
                    <option value="10-11am">10-11am</option>
                    <option value="11-12pm">11-12pm</option>
                    <option value="12-1pm">12-1pm</option>
                    <option value="4-5pm">4-5pm</option>
                    <option value="5-6pm<">5-6pm</option>
                    <option value="6-7pm">6-7pm</option>
                    <option value="7-8pm">7-8pm</option>  
                </select>
            </div><br>
            <div class="div-file">
                <label for="file">Upload your aadhar<span>*</span>:</label>
                <input type="file" name="file" id="file">
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