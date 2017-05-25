<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"  %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet"	href="//netdna.bootstrapcdn.com/bootstrap/3.0.0/css/bootstrap.min.css">
<title>Add Rides</title>
</head>
<body>
	<section>
		<div class="jumbotron">
			<div class="container">
				<h1>Rides</h1>
				<p>Add Rides</p>
			</div>
 		</div>
	</section>
	<section class="container">
		<form:form  modelAttribute="newride" class="form-horizontal" >
			<fieldset>
				<legend>Add new ride</legend>

				<form:errors path="*" cssClass="alert alert-danger" element="div"/>
  				<div class="form-group">
					<label class="control-label col-lg-2" for="rideOriginCity">Origin City</label>
					<div class="col-lg-10">
						<form:input id="rideOriginCity" path="rideOriginCity" type="text" value="Fairfield" class="form:input-large"/>
						<form:errors path="rideOriginCity" cssClass="text-danger"/>
					</div>
				</div>
				
				<div class="form-group">
					<label class="control-label col-lg-2" for="rideDestinationCity">Destination City</label>
					<div class="col-lg-10">
						<form:input id="rideDestinationCity" path="rideDestinationCity" value="Iowa City" type="text" class="form:input-large"/>
						<form:errors path="rideDestinationCity" cssClass="text-danger"/>
					</div>
				</div>
				<div class="form-group">
					<label class="control-label col-lg-2" for="price">Ride Price</label>
					<div class="col-lg-10">
						<div class="form:input-prepend">
							<form:input id="ridePrice" path="ridePrice" type="text" value ="20.00" class="form:input-large"/>
							<form:errors path="ridePrice" cssClass="text-danger"/>
						</div>
					</div>
				</div>
				
				<div class="form-group">
					<label class="control-label col-lg-2" for="availableSeats">Available Seats</label>
					<div class="col-lg-10">
						<div class="form:input-prepend">
							<form:input id="availableSeats" path="availableSeats" type="text" value="3" class="form:input-large"/>
							<form:errors path="availableSeats" cssClass="text-danger"/>
						</div>
					</div>
				</div>

				<div class="form-group">
					<label class="control-label col-lg-2" for="description">Description</label>
					<div class="col-lg-10">
						<form:textarea id="description" path="description" value ="This is test ride" rows = "2"/>
					</div>
				</div>

				<form:input id="rideOwnerId" path="rideOwnerId" value="${user.id}"  />
				
				<div class="form-group">
					<div class="col-lg-offset-2 col-lg-10">
						<input type="submit" id="btnAdd" class="btn btn-primary" value ="Add"/>
					</div>
				</div>
				
			</fieldset>
		</form:form>
	</section>
</body>
</html>
