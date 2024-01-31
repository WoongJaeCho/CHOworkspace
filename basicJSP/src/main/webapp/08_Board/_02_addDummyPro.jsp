<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="./common.jsp" %>
<%
	int idx = dao.getList().size();
	for(int i=idx+1 ;i<idx+11;i+=1){
		dao.addBoard(i);
	}
	response.sendRedirect("_00_main.jsp");
%>>    
