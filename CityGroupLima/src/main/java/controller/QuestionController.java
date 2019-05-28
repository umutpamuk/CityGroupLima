package controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import data.Question;


public class QuestionController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		PrintWriter out = response.getWriter();
		response.setContentType("text/html;text/css;charset=UTF-8");
		
		//City c = (City) request.getAttribute("city");
		//String city = c.getCityName();
		String city = request.getParameter("CityName");
		Question q = new Question();
		
		try {
			Class.forName("com.mysql.jdbc.Driver");
			Connection conn = DriverManager.getConnection(
					"jdbc:mysql://citygrouplima-mysqldbserver.mysql.database.azure.com:3306/CityGroupLima?useUnicode=true&useLegacyDatetimeCode=false&serverTimezone=Turkey",
					"mysqldbuser@citygrouplima-mysqldbserver", "Umut1810");
			PreparedStatement pst = conn.prepareStatement("Select * from question where CityName=?");
			pst.setString(1, city);
			ResultSet rs = pst.executeQuery();
	
			while(rs.next()) {
				q.setCityName(rs.getString(2));
				
				q.setQuestion1(rs.getString(3));
				q.setImage1(rs.getString(4));
				q.setChoice11(rs.getString(5));
				q.setChoice12(rs.getString(6));
				q.setChoice13(rs.getString(7));
				q.setChoice14(rs.getString(8));
				q.setCorrect1(rs.getString(9));
				
				q.setQuestion2(rs.getString(10));
				q.setImage2(rs.getString(11));
				q.setChoice21(rs.getString(12));
				q.setChoice22(rs.getString(13));
				q.setChoice23(rs.getString(14));
				q.setChoice24(rs.getString(15));
				q.setCorrect2(rs.getString(16));
				
				q.setQuestion3(rs.getString(17));
				q.setImage3(rs.getString(18));
				q.setChoice31(rs.getString(19));
				q.setChoice32(rs.getString(20));
				q.setChoice33(rs.getString(21));
				q.setChoice34(rs.getString(22));
				q.setCorrect3(rs.getString(23));
				
				q.setQuestion4(rs.getString(24));
				q.setImage4(rs.getString(25));
				q.setChoice41(rs.getString(26));
				q.setChoice42(rs.getString(27));
				q.setChoice43(rs.getString(28));
				q.setChoice44(rs.getString(29));
				q.setCorrect4(rs.getString(30));
				
				q.setQuestion5(rs.getString(31));
				q.setImage5(rs.getString(32));
				q.setChoice51(rs.getString(33));
				q.setChoice52(rs.getString(34));
				q.setChoice53(rs.getString(35));
				q.setChoice54(rs.getString(36));
				q.setCorrect5(rs.getString(37));

			}
		
		} catch (ClassNotFoundException | SQLException e) {
			e.printStackTrace();
		}	
		request.setAttribute("question", q);
		if(q.getQuestion1() != null) {
			request.getRequestDispatcher("./quiz.jsp").forward(request, response);
		}else {
			out.println("<script type=\"text/javascript\">");
			out.println("alert('QUIZ NOT AVAILABLE');");
			out.println("location='worldmap.jsp';");
			out.println("</script>");
		}
		if(q.getImage1() != null) {
			q.getImage1();	
		}else if(q.getImage2() != null) {
			q.getImage2();
		}else if(q.getImage3() != null) {
			q.getImage3();
		}else if(q.getImage4() != null) {
			q.getImage4();
		}else if (q.getImage5() != null) {
			q.getImage5();
		}
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
