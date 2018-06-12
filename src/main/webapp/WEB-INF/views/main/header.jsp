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
		<div class="logo">
			<svg class="eclipse" viewBox="0 0 160 160" width="160" height="160"> 
				<circle cx="80" cy="80" r="50" /> 
				<g transform=" matrix(0.866, -0.5, 0.25, 0.433, 80, 80)"> 
				<path d="M 0,70 A 65,70 0 0,0 65,0 5,5 0 0,1 75,0 75,70 0 0,1 0,70Z" fill="#FF3636"> 
				<animateTransform attributeName="transform" type="rotate" from="360 0 0" to="0 0 0" dur="1.9s" repeatCount="indefinite" /> 
				</path> 
				</g>
				<path d="M 50,0 A 50,50 0 0,0 -50,0Z" transform="matrix(0.866, -0.5, 0.5, 0.866, 80, 80)" /> 
			</svg>
			<a href="main">COTA</a>
		</div>
		<div class="categories">
			<div class="taja">
				<a href="#" class="dropbtn"><i class="taja"></i>타자연습&nbsp;&nbsp;&#9662;</a>
				<div class="dropdown-taja">
					<a href="/cota/word?lang_type=java">낱말연습</a> <a href="/cota/sentence?lang_type=java">문장연습</a> <a href="/cota/paragraph-selector">긴글연습</a> <a href="/cota/typingGame">타자게임</a>
				</div>
			</div>
			<div class="forum"><a href="/cota/list">개발자 포럼</a></div>
		</div>
		<div class="member">
			<a href="login">로그인</a>
			<a href="joinpage">회원가입</a>
		</div>
	</div>
</body>
</html>