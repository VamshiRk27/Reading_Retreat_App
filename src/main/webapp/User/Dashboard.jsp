<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" errorPage="ErrorPage.jsp"%>
<%@page isELIgnored="false"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Reading Retreat</title>
<title>User: Dashboard</title>
<%@include file="../Components/CSS Components.jsp"%>
<link rel="stylesheet" href="../Styles/User/Dashboard.css">
</head>
<body>
	<div class="dashboard-container d-flex justify-content-between">
        <%@include file="./Sidebar.jsp"%>
        <!-- ------- Main Section ------- -->
        <main>
            <div class="top d-flex justify-content-between align-items-center">
                <h1>Dashboard</h1>
                <div class="date">
                    <input type="date" name="" id="">
                </div>
            </div>

            <div class="profile-info d-flex justify-content-between">
                <!-- ----- Profile Card ----- -->
                <div class="profile d-flex align-items-center justify-content-between">
                        <div class="left d-flex flex-column align-items-start justify-content-around">
                            <div class="top">
                               <span class="material-icons-sharp">analytics</span>
                            </div>
                            <div class="bottom">
                                <h3>Vamshi reddy</h3>
                                <span class="text-muted">Customer</span>
                            </div>
                        </div>
                        <div class="profile-image d-flex align-items-center justify-content-center">
                            <img src="https://w0.peakpx.com/wallpaper/379/436/HD-wallpaper-virat-kohli-smile-virat-kohli-smile-batsman-sports-cricketer-king-kohli.jpg" alt="Profile Image">
                        </div>
                </div>
            </div>

            <div class="recent-orders">
                <h2>Recent Orders</h2>
                <div class="table">
                    <table>
                        <thead>
                            <tr>
                                <th>Product Name</th>
                                <th>Product Number</th>
                                <th>Payment</th>
                                <th>Status</th>
                                <th></th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr>
                                <td>Mini Drone</td>
                                <td>81232</td>
                                <td>Due</td>
                                <td class="warning">Pending</td>
                                <td class="primary">Details</td>
                            </tr>
                            <tr>
                                <td>Mobile</td>
                                <td>81232</td>
                                <td>Due</td>
                                <td class="warning">Pending</td>
                                <td class="primary">Details</td>
                            </tr>
                            <tr>
                                <td>Mini Drone</td>
                                <td>81232</td>
                                <td>Due</td>
                                <td class="warning">Pending</td>
                                <td class="primary">Details</td>
                            </tr>
                            <tr>
                                <td>Mini Drone</td>
                                <td>81232</td>
                                <td>Due</td>
                                <td class="warning">Pending</td>
                                <td class="primary">Details</td>
                            </tr>
                            <tr>
                                <td>Mini Drone</td>
                                <td>81232</td>
                                <td>Due</td>
                                <td class="warning">Pending</td>
                                <td class="primary">Details</td>
                            </tr>
                        </tbody>
                    </table>
                    <a href="">Show All</a>
                </div>
            </div>
            </main>
                <!-- ----- Right Section ----- -->
                <div class="right d-flex flex-column">
                    <div class="logo">
                        <div class="title d-flex flex-column align-items-start justify-content-center">
                            <h2><span class="outline-text">Re</span>ading</h2>
                            <h2><span class="outline-text">Re</span>treat</h2>
                            <span class="caption">Discover Worlds between Pages</span>
                        </div>
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
                    <div class="recent-updates">
                        <h2>Recent Updates</h2>
                        <div class="updates">
                            <div class="update">
                                <div class="profile-photo">
                                    <img src="https://w0.peakpx.com/wallpaper/172/748/HD-wallpaper-virat-kohli-criketer-sports-virat-kohli.jpg">
                                </div>
                                <div class="message">
                                    <p><b>Tyson</b> received his order of update</p>
                                    <small class="text-muted">2 Minutes ago</small>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
	</div>

	<script src="../Scripts/User/Dashboard.js"></script>
</body>
</html>