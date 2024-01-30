<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String name = request.getParameter("name");
	String id = request.getParameter("id");
	String pw = request.getParameter("pw");
	
	session.setAttribute("name", name);
	ArrayList list = new ArrayList();
	list.add(id);
	list.add(pw);
	session.setAttribute("user", list);
	//session.setMaxInactiveInterval(5); // 5초만 세션 유지
	response.sendRedirect("login.jsp");
%>
