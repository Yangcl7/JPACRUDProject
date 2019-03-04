<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Cat list</title>
<jsp:include page="../bootstrapHead.jsp" />
</head>
<body>
<div container="container-fluid">
    <div>
        <h5>${cats.id}(${cats.name})</h5>
        <ul>
        <
            <li>${cats.size}</li>
            <li>${cats.fur_amount}</li>
            <li>${cats.purchse_price}</li>
            <li>${cats.bipgraphy}</li>
         
        </ul>
    </div>
</div>
</body>
</html>