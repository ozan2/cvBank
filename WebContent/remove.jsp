<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*"%>
<%@ page import="javax.sql.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Removing Applicant</title>
</head>
<body>
	<form action="removeCont.jsp">
		<input style="width: 124px;" name="id" value=''><br> <input
			type="submit" value="Remove by ID">
	</form>
	<form action="index.jsp">
		<input type="submit" value="Return">
	</form>
</body>
</html>