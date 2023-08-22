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

<jsp:useBean id="ado" class="review.addDo">
	<jsp:setProperty name="ado" property="*" />
</jsp:useBean>

<jsp:useBean id="adao" class="review.addDao" scope="application" />
<%
	adao.modifyAdd(ado);
	response.sendRedirect("1.jsp");

%>

</body>
</html>