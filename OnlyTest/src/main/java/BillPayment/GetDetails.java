package BillPayment;

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
 * Servlet implementation class GetDetails
 */
@WebServlet("/GetDetails")
public class GetDetails extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		HttpSession session =request.getSession();
		RequestDispatcher dispatcher =null ;
		String userid=(String) session.getAttribute("userid");
		
		
		//*Get details of biller from my db*
		try {
			Class.forName("org.postgresql.Driver");
			Connection con=DriverManager.getConnection("jdbc:postgresql://localhost:5432/bankinfo","postgres","root");
			PreparedStatement pst=con.prepareStatement("select * from billdetails where userid=? ");
			pst.setString(1,userid);

			ResultSet rs = pst.executeQuery();
			if(rs.next()) {
			session.setAttribute("cano",rs.getString("CA_no") );
			session.setAttribute("biler_name",rs.getString("billername") );
			session.setAttribute("pend_amt",rs.getInt("pending_amount") );
			session.setAttribute("DUE",rs.getString("due") );
			session.setAttribute("Bill_Status",rs.getString("Status") );

			System.out.println("YASHHHHHHHH");
					
					
			dispatcher=request.getRequestDispatcher("BillerDashBoard");
			dispatcher.forward(request,response);
				
				
			//	dispatcher=request.getRequestDispatcher("dashboard.jsp");
			//	dispatcher.forward(request,response);
				
			} else {
				dispatcher=request.getRequestDispatcher("jsp files/BillPay.jsp");
				dispatcher.forward(request,response);
			}
		}catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	//	dispatcher.forward(request,response);

	}
	
	}


