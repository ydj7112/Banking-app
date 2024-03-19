package BillPayment;

import java.io.IOException;
import java.io.PrintWriter;
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
 * Servlet implementation class pg1otherBank
 */
@WebServlet("/PayBill")
public class PayBill extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		HttpSession session =request.getSession();
		RequestDispatcher dispatcher =null ;
		
		 
		String userid=(String) session.getAttribute("userid");
				 
		
		try {
			Class.forName("org.postgresql.Driver");
			Connection con=DriverManager.getConnection("jdbc:postgresql://localhost:5432/billpay","postgres","root");
			PreparedStatement pst=con.prepareStatement("select * from billpay where userid = ?");
			pst.setString(1, userid);

			ResultSet rs = pst.executeQuery();
			PrintWriter pw=response.getWriter();
			
			String ca_no = rs.getString("uemail");
			session.setAttribute("cano",ca_no );
			session.setAttribute("nicknme", rs.getString("userid"));
			
			
			
				System.out.println("Right OTP for adding beneficary");
				pst=con.prepareStatement("select * from billpay where userid = ?");
				pst.setString(1, userid);
				
				
				System.out.println("Succussfully added biller");

				pst.executeUpdate();
				dispatcher=request.getRequestDispatcher("jsp files/dashboard.jsp");
				
			
			
			dispatcher=request.getRequestDispatcher("jsp files/dashboard.jsp");
			dispatcher.forward(request,response);
			
			
			
            
			dispatcher=request.getRequestDispatcher("jsp files/AddBenifpg3.jsp");
			dispatcher.forward(request,response);
           
	
	}catch (Exception e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}

}
}