<%@page import="com.sun.javafx.scene.layout.region.Margins.Converter"%>
<%@ page import="java.sql.*"%>
<%@ page import="javax.sql.*"%>
<%
	String id = request.getParameter("id");

	if (id != "") {

		Class.forName("com.mysql.jdbc.Driver");
		java.sql.Connection con = DriverManager.getConnection(
				"jdbc:mysql://localhost:3306/mydb", "root", "");
		Statement st = con.createStatement();
		ResultSet rs;
		String sql = "DELETE FROM applicant WHERE id =" + id + "";

		st.executeUpdate(sql);
		out.println("Person deleted succesfully!");
	} else {
		out.println("Please fill the required parts!");
	}
%>
<form>
	<input type="submit" value="Return" formaction="remove.jsp">
</form>