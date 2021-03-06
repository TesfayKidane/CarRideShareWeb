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
	<section id="cta-2" class="section-padding">		
	</section>
	<section>
	<div class="container">
    <div class="row">
		<div class="col-md-4 col-md-offset-4">
    		<div class="panel panel-default">
			  	<div class="panel-heading">
			    	<h3 class="panel-title">Please sign in</h3>
			 	</div>
			  	<div class="panel-body">
			  	<c:if test="${not empty error}">
					<div class="alert alert-danger">
						<spring:message code="AbstractUserDetailsAuthenticationProvider.badCredentials"/><br />
					</div>
				</c:if>
			    	<form action="<spring:url value="/postLogin"></spring:url>" method="post">
  					<sec:csrfInput />
                    <fieldset>
			    	  	<div class="form-group">
			    		    <input class="form:input-large" placeholder="User Name" name='userName' type="text">
			    		</div>
			    		<div class="form-group">
			    			<input class=" form:input-large" placeholder="Password" name='password'  type="password" value="">
			    		</div>
			    		<input class="btn btn-lg btn-success btn-mini" type="submit" value="Login">
			    	</fieldset>
			      	</form>
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
								<li class="active"><a href="<spring:url value='/rides' />" class="btn btn-default">
										<span class=""></span> Rides
									</a></li>								
								<li class="active"><a href="<spring:url value='/login' />" class="btn btn-default">
										<span class=""></span> Login
									</a></li>
							</c:when>
							<c:otherwise>
								<li class="active"><a href="#">Home</a></li>
								<li class="active"><a href="<spring:url value='/rides' />" class="btn btn-default">
										<span class=""></span> Rides
								</a></li>	
								<li class="active"><a href="<spring:url value='/users' />" class="btn btn-default">
										<span class=""></span> Users
								</a></li>							
								<li class="active"><a href="<spring:url value='/logout' />" class="btn btn-default">
										<span class=""></span> Logout
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
					� Copyright TAGSpring Car Ride Share. All Rights Reserved
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