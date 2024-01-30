<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%	
	// session 값 삭제 2가지 
	
	// 현재 세션 객체는 유효하고 값만 삭제
	session.removeAttribute("name");
	session.removeAttribute("user"); // 값만 삭제
	
	// 세션 객체를 무효화 시킴
	session.invalidate(); // 전체 삭제 세션 자체를 삭제
%>

<script type="text/javascript">
alert("로그아웃 성공");
location.href="index.jsp";
</script>