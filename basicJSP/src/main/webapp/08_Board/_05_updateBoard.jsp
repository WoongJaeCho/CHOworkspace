<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="./common.jsp" %>
<%
	int idx = Integer.parseInt(request.getParameter("idx"));
%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1> 게시글 수정하기 </h1>
	<form action="_05_updateBoardPro.jsp">
	<table border="1">
	<tr>
	<th>번호</th>
	<td colspan="3"><%= dao.getList().get(idx).getNo() %>
	<input type="hidden" name="idx" value="<%= dao.getList().get(idx).getNo() %>"></td>
	</tr>
	<tr>
	<th>작성자</th>
	<td><%= dao.getList().get(idx).getWriter() %></td>
	<th>작성일</th>
	<td><%= dao.getList().get(idx).getRegDate() %></td>
	</tr>
	<tr>
	<th>제목</th>
	<td colspan="3"><input type="text" name="subject" value=<%= dao.getList().get(idx).getSubject() %>></td>
	</tr>
	<tr>
	<th>내용</th>
	<td colspan="3"><textarea rows="10" cols="22" name="contents"><%= dao.getList().get(idx).getContents() %></textarea></td>
	</tr>
	<tr>
	<td colspan="4"><button>수정하기</button></td>
	</tr>
	</table>
	</form>
</body>
</html>