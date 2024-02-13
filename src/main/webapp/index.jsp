<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" errorPage="ErrorPage.jsp"%>
<%@page isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Reading Retreat: New Registration</title>
<%@include file="./Components/CSS Components.jsp"%>
<link rel="stylesheet" href="./Styles/ReadingRetreat.css?v=1">
</head>
<body>
<div class="background">
    <div class="title">
        <h2><span class="outline-text">Re</span>ading</h2>
        <h2><span class="outline-text">Re</span>treat</h2>
        <span class="caption">Discover Worlds between Pages</span>
    </div>
</div>
<div class="search d-flex justify-content-center align-items-center">
    <div class="search-box">
        <div class="input-group">
          <input type="text" class="form-control" placeholder="Find your book" aria-label="Recipient's username" aria-describedby="basic-addon2">
          <span class="input-group-text bg-danger bg-gradient" id="search-span"><button id="search-button" class="text text-center text-warning">Search</button></span>
        </div>
    </div>
    <div class="button-links d-flex flex-column justify-content-center align-items-end">
        <button type="button" id="login-button" class="btn btn-primary px-2 py-1 mb-1 d-flex justify-content-center align-items-center" onclick="window.location.href='./Login.jsp'"><span>Sign In</span> <i class='bx bx-log-in' style='color:rgba(255,255,255,1)'  ></i> </button>
        <button type="button" id="registration-button" class="btn btn-success px-2 py-1 mt-1 d-flex justify-content-center align-items-center" onclick="window.location.href=''./Register.jsp'"><span>Sign Up</span> <i class="fa-solid fa-user-plus text text-white"></i></button>
    </div>
</div>
<script src="./Scripts/ReadingRetreat.js"></script>
</body>
</html>
