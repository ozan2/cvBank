<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Search</title>
</head>
<body>

	<form action="sName.jsp">
		<input type='text' name="s_name"> <input type="submit"
			value="Search by Name">
	</form>
	<form action="sSurname.jsp">
		<input type='text' name="s_surname"> <input type="submit"
			value="Search by Surname">
	</form>
	<form action="index.jsp">
		<input type="submit" value="Return">
	</form>
</body>
</html>