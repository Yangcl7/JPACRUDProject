<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<!-- Template by quackit.com -->
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>3 Column Layout</title>
	<style type="text/css">

		/* Layout */
		body {
			min-width: 630px;
		}

		#container {
			padding-left: 200px;
			padding-right: 190px;
		}
		
		#container .column {
			position: relative;
			float: left;
		}
		
		#center {
			padding: 10px 20px;
			width: 100%;
		}
		
		#left {
			width: 180px;
			padding: 0 10px;
			right: 240px;
			margin-left: -100%;
		}
		
		
		#footer {
			clear: both;
		}
		
		/* IE hack */
		* html #left {
			left: 150px;
		}

		/* Make the columns the same height as each other */
		#container {
			overflow: hidden;
		}

		#container .column {
			padding-bottom: 1001em;
			margin-bottom: -1000em;
		}

		/* Fix for the footer */
		* html body {
			overflow: hidden;
		}
		
		* html #footer-wrapper {
			float: left;
			position: relative;
			width: 100%;
			padding-bottom: 10010px;
			margin-bottom: -10000px;
			background: #fff;
		}

		/* Aesthetics */
		body {
			margin: 0;
			padding: 0;
			font-family:Sans-serif;
			line-height: 1.5em;
		}
		
		p {
			color: #555;
		}

		nav ul {
			list-style-type: none;
			margin: 0;
			padding: 0;
		}
		
		nav ul a {
			color: darkgreen;
			text-decoration: none;
		}

		#header, #footer {
			font-size: large;
			padding: 0.3em;
			background: #BCCE98;
		}

		#left {
			background: #DAE9BC;
		}
		
		#right {
			background: #F7FDEB;
		}

		#center {
			background: #fff;
		}

		#container .column {
			padding-top: 1em;
		}
		
	</style>
		
</head>

<body>

	<header id="header" style= color:darkred><h2>Kat Cat home of the Kittie cats</h2></header>

	<div id="container" >

		<main id="center" class="column">
			<article>
			
				<h1>Look up a cat by:</h1>
				
              <form action="getCat.do" method="GET">
        Cat ID: <input type="number" name="fid" /> <input type="submit" class="btn btn-primary"
            value="Show Cats" /></form>
                         
			
			</article>								
		</main>

		<nav id="left" class="column">
			<h3>Top members</h3>
			<ul>
				<li><a href="https://www.instagram.com/tomthefold/">TomtheFold</a></li>
				<li><a href="https://www.instagram.com/catdog_gr/">CatDog</a></li>
				<li><a href="https://www.instagram.com/yoremahm/">Manny</a></li>
				<li><a href="https://www.instagram.com/realgrumpycat/">Tardar Sauce</a></li>
				<li><a href="https://www.instagram.com/hellokitty/">HelloKittie</a></li>
			</ul>
		

		</nav>


	</div>

	<div id="footer-wrapper">
      <footer id="footer"><a href="https://www.linkedin.com/in/youngcl7/">find me on linkedin</a></footer>
        
	</div>

</body>

</html>