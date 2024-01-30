<%@page import="java.util.ArrayList"%>
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
	String id = request.getParameter("id");
	String pw = request.getParameter("pw");
	String msg = "";
	boolean pass = false;
	ArrayList user = (ArrayList)session.getAttribute("user");
	if(user.get(0).equals(id) && user.get(1).equals(pw)){
		msg = "로그인 성공";
		response.sendRedirect("index.jsp");
	} else {
		msg = "로그인 실패";
	}
%>
</body>
</html>
<script type="text/javascript">
function login(){
	alert("로그인 성공");
	location.href="index.jsp";
}
function unlogin(){
	alert("로그인 실패");
	//location.href="index.jsp";
}
</script>