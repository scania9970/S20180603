<%@page import="com.threejo.cota.model.Member"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<title>로그인 체크</title>
</head>
<body>
	<%
		Member member = (Member)session.getAttribute("member");

		if (member.getEmail() == null || member.getEmail().equals("")) {
			response.sendRedirect("loginpage");
		}
	%>
</body>
</html>