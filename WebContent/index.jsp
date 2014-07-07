<%@ page language="java" contentType="text/html; charset=iso-8859-1"
	pageEncoding="iso-8859-1"%>
<%@ page import="java.sql.*"%>
<%@ page import="javax.sql.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>CV Bank</title>
</head>
<body>
	<form action='add.jsp'>

		<input type='text' name='name' value='' /> Name <br> <input
			type='text' name='surname' value='' /> Surname <br> <input
			type='submit' value='Submit' />

	</form>

	<form action="listAll.jsp">
		<input type="submit" value="Show The Applicants">

	</form>
	<form action="remove.jsp">
		<input type="submit" value="Remove Aplicant">
	</form>
	<form action="search.jsp">
		<input type="submit" value="Search Aplicant">
	</form>
	<form action="update.jsp">
		<input type="submit" value="Update Aplicant">
	</form>
</html>