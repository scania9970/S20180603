<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>COTA</title>
<link type="text/css" rel="stylesheet" 
		  href="${pageContext.request.contextPath}/css/header.css" />
<body>
	<div class="header">
		<div class="logo"><a href="main">COTA</a></div>
		<div class="categories">
			<div class="taja">
				<a href="#" class="dropbtn">타자연습&nbsp;&nbsp;&#9662;</a>
				<div class="dropdown-taja">
					<a href="#">낱말연습</a> <a href="/cota/sentence">문장연습</a> <a href="#">긴글연습</a> <a href="/cota/typingGame">타자게임</a>
				</div>
			</div>
			<div class="forum"><a href="#">개발자 포럼</a></div>
		</div>
		<div class="member">
			<a href="#">로그인</a>
			<a href="#">회원가입</a>
		</div>
	</div>
</body>
</html>