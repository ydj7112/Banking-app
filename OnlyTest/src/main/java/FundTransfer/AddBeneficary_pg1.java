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
@WebServlet("/AddBeneficary_pg1")
public class AddBeneficary_pg1 extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String benfic_accno = request.getParameter("benacc");
		String ben_acctype=request.getParameter("acctype");
		String ifsc_benif= request.getParameter("benifsc");
		String benfic_name=request.getParameter("benname");
		String benfic_email=request.getParameter("benemail");
		
		
	//	System.out.println(my_acc);
	//	System.out.println(t_d);
	//	System.out.println(ben_ifsc);
	//	System.out.println(Transamount);
	//	System.out.println(ben_accno);
	//	System.out.println(ben_name);
		
		
		
		
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
            
			session.setAttribute("benifaccno", benfic_accno);
            
			session.setAttribute("benacctype", ben_acctype);
          
			session.setAttribute("benifsc", ifsc_benif);
          
			session.setAttribute("benname", benfic_name);
			
			session.setAttribute("benemail", benfic_email);
            
      //     System.out.println(benfic_accno);	
      //     System.out.println(ben_acctype);
      //     System.out.println(ifsc_benif);	
      //     System.out.println(benfic_name);
      //     System.out.println(benfic_email);
			
			dispatcher=request.getRequestDispatcher("jsp files/AddBenifpg2.jsp");
			dispatcher.forward(request,response);
           
	
	}catch (Exception e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}

}
}
	
		
		
		
		
	
