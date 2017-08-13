<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Car Ride Sharing Platform</title>
<meta name="description"
	content="Free Bootstrap Theme by BootstrapMade.com">
<meta name="keywords"
	content="free website templates, free bootstrap themes, free template, free bootstrap, free website template">

<link rel="stylesheet" type="text/css"
	href="https://fonts.googleapis.com/css?family=Open+Sans|Raleway|Candal">
<link rel="stylesheet" type="text/css"
	href="<c:url value="/resource/css/font-awesome.min.css" />">
<link rel="stylesheet" type="text/css"
	href="<c:url value="/resource/css/bootstrap.min.css" />">
<link rel="stylesheet" type="text/css"
	href="<c:url value="/resource/css/style.css" />">
<!-- =======================================================
        Theme Name: Medilab
        Theme URL: https://bootstrapmade.com/medilab-free-medical-bootstrap-theme/
        Author: BootstrapMade.com
        Author URL: https://bootstrapmade.com
    ======================================================= -->
</head>
<body id="myPage" data-spy="scroll" data-target=".navbar"
	data-offset="60">
	<section id="cta-2" class="section-padding"> </section>
	<section id="doctor-team" class="section-padding">
	<div class="container">
		<div class="row">
			<div class="col-md-12">
				<h2 class="ser-title">Ride Details</h2>
				<hr class="botm-line">
			</div>
			<div class="col-md-5">
				<h3>${ride.rideOriginCity}</h3>
				<h3>${ride.rideDestinationCity}</h3>
				<h3>${ride.availableSeats}</h3>
				<p>${ride.ridePrice}$</p>
				<p>${ride.description}</p>
				<p ng-controller="cartCtrl">
					<a href="<spring:url value="/rides" />" class="btn btn-default">
						<span class=""></span> View All
					</a> <a href="<spring:url value="/rides" />" class="btn btn-default">
						<span class=""></span> Join
					</a>
				</p>
			</div>
		</div>
	</div>
	</section>
	
	<section id="cta-1" class="section-padding">
		<div class="container">
			<div class="row">
				<div class="schedule-tab">
    			<div class="col-md-4 col-sm-4 bor-left">
    				<div class="mt-boxy-color"></div>
	    			<div class="medi-info">
		    			<h3>Emergency Case</h3>
						<p>I am text block. Edit this text from Appearance / Customize / Homepage header columns. Lorem ipsum dolor sit amet, consectetur adipiscing elit. </p>
						<a href="#" class="medi-info-btn">READ MORE</a>		    	
					</div>
    			</div>
				<div class="col-md-4 col-sm-4">
					<div class="medi-info">
		    			<h3>Emergency Case</h3>
						<p>I am text block. Edit this text from Appearance / Customize / Homepage header columns. Lorem ipsum dolor sit amet, consectetur adipiscing elit. </p>
						<a href="#" class="medi-info-btn">READ MORE</a>	
					</div>
				</div>
				<div class="col-md-4 col-sm-4 mt-boxy-3">
					<div class="mt-boxy-color"></div>
					<div class="time-info">
			    			<h3>Opening Hours</h3>
							<table style="margin: 8px 0px 0px;" border="1">
								<tbody>
									<tr>
									<td>Monday - Friday</td>
									<td>8.00 - 17.00</td>
									</tr>
									<tr>
									<td>Saturday</td>
									<td>9.30 - 17.30</td>
									</tr>
									<tr>
									<td>Sunday</td>
									<td>9.30 - 15.00</td>
									</tr>
								</tbody>
							</table>				    		
					</div>
				</div>
				</div>
			</div>
		</div>
	</section>
	
	<div class="bg-color">
		<nav class="navbar navbar-default navbar-fixed-top top-nav-collapse">
		<div class="container">
			<div class="col-md-12">
				<div class="navbar-header">
					<button type="button" class="navbar-toggle" data-toggle="collapse"
						data-target="#myNavbar">
						<span class="icon-bar"></span> <span class="icon-bar"></span> <span
							class="icon-bar"></span>
					</button>
					<a class="navbar-brand" href="#"><img
						src="<c:url value="/resource/img/logo.png" />"
						class="img-responsive" style="width: 140px; margin-top: -16px;"></a>
				</div>
				<div class="collapse navbar-collapse navbar-right" id="myNavbar">
					<ul class="nav navbar-nav">
						<c:choose>
							<c:when test="${empty user}">
								<li class="active"><a href="#">Home</a></li>
								<li class="active"><a href="<spring:url value='/rides' />"
									class="btn btn-default"> <span class=""></span> Rides
								</a></li>
								<li class="active"><a href="<spring:url value='/login' />"
									class="btn btn-default"> <span class=""></span> Login
								</a></li>
							</c:when>
							<c:otherwise>
								<li class="active"><a href="#">Home</a></li>
								<li class="active"><a href="<spring:url value='/rides' />"
									class="btn btn-default"> <span class=""></span> Rides
								</a></li>
								<li class="active"><a href="<spring:url value='/users' />"
									class="btn btn-default"> <span class=""></span> Users
								</a></li>
								<li class="active"><a href="<spring:url value='/logout' />"
									class="btn btn-default"> <span class=""></span> Logout
								</a></li>
							</c:otherwise>
						</c:choose>
					</ul>
				</div>
			</div>
		</div>
		</nav>
	</div>

	<!--footer-->
	<footer id="footer">
	<div class="top-footer">
		<div class="container">
			<div class="row">
				<div class="col-md-4 col-sm-4 marb20">
					<div class="ftr-tle">
						<h4 class="white no-padding">About Us</h4>
					</div>
					<div class="info-sec">
						<p>Ride with us</p>
					</div>
				</div>
				<!-- <div class="col-md-4 col-sm-4 marb20">
					<div class="ftr-tle">
						<h4 class="white no-padding">Quick Links</h4>
					</div>
					<div class="info-sec">
						<ul class="quick-info">
							<li><a href="index.html"><i class="fa fa-circle"></i>Home</a></li>
							<li><a href="#service"><i class="fa fa-circle"></i>Service</a></li>
							<li><a href="#contact"><i class="fa fa-circle"></i>Appointment</a></li>
						</ul>
					</div>
				</div> -->
				<div class="col-md-4 col-sm-4 marb20">
					<div class="ftr-tle">
						<h4 class="white no-padding">Follow us</h4>
					</div>
					<div class="info-sec">
						<ul class="social-icon">
							<li class="bglight-blue"><i class="fa fa-facebook"></i></li>
							<li class="bgred"><i class="fa fa-google-plus"></i></li>
							<li class="bgdark-blue"><i class="fa fa-linkedin"></i></li>
							<li class="bglight-blue"><i class="fa fa-twitter"></i></li>
						</ul>
					</div>
				</div>
			</div>
		</div>
	</div>
	<div class="footer-line">
		<div class="container">
			<div class="row">
				<div class="col-md-12 text-center">
					© Copyright TAGSpring Car Ride Share. All Rights Reserved
					<div class="credits">
						Designed by <a href="#">TAGSpring</a>
					</div>
				</div>
			</div>
		</div>
	</div>
	</footer>
	<!--/ footer-->

	<script src="<c:url value="/resource/js/jquery.min.js" />"></script>
	<script src="<c:url value="/resource/js/jquery.easing.min.js" />"></script>
	<script src="<c:url value="/resource/js/bootstrap.min.js" />"></script>
	<script src="<c:url value="/resource/js/custom.js" />"></script>
</body>
</html>