<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	Class.forName("oracle.jdbc.driver.OracleDriver");
	Connection conn = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521/xe", "student", "1234");
	PreparedStatement pstmt = conn.prepareStatement("SELECT STUDNO, NAME, DEPTNO FROM STUDENT");
	ResultSet rs = pstmt.executeQuery();
	out.print("<table>");
%>
	<table border = "1" width = "800" cellpadding = "10" style="margin: 0 auto;">
	<tr>
		<th>학번</th>
		<th>이름</th>
		<th>학과번호</th>
		<th>핫하</th>
	</tr>
	
	<c:forEach items="${students}" var="s">
	<tr>
		<td>${s.studno}</td>
		<td>${s.name}</td>
		<td>${s.deptno}</td>
		<td>${s.test}</td>
	<!--<td>${s.getTest()}</td> 이렇게도 가능   -->
	</tr>
	</c:forEach>
	</table>
</body>
</html>