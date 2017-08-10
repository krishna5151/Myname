<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.Connection"%>
<%@ page import="java.sql.DriverManager"%>
<%@ page import="java.sql.ResultSet"%>

<%@ page import="java.sql.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" href="resources/bootstrap/css/bootstrap.min.css">
<link rel="stylesheet" href="resources/bootstrap/js/bootstrap.min.js">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
<title>Report Page</title>
</head>
<body background="resources/bootstrap/image/Gray.jpg">
	<div class="container text-center">
		<div class="page-header">
			<h1>
				<i>Reports Pages</i>
			</h1>
		</div>
	</div>
	<div class="container text-center">
		<h2>Income Reports</h2>
		<br>
		<table class="table table-bordered table-hover table-responsive">
			<thead>
				<tr>
					<th class="text-center">ID</th>
					<th class="text-center">ACCOUNT TYPE</th>
					<th class="text-center">DATE & TIME</th>
					<th class="text-center">AMOUNT</th>
					<th class="text-center">PAYMENT</th>
					<th class="text-center">NARRATION</th>
					
				</tr>
			</thead>
			<%
				try {
					Class.forName("com.mysql.jdbc.Driver").newInstance();
					Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/accountsproject", "root", "root");
					String sql = "select * from income";
					Statement st = (Statement) con.createStatement();
					ResultSet rs = st.executeQuery(sql);
					while (rs.next()) {
			%>
			<tr>
				<td><%=rs.getInt("id")%></td>
				<td><%=rs.getString("account_type")%></td>
				<td><%=rs.getString("date_time")%></td>
				<td><%=rs.getString("amount")%></td>
				<td><%=rs.getString("payment")%></td>
				<td><%=rs.getString("narration")%></td>
				
			</tr>
			<%
				}
				} catch (Exception e) {
					e.printStackTrace();
				}
			%>
			<%
			try
			{
			Class.forName("com.mysql.jdbc.Driver").newInstance();
			Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/accountsproject","root","root"); 
			Statement st=con.createStatement();
			String strQuery = "SELECT SUM(amount) FROM income";
			ResultSet rs = st.executeQuery(strQuery);
			String Countamount="";
			while(rs.next()){
				//Countamount = rs.getString(1);
			%>
			<tr>
				<th colspan="3" >Total :</th><td><%=rs.getString(1) %></td>
				
			</tr>
			<%
			}
			}
			catch (Exception e){
			e.printStackTrace();
			}
			%>
		</table>
	</div>
	<br>
	<div class="container text-center">
		<h2>Expenditure Reports</h2>
		<br>
		<table class="table table-bordered table-hover table-responsive">
			<thead>
				<tr>
					<th class="text-center">ID</th>
					<th class="text-center">ACCOUNT TYPE</th>
					<th class="text-center">DATE & TIME</th>
					<th class="text-center">AMOUNT</th>
					<th class="text-center">PAYMENT</th>
					<th class="text-center">NARRATION</th>
					
				</tr>
			</thead>
			<%
				try {
					Class.forName("com.mysql.jdbc.Driver").newInstance();
					Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/accountsproject", "root", "root");
					String sql = "select * from expenditure";
					Statement st = (Statement) con.createStatement();
					ResultSet rs = st.executeQuery(sql);
					while (rs.next()) {
			%>
			<tr>
				<td><%=rs.getInt("id")%></td>
				<td><%=rs.getString("account_type")%></td>
				<td><%=rs.getString("date")%></td>
				<td><%=rs.getString("amount")%></td>
				<td><%=rs.getString("payment")%></td>
				<td><%=rs.getString("narration")%></td>
			</tr>
			<%
				}
				} catch (Exception e) {
					e.printStackTrace();
				}
			 %>
			<%
			try
			{
			Class.forName("com.mysql.jdbc.Driver").newInstance();
			Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/accountsproject","root","root"); 
			Statement st=con.createStatement();
			String strQuery = "SELECT SUM(amount) FROM expenditure";
			ResultSet rs = st.executeQuery(strQuery);
			String Countamount="";
			while(rs.next()){
				//Countamount = rs.getString(1);
			%>
			<tr>
				<th colspan="3" >Total :</th><td><%=rs.getString(1) %></td>
				
			</tr>
			<%
			}
			}
			catch (Exception e){
			e.printStackTrace();
			}
			%>
		</table>
	</div>
	<script src="resources/index1/js/total.js"></script>

</body>
</html>