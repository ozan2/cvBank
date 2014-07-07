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
<%
	String id = request.getParameter("u_id");
	String name = request.getParameter("u_name");
	String sname = request.getParameter("u_surname");

	if (id != "") {

		Class.forName("com.mysql.jdbc.Driver");
		java.sql.Connection con = DriverManager.getConnection(
				"jdbc:mysql://localhost:3306/mydb", "root", "");
		Statement st = con.createStatement();
		ResultSet rs;
		String sql = "UPDATE applicant SET name='"+name+"',surname='"+sname+"' WHERE id='"+id+"'";

		st.executeUpdate(sql);
		out.println("Person updated succesfully!");
	} else {
		out.println("Please fill the required parts!");
	}
%>
	
	<form action="index.jsp">
		<input type="submit" value="Return">
	</form>
</body>
</html>