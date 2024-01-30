<%@page import="java.time.format.DateTimeFormatter"%>
<%@page import="java.time.LocalDate"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<% 
   LocalDate today = LocalDate.now();
	System.out.println(today);
	out.println("<h1>" + today +"</h1>");
	String now = today.format(DateTimeFormatter.ofPattern("yyyy년 MM월 dd일"));
	
%>

</head>
<body>
<h1> ex00_basic.jsp</h1>
<%
	int[] arr = {10,20,30,40,50};
// 스크립트릿 태그 안에서는 자바랑 똑같이 사용 할 수 있다.
	int num = 3+10;
%>
<h1> <%= num %></h1>
<h1> <%= now %></h1>
<a href="./ex01_basic.html"> ex01_basic 이동</a>

<%
	for(int i=0; i<arr.length; i+=1){
		out.println("<h1>"+ arr[i]+"</h1>");
	}
%>
<hr>
<h2> 자바 코드와 html 태그 분리해서 사용 </h2>
<% for(int i=0; i<arr.length; i+=1){ %>
<h1> <%= arr[i] %></h1>
<%} %>
</body>
</html>