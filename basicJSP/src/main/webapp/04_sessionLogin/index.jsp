<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%	
	String log = "";
	String name = (String)session.getAttribute("name");
	ArrayList list = (ArrayList)session.getAttribute("user");
	if(list != null){
		log = name;
	} 
	
%>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1> HOME </h1>

<% if(log == ""){ %>
<a href="join.jsp">회원가입</a>
<a href="login.jsp">로그인</a>
<%} else {%>
<h1><%= log %>님 어서오고</h1>
<a href="logout.jsp">로그아웃</a>
<%} %>
</body>
</html>