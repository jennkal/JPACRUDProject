<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Delete</title>
</head>
<body>
<jsp:include page="../navbar.jsp"/>
	<div class="container">
		
				<form action="performAddLog.do" method="GET">
				
					
					<label for="trip">Trip :</label> 
					<input type="text" name="trip" required> 
					<br> 
					<label for="fixes">fixes :</label> 
					<input type="text" name="fixes"> 
					<br>
					<label for="port_of_arrival">Port of Arrival :</label> 
					<input type="text" name="portOfArrival" required> 
					<br>
					<label for="port_of_departure">Port of Departure :</label> 
					<input type="text" name="portOfDeparture" required> 
					<br> 
					<label for="arrival_link">Arrival Link :</label> 
					<input type="text" name="arrivalLink"> 
					<br> 
					<label for="departure_link">Departure Link :</label> 
					<input type="text" name="departureLink"> 
					<br> 
					<label for="time">Time :</label> 
					<input type="text" name="time"> 
					<br> 
					<label for="distance">Distance :</label> 
					<input type="text" name="distance"> 
					<br> 
					<input type="submit" value="Add Log">
				</form>
	</div>
<jsp:include page="../bootstrapFoot.jsp"></jsp:include>
</body>
</html>