<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Add Log</title>
<jsp:include page="../bootstrapHead.jsp" />
</head>
<body>
<jsp:include page="../navbar.jsp"/>
	<div class="container">
			<h3>Add A Log, Yar Bee Dar</h3>
		
				<form action="performAddLog.do" method="GET">
				
					
					<label for="trip" class="form-label">Trip :</label> 
					<input type="text" class="form-control" name="trip" required> 
					<br> 
					<label for="fixes" class="form-label">Fixes :</label> 
					<input type="text" class="form-control" name="fixes" required> 
					<br>
					<label for="port_of_arrival" class="form-label">Port of Arrival :</label> 
					<input type="text" class="form-control" name="portOfArrival" required> 
					<br>
					<label for="port_of_departure" class="form-label">Port of Departure :</label> 
					<input type="text" class="form-control" name="portOfDeparture" required> 
					<br> 
					<label for="arrival_link" class="form-label">Arrival Link :</label> 
					<input type="text" class="form-control" name="arrivalLink" required> 
					<br> 
					<label for="departure_link" class="form-label">Departure Link :</label> 
					<input type="text" class="form-control" name="departureLink" required> 
					<br> 
					<label for="time" class="form-label">Time in hour(s):</label> 
					<input type="text" class="form-control" name="time" required> 
					<br> 
					<label for="distance" class="form-label">Distance in Nautical Miles(nm):</label> 
					<input type="text" class="form-control" name="distance" required> 
					<br> 
					<input class="btn btn-outline-success" type="submit" value="Add Log">
				</form>
	</div>
<jsp:include page="../bootstrapFoot.jsp"></jsp:include>
</body>
</html>