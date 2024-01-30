<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1>로그인</h1>
<form action="loginPro.jsp" method="post">
ID : <input type="text" id="id" name="id" required /> <br>
PW : <input type="password" id="password" name="password" required /> <br>
<button>로그인</button> <br> <br>
</form>
<button onclick="location.href='index.jsp'">홈으로</button>
</body>
</html>
