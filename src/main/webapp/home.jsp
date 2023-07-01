<%@page import="com.entities.Note"%>
<%@page import="java.util.List"%>
<%@page import="org.hibernate.query.Query"%>
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
		<title>Home</title>
	</head>
<body style="background: #a5b4fc;">
	<div class="container-fluid m-0 p-0">
    	<%@ include file="navbar.jsp" %>
   		<br>
   		<h2 class="text-center m-4">All Notes</h2>
   		
   		<div class="row p-3 m-0">
   			<div class="col-12">
  				<%
	    			Session s = FactoryProvider.getFactory().openSession();
	    			Query q = s.createQuery("from Note");
	    			
	    			List<Note> list = q.list();
	    			
	    			for(Note note : list){
   				%>
   				<div class="card" style="width:60em; margin: 1em 0 0 10em;">
			  		<div class="card-body">
				    	<h5 class="card-title"><%= note.getTitle() %></h5>
				    	<p class="card-text" style="margin-top: 1.2em;"><%= note.getContent() %></p>
				    	
				    	<div class="container" style="margin-left: 45em; width: 10em;">
				    		<a href="edit_page.jsp?note_id=<%= note.getId() %>" class="btn btn-primary butt">Edit</a>
				    		<a href="DeleteServlet?note_id=<%= note.getId() %>" class="btn btn-danger butt">Delete</a>
				    	</div>
			 		</div>
				</div>
   			
	   			<%
					}						
					s.close();	
				%>
    		</div>
    	</div>
  	
    </div>
</body>
</html>