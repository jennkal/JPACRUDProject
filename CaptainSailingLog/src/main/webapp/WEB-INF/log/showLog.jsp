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
<jsp:include page="../navbar.jsp"/>
<div class="container">

	<c:choose>
		<c:when test="${not empty log}">
			<h1>Details:</h1>
				<h4>Trip:</h4>
				<p>${log.trip}</p>
				<br>
				<h4>Fixes:</h4><h6>${log.fixes}</h6>
				<br>
				<h4>Port of Arrival:</h4><h6>${log.portOfArrival}</h6>
				<br>
				<h4>Port of Departure:</h4><h6>${log.portOfDeparture}</h6>
				<br>
				<h4><a href="${log.arrivalLink}">Show Me Arrival Port</a></h4>
				<br>
				<h4><a href="${log.departureLink}">Show Me Departure Port</a></h4>
				<br>
				<h4>Time:</h4><h6>${log.time}</h6>
				<br>
				<h4>Distance:</h4><h6>${log.distance}</h6>
				<br>
			<td><a href="updateLog.do?lid=${log.id}"> update log </a></td>
			<br>
			<td><a href="addLog.do"> Add log </a></td>
			<br>
			<td><a href="deleteLog.do?lid=${log.id}"> Delete log </a></td>
		</c:when>
		
		<c:otherwise>
			<h3>Log Not Found</h3>
		</c:otherwise>
	</c:choose>
	</div>

<jsp:include page="../bootstrapFoot.jsp"></jsp:include>
</body>
</html>