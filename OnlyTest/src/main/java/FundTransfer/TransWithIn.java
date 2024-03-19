package FundTransfer;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.time.format.DateTimeFormatter;
import java.time.LocalDateTime;  

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;



/**
 * Servlet implementation class TransWithIn
 */
@WebServlet("/TransWithIn")
public class TransWithIn extends HttpServlet {
	private static final long serialVersionUID = 1L;
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String my_acc = request.getParameter("myacc");
		String t_d=request.getParameter("td");
		String ben_ifsc= request.getParameter("benifsc");
		String Transamount=request.getParameter("Transamount");
		String ben_accno=request.getParameter("benaccno");
		String ben_name=request.getParameter("benname");
	//	String Trans_amount=request.getParameter("Transamount");
		
		
		
	
		
		HttpSession session =request.getSession();
		RequestDispatcher dispatcher =null ;
		
		
		
		String userid=(String) session.getAttribute("userid");
		int Transferamount= Integer.parseInt(Transamount);
		int balance= (Integer) session.getAttribute("balance");
		 
		
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/bankinfo","root","root");
			PreparedStatement pst=con.prepareStatement("select * from dashboard where userid = ?");
			pst.setString(1, userid);

			ResultSet rs = pst.executeQuery();
			PrintWriter pw=response.getWriter();
			
			
			
			
			
			
			//*TRANSCATION & TRANSACTION HISTORY*
			
			int new_balance= 0;
			if(balance != 0 && Transferamount-balance<=0){
				
				balance= balance- Transferamount;
				new_balance=balance;
				System.out.println("New balance "+ new_balance);
				
				
				pst = con.prepareStatement("update dashboard set balance= " + new_balance + " where userid= ?");
				pst.setString(1, userid);
				pst.executeUpdate();
				System.out.println("Updated Succesfully" );
				dispatcher=request.getRequestDispatcher("SuccessMessage.jsp");
				
         //*RECENT TRANSCATIONS*    
		//*TIME AND DATE*	
				
				String status="Success";
				String reference_id="ICTP002011";
			
				 DateTimeFormatter dtf = DateTimeFormatter.ofPattern("yyyy-MM-dd HH:mm:ss");
				   LocalDateTime now = LocalDateTime.now();
				  // System.out.println(dtf.format(now));
				   String date=dtf.format(now);
				   System.out.println(date);	
				
		
		//*UPDATE RECENT TRANSCATION	   
				
			//	pst = con.prepareStatement("insert into trshst set(Balance,Transfer_annmt,dtsp,user_id,trans_id)  values(new_balance,Transferamount,date,userid,Transferamount);"
				   
				   pst = con.prepareStatement("INSERT INTO transaction (balance,withdrawal,time,userid,reference_id,status)values(?,?,?,?,?,?)");
				   pst.setInt(1,new_balance);
					pst.setInt(2, Transferamount);
					pst.setString(3, date);
					pst.setString(4, userid);
					pst.setString(5, reference_id);
					pst.setString(6, status);
			//	pst = con.prepareStatement("insert into trshst set Balance= " + new_balance + ",Transfer_annmt =" + Transferamount + ",dtsp =" + date + ",user_id =" + userid + ",trans_id =" + Transferamount + " ");
				pst.executeUpdate();
				
				    request.setAttribute("useracc", my_acc);
	             
	                request.setAttribute("benifname", ben_name);
	                
	                request.setAttribute("benififsc", ben_ifsc);
	              
	                request.setAttribute("benaccno", ben_accno);
	              
	                request.setAttribute("trans_ammnt", Transamount);
	                
	                request.setAttribute("transtype", t_d);
				
				
				
			}
			else {
				System.out.println("Insuficient Balance" );
				
				 DateTimeFormatter dtf = DateTimeFormatter.ofPattern("yyyy-MM-dd HH:mm:ss");
				   LocalDateTime now = LocalDateTime.now();
				  // System.out.println(dtf.format(now));
				   String date=dtf.format(now);
				   System.out.println(date);	
				   
				   String status="Failed";
				   String reference_id="ICTF002011223";
				   
				pst = con.prepareStatement("INSERT INTO transaction (balance,withdrawal,time,userid,reference_id,status )values(?,?,?,?,?,?)");
				 pst.setLong(1,new_balance);
					pst.setInt(2, Transferamount);
					pst.setString(3, date);
					pst.setString(4, userid);
					pst.setString(5, reference_id);
					pst.setString(6, status);
					dispatcher=request.getRequestDispatcher("dashboard.jsp");
			}
			dispatcher.forward(request,response);
			
			
				//session.setAttribute("transfer",balance );
				//session.setAttribute("userid", rs.getString("userid"));
				//session.setAttribute("password", rs.getString("upassword"));
				//session.setAttribute("email", rs.getString("uemail"));
			
				
			
		}catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
	
}
}
