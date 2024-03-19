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
@WebServlet("/EnteredDetails")
public class EnteredDetails extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String CAno= request.getParameter("CANO");
		String nk_name=request.getParameter("Nkname");
		
		HttpSession session =request.getSession();
		RequestDispatcher dispatcher =null ;
		
		String userid=(String) session.getAttribute("userid");
				 
		
		try {
					
			Class.forName("org.postgresql.Driver");
			Connection con=DriverManager.getConnection("jdbc:postgresql://localhost:5432/billpay","postgres","root");
					PreparedStatement pst=con.prepareStatement("select * from adani_basicdetails where CA_no = ? ");//Checking if user Exists
					pst.setString(1, CAno);

				ResultSet rs = pst.executeQuery();
			
				if(rs.next()) {
				System.out.println("Biller is present");
				System.out.println(CAno);
				session.setAttribute("Phonenumber",rs.getString("phoneno") );
				
				
				con=DriverManager.getConnection("jdbc:postgresql://localhost:5432/billpay","postgres","root");//checked adani_billdetails
				pst=con.prepareStatement("select * from adani_billdetails where CA_no = ? ");
				pst.setString(1, CAno);
				rs = pst.executeQuery();
				
				if(rs.next()) {
				String name_biller = rs.getString("billername");
				int amt_pending = rs.getInt("pending_amount");
				String due_date = rs.getString("due");
				String curr_status = rs.getString("Status");
			
				System.out.println("Successfully checked adani_billdetails");
				
				
				//inserted into billdetails(my db)
				con=DriverManager.getConnection("jdbc:postgresql://localhost:5432/bankinfo","postgres","root");
				pst=con.prepareStatement("insert into billdetails (userid, CA_no, billername, pending_amount, due, Status)values(?,?,?,?,?,?)");
				pst.setString(1, userid);
				pst.setString(2, CAno);
				pst.setString(3, name_biller);
				pst.setInt(4, amt_pending);
				pst.setString(5, due_date);
				pst.setString(6, curr_status);
				pst.executeUpdate();
				
				System.out.println("Successfully inserted into billdetails");
				
				
				dispatcher=request.getRequestDispatcher("jsp files/Successfullpg.jsp");
				dispatcher.forward(request,response);
				
			}
				}	
				else {
					request.setAttribute("status", "failed");
					session.setAttribute("message","Entered CA Number doesnt exists");
					System.out.println("No biller found");
					System.out.println("CA number is" +CAno);
					dispatcher=request.getRequestDispatcher("../jsp files/AddBiller-2.jsp");
					dispatcher.forward(request,response);
				}
				
				
			
		//	dispatcher=request.getRequestDispatcher("dashboard.jsp");
		//	dispatcher.forward(request,response);
			
	
	}catch (Exception e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}

}
}