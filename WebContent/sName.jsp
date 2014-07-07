<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*"%>
<%@ page import="javax.sql.*"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Search by Name</title>
</head>
<body>
	<%
		String name = request.getParameter("s_name");
		try {
			String myDriver = "com.mysql.jdbc.Driver";
			String db = "jdbc:mysql://localhost:3306/mydb";
			Class.forName(myDriver);
			Connection conn = DriverManager.getConnection(db, "root", "");
			String sorgu = "SELECT * FROM applicant WHERE name LIKE '%"
					+ name + "%'";
			Statement st = conn.createStatement();
			ResultSet rs = st.executeQuery(sorgu);
			while (rs.next()) {
				String s_ad = rs.getString("name");
				String s_soyad = rs.getString("surname");
				String s_id = rs.getString("id");
				out.println(s_id + ") " + s_ad + " " + s_soyad + " "
						+ "<br>");
			}
			st.close();
		} catch (Exception a) {
			out.println("Error ! ");
			out.println(a.getMessage());
		}
	%>
	<form action="index.jsp">
		<input type="submit" value="Return">
	</form>
</body>
</html>