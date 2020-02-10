<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<style>
table {
	border-collapse: collapse;
}

td {
	padding: 5px;
	border: solid 1px gray;
}
</style>
<title>Insert title here</title>
</head>
<body>
	<table>
		<%
			for (int i = 1; i < 10; i++) {
				out.println("<tr>");
				for (int j = 2; j < 10; j++) {
					out.println("<td>");
					out.println(j + " x " + i + " = " + i * j);
					out.println("</td>");
				}
				out.println("</tr>");
			}
		%>
	</table>

</body>
</html>