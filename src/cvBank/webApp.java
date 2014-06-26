package cvBank;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.sql.*;

public class webApp extends HttpServlet{
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		
		try {
			String myDriver = "com.mysql.jdbc.Driver";
			String db = "jdbc:mysql://localhost:3306/mydb";
			Class.forName(myDriver);
			Connection conn = DriverManager.getConnection(db, "root", "");
			String sorgu = "SELECT * FROM applicant";
			Statement st = conn.createStatement();
			ResultSet rs = st.executeQuery(sorgu);
			while (rs.next()) {
				String s_ad = rs.getString("name");
				String s_soyad = rs.getString("surname");
				//System.out.print(s_ad + " " + "\n");
				resp.getWriter().println(s_ad + " " + s_soyad + " " + "\n" );
			}
			st.close();
		} catch (Exception a) {
			resp.getWriter().println("Hata ! ");
			resp.getWriter().println(a.getMessage());
		}
		
		//resp.getWriter().println(s_ad + " " + s_soyad + " " );
	}
	
}
