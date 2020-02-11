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
		String str = request.getParameter("select");
	%>

	<div class="container">
		<form method="get">
			<div class="form-group">
				<label>select1: </label> <select name="select" class="form-control">
					<option value="one" <%="one".equals(str) ? "selected" : ""%>>one</option>
					<option value="two" <%="two".equals(str) ? "selected" : ""%>>two</option>
					<option value="three" <%="three".equals(str) ? "selected" : ""%>>three</option>
				</select>
			</div>
			<div class="form-group">
				<div class="radio">
					<label><input type="radio" name="cmd2" class="radio" value="one" <%="one".equals(str) ? "checked" : ""%>/>one</label> 
					<label><input type="radio" name="cmd2" class="radio" value="two" <%="two".equals(str) ? "checked" : ""%>/>two
					<label><input type="radio" name="cmd2" class="radio" value="three" <%="three".equals(str) ? "checked" : ""%>>three</input></label> 
				</div>
			</div>
			<div class="form-group">
				<input type="text" name="cmd3" class="form-control"
					value="<%=(str == null) ? "one" : str%>" />
			</div>

			<div class="form-group">
				<button type="submit" class="btn btn-primary" name="cmd" value="확인">확인</button>
			</div>

		</form>
	</div>
</body>
</html>
