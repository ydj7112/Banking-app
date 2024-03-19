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
@WebServlet("/SameBank_pg1")
public class SameBank_pg1 extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	//	String my_acc = request.getParameter("myacc");
		String t_d=request.getParameter("td");
		String ben_ifsc= request.getParameter("benifsc");
		String Transamount=request.getParameter("Transamount");
		String ben_accno=request.getParameter("benaccno");
		String ben_name=request.getParameter("benname");
		
		
	//	System.out.println(my_acc);
	//	System.out.println(t_d);
	//	System.out.println(ben_ifsc);
		System.out.println(Transamount);
	//	System.out.println(ben_accno);
	//	System.out.println(ben_name);
		
		HttpSession session =request.getSession();
		RequestDispatcher dispatcher =null ;
		
		
		
		String userid=(String) session.getAttribute("userid");
		int Transferamount= Integer.parseInt(Transamount);
		//int balance= (Integer) session.getAttribute("balance");
		 
		
		try {
			Class.forName("org.postgresql.Driver");
			Connection con=DriverManager.getConnection("jdbc:postgresql://localhost:5432/bankinfo","postgres","root");
			PreparedStatement pst=con.prepareStatement("select * from benefi_details where userid = ?");
			pst.setString(1, userid);
			ResultSet rs = pst.executeQuery();
			
			if(rs.next()) {
		//	session.setAttribute("benename", rs.getString("nameBenefc"));
		//	session.setAttribute("beneaccno", rs.getString("accnoBenefc"));
		//	session.setAttribute("beneifsc", rs.getString("ifscBenefc"));
			
	//		  System.out.println(rs.getString("nameBenefc"));	
	//          System.out.println(rs.getString("accnoBenefc"));
	//          System.out.println(rs.getString("ifscBenefc"));	
			
			
			pst=con.prepareStatement("select * from dashboard where userid = ?");
			pst.setString(1, userid);

			pst.executeQuery();
		
			
	//		request.setAttribute("useracc", "my_acc");
            
			session.setAttribute("benifname", ben_name);
            
			session.setAttribute("benififsc", ben_ifsc);
          
			session.setAttribute("benaccno", ben_accno);
          
			session.setAttribute("trans_ammnt", Transferamount);
            
			session.setAttribute("transtype", t_d);
		
           System.out.println(ben_name);	
           System.out.println(ben_ifsc);
           System.out.println(ben_accno);	
           System.out.println(Transamount);
           System.out.println(t_d);	
           dispatcher=request.getRequestDispatcher("jsp files/TransferToSame2.jsp");
           dispatcher.forward(request,response);
          
			}      
           
	}catch (Exception e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}

}
}
	
		
		
		
		
	
