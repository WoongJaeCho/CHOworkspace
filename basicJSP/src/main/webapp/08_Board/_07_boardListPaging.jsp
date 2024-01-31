<%@page import="java.util.function.Function"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="./common.jsp" %>
<%
	int count = dao.getList().size(); // 전체 게시글 수
	int pageSize = 5; // 한 페이지에 보여줄 게시글 수
	int curPageNum = 1; // 현재 페이지 번호
	int pageCount = count%pageSize == 0? count/pageSize:count/pageSize+1; // 전체 페이지 개수
	int startRow = (curPageNum-1) * pageSize; // 현재 페이지의 게시글 시작 번호
	int endRow = startRow+pageSize < count? startRow+pageSize:count; // 현재 페이지의 게시글 마지막 번호
%>
<%	
	//curPageNum+=1;
	//startRow = (curPageNum-1) * pageSize; 
%>
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
	<% for(int i=startRow; i<endRow; i+=1){ %>
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
	<%for(int i=0; i< pageCount ;i+=1 ){ %>
		[<a href="#"><%=i %></a>]
	<%} %>
</body>
</html>
