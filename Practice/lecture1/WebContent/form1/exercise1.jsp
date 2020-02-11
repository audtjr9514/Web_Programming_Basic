<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.util.Date, java.text.SimpleDateFormat"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<style>
input.form-control {
	width: 200px;
}

select.form-control {
	width: 70px;
}

table.table {
	width: 500px;
}

thead tr {
	background-color: #eee;
}
</style>
</head>
<body>
	<%
		String str = request.getParameter("number");
		int number = (str == null) ? 0 : Integer.parseInt(str);
		if("++".equals(request.getParameter("cmd")))
			number++;
		else if("--".equals(request.getParameter("cmd")))
			number--;
		
	%>

	<div class="container">
		<form method="get">
			<h1>select 01</h1>

			<div class="form-group">
				<label>number: </label> <input type="text" name="number" class="form-control" value="<%=number%>" />
			</div>

			<div class="form-group">
				<button type="submit" class="btn btn-primary" name="cmd" value="++">++</button>
				<button type="submit" class="btn btn-primary" name="cmd" value="--">--</button>
			</div>
		</form>
	</div>
</body>
</html>
