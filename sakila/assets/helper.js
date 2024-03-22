function isBlank( obj, message = 'please fill your details!') {
    const value = obj.value.trim();
    if(value === "") {
       alert(message);
       obj.value = "";
       obj.focus();
       return false;
    }
    return true;
}

// function isName( obj, message = 'Field must contain string!') {
//     const value = obj.value.trim();
//     const validName = /^[a-zA-Z\\s]*$/;
//     if(!value.match(validName)) {
//         alert(message);
//         obj.value = "";
//         obj.focus();
//         return false;
//     }
//     return true;
// }


function showOther(obj) {
    show = document.getElementById("other");
    if( show.style.display == "block"){
       show.style.display = "none";  
    }
    else {
       show.style.display = "block";
    }
}

function isEmail( obj, message = 'please fill your details!') {
    const value = obj.value.trim();
    const validEmail = /^[a-zA-Z0-9._-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,4}$/;
    if(!value.match(validEmail)) {
        alert(message);
        obj.value = "";
        obj.focus();
        return false;
    }
    return true;
}
function isNumber( obj, message = 'please fill your details!') {
    const value = obj.value.trim();
    const validNumber = /^([+]\d{2})?\d{10}$/;
    if(!value.match(validNumber)) {
        alert(message);
        obj.value = "";
        obj.focus();
        return false;
    }
    return true;
}
function isCheck(obj, message = "please select atleast one option") {
    const isChecked = Array.from(obj).some(element => element.checked);
    if(!isChecked){
       alert(message);        
       obj[0].focus();
       return false;
    }
    return true;
}

// const otherDisease = Array.from(validDisease).filter(element => element.value === 'other');
// if(otherDisease.length > 0 && !isBlank(validDisease, 'Please')) {
// }

function nextPage(){
    let page = document.querySelector("input[name=page]").value;
    document.querySelector("input[name=page]").value = page++;
    window.location.href = `${location.origin}/${location.pathname}?page=${page}`;
}

function prevPage(){
    let page = document.querySelector("input[name=page]").value;
    document.querySelector("input[name=page]").value = page--;
    window.location.href = `${location.origin}/${location.pathname}?page=${page}`;
    
}
