<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<jsp:useBean id="adao" class="review.addDao" scope="application" />

<%
	int num = Integer.parseInt(request.getParameter("num"));
	adao.deleteAdd(num);
	
	response.sendRedirect("1.jsp");
%>

</body>
</html>