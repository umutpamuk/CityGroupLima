package controller;

import java.io.*;
import javax.servlet.http.*;

import data.Login;

import javax.servlet.*;
import java.sql.*;

public class MySQLConnect extends HttpServlet {

	private static final long serialVersionUID = 1L;

	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		
		response.setContentType("text/html;text/css;charset=UTF-8");
		PrintWriter out = response.getWriter();
		String email = request.getParameter("email");
		String pass = request.getParameter("pass");
		Login login = new Login();
		try {
			Class.forName("com.mysql.jdbc.Driver");
			Connection conn = DriverManager.getConnection(
					"jdbc:mysql://citygrouplima-mysqldbserver.mysql.database.azure.com:3306/CityGroupLima?useUnicode=true&useLegacyDatetimeCode=false&serverTimezone=Turkey",
					"mysqldbuser@citygrouplima-mysqldbserver", "Umut1810");
			PreparedStatement pst = conn.prepareStatement("Select * from login where email=? and pass=?");
			pst.setString(1, email);
			pst.setString(2, pass);
			ResultSet rs = pst.executeQuery();
			if (rs.next()) {
				login.setId(rs.getInt(1));
				login.setFirstName(rs.getString(2));
				login.setLastName(rs.getString(3));
				login.setUserName(rs.getString(4));
				login.setEmail(rs.getString(5));
				login.setPass(rs.getString(6));
				
				request.getSession().setAttribute("login", login);
				response.sendRedirect("homepage.jsp");
			} else {
				out.println("<script type=\"text/javascript\">");
				out.println("alert('User or password incorrect');");
				out.println("location='homepage.jsp';");
				out.println("</script>");
			}
		} catch (ClassNotFoundException | SQLException e) {
			e.printStackTrace();
		}
	}

}