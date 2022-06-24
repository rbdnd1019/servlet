<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
	
<%
	int num = Integer.parseInt(request.getParameter("dan"));

%>
<body>
	<table style=width: 800px; margin: 0 auto; border="1">
		<tr>
			<th colspan="2"><%=num + "단 출력" %></th>
		</tr>
<%
	/* out.println("<th><th>" + num + "단 출력</th></tr>"); */
	for(int i = 1; i <= 9; i++){
		/* out.println("<tr>");
		//out.println("<h2>" + num + " * " + i + "=" + num*i + "</h2>");
		out.println("<th>" + num + "*" + i + "</th>");
		out.println("<th>" + num * i + "</th>");
		out.println("</tr>"); */
%>
		<tr>
			<th><%=num + "*" + i %></th>
			<th><%=num * i %></th>
		</tr>

<%
	}

%>
	</table>
</body>
</html>