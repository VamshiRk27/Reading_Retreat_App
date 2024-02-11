const form=document.getElementById("registrationForm");
const customerName=document.getElementById('customerName');
const customerEmail=document.getElementById('customerEmail');
const customerPassword=document.getElementById('customerPassword');
const customerMobile=document.getElementById('customerMobile');
const customerDOB=document.getElementById('customerDOB');
const customerImage=document.getElementById('customerImage');
const customerState=document.getElementById('customerState');
const customerCity=document.getElementById('customerCity');
const customerAddress=document.getElementById('customerAddress');

const indianStates = ["Andhra Pradesh", "Arunachal Pradesh", "Assam", "Bihar", "Chhattisgarh", "Goa", "Gujarat", "Haryana",
  "Himachal Pradesh", "Jharkhand", "Karnataka", "Kerala", "Madhya Pradesh", "Maharashtra", "Manipur", "Meghalaya",
  "Mizoram", "Nagaland", "Odisha", "Punjab", "Rajasthan", "Sikkim", "Tamil Nadu", "Telangana", "Tripura", "Uttar Pradesh",
  "Uttarakhand", "West Bengal", "Delhi"];

window.onload = () =>{
    customerDOB.setAttribute('min',getSubtractedYear(70));
    customerDOB.setAttribute('max',getSubtractedYear(10));
}

function getSubtractedYear(years){
    const today=new Date();
    const oldDate=new Date(today.getFullYear() - years, today.getMonth(), today.getDate());
    console.log();
    return oldDate.toISOString().split('T')[0];
}

form.addEventListener('submit',e => {
        e.preventDefault();
        console.log(validateInputs());
});

function validateInputs(){
    let status=true;
    const name=customerName.value.trim();
    const email=customerEmail.value.trim();
    const password=customerPassword.value.trim();
    const mobile=customerMobile.value;
    const state=customerState.value.trim();
    const city=customerCity.value.trim();
    const address=customerAddress.value.trim();
    console.log(name+' '+email+" "+address+" "+city+" "+password+" "+mobile+" "+state);

    // Name
    if(nameValidation(name)){
        setInvalid(customerName);
        status=false;
    }
    else{
        setValid(customerName);
    }

    // Email
    if(emailValidation(email)){
        setValid(customerEmail);
    }
    else{
        setInvalid(customerEmail);
        status=false;
    }

    // Password
    if(passwordValidation(password)){
        setValid(customerPassword);
    }
    else{
        setInvalid(customerPassword);
        status=false;
    }
    // Mobile
    if(mobileValidation(mobile)){
        setValid(customerMobile);
    }
    else{
        setInvalid(customerMobile);
        status=false;
    }

   // State
   if(stateValidation(state)){
        setValid(customerState);
   }
   else{
        setInvalid(customerState);
        status=false;
   }
   // City
   if(nameValidation(city)){
        setInvalid(customerCity);
        status=false;
   }
   else{
        setValid(customerCity);
   }
   // Address
   if(nameValidation(address)){
        setInvalid(customerAddress);
        status=false;
   }
   else{
        setValid(customerAddress);
   }
   return status;
}

function nameValidation(name) {
    let regex = /[@!#$%^&*()_+\-=\[\]{};':"\\|,.<>\/?]/;
    return regex.test(name);
}

function emailValidation(email) {
  let atPos = email.indexOf("@");
  let dotPos = email.lastIndexOf(".");
  return atPos > 0 && dotPos > atPos + 1 && dotPos < email.length - 1;
}

function passwordValidation(password) {
    const passwordRegex = /^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)(?=.*[@$!%*?&])[A-Za-z\d@$!%*?&]{8,}$/;
    return passwordRegex.test(password);
}

function mobileValidation(mobile) {
    const regex = /^[0-9]{10}$/;
    return regex.test(mobile) && mobile.length===10;
}

function stateValidation(state) {
    return indianStates.includes(state);
}


function setInvalid(element){
    element.classList.remove("valid");
    element.classList.add("invalid");
}
function setValid(element){
    element.classList.remove("invalid");
    element.classList.add("valid");
}