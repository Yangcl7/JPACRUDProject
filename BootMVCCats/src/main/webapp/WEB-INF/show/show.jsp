<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<jsp:include page="../bootstrapHead.jsp" />
<head>
<meta charset="UTF-8">
<title>Cat list</title>
</head>
<body>
<div container="container-fluid">
    <div>
        <h5>${cat.id}(${cat.name})</h5>
        <ul>
            <li>${cat.size}</li>
            <li>${cat.fur_amount}</li>
            <li>${Cat.birth_date }
            <li>${cat.purchasePrice}</li>
            <li>${cat.biography}</li>
         
        </ul>
    </div>
</div>

</body>
<jsp:include page="../bootstrapFoot.jsp" />
</html>