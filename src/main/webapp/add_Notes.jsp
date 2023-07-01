<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="ISO-8859-1">
		<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-9ndCyUaIbzAi2FUVXJi0CjmCapSmO7SnpJef0486qhLnuZ2cdeRhO02iuK6FUUVM" crossorigin="anonymous">
	    <link href="css/style.css" rel="stylesheet">
		<title>Add Notes</title>
	</head>
<body style="background: #a5b4fc;">
		<div class="container-fluid m-0 p-0">
    		<%@ include file="navbar.jsp" %>
    		<h2 class="text-center m-4">Add New Note Here</h2>
    		<br>
	    	<form action="saveNoteServlet" method="post">
			  <div class="w-50 container">
				  <div class="form-group mb-3">
				    <label for="title" class="form-label">Title</label>
				    <input type="text" 
				    	name="title"
				    	required="required"
					    class="form-control" 
					    id="title" 
					    placeholder="Enter title">
				  </div>
				  <div class="mb-3">
				    <label for="content" class="form-label">Content</label>
				    <textarea 
				    	name="content"
				    	required="required"
				    	type="text" 
				    	class="form-control" 
				    	id="content"
				    	placeholder="Enter Content Here"
				    	style="height:8em;"></textarea>
				  </div>
			  </div>
			  <div class="container text-center">
			  		<button type="submit" class="btn btn-outline-primary">Add</button>
			  </div>
			</form>
		</div>
</body>
</html>