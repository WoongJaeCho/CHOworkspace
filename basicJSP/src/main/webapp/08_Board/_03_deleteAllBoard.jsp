<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="./common.jsp" %>
<%
	dao.getList().clear();
	response.sendRedirect("_00_main.jsp");
%>