<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Reading Retreat: Login</title>
<%@include file="./Components/CSS Components.jsp"%>
<link rel="stylesheet" href="./Styles/Login.css?version=1">
</head>
<body>
	<div class="login-container d-flex">
	<div class="left my-2">
	    <div class="card">
            <div class="card-body">
                <form action="login" method="post" class="d-flex flex-column align-items-center justify-content-center">
                    <h3 class="text-center">Hey Reader, Welcome back <br><span>Login to your bookish escape</span></h3>
<%--Discover your next chapter--%>
                        <div class="mb-3 d-inline-flex align-items-center border-out">
                		    <label for="loginEmail" class="form-label">Email
                			address </label> <input type="email" class="form-control"
                			id="loginEmail" aria-describedby="loginEmail"
                			name="loginEmail" required>
                	    </div>

                		<div class="form-check mb-3 d-inline-flex align-items-center border-out">
                            <label class="form-label loginType">Login Type: </label>
                            <div class="w-100 d-inline-flex align-items-center">
                                <label class="form-check-label login-options" for="loginType">
                                <input class="form-check-input mr-1" type="radio" name="loginType" id="male" value="admin"> Admin </label>
                                <label class="form-check-label login-options" for="loginType">
                                <input class="form-check-input" type="radio" name="loginType" id="female" value="customer" checked> User </label>
                            </div>
                        </div>

                		<div class="mb-3 d-inline-flex align-items-center border-out">
                		    <label for="loginPassword" class="form-label">Password</label>
                			<input type="password" class="form-control"
                			id="loginPassword" name="loginPassword" required>
                		</div>

                		<div class="text-center d-flex flex-column">
                			<button type="submit" id="loginButton" class="btn btn-primary">Sign In</button>
                			<span class="mt-1">Don't have an account? <a href="Register.jsp">Sign Up</a></span>
                		</div>
                	</form>
            </div>
        </div>
	</div>
	<div class="right my-2">
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
</body>
</html>