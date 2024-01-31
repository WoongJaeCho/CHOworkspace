<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="./common.jsp" %>
<%
	int idx = Integer.parseInt(request.getParameter("idx"));

	dao.getList().remove(idx);
	response.sendRedirect("_01_boardList.jsp");
%>