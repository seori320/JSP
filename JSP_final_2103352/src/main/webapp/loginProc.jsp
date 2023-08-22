<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	
<jsp:useBean id="login" class="login.login">
	<jsp:setProperty name="login" property="*" />
</jsp:useBean>

<%
	if(login.CheckUser()) {
		out.println("로그인 성공!");
	}
	else{
		out.println("로그인 실패!");
	}

%>

<%
	String id = request.getParameter("id");
	String password = request.getParameter("password");
	String save = request.getParameter("save");
	
	if( save != null ) { // save 체크박스가 선택외었으면
		//1. 쿠키 객체 생성
		Cookie cookie = new Cookie("id", id);
		//2. 쿠키 유표기간 설정
		cookie.setMaxAge(60*1); //1분
		//3. 쿠키를 클라이언트에 전송
		response.addCookie(cookie);
		
		out.println("쿠키 생성 완료");
	}
	
	session.setAttribute("id", id);
	session.setAttribute("password", password);
	
	response.sendRedirect("main.jsp");
%>



</body>
</html>