<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Book World</title>
<!-- The Reading Retreat -->
<%@include file="Components/CssComponents.jsp"%>
</head>
<body>
	<%@ include file="Components/navBar.jsp"%>
	<div class="container-fluid back-img">
		<div class="container-fluid ">
			<h2 class="text-center  mb-3">Book World</h2>
			<form class="d-flex " role="search">
				<input class="form-control me-2" type="search" placeholder="Search"
					aria-label="Search">
				<button class="btn btn-success" type="submit">Search</button>
			</form>
		</div>
	</div>
	<%@ include file="Components/footer.jsp"%>
</body>