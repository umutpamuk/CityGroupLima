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

//import data.City;
import data.Question;


public class QuizDatabasePost extends HttpServlet {

	private static final long serialVersionUID = 1L;
	private static Statement stmt;

	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		response.setContentType("text/html;text/css;charset=UTF-8");
		PrintWriter out = response.getWriter();
		String CityName = request.getParameter("CityName");

		String Question1 = request.getParameter("Question1");
		String Image1 = request.getParameter("Image1");
		String Choice11 = request.getParameter("Choice11");
		String Choice12 = request.getParameter("Choice12");
		String Choice13 = request.getParameter("Choice13");
		String Choice14 = request.getParameter("Choice14");
		String Correct1 = request.getParameter("Correct1");
		
		String Question2 = request.getParameter("Question2");
		String Image2 = request.getParameter("Image2");
		String Choice21 = request.getParameter("Choice21");
		String Choice22 = request.getParameter("Choice22");
		String Choice23 = request.getParameter("Choice23");
		String Choice24 = request.getParameter("Choice24");
		String Correct2 = request.getParameter("Correct2");
		
		String Question3 = request.getParameter("Question3");
		String Image3 = request.getParameter("Image3");
		String Choice31 = request.getParameter("Choice31");
		String Choice32 = request.getParameter("Choice32");
		String Choice33 = request.getParameter("Choice33");
		String Choice34 = request.getParameter("Choice34");
		String Correct3 = request.getParameter("Correct3");
		
		String Question4 = request.getParameter("Question4");
		String Image4 = request.getParameter("Image4");
		String Choice41 = request.getParameter("Choice41");
		String Choice42 = request.getParameter("Choice42");
		String Choice43 = request.getParameter("Choice43");
		String Choice44 = request.getParameter("Choice44");
		String Correct4 = request.getParameter("Correct4");
		
		String Question5 = request.getParameter("Question5");
		String Image5 = request.getParameter("Image5");
		String Choice51 = request.getParameter("Choice51");
		String Choice52 = request.getParameter("Choice52");
		String Choice53 = request.getParameter("Choice53");
		String Choice54 = request.getParameter("Choice54");
		String Correct5 = request.getParameter("Correct5");
		
		
		
		try {
			Class.forName("com.mysql.jdbc.Driver");
			Connection conn = DriverManager.getConnection(
					"jdbc:mysql://citygrouplima-mysqldbserver.mysql.database.azure.com:3306/CityGroupLima?useUnicode=true&useLegacyDatetimeCode=false&serverTimezone=Turkey",
					"mysqldbuser@citygrouplima-mysqldbserver", "Umut1810");
			stmt = conn.createStatement();
			stmt.executeUpdate("insert into question(CityName,Question1,Image1,Choice11,Choice12,Choice13,Choice14,Correct1,Question2,Image2,Choice21,Choice22,Choice23,Choice24,Correct2,Question3,Image3,Choice31,Choice32,Choice33,Choice34,Correct3,Question4,Image4,Choice41,Choice42,Choice43,Choice44,Correct4,Question5,Image5,Choice51,Choice52,Choice53,Choice54,Correct5)"+"values('"+CityName+"','"+Question1+"','"+Image1+"','"+Choice11+"','"+Choice12+"','"+Choice13+"','"+Choice14+"','"+Correct1+"','"+Question2+"','"+Image2+"','"+Choice21+"','"+Choice22+"','"+Choice23+"','"+Choice24+"','"+Correct2+"','"+Question3+"','"+Image3+"','"+Choice31+"','"+Choice32+"','"+Choice33+"','"+Choice34+"','"+Correct3+"','"+Question4+"','"+Image4+"','"+Choice41+"','"+Choice42+"','"+Choice43+"','"+Choice44+"','"+Correct4+"','"+Question5+"','"+Image5+"','"+Choice51+"','"+Choice52+"','"+Choice53+"','"+Choice54+"','"+Correct5+"')");
			
			Question q = new Question();
			
			q.setCityName(CityName);
			q.setQuestion1(Question1);
			q.setChoice11(Choice11);
			q.setChoice12(Choice12);
			q.setChoice13(Choice13);
			q.setChoice14(Choice14);
			q.setCorrect1(Correct1);
			q.setQuestion2(Question2);
			q.setChoice21(Choice21);
			q.setChoice22(Choice22);
			q.setChoice23(Choice23);
			q.setChoice24(Choice24);
			q.setCorrect2(Correct2);
			q.setQuestion3(Question3);
			q.setChoice31(Choice31);
			q.setChoice32(Choice32);
			q.setChoice33(Choice33);
			q.setChoice34(Choice34);
			q.setCorrect3(Correct3);
			q.setQuestion4(Question4);
			q.setChoice41(Choice41);
			q.setChoice42(Choice42);
			q.setChoice43(Choice43);
			q.setChoice44(Choice44);
			q.setCorrect4(Correct4);
			q.setQuestion5(Question5);
			q.setChoice51(Choice51);
			q.setChoice52(Choice52);
			q.setChoice53(Choice53);
			q.setChoice54(Choice54);
			q.setCorrect5(Correct5);
			
			
			request.getSession().setAttribute("question", q);
			
			out.println("<script type=\"text/javascript\">");
			out.println("alert('Kayit Basarili');");
			out.println("location='homepage.jsp';");
			out.println("</script>");
		} catch (Exception e) {
			out.println("<script type=\"text/javascript\">");
			out.println("alert('Kayit Basarisiz');");
			out.println("location='homepage.jsp';");
			out.println("</script>");
			e.printStackTrace();
		}

	}

}
