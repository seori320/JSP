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
	request.setCharacterEncoding("utf-8");
%>

<jsp:useBean id="ado" class="login.signDo">
	<jsp:setProperty name="ado" property="*" />
</jsp:useBean>

<jsp:useBean id="adao" class="login.signDao" scope="application" />

<!-- <a href="main.jsp"></a> -->

</body>
</html>