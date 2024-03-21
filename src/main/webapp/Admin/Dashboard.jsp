<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" errorPage="ErrorPage.jsp"%>
<%@page isELIgnored="false"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Reading Retreat: New Registration</title>
<title>Admin: Dashboard</title>
<%@include file="../Components/CSS Components.jsp"%>
<link rel="stylesheet" href="../Styles/Admin/Dashboard.css?v=1">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
</head>
<body>
	<div class="dashboard-container d-flex justify-content-between">
        <%@include file="./Sidebar.jsp"%>
        <!-- ------- Main Section ------- -->
        <main>
            <div class="main-container" id="main-container">

            </div>
        </main>
                <!------- Right Section ------->
                <div class="right ">
                    <div class="right-container">
                        <div class="logo d-flex flex-column align-items-start justify-content-center">
                            <div class="title">
                                <h2><span class="outline-text">Re</span>ading</h2>
                                <h2><span class="outline-text">Re</span>treat</h2>
                            </div>
                            <div class="caption">Discover Worlds between Pages</div>
                        </div>

                        <div class="top">
                            <button id="menu-btn">
                                <span class="material-icons-sharp">menu</span>
                            </button>
                            <div class="theme-toggler">
                                <span class="material-icons-sharp active-theme">light_mode</span>
                                <span class="material-icons-sharp">dark_mode</span>
                            </div>
                        </div>

                        <div class="profile-card d-flex flex-column">
                            <div class="profile-photo d-flex justify-content-center align-items-center">
                                <img src="https://w0.peakpx.com/wallpaper/172/748/HD-wallpaper-virat-kohli-criketer-sports-virat-kohli.jpg">
                            </div>
                            <div class="info d-flex flex-column">
                                <div class="name d-flex justify-content-between align-items-center"><span>Name</span><span>Virat</span></div>
                                <div class="text-muted d-flex justify-content-between align-items-center"><span>Role</span><span><small>Admin</small></span></div>
                                <div class="Age d-flex justify-content-between align-items-center"><span>Age</span><span>34</span></div>
                                <div class="Gender d-flex justify-content-between align-items-center"><span>Gender</span><span>Male</span></div>
                            </div>
                        </div>
                    </div>
                </div>
	</div>

	<script src="../Scripts/Admin/Dashboard.js"></script>
	<script src="../Scripts/Admin/AdminSideBar.js"></script>
</body>
</html>