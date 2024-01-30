<%@page import="jakarta.servlet.jsp.tagext.TryCatchFinally"%>
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
	String num1 = request.getParameter("su1");
	String num2 = request.getParameter("su2");
	
	boolean ch1 = true;
	boolean ch2 = true;
	
	/*
	for(int i=0; i<num1.length();i+=1){
		if((char)num1.charAt(i)<'0' || (char)num1.charAt(i)>'9'){
			ch1 = false;
		}
	}
	for(int i=0; i<num2.length();i+=1){
		if(!Character.isDigit(num2.charAt(i))){
			ch2 = false;
		}
	}
	*/
	
	try{
		
	} catch(Exception e){
		
	}
	
	int n1 = 0;
	int n2 = 0;
	
	if(ch1 && ch2){
		n1 = Integer.parseInt(num1);
		n2 = Integer.parseInt(num2);
		
		int maxNum = 0;
		
		if(n1>n2) maxNum = n1;
		else if(n2>n1) maxNum = n2; 
	
		if(maxNum != 0){ %>
			<h1> <%= maxNum %>이 더 큰 수 입니다.</h1>
	<% } else { %>
			<h1> 두 수의 크기가 같습니다.</h1>
	<% }
	} else { %>
			<h1> 숫자가 아닌값이 있습니다.</h1>
	<% } 
%>	
	

</body>
</html>