<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<head>
<meta http-equiv="Content-Type" content="text/html" charset=UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
<link rel="stylesheet"
	href="<c:url value="/resources/css/header.css" />">
<link rel="stylesheet"
	href="<c:url value="/resources/css/dashboard.css" />">
<link rel="stylesheet"
	href="<c:url value="/resources/css/contentwrapper.css" />">
<title>ABCBanking</title>
</head>
<body>
	<header class="cd-main-header">
		<div class="header">
			<a href="/dashboard1"><i class="fa fa-bank"
				style="font-size: 35px; color: rgba(16, 21, 24, 0.863)">ABC
					Banking</i></a>

			<div class="header-right">
				<a class="active" href="/dashboard1"><iclass ="fasfa-house-user">Home</i></a>
				<a href="#news">News</a> <a href="#contact">Contact</a> <a
					href="#about">About Us</a> <a class="inactive" href="/logout"><iclass="fasfa-sign-out-alt">Logout</i></a>
			</div>
		</div>
	</header>
	<!-- .cd-main-header -->
	<div class="wrapper">
		<div class="sidebar">

			<ul>
				<li><a href="/customeruserdetails" class="fas">Profile</a></li>
				<li><a href="#0" class="fas">Accounts</a>
					<ul>
						<li><a href="/currentaccount" class="fas">Current</a></li>
						<li><a href="/savingsaccount" class="fas">Savings</a></li>
						<li><a href="/creditcarddashboard" class="fas">Credit Card</a></li>
					</ul></li>
				<li><a href="/transfermoney" class="fas">Transfer Money</a></li>
				<li><a href="/changepassword" class="fas">Change Password</a></li>
			</ul>
		</div>
	</div>