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
@WebServlet("/AddBeneficary_pg2")
public class AddBeneficary_pg2 extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
		
		HttpSession session =request.getSession();
		RequestDispatcher dispatcher =null ;
		
		
		
		String userid=(String) session.getAttribute("userid");
				 
		
		try {
			Class.forName("org.postgresql.Driver");
			Connection con=DriverManager.getConnection("jdbc:postgresql://localhost:5432/bankinfo","postgres","root");
			PreparedStatement pst=con.prepareStatement("select * from dashboard where userid = ?");
			pst.setString(1, userid);

			ResultSet rs = pst.executeQuery();
			PrintWriter pw=response.getWriter();
            
			dispatcher=request.getRequestDispatcher("jsp files/AddBenifpg3.jsp");
			dispatcher.forward(request,response);
           
	
	}catch (Exception e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}

}
}