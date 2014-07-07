<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*"%>
<%@ page import="javax.sql.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Update Applicant</title>
</head>
<body>

	<form action="updCont.jsp">
		<input name="u_id"> Applicant ID <br>
		<input name='u_name' value=''>New Name<br> <input
			name='u_surname' value=''>New Surname<br> <input
			type="submit" value="Update">
	</form>
	<form action="index.jsp">
		<input type="submit" value="Return">
	</form>
</body>
</html>