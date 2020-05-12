<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
      <%@ page import="com.cognizant.movie.model.*" %>
<!DOCTYPE html>
<html>
	<head>
		<title>Movie Cruiser</title>
		<link rel="icon" type="image/ico" href="./images/logo.png" />
		<link rel="stylesheet" type="text/css" href="./style/style.css">
		<script src="./js/script.js"></script>
	</head>
	<body class="xyz">
		<header>
			<span class="header-title">Movie Cruiser</span>
			<img class="header-logo" src="./images/logo.png" alt="Movie Cruiser Logo"></img>
			<nav>
				<a class="nav-link" href="/movie-list-admin">Movies</a>
			</nav>
		</header>
		<% Movie m=(Movie)request.getAttribute("movie"); %>
		
	
		<article>
			<h2 class="article-heading">Edit Movie</h2>
			<form name="editMovieForm" onsubmit="return validateForm();" action="edit-movie-status">
				<input type="text" name="id" style="visibility:hidden" value="<%=m.getId()%>">
				<table class="form-table">
					<tr>
						<td colspan="4">
						
		
							<label class="form-item" for="field-title">Title</label>
							<input class="form-input" type="text" name="title" id="field-title" value="<%=m.getTitle()%>"></input>
							<p class="form-error-message" id="title-error"></p>
						</td>
					</tr>
					<tr>
						<td>
							<label class="form-item" for="field-boxOffice">Box Office ($)</label>
							<input class="form-input form-input-right" type="text" name="boxOffice" id="field-boxOffice" value="<%=m.getBoxOffice().substring(1)%>"></input>
							<p class="form-error-message" id="boxOffice-error"></p>
						</td>
						
						
				
						
						
						<th>
							<label class="form-item" for="field-yes">Active</label><br>
							
							<% if(m.isActive().equals("Yes")){ %>
							<input class="form-radiobutton" type="radio" name="active" id="field-yes" value="Yes" checked><label class="form-item" for="field-yes" checked>Yes</label></input>
							<input class="form-radiobutton" type="radio" name="active" id="field-no" value="No"><label class="form-item" for="field-no">No</label></input>
						<%}else { %>
							<input class="form-radiobutton" type="radio" name="active" id="field-yes" value="Yes" ><label class="form-item" for="field-yes" checked>Yes</label></input>
							<input class="form-radiobutton" type="radio" name="active" id="field-no" value="No" checked><label class="form-item" for="field-no">No</label></input>
						<%} %>
						
						
						</th>
						<td>
							<label class="form-item" for="field-dateOfLaunch">Date of Launch</label>
							<input class="form-input" type="text" name="dateOfLaunch" id="field-dateOfLaunch" placeholder="dd/mm/yyyy" value="<%=m.getDateOfLaunch().toString().substring(0,10)%>"></input>
							<p class="form-error-message" id="dateOfLaunch-error"></p>
						</td>
						
						
		
						
						
						<td>
							<label class="form-item" for="field-genre">Genre</label>
							<select class="form-input" name="genre" id="field-genre">
								<option value="select">--Select--</option>
								<%if(m.getGenre().equals("Superhero")){ %>
								<option value="Science Fiction">Science Fiction</option>
								<option value="Superhero" selected>Superhero</option>
								<option value="Romance">Romance</option>
								<option value="Comedy">Comedy</option>
								<option value="Adventure">Adventure</option>
								<option value="Thriller">Thriller</option>
								<%}else if(m.getGenre().equals("Science Fiction")){ %>
								
								<option value="Science Fiction" selected>Science Fiction</option>
								<option value="Superhero" >Superhero</option>
								<option value="Romance">Romance</option>
								<option value="Comedy">Comedy</option>
								<option value="Adventure">Adventure</option>
								<option value="Thriller">Thriller</option>
								<%}else if(m.getGenre().equals("Romance")){ %>
								<option value="Science Fiction">Science Fiction</option>
								<option value="Superhero" >Superhero</option>
								<option value="Romance" selected>Romance</option>
								<option value="Comedy">Comedy</option>
								<option value="Adventure">Adventure</option>
								<option value="Thriller">Thriller</option>
								<%}else if(m.getGenre().equals("Comedy")){ %>
								<option value="Science Fiction" >Science Fiction</option>
								<option value="Superhero" >Superhero</option>
								<option value="Romance">Romance</option>
								<option value="Comedy" selected>Comedy</option>
								<option value="Adventure">Adventure</option>
								<option value="Thriller">Thriller</option>
								<%}else if(m.getGenre().equals("Adventure")){ %>
								<option value="Science Fiction">Science Fiction</option>
								<option value="Superhero" >Superhero</option>
								<option value="Romance">Romance</option>
								<option value="Comedy">Comedy</option>
								<option value="Adventure" selected>Adventure</option>
								<option value="Thriller">Thriller</option>
								<%}else if(m.getGenre().equals("Thriller")){ %>
								<option value="Science Fiction">Science Fiction</option>
								<option value="Superhero" >Superhero</option>
								<option value="Romance">Romance</option>
								<option value="Comedy">Comedy</option>
								<option value="Adventure">Adventure</option>
								<option value="Thriller" checked>Thriller</option>
								
								<%} %>				
							</select>
							<p class="form-error-message" id="genre-error"></p>
						</td>
					</tr>
					<tr colspan=4>
						<td>
							<label class="form-item" for="field-hasTeaser">
								<% if(m.isHasTeaser().equals("Yes")){ %>
								<input class="form-checkbox" type="checkbox" name="hasTeaser" id="field-hasTeaser" checked>Has Teaser
							<%}else{ %>
				<input class="form-checkbox" type="checkbox" name="hasTeaser" id="field-hasTeaser" >Has Teaser
							<%} %>
							</label>
						</td>
					</tr>
					<tr colspan=4>
						<td>
							<input class="form-button" type="submit" name="submit" value="Save"></input>
						</td>
					</tr>
				</table>
			</form>
		</article>
		<footer>
			<p>Copyright &copy; 2019</p>
		</footer>
	</body>
</html>



