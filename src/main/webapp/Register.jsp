<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Reading Retreat: New Registration</title>
<%@include file="./Components/CSS Components.jsp"%>
<link rel="stylesheet" href="./Styles/Registration.css">
</head>
<body>
	<div class="register-container d-flex">
	<div class="left my-2">
        <div class="card">
            <div class="card-body d-flex align-items-center justify-content-center">
                <div class="title d-flex flex-column align-items-center justify-content-center">
                    <h2><span class="outline-text">Re</span>ading</h2>
                     <h2><span class="outline-text">Re</span>treat</h2>
                     <span class="caption">Discover Worlds between Pages</span>
                </div>
            </div>
        </div>
    </div>
	<div class="right my-2">
		<div class="card">
            <div class="card-body">
        	    <form onsubmit="validateInputs()" id="registrationForm" action="register" method="post" enctype="multipart/form-data" class="d-flex flex-column justify-content-center">
        		    <h3 class="text-center mb-3">Hey User<br><span>Step into the literary realm</span></h3>

                    <div class="mb-2 d-inline-flex align-items-center border-out">
                        <label for="customerName" class="form-label">Name </label>
                        <input type="text" class="form-control" id="customerName" aria-describedby="customerName"
                        name="customerName" required>
                    </div>

        			<div class="mb-2 d-inline-flex align-items-center border-out">
                        <label for="customerEmail" class="form-label">Email address </label>
                        <input type="email" class="form-control" id="customerEmail" aria-describedby="customerEmail"
                        name="customerEmail" inputmode="email" required>
                    </div>

                    <div class="mb-2 d-inline-flex align-items-center justify-content-between">
                        <div class="d-inline-flex align-items-center minor-div border-out">
                            <label for="customerPassword" class="form-label">Password </label>
                            <input type="password" class="form-control" id="customerPassword" name="customerPassword" required>
                        </div>
                        <div class="d-inline-flex align-items-center major-div border-out">
                            <label for="customerMobile" class="form-label">Mobile Number </label>
                            <input type="tel" class="form-control" id="customerMobile" aria-describedby="customerMobile"
                            name="customerMobile" inputmode="numeric" required>
                        </div>
                    </div>

        			<div class="w-75 form-check mb-2 d-inline-flex align-items-center border-out">
        			    <label class="form-label">Gender: </label>
        				<div class="w-100 d-inline-flex align-items-center">
                            <label class="form-check-label gender" for="customerGender" id="customerGender">
                            <input class="form-check-input mr-1" type="radio" name="customerGender" id="male" value="MALE"> Male </label>
                            <label class="form-check-label gender" for="customerGender">
                            <input class="form-check-input" type="radio" name="customerGender" id="female" value="FEMALE" checked> Female </label>
                            <label class="form-check-label gender" for="customerGender">
                            <input class="form-check-input" type="radio" name="customerGender" id="other" value="OTHER" > Other </label>
                        </div>
                    </div>

                    <div class="mb-2 d-inline-flex align-items-center justify-content-between">
                        <div class="d-inline-flex align-items-center minor-div border-out">
                            <label for="customerDOB" class="form-label dob">Date of Birth </label>
                            <input type="date" class="form-control" id="customerDOB" aria-describedby="customerDOB"
                            name="customerDOB" required>
                        </div>
                        <div class="input-group d-inline-flex align-items-center major-div border-out">
                            <label for="customerImage" class="form-label">Profile Image </label>
                            <input id="customerImage" type="file" class="form-control" placeholder="Profile Image" aria-label="Profile Image" aria-describedby="Profile Image" name="customerImage" required>
                        </div>
                    </div>

                    <div class="mb-2 d-inline-flex align-items-center justify-content-between">
                        <div class="d-inline-flex align-items-center minor-div border-out">
                            <label for="customerState" class="form-label">State </label>
                            <input type="text" class="form-control" list="stateList" id="customerState" aria-describedby="customerState"
                            name="customerState" required>
                            <datalist id="stateList">
                                <option value="Andhra Pradesh">
                                <option value="Arunachal Pradesh">
                                <option value="Assam">
                                <option value="Bihar">
                                <option value="Chhattisgarh">
                                <option value="Goa">
                                <option value="Gujarat">
                                <option value="Haryana">
                                <option value="Himachal Pradesh">
                                <option value="Jharkhand">
                                <option value="Karnataka">
                                <option value="Kerala">
                                <option value="Madhya Pradesh">
                                <option value="Maharashtra">
                                <option value="Manipur">
                                <option value="Meghalaya">
                                <option value="Mizoram">
                                <option value="Nagaland">
                                <option value="Odisha">
                                <option value="Punjab">
                                <option value="Rajasthan">
                                <option value="Sikkim">
                                <option value="Tamil Nadu">
                                <option value="Telangana">
                                <option value="Tripura">
                                <option value="Uttar Pradesh">
                                <option value="Uttarakhand">
                                <option value="West Bengal">
                                <option value="Delhi">
                            </datalist>
                        </div>

                        <div class="d-inline-flex align-items-center major-div border-out">
                            <label for="customerCity" class="form-label">City </label>
                            <input type="text" class="form-control" id="customerCity" aria-describedby="customerCity"
                            name="customerCity" required>
                        </div>
                    </div>

                    <div class="mb-2 d-inline-flex align-items-center border-out">
                        <label for="customerAddress" class="form-label">Address </label>
                        <input type="text" class="form-control" id="customerAddress" aria-describedby="customerAddress"
                        name="customerAddress" required>
                    </div>

                    <div class="text-center d-flex flex-column">
        			    <button type="submit" id="loginButton" class="mb-2 btn btn-primary">Sign Up</button>
        				<span class="mt-1">Existing User? <a href="Login.jsp">Sign In</a></span>
        		    </div>
        		</form>
        	</div>
        </div>
	</div>
	</div>

	<script src="./Scripts/Register.js"></script>
</body>
</html>