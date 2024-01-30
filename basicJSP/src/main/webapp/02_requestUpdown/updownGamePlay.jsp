<%@page import="java.util.Random"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	Random rd = new Random();
	int rdNum = 0;
	if(request.getParameter("com") == "" ||request.getParameter("com") == null){
		rdNum = rd.nextInt(100)+1;
	} else {
		rdNum = Integer.parseInt(request.getParameter("com"));
	}
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h4> 치트키 : <%= rdNum %></h4>
	<h1>업다운게임</h1>
	<h3>1~100 입력</h3>
	<form action="updownGamePlayPro.jsp">
	<input type="hidden" id="com" name="com" value=<%= rdNum %> />
	<input type="number" id="user" name="user" required min="1" max="100" />
	<button> 전송 </button>	
	</form>
	
</body>
</html>

