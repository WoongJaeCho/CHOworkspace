<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="./common.jsp" %>
<%
	int idx = dao.getList().size()+1;
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>게시글 추가하기</h1>
	<form action="_04_addBoardPro.jsp">
	<table border="1">
	<tr>
	<th>번호</th>
	<td><%=idx %></td>
	</tr>
	<tr>
	<th>작성자</th>
	<td><input type="text" name="writer"></td>
	</tr>
	<tr>
	<th>제목</th>
	<td><input type="text" name="subject"></td>
	</tr>
	<tr>
	<th>내용</th>
	<td><textarea rows="10" cols="22" name="contents"></textarea></td>
	</tr>
	<tr>
	<td colspan="2"><button>작성완료</button></td>
	</tr>
	</table>
	</form>
</body>
</html>