<%@page import="com.entities.Note"%>
<%@page import="com.helper.FactoryProvider"%>
<%@page import="org.hibernate.Session"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="ISO-8859-1">
		<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-9ndCyUaIbzAi2FUVXJi0CjmCapSmO7SnpJef0486qhLnuZ2cdeRhO02iuK6FUUVM" crossorigin="anonymous">
	    <link href="css/style.css" rel="stylesheet">
		<title>Edit Note</title>
	</head>
<body style="background: #a5b4fc;">
	<div class="container-fluid m-0 p-0">
    	<%@ include file="navbar.jsp" %>
   		<br>
   		<h2 class="text-center m-4">Edit</h2>
   		<%
   			int noteId = Integer.parseInt(request.getParameter("note_id").trim());
   			Session s = FactoryProvider.getFactory().openSession();
   			
   			Note note = (Note) s.get(Note.class, noteId);
   		%>
   		<div class="container-fluid m-0 p-0">
	    	<form action="EditNoteServlet" method="post">
			  <div class="w-50 container">
			  	  <input value=<%= note.getId() %> name="noteId" type="hidden"/>
				  <div class="form-group mb-3">		  	
				    <label for="title" class="form-label">Title</label>
				    <input type="text" 
				    	name="title"
				    	required="required"
					    class="form-control" 
					    id="title" 
					    placeholder="Enter title"
					    value="<%= note.getTitle()%>"/>
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
				    	style="height:8em;"><%= note.getContent() %></textarea>
				  </div>
			  </div>
			  <div class="container text-center">
			  		<button type="submit" class="btn btn-outline-success">Save</button>
			  </div>
			</form>
		</div>
	</div>
</body>
</html>