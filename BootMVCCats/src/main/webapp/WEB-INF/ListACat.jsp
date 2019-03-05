
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>

<jsp:include page="bootstrapHead.jsp" />
<head>
<meta charset="UTF-8">
<title>Cat List</title>

</head>

<body>

<a href=http://18.216.22.23:8080/BootMVCCats//>HOME</a>
  <div class="container">
    <h1 class="display-4">Here Is Your Cat info</h1>
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
				<td>${cat.purchasePrice}</td>
				<td>${cat.biography}</td>
			</tr>
		</tbody>
	</table>


	<div class="card-group">
		<div class="card">
			<div class="card-body">
				<h5 class="card-title">List a Cat</h5>
				<div class="dropdown">
					<button class="btn btn-secondary dropdown-toggle" type="button"
						id="dropdownMenuButton" data-toggle="dropdown"
						aria-haspopup="true" aria-expanded="false">Add a Cat</button>
					<div class="dropdown-menu" aria-labelledby="dropdownMenuButton">
						<form action="addCat.do" method="POST" name="catId">
							name: <input type="text" name="Name"> <br>
							size: <input type="text" name="Size"> <br>
							furAmount: <input type="text" name="furAmount"> <br>
							birth_date: <input type="date" name="birthDay"> <br>
							purchasePrice: <input type="number" name="Price"> <br>
							biography: <input type="text" name="Biography"> <br>
							<input type="hidden" name="catId" value="${cat.id}" /> <input
								type="submit" name="filmID" value="Add cat" />
						</form>
					</div>
				</div>
			</div>
		</div>

		<div class="card">
			<div class="card-body">
				<h5 class="card-title">change info</h5>
				<div class="dropdown">
					<button class="btn btn-secondary dropdown-toggle" type="button"
						id="dropdownMenuButton" data-toggle="dropdown"
						aria-haspopup="true" aria-expanded="false">Edit Cat</button>
					<div class="dropdown-menu" aria-labelledby="dropdownMenuButton">
						<input type="hidden" name="catId" value="${cat.id}" />
						<form action="updateCat.do" method="POST" name="catId">
							<p>

								name: <input type="text" name="Name"> <br>
								size: <input type="text" name="Size"> <br>
								furAmount: <input type="text" name="fur_amount"> <br>
								birth_date: <input type="date" name="birth_day"> <br>
								purchasePrice: <input type="number" name="Price"> <br>
								biography: <input type="text" name="Biography"> <br>
								<input type="hidden" name="catId" value="${cat.id}" /> <input
									type="hidden" name="catId" value="${cat.id}" /> <br>
								<input type="submit" value="Edit cat" /> <br>
						</form>
					</div>
				</div>
			</div>
		</div>

		<div class="card">
			<div class="card-body">
				<h5 class="card-title">Remove a Cat</h5>
				<div class="dropdown">
					<button class="btn btn-secondary dropdown-toggle" type="button"
						id="dropdownMenuButton" data-toggle="dropdown"
						aria-haspopup="true" aria-expanded="false">Delete Cat</button>
					<div class="dropdown-menu" aria-labelledby="dropdownMenuButton">
						<form action="deleteCat.do" method="POST" name="catId">
							<input type="text" name="catId" value="Provide an ID" /> <input
								type="submit" name="filmID" value="Remove Cat" />
						</form>
					</div>
				</div>
			</div>
		</div>
	</div>

	
</body>
<jsp:include page="bootstrapFoot.jsp" />

</html>

