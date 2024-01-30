<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1>회원가입</h1>
<form action="joinPro.jsp" method="post">
Name : <input type="text" id="name" name="name" required /> <br>
ID : <input type="text" id="id" name="id" required /> <br>
PW : <input type="password" id="pw" name="pw" required /> <br>
<button>회원가입</button> <br> <br>
</form>
<button onclick="location.href='index.jsp'">홈으로</button>
</body>
</html>