<%@ page import="java.sql.*"%>
<%@ page import="javax.sql.*"%>
<%
	String name = request.getParameter("name");
	//session.putValue("name", name);
	String surname = request.getParameter("surname");
	if(name!="" && surname!=""){

	Class.forName("com.mysql.jdbc.Driver");
	java.sql.Connection con = DriverManager.getConnection(
	"jdbc:mysql://localhost:3306/mydb", "root", "");
	Statement st = con.createStatement();
	ResultSet rs;
	String sql = "INSERT INTO applicant (name, surname)"
	+ "VALUES ('"+name+"','"+surname+"')";
	st.executeUpdate(sql);
	out.println("Person added succesfully!");
	}else{
		out.println("Please fill the required parts!");	
	}
%><br>

<form>
	<input type="submit" value="Return" formaction="index.jsp">
</form>
