<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
		String s1 = "hello world";
		String s2 = "JSP!";
	%>
	<table>
		<tr>
			<td>
				<%
					out.println(s1);
				%>
			</td>
			<td>
				<%=
					s1
				%>
			</td>
		</tr>

	</table>

</body>
</html>