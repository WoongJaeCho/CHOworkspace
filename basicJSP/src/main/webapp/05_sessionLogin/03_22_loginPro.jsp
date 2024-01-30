<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<script type="text/javascript" src="common.js"></script>
    
<% 
	boolean pass = false;
	String inputId = (String)request.getParameter("inputId");	
	String inputPw = (String)request.getParameter("inputPw");	

	ArrayList idList = (ArrayList)session.getAttribute("idList");
	ArrayList pwList = (ArrayList)session.getAttribute("pwList");
	
	int idx = -1;
	for(int i=0; i<idList.size();i+=1){
		if(idList.get(i).equals(inputId)){
			idx = i;
			break;
		}
	}
	
	if(pwList.get(idx).equals(inputPw)){
		session.setAttribute("log", idx);
		pass = true;
	}
	
	if(pass){ 
		if(inputId.equals("admin")){%>
		<script type="text/javascript">
			printMsg("01_11_adminMain.jsp","로그인 성공")
		</script>
	<% } else {%>
		<script type="text/javascript">
			printMsg("02_main.jsp","로그인 성공")
		</script>
	
	<% }}else{ %>
		<script type="text/javascript">
			printMsg("03_21_loginForm.jsp","로그인 실패")
		</script>
	<% }%>
	