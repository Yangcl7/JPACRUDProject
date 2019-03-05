
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>

<head>
<meta charset="UTF-8">
<title>Cat Info</title>
<jsp:include page="bootstrapHead.jsp" />

</head>
<body>
<a href=http://localhost:8082/>HOME</a>


  <div class="container">
    <h1 class="display-4">Here is Your cat info</h1>
  </div>


<div class="alert alert-success">
		<strong>Success!</strong> Successful.
	</div>

	<table class="table table-hover table-dark">
		<thead>
			<tr>
				<th scope="col">ID</th>
				<th scope="col">Name</th>
				<th scope="col">Size</th>
				<th scope="col">Fur Amount</th>
				<th scope="col">Birthday</th>
				<th scope="col">Price</th>
				<th scope="col">Biography</th>

			</tr>
		</thead>
		<tbody>
			<tr>
				<td>${cat.id}</td>
				<td>${cat.name}</td>
				<td>${cat.size}</td>
				<td>${cat.fur_amount}</td>
				<td>${Cat.birth_date}</td>
				<td>${cat.purchase_price}</td>
				<td>${cat.biography}</td>
			</tr>
		</tbody>
	</table>

	<jsp:include page="bootstrapFoot.jsp" />
</body>
</html>

