<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
		int a=10;
		System.out.println(a);
	
	%>
	<h1>안녕!!!</h1>
	<a href="test/test.jsp">test.jsp로 가기</a>
	<img src="img/yjs.png"><br>
	<img src="Save.png"><br>
	<img src="./img/yjs.png"> <!-- 그냥/img는 안뜸 -->
</body>
</html>