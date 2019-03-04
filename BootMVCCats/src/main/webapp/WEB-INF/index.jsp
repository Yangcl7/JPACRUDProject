<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>


<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>MVC cats</title>

<jsp:include page="bootstrapHead.jsp" />
<style type="text/css"></style>
</head>
<body>
<div class="container-fluid">

    <form action="getCat.do" method="GET">
        Cat ID: <input type="text" name="fid" /> <input type="submit" class="btn btn-primary"
            value="Show Cats" />
    </form>
    
    <form action="listACat.do" method="GET">
    	Add a cat: <input type="text" name="fid" /> <input type="submid" class="btn btn-primary"
    		value="Show Cats" />
    </form>
    
    <c:if test="${not empty allFilms }">
        <ol>
            <c:forEach var="film" items="${allFilms}">
                <li><a href="getFilm.do?fid=${film.id }">${film.title}</a>
                <blockquote>${film.description }</blockquote>
                </li>
            </c:forEach>
        </ol>
    </c:if>
    
</div>


</body>
</html>