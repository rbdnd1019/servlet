<%@page import="java.io.FileReader"%>
<%@page import="java.io.BufferedReader"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c"%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	/* file 읽기*/
	BufferedReader br = new BufferedReader(new FileReader("C:\\Users\\Admin\\Desktop\\과일.csv"));
	String s;
	String str =  "";
	 while((s = br.readLine()) != null) {
		str += s;
	} 
	/* int c;
	StringBuffer sb = new StringBuffer();
	while((c =  br.read()) != -1) {
		 System.out.printf("%c %d %n", c, c); 
		sb.append((char)c);
	}
	str = sb.toString();
	System.out.println(str); */
	request.setAttribute("str", str);
	
	String strs = "가, 나, 다, 라";
	request.setAttribute("strs", strs);
%>
<c:forTokens items="${strs}" delims="," var="s">
<h2>${s}</h2>
</c:forTokens>
<table border="1">
	<c:forTokens items="${str}" delims=";" var="v">
		<tr>
		<c:forTokens items="${v}" delims=",">
			<h3>${v}</h3>
		</c:forTokens>
		</tr>
	</c:forTokens>
</table>
</body>
</html>