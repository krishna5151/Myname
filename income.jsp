<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link href="resources/datetime/dt//bootstrap/css/bootstrap.min.css"
	rel="stylesheet" media="screen">
<link href="resources/datetime/css/bootstrap-datetimepicker.min.css"
	rel="stylesheet" media="screen">
</head>
<body>
	
	<div class="container">
		<form action="income" class="form-horizontal" role="form" method="post">
		<div class="page-header">
			<h2>INCOME TRANSACTION </h2>
			</div>
			
			<div class="form-group">
				<label for="dtp_input1" class="col-md-2 control-label">ACCOUNT
					TYPE:</label>
				<div class="col-md-5">
					<input type="text" class="form-control" name="account_type">
				</div>
			</div>
			<div class="form-group">
				<label for="dtp_input1" class="col-md-2 control-label">DATE
					& TIME:</label>
				<div class="input-group date form_datetime col-md-5"
					data-date="1979-09-16T05:25:07Z"
					data-date-format="dd MM yyyy - HH:ii p"
					data-link-field="dtp_input1">
					<input class="form-control" size="16" type="text" name="date_time"
						readonly> <span class="input-group-addon"><span
						class="glyphicon glyphicon-remove"></span></span> <span
						class="input-group-addon"><span
						class="glyphicon glyphicon-th"></span></span>
				</div>
			</div>
			<div class="form-group">
				<label for="dtp_input1" class="col-md-2 control-label">AMOUNT:</label>
				<div class="col-md-5">
					<input type="text" class="form-control" name="amount">
				</div>
			</div>
			<div class="form-group">
				<label for="" class="col-sm-2 control-label" name="payment">PAYMENT:</label>
				<div class="col-sm-6">
					<label class="radio-inline"> <input type="radio"
						name="payment" value="card">Card
					</label> <label class="radio-inline"> <input type="radio"
						name="payment" value="cash">Cash
					</label>

				</div>
			</div>
			<div class="form-group">
				<label for="dtp_input1" class="col-md-2 control-label">NARRATION:</label>
				<div class="col-md-5">
					<textarea rows="10" cols="20" class="form-control" name="narration"></textarea> 
				</div>
			</div>
			
			<div class="form-group">
				<div class="col-sm-offset-3 col-sm-8">
					<button type="submit" class="btn btn-success">submit</button>
					<button type="reset" class="btn btn-danger">cancel</button>
				</div>
			</div>
			
		</form>
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