<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
     <%@ page import="java.util.*" %>
      <%@ page import="com.cognizant.movie.model.*" %>
<!DOCTYPE html>
<html>
	<head>
		<title>Movie Cruiser</title>
		<link rel="icon" type="image/ico" href="./images/logo.png" />
		<link rel="stylesheet" type="text/css" href="./style/style.css">
	</head>
	<body>
		<header>
			<span class="header-title">Movie Cruiser</span>
			<img class="header-logo" src="./images/logo.png" alt="Movie Cruiser Logo"></img>
			<nav>
				<a class="nav-link" href="./movie-list-customer">Movies</a>
				<a class="nav-link" href="./favorites">Favorites</a>
			</nav>
		</header>
		<article>
			<h2 class="article-heading">Favorites</h2>
			<% List<Favorites> l=(List<Favorites>)request.getAttribute("favorites");%>
			<table>
				<tr>
					<th class="col-left">Title</th>
					<th class="col-right">Box Office</th>
					<th>Genre</th>
					<th>Action</th>
				</tr>
				<% for(Favorites m:l){ %>
				<tr>
					<td class="col-left"><%=m.getTitle()%></td>
					<td class="col-right"><%=m.getBoxOffice()%></td>
					<td><%=m.getGenre()%></td>
					
					<td>
						<a class="action-link" href="./favorites-notification?id=<%=m.getId()%>">Delete</a>
					</td>
				</tr>
				<%} %>
				<!-- 
				<tr>
					<td class="col-left">The Avengers</td>
					<td class="col-right">$1,518,812,988</td>
					<td>Superhero</td>
					<td>
						<a class="action-link" href="./favorites-notification">Delete</a>
					</td>
				</tr>
				<tr>
					<td class="col-left">Titanic</td>
					<td class="col-right">$2,187,463,944</td>
					<td>Romance</td>
					<td>
						<a class="action-link" href="./favorites-notification.html">Delete</a>
					</td>
				</tr>-->
				<tr>
					<td colspan="4" class="col-left">
						<p class="table-message"><strong>No. of Favorites:</strong> <%=l.size()%></p>
					</td>
				</tr>
			</table>
		</article>
		<footer>
			<p>Copyright &copy; 2019</p>
		</footer>
	</body>
</html>