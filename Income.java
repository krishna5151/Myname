package controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

//@WebServlet("/income")
public class Income extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		PrintWriter out=resp.getWriter();
		String account_type=req.getParameter("account_type");
		String date_time=req.getParameter("date_time");
		int amount=Integer.parseInt(req.getParameter("amount"));
		String payment=req.getParameter("payment");
		String narration=req.getParameter("narration");
		
		try{
			
			Class.forName("com.mysql.jdbc.Driver");
			Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/accountsproject", "root", "root");
			PreparedStatement pr=con.prepareStatement("insert into income (account_type,date_time,amount,payment,narration) values(?,?,?,?,?)");
			pr.setString(1, account_type);
			pr.setString(2, date_time);
			pr.setInt(3, amount);
			pr.setString(4, payment);
			pr.setString(5, narration);
			
			int i=pr.executeUpdate();
			if(i!=0){
				System.out.println("Data Inserted success...");
			}else{
				System.out.println("Data Inserted failure");
			}
		
			
		}catch(Exception e){
			e.getMessage();
		}
		out.println("success");
		
		resp.sendRedirect("report.jsp");
	}
	
}
