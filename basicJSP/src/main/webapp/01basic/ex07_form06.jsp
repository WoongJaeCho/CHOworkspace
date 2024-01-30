<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<a href="ex04_form03.jsp"></a>
	<button onclick="movePage()"> form 4로 이동</button>
	
	<form action="ex08_form06pro.jsp"> <!-- action생략은 본인 페이지 / method="get" 디플트 -->
	<input type="number" id="num" name="num" />
	<input type="button" id="btn1" value="전송1" />
	<input type="submit" value="버튼1" />
	<button> 버튼2 </button> <!-- form 태그 안에 있는 버튼은 <input type="submit" /> 와 동일-->
	</form>
	<button> 전송2 </button> <!-- form 태그 밖에 있는 버튼은 <input type="button" /> 와 동일-->
</body>
</html>
<script>
document.querySelector("#btn1").addEventLisner("click",goNextPage);

function movePage() {
	location.href="ex04_form03.jsp"
}

function goNextPage() {
	let value = document.qureySelector("#num").value;
	location.href="ex08_form06pro.jsp?num="+value;
}
</script>