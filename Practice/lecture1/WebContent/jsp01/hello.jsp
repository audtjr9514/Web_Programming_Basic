<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>hello JSP 제목!</title>
</head>
<body>
	<h1>hello jsp</h1>
	<%
		out.print("<h1>hello jsp!<h1/>");
	%>
	<%
		for (int i = 0; i < 6; i++) {
			out.print("<div>숫자 :");
	%>
	<%=i%>
	<%
		out.println("</div>");
		}
	%>

</body>
</html>