<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>

<jsp:include page="bootstrapHead.jsp" />
<head>
<meta charset="UTF-8">
<title>Removed Cat</title>


</head>
<body>
	<a href=http://18.216.22.23:8080/BootMVCCats//>HOME</a>
	
		<div class="container">
			<h1 class="display-4">Displaying result</h1>

		</div>
	<div class="alert alert-success">
		<strong>Success!</strong> Successful.
	</div>
	<c:choose>
		<c:when test="${catId}">
		</c:when>
		<c:otherwise>
		<div class="alert alert-warning">
  <strong>Warning!</strong> Not Successful.
</div>
			<p>NO Cat were found</p>
			<a href="WEB-INF/show.jsp">return to main menu</a>
		</c:otherwise>
	</c:choose>

		<jsp:include page="bootstrapFoot.jsp" />
	
</body>
</html>