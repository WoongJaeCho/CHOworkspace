<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="./common.jsp" %>
<%
	int idx = Integer.parseInt(request.getParameter("idx"))-1;
	String subject = request.getParameter("subject");
	String contents = request.getParameter("contents");
	
	dao.getList().get(idx).setSubject(subject);
	dao.getList().get(idx).setContents(contents);
	response.sendRedirect("_01_boardList.jsp");
%>