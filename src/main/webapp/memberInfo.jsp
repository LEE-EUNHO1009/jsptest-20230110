<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h2>회원정보출력</h2>
	<hr>
	<%
		request.setCharacterEncoding("utf-8"); //한글 깨짐 방지
	
		String nickname = request.getParameter("nickname"); //닉네임 받기
		System.out.println(nickname); //오류시 확인하기
		String gender = request.getParameter("gender"); //성별 받기
		String bloodType = request.getParameter("blood"); //혈액형 받기
		String introSelf = request.getParameter("intro"); //자기소개 받기
	
		String[] games = request.getParameterValues("game"); //배열로 게임장르 받기
	%>
	
	
	- 닉네임 : <%= nickname %><br><br>
	- 성 별 : <%= gender %><br><br>
	- 좋아하는 게임장르 : 
		<%
			if(games != null){
				for(int i=0;i<games.length;i++){
					out.println(games[i]);  //콘솔에다 찍는게 System이고 아니면 그냥 out부터
				}
			} else {
				out.println("좋아하는 장르없음");
			}
		%>
	<br><br>
	- 혈액형 : <%= bloodType %><br><br>
	- 자기소개 : <%= introSelf %><br><br>
</body>
</html>