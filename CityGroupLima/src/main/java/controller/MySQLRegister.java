package controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.Statement;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import data.Login;

public class MySQLRegister extends HttpServlet {

	private static final long serialVersionUID = 1L;
	private static Statement stmt;

	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		response.setContentType("text/html;text/css;charset=UTF-8");
		PrintWriter out = response.getWriter();
		
		String firstName = request.getParameter("firstName");
		String lastName = request.getParameter("lastName");
		String userName = request.getParameter("userName");
		String email = request.getParameter("email");
		String pass = request.getParameter("pass");

		try
        {
            Class.forName("com.mysql.jdbc.Driver");
        }
        catch (ClassNotFoundException e)
        {
            System.out.println("1.Catch");
        }

		try {
			
			//Class.forName("com.mysql.jdbc.Driver");
			//Connection conn = DriverManager.getConnection("jdbc:mysql://citygrouplima-mysqldbserver.mysql.database.azure.com:3306/citygrouplima?useUnicode=true&useLegacyDatetimeCode=false&serverTimezone=Turkey","mysqldbuser@citygrouplima-mysqldbserver","Umut1810");
			String url ="jdbc:mysql://citygrouplima-mysqldbserver.mysql.database.azure.com:3306/citygrouplima?useUnicode=true&useLegacyDatetimeCode=false&serverTimezone=Turkey";
			Connection myDbConn = DriverManager.getConnection(url, "mysqldbuser@citygrouplima-mysqldbserver", "Umut1810");
			//stmt = conn.createStatement();
			stmt = myDbConn.createStatement();
			stmt.executeUpdate("insert into login(firstName,lastName,userName,email,pass) " + "values('" + firstName
					+ "','" + lastName + "','" + userName + "','" + email + "','" + pass + "')");
			Login login = new Login();
			
			login.setFirstName(firstName);
			login.setLastName(lastName);
			login.setUserName(userName);
			login.setEmail(email);
			login.setPass(pass);
			
			request.getSession().setAttribute("login", login);
			out.println("<script type=\"text/javascript\">");
			out.println("alert('Kayit Basarili');");
			out.println("location='homepage.jsp';");
			out.println("</script>");
		} catch (Exception e) {
			out.println("<script type=\"text/javascript\">");
			out.println("alert('Kayit Basarisiz Register');");
			out.println("location='homepage.jsp';");
			out.println("</script>");
			e.printStackTrace();
		}

	}

}
