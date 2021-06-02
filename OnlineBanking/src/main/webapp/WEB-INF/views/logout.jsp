<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html" charset=UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
<link rel="stylesheet" href="<c:url value="/resources/css/login.css" />">
<title>Logout</title>
</head>
<body>
	<header class="cd-main-header">
		<div class="header">
			<a href="#default"><i class="fa fa-bank"
				style="font-size: 35px; color: rgba(16, 21, 24, 0.863)">ABC
					Banking</i></a>
			<div class="header-right">
				<a href="#news">News</a> <a href="#contact">Contact</a> <a
					href="#about">About Us</a>
			</div>
		</div>
	</header>
	<main class="card">
		<div class="card-body"></div>
		<div class="content-wrapper" id="login-container">
			<div class="col-md-12" id="logout-page">
				<h3
					style="text-align: center; padding: 10px 10px 10px 10px; background-color: rgb(154, 163, 130);">Logout</h3>
				<br> <img
					src="https://www.thebalance.com/thmb/iOy60mrg27Il8vHz4cUlKIzrGwI=/1500x1000/filters:fill(auto,1)/what-is-an-online-bank-315204_final-98ce36e857d245d2867e28fa4c189111.png"
					alt="Banking" style="float: right; width: 50%;">
				<h2 style="padding-left: 50px;">Logout Successful....!</h2>
				<br>
				<form action="/home"
					method="get">
					<div class="form-group">
						<div class="col-lg-5 input-group">
							<label for="newUser" class="col-lg-3  control-label">Login
								Again ?</label> <input type="submit" class="btn btn-info" id="newUser"
								name="newUser" value="Login"></input>
						</div>
				</form>
				<div>
					<br>
					<h4>Dear Customer,</h4>
					<ul>
						<li>• <b>ALWAYS</b> change your passwords periodically
						</li>
						<li>• <b>ALWAYS</b> keep your computer free of malware
						</li>
						<li>• <b>NEVER</b> respond to any communication seeking your
							passwords
						</li>
						<li><i> • <b>NEVER</b> reveal your passwords or card
								details to anyone</li>
					</ul>
				</div>
			</div>
		</div>
		<!-- .content-wrapper -->
	</main>
	<!-- .cd-main-content -->
</body>
</html>