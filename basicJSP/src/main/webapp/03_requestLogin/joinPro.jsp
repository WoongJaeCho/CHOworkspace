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
	String name = request.getParameter("name");
	String id = request.getParameter("id");
	String pw = request.getParameter("pw");
%>
<h1><%=name %></h1>
<h1><%=id %></h1>
<h1><%=pw %></h1>

<a href="login.jsp">로그인 하러가기</a>
</body>
</html>