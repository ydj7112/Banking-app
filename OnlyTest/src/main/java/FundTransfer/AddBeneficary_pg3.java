package FundTransfer;

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
@WebServlet("/AddBeneficary_pg3")
public class AddBeneficary_pg3 extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		HttpSession session =request.getSession();
		RequestDispatcher dispatcher =null ;
		
		String myotp="1111";
		String confirm_otp= request.getParameter("enteredotp");
		
		String userid=(String) session.getAttribute("userid");
		
		
		String benif_accno = (String) session.getAttribute("benifaccno");
		String ben_acctype= (String) session.getAttribute("benacctype");
		String ben_ifsc=(String)session.getAttribute("benifsc");
		String ben_name=(String)session.getAttribute("benname");
		String ben_email=(String)session.getAttribute("benemail");
		
		
		try {
			Class.forName("org.postgresql.Driver");
			Connection con=DriverManager.getConnection("jdbc:postgresql://localhost:5432/bankinfo","postgres","root");
			PreparedStatement pst=con.prepareStatement("select * from dashboard where userid = ?");
			pst.setString(1, userid);
			

			ResultSet rs = pst.executeQuery();
			PrintWriter pw=response.getWriter();
			
			if(myotp.equals(confirm_otp)) {
				
				System.out.println("Right OTP for adding beneficary");
				pst=con.prepareStatement("insert into Benefi_details (userid,accnoBenefc,acctypeBenefc,ifscBenefc,nameBenefc,emailBenefc)values(?,?,?,?,?,?)");
				pst.setString(1, userid);
				pst.setString(2, benif_accno);
				pst.setString(3, ben_acctype);
				pst.setString(4, ben_ifsc);
				pst.setString(5, ben_name);
				pst.setString(6, ben_email);
				
				System.out.println("Succussfully updated beneficary");

				pst.executeUpdate();
				dispatcher=request.getRequestDispatcher("jsp files/AddBenifpg4.jsp");
				
			}else {
				request.setAttribute("status", "failed");
				dispatcher =request.getRequestDispatcher("jsp files/AddBenifpg3.jsp");
				session.setAttribute("message","Wrong OTP, Enter again");
				System.out.println("Wrong OTP");
				System.out.println(myotp);
				System.out.println(confirm_otp);
			}
			
			dispatcher.forward(request,response);
			
			 
		
	
	}catch (Exception e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}

}
}
	
		
		
		
		
	
