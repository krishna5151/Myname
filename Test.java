package controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.mysql.jdbc.Statement;

//import com.mysql.jdbc.Statement;


//@WebServlet("/test")
public class Test extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		PrintWriter out=response.getWriter();
		String start_date=request.getParameter("start_date");
		String end_date=request.getParameter("end_date");
//PrintWriter out1=response.getWriter();
try{
	Class.forName("com.mysql.jdbc.Driver");
	Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/accountsproject", "root", "root");
	Statement st = (Statement) con.createStatement();
	String sql="select * from income where date_time between str_to_date('"+start_date+"','dd MM yyyy - HH:ii p') and str_to_date('"+end_date+"', 'dd MM yyyy - HH:ii p')";
	ResultSet rs=st.executeQuery(sql);

			
			
		while(rs.next()){
				//System.out.println("ID="+rs.getInt("id")+",Account Type="+rs.getString("account_type")+",DateTime="+rs.getString("date_time")+",Amount="+rs.getInt("amount")+",Payment="+rs.getString("payment")+",Narration="+rs.getString("narration"));
				//System.out.println("ID==="+rs.getInt("id"));
			}

			
		}catch(Exception e){
			e.getMessage();
		}
		out.println("STRAT DATE:"+start_date);
		out.println("END DATE:"+end_date);
		response.sendRedirect("search.jsp");
	}

}
