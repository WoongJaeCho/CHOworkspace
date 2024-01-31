<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="./common.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<p>전체 게시글 수 : <%= dao.getList().size() %>개</p>
	<table border="1">
	<tr>
	<th>번호</th>
	<th>작성자</th>
	<th>작성일</th>
	<th>제목</th>
	<th>내용</th>
	<th>삭제</th>
	</tr>
	<% for(int i=0;i<dao.getList().size();i+=1){ %>
	<tr>
		<td><%=dao.getList().get(i).getNo() %></td>	
		<td><%=dao.getList().get(i).getWriter() %></td>	
		<td><%=dao.getList().get(i).getRegDate() %></td>	
		<td><a href="_05_updateBoard.jsp?idx=<%=i %>"> <%=dao.getList().get(i).getSubject() %></a></td>	
		<td><%=dao.getList().get(i).getContents() %></td>	
		<td>
		<button onclick="location.href='_06_deleteBoardPro.jsp?idx=<%=i%>'">삭제하기</button>
		</td>
	</tr>		
	<% } %>	
	
	<tr>
	<td colspan="6">
	<button onclick="location.href='_00_main.jsp'">메인화면</button>
	</td>
	</tr>	
	</table>
</body>
</html>