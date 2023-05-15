<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Details</title>
<jsp:include page="../bootstrapHead.jsp"></jsp:include>
</head>
<body>
	<jsp:include page="../navbar.jsp" />
	<div class="container">
		
				<form action="performUpdate.do?lid=${log.id }" method="GET">
					<input type="hidden" name="id" value="${log.id}"> 
					
					<label for="trip" class="form-label">Trip :</label> 
					<input type="text" class="form-control" name="trip" required> 
					<br> 
					<label for="fixes" class="form-label">fixes :</label> 
					<input type="text" class="form-control" name="fixes"> 
					<br>
					<label for="port_of_arrival" class="form-label">Port of Arrival :</label> 
					<input type="text" class="form-control" name="portOfArrival" required> 
					<br>
					<label for="port_of_departure" class="form-label">Port of Departure :</label> 
					<input type="text" class="form-control" name="portOfDeparture" required> 
					<br> 
					<label for="arrival_link" class="form-label">Arrival Link :</label> 
					<input type="text" class="form-control" name="arrivalLink"> 
					<br> 
					<label for="departure_link" class="form-label">Departure Link :</label> 
					<input type="text" class="form-control" name="departureLink"> 
					<br> 
					<label for="time" class="form-label">Time :</label> 
					<input type="text" class="form-control" name="time"> 
					<br> 
					<label for="distance" class="form-label">Distance :</label> 
					<input type="text" class="form-control" name="distance"> 
					<br> 
					<input class="btn btn-outline-warning" type="submit" value="Update Log">
				</form>
	</div>
	<jsp:include page="../bootstrapFoot.jsp"></jsp:include>
</body>
</html>