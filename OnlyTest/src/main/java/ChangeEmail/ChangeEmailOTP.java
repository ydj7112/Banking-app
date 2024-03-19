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
 * Servlet implementation class login
 */
@WebServlet("/changeemailotp")
public class ChangeEmailOTP extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String curr_email= request.getParameter("curremail");
		String new_email=request.getParameter("newemail");
		
		
		HttpSession session =request.getSession();
		RequestDispatcher dispatcher =null ;
	
		String userid=(String) session.getAttribute("userid");
		String confirm_otp= request.getParameter("enteredotp");
		String user_email=(String) session.getAttribute("email");
		
		System.out.println(userid);
		System.out.println(confirm_otp);
		System.out.println(user_email);
		System.out.println(curr_email);
		System.out.println(new_email);
		
		
		try {
			Class.forName("org.postgresql.Driver");
			Connection con=DriverManager.getConnection("jdbc:postgresql://localhost:5432/bankinfo","postgres","root");
			PreparedStatement pst=con.prepareStatement("select  uemail from users where userid = ?");
			pst.setString(1, userid);
			ResultSet rs = pst.executeQuery();
			
			System.out.println(new_email);
			String myotp="1111";
			
			
			if(rs.next()) {
				String curmail = rs.getString("uemail");
				System.out.println("curmail"+curmail);
			
			if(curr_email.equals(curmail) && myotp.equals(confirm_otp) ) {
				
				System.out.println("Right OTPppp");
				pst = con.prepareStatement("update users set uemail= ? where userid=?");
				pst.setString(1, new_email);
				pst.setString(2, userid);
				pst.executeUpdate();
				
				dispatcher=request.getRequestDispatcher("jsp files/MailSucess.jsp");
				dispatcher.forward(request,response);
				
				
			}else {
				request.setAttribute("status", "failed");
				dispatcher =request.getRequestDispatcher("jsp files/MainDashBoard.jsp");
				session.setAttribute("message","Wrong OTP, Enter again");
				System.out.println("Wrong OTPpppppp");
				System.out.println(myotp);
				System.out.println(confirm_otp);
				dispatcher.forward(request,response);
			}
			
			
			}
		
		}catch(Exception e) {
				e.printStackTrace();				
			}
			 
		
		
		
	}
}


