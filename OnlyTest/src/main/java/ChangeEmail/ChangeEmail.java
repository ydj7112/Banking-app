package ChangeEmail;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class ChangeEmail
 */
@WebServlet("/ChangeEmail")
public class ChangeEmail extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
 
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String curr_email= request.getParameter("curremail");
		String new_email=request.getParameter("newemail");
	//	System.out.println(new_email);
		
		
		HttpSession session =request.getSession();
		RequestDispatcher dispatcher =null ;
		String userid=(String) session.getAttribute("userid");
		
		session.setAttribute("newEmail",new_email );
		
		try {
			Class.forName("org.postgresql.Driver");
			Connection con=DriverManager.getConnection("jdbc:postgresql://localhost:5432/bankinfo","postgres","root");
			PreparedStatement rst=con.prepareStatement("select  uemail from users where userid = ?");
			rst.setString(1, userid);
			
			ResultSet rs = rst.executeQuery();
			if(rs.next()) {
				String curmail = rs.getString("uemail");
	//			System.out.println(curr_email);
			
			if(curr_email.equals(curmail)) {
				
				session.setAttribute("emailchnged", new_email);
				dispatcher=request.getRequestDispatcher("ChangeEmailOTP.java");
			
			}
				else{
					
					session.setAttribute("message", "Enter Correct Email");
				}	
			
				
				
			}
			}
		catch(Exception e) {
			e.printStackTrace();				
		}
		
		
		
	}

}
