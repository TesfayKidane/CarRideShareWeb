<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet"
	href="//netdna.bootstrapcdn.com/bootstrap/3.0.0/css/bootstrap.min.css">
<title>Rides</title>
</head>
<body>
	<section>
		<div class="jumbotron">
			<div class="container">
				<h1>Rides</h1>
				<p>All the available rides in our system</p>
			</div>
		</div>
	</section>

	<section class="container">
		<div class="row">
			<c:forEach items="${rides}" var="ride">
				<div class="col-sm-6 col-md-3" style="padding-bottom: 15px">
					<div class="thumbnail">
						<div class="caption">
							<h3>${ride.rideOriginCity}</h3>
							<h3>${ride.rideDestinationCity}</h3>
							<h3>${ride.availableSeats}</h3>						
							<p>${ride.ridePrice}$</p>
							<p>${ride.description}</p>
 							<p>
								<a
									href=" <spring:url value="/rides/ride?id=${ride.id}" /> "
									class="btn btn-primary"> <span
									class="glyphicon-info-sign glyphicon" /></span> Details
								</a>
							</p>

						</div>
					</div>
				</div>
			</c:forEach>
		</div>
	</section>
</body>
</html>
