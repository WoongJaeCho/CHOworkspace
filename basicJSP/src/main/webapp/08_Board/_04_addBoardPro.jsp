<%@page import="Board.BoardVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="./common.jsp" %>
<%
	int idx = dao.getList().size()+1;
	
	String writer = request.getParameter("writer");
	String subject = request.getParameter("subject");
	String contents = request.getParameter("contents");
	
	dao.addBoard(idx, writer, subject, contents);
	response.sendRedirect("_01_boardList.jsp");
%>