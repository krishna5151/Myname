<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*"%>
<%@page import="java.util.Date"%>
<%@page import="java.text.SimpleDateFormat"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Search Page</title>

<link href="resources/datetime/dt//bootstrap/css/bootstrap.min.css"
	rel="stylesheet" media="screen">
<link href="resources/datetime/css/bootstrap-datetimepicker.min.css"
	rel="stylesheet" media="screen">

</head>
<body>
	
		<div class="container-fluid ">
		<form action="test" method="post">
			<div class="jumbotron">
				<div class="page-header">
					<center>
						<h2>
							<i>Search Reports</i>
						</h2>
					</center>
				</div>
				<div class="form-group">
					<label for="dtp_input1" class="col-md-2 control-label"><i>START
							DATE:</i></label>

					<div class="input-group date form_datetime col-md-4"
						data-date="1979-09-16T05:25:07Z"
						data-date-format="dd MM yyyy - HH:ii p"
						data-link-field="dtp_input1">
						<input class="form-control" size="16" type="text"
							name="start_date"> <span
							class="input-group-addon"><span
							class="glyphicon glyphicon-remove"></span></span> <span
							class="input-group-addon"><span
							class="glyphicon glyphicon-th"></span></span>
					</div>
				</div>

				<div class="form-group">
					<label for="dtp_input1" class="col-md-2 control-label"><i>END
							DATE:</i></label>
					<div class="input-group date form_datetime col-md-4"
						data-date="1979-09-16T05:25:07Z"
						data-date-format="dd MM yyyy - HH:ii p"
						data-link-field="dtp_input1">
						<input class="form-control" size="16" type="text" name="end_date">
						<span class="input-group-addon"><span
							class="glyphicon glyphicon-remove"></span></span> <span
							class="input-group-addon"><span
							class="glyphicon glyphicon-th"></span></span>
					</div>
				</div>
			</div>
			</form>
			<tr>
				<td style="height: 30px;" colspan="4" align="center"><input
					name="Search" value="Search" style="HEIGHT: 30px"
					style="width: 90px;  border: 1px solid rgb(13, 31, 78);"
					type="submit"></td>
			</tr>
			<!-- <div class="form-group">
				<div class="col-sm-offset-5 col-sm-8">
					<button type="submit" class="btn btn-success" onclick="location.href=' // '"><i>Income Reports</i></button>
					<button type="submit" class="btn btn-primary"><i>Expenditure Reports</i></button>
				</div>
			</div><br><br><br>   -->
			<table class="table table-bordered table-striped table-hover">
				<tr>
					<th>ID</th>
					<th>Account type</th>
					<th>Date Time</th>
					<th>Amount</th>
					<th>Payment</th>
					<th>Narration</th>
				</tr>
				<%
					String start_date = request.getParameter("start_date");
					String end_date = request.getParameter("end_date");
					//PrintWriter out1=response.getWriter();
					try {
						Class.forName("com.mysql.jdbc.Driver");
						Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/accountsproject", "root",
								"root");
						Statement st = (Statement) con.createStatement();
						String sql = "select * from income ";
						ResultSet rs = st.executeQuery(sql);
				%>
				<%
					while (rs.next()) {
				%>
			
				<tr>
					<td><%=rs.getInt(1)%></td>
					<td><%=rs.getString(2)%></td>
					<td><%=rs.getString(3)%></td>
					<td><%=rs.getInt(4)%></td>
					<td><%=rs.getString(5)%></td>
					<td><%=rs.getString(6)%></td>
				</tr>
				<%
					}
				%>
				<%
					} catch (Exception e) {
						e.printStackTrace();
					}
				%>
			</table>
			
		</div>
	
	
	<script type="text/javascript"
				src="resources/datetime/jquery/jquery-1.8.3.min.js" charset="UTF-8"></script>
			<script type="text/javascript"
				src="resources/datetime/dt/bootstrap/js/bootstrap.min.js"></script>
			<script type="text/javascript"
				src="resources/datetime/js/bootstrap-datetimepicker.js"
				charset="UTF-8"></script>
			<script type="text/javascript"
				src="resources/datetime/js/locales/bootstrap-datetimepicker.fr.js"
				charset="UTF-8"></script>
			<script type="text/javascript" src="resources/datetime/datescript.js"></script>
</body>
</html>