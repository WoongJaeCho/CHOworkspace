<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% 
int rdNum = Integer.parseInt(request.getParameter("com")); 
int user = Integer.parseInt(request.getParameter("user"));
String msg = "";
String url = "updownGamePlay.jsp?com="+rdNum;
String back = "뒤로가기";
if(rdNum>user){
	msg = "up!";
} else if(rdNum<user){
	msg = "down!";
} else {
	msg = "정답입니다!";
	url = "index.jsp";
	back = "처음으로";
}
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h4> 입력 값 : <%= user %></h4>
	<h4> <%= msg %></h4>
	<input type="hidden" id="com" name="com" value=<%= rdNum %> />
	<a href=<%= url %>> <%= back %></a>
</body>
</html>
<script>
//document.querySelector("a").addEventListener("click", goNextPage);

function goNextPage() {
	let name = document.querySelector("#com").name;
	let value = document.querySelector("#com").value;
	let url = `updownGamePlay.jsp?${name}=${value}`;
	//location.href = `updownGamePlay.jsp?${name}=${value}`;
	//location.href = 'updownGamePlay.jsp?'+name+'='+value;
	location.href = url;
}

</script>