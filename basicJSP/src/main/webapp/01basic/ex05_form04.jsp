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
	int num1 = 0;
	int num2 = 0;
	
	if("0" <= request.getParameter("num1") && "9" >= request.getParameter("num1") &&
			"0" <= request.getParameter("num2") && "9" >= request.getParameter("num2")){
		num1 = Integer.parseInt(request.getParameter("num1"));
		num2 = Integer.parseInt(request.getParameter("num2"));
		out.println("num1 = "+num1);
		out.println("num1 = "+num2);
		out.println("sum = "+(num1+num2));
	} else {
		out.println("숫자가 아닌값이 있습니다.");
	}
	
	try{
			
	}
	catch(Exception e){
		
	}
	
%>
</body>
</html>