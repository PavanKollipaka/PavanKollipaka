<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html" charset=UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
<link rel="stylesheet" href="<c:url value="/resources/css/login.css" />">
<title>Forgot Password</title>
</head>
<body>
	<header class="cd-main-header">
		<div class="header">
			<a href="#default"><i class="fa fa-bank"
				style="font-size: 35px; color: rgba(16, 21, 24, 0.863)">ABC
					Banking</i></a>
			<div class="header-right">
				<a class="active" href="/home"><i class="fas fa-house-user">Login</i></a>
				<a href="#news">News</a> <a href="#contact">Contact</a> <a
					href="#about">About Us</a>
			</div>
		</div>
	</header>
	<main class="card">
		<div class="card-body"></div>
		<div class="content-wrapper" id="login-container">
			<div class="col-md-12" id="login-page">
				<h3
					style="text-align: center; padding: 10px 10px 10px 10px; background-color: rgb(154, 163, 130);">Forgot Password</h3>
				<br>
				<form action="/forgotPasswordConfirmation"
					method='POST'>
					<img
						src="https://www.thebalance.com/thmb/iOy60mrg27Il8vHz4cUlKIzrGwI=/1500x1000/filters:fill(auto,1)/what-is-an-online-bank-315204_final-98ce36e857d245d2867e28fa4c189111.png"
						alt="Banking" style="float: right; width: 50%;">
					<div class="form-group">
						<label for="userName" class="col-lg-2 control-label">User
							Name: </label>
						<div class="col-lg-3 input-group">
							<input type="text" class="form-control input-lg" id="userName"
								name="userName" placeholder="Enter User Name" required>
						</div>
					</div>
					<div class="form-group">
						<label for="email" class="col-lg-2 control-label">E-mail:
						</label>
						<div class="col-lg-3 input-group">
							<input type="email" class="form-control input-lg" id="email"
								name="email" placeholder="Enter E-mail" required>
						</div>
					</div>
					<div class="form-group">
						<label for="password" class="col-lg-2 control-label">New
							Password: </label>
						<div class="col-lg-3 input-group">
							<input type="password" class="form-control input-lg"
								id="newPassword" name="newPassword" placeholder="Enter Password"
								required>
						</div>
					</div>
					<div class="form-group">
						<label for="confirmPassword" class="col-lg-2 control-label">Confirm
							Password: </label>
						<div class="col-lg-3 input-group">
							<input type="password" class="form-control input-lg"
								id="confirmPassword" name="confirmPassword"
								placeholder="Confirm Password" required>
						</div>
					</div>
					<div class="form-group">
						<div class="col-lg-5 input-group">
							<input type="submit" class="btn btn-success btn-lg" id="confirm"
								name="confirm" value="Confirm">
						</div>
					</div>


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

				</form>
			</div>

		</div>
		<!-- .content-wrapper -->

	</main>
	<!-- .cd-main-content -->

</body>
</html>