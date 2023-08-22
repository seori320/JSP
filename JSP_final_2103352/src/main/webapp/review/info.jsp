<%@page import="review.addDo"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Info</title>
</head>
<body>

<jsp:useBean id="adao" class="review.addDao" scope="application" />

<%
	int num = Integer.parseInt(request.getParameter("num"));
	addDo ado = adao.getOneAdd(num);
%>

<table width="800" border="1">
		<tr height="50">
			<td align="center" width="150">Title</td>
			<td align="center" width="250"> <%= ado.getTitle() %> </td>
		</tr>
		<tr height="50">
			<td align="center" width="150">내용</td>
			<td align="center" width="250"> <%= ado.getContent() %> </td>
		</tr>
		<tr height="60" align="center">
			<td colspan="2">
				<input type="button" value="수정하기" onclick="location.href='modify.jsp?num=<%=ado.getNum() %>'">
				<input type="button" value="삭제하기" onclick="location.href='delete.jsp?num=<%=ado.getNum() %>'">
				<input type="button" value="목록보기" onclick="location.href='1.jsp'">
			

</table>

</body>
</html>