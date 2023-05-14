<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Captain Log</title>
<jsp:include page="bootstrapHead.jsp" />
</head>
<body>
<jsp:include page="navbar.jsp"/>
<c:choose>
<c:when test="${ ! empty logList }">
	<div class="container-fluid">
		<h1>Captain Log</h1>

		<form action="getLog.do" method="GET">
			<div class="row">
				<div class="col-sm-8">
					Log ID: <input class="form-control" type="text" name="lid" />
				</div>
				<input class="col btn btn-outline-success" type="submit" value="Show Log" />
			</div>
		</form>

		<table class="table table-striped table-hover">
			<thead>
				<tr>
					<th>ID</th>
					<th>Captain Log</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach var="log" items="${logList}">
					<tr>
						<td>${log.id }</td>
						<td><a href="getLog.do?lid=${log.id}"> ${log.trip} </a></td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
	</div>
	</c:when>
	<c:otherwise>
		<p>Log Not Found</p>
	</c:otherwise>
	</c:choose>
	<jsp:include page="bootstrapFoot.jsp" />
</body>
</html>