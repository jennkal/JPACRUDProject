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
		<c:when test="${not empty captainLog}">
			<h1>Details</h1>
			<div>
				<h4>${captainLog.trip}</h4>
			
			</div>
		</c:when>
		
		<c:otherwise>
			<h3>Log Not Found</h3>
		</c:otherwise>
	</c:choose>
</div>
<jsp:include page="../bootstrapFoot.jsp"></jsp:include>
</body>
</html>