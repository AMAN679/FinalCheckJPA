<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="java.text.SimpleDateFormat" %>
    <%@ page import="java.util.*" %>
    <%@ page import="java.text.DateFormat" %>
    
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
				<a class="nav-link" href="./movie-list-admin.html">Movies</a>
			</nav>
		</header>
		<article>
			<h2 class="article-heading">Movies</h2>
			<% List<Movie> l=(List<Movie>)request.getAttribute("movielist");%>
			<table>
				<tr>
					<th class="col-left">Title</th>
					<th class="col-right">Box Office</th>
					<th>Active</th>
					<th>Date of Launch</th>
					<th>Genre</th>
					<th>Has Teaser</th>
					<th>Action</th>
				</tr>
				<% for(Movie m:l){ %>
				<tr>
					<td class="col-left"><%=m.getTitle()%></td>
					<td class="col-right"><%=m.getBoxOffice()%></td>
					<td><%=m.isActive()%></td>
					
					
					
					
				 
					<td><%=m.getDateOfLaunch().toString().substring(0,11)%></td>
					<td><%=m.getGenre()%></td>
					<td><%=m.isHasTeaser()%></td>
					<td>
						<a class="action-link" href="/edit-movie?id=<%=m.getId()%>">Edit</a>
					</td>
				</tr>
				<%} %>
			<!--  	<tr>
					<td class="col-left">The Avengers</td>
					<td class="col-right">$1,518,812,988</td>
					<td>Yes</td>
					<td>23/12/2017</td>
					<td>Superhero</td>
					<td>No</td>
					<td>
						<a class="action-link" href="./edit-movie.html">Edit</a>
					</td>
				</tr>
				<tr>
					<td class="col-left">Titanic</td>
					<td class="col-right">$2,187,463,944</td>
					<td>Yes</td>
					<td>21/08/2017</td>
					<td>Romance</td>
					<td>No</td>
					<td>
						<a class="action-link" href="./edit-movie.html">Edit</a>
					</td>
				</tr>
				<tr>
					<td class="col-left">Jurassic World</td>
					<td class="col-right">$1,671,713,208</td>
					<td>No</td>
					<td>02/07/2017</td>
					<td>Science Fiction</td>
					<td>Yes</td>
					<td>
						<a class="action-link" href="./edit-movie.html">Edit</a>
					</td>
				</tr>
				<tr>
					<td class="col-left">Avengers: End Game</td>
					<td class="col-right">$2,750,760,348</td>
					<td>Yes</td>
					<td>02/11/2022</td>
					<td>Superhero</td>
					<td>Yes</td>
					<td>
						<a class="action-link" href="./edit-movie.html">Edit</a>
					</td>
				</tr>-->
			</table>
		</article>
		<footer>
			<p>Copyright &copy; 2019</p>
		</footer>
	</body>
</html>