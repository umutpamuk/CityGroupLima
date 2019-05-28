package controller;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import data.Login;

public class QuizController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String score = request.getParameter("score");
		
		if(request.getSession().getAttribute("login")!=null){
	 		Login login = (Login) request.getSession().getAttribute("login");
		
		
        try{ 
			Class.forName("com.mysql.jdbc.Driver");
			Connection conn = DriverManager.getConnection(
					"jdbc:mysql://citygrouplima-mysqldbserver.mysql.database.azure.com:3306/CityGroupLima?useUnicode=true&useLegacyDatetimeCode=false&serverTimezone=Turkey",
					"mysqldbuser@citygrouplima-mysqldbserver", "Umut1810");
			PreparedStatement pst = conn.prepareStatement("UPDATE login SET skor='"+score+"' WHERE id= '"+login.getId()+"'");
			//PreparedStatement stmt = conn.prepareStatement("UPDATE login SET skor='20' WHERE id= '1'");
			pst.executeUpdate();
        }catch(Exception e){ 
        	System.out.println("Error"+e); 
        }
		}
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}
}
