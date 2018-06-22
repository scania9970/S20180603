<%@page import="com.threejo.cota.model.Member"%>
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
	<div class="header" style="text-decoration:none">
		<div class="logo" style="text-decoration:none">
			<svg class="eclipse" viewBox="0 0 160 160" width="160" height="160"> 
				<circle cx="80" cy="80" r="50" /> 
				<g transform=" matrix(0.866, -0.5, 0.25, 0.433, 80, 80)"> 
				<path d="M 0,70 A 65,70 0 0,0 65,0 5,5 0 0,1 75,0 75,70 0 0,1 0,70Z" fill="#FF3636"> 
				<animateTransform attributeName="transform" type="rotate" from="360 0 0" to="0 0 0" dur="1.9s" repeatCount="indefinite" /> 
				</path> 
				</g>
				<path d="M 50,0 A 50,50 0 0,0 -50,0Z" transform="matrix(0.866, -0.5, 0.5, 0.866, 80, 80)" /> 
			</svg>
			<a href="main" style="text-decoration:none">COTA</a>
		</div>
		<div class="categories">
			<div class="taja">
				<a href="#" class="dropbtn" style="text-decoration:none">&nbsp;&nbsp;타자연습&nbsp;&nbsp;&#9662;</a>
				<div class="dropdown-taja">
					<a href="/cota/word?lang_type=java" style="text-decoration:none">낱말연습</a> <a href="/cota/sentence?lang_type=java" 
					style="text-decoration:none">문장연습</a> <a href="/cota/paragraph-selector" style="text-decoration:none">긴글연습</a>
					 <a href="/cota/typingGame" style="text-decoration:none">타자게임</a>
				</div>
			</div>
			<div class="taja"><a href="/cota/list1" class="forum" style="text-decoration:none">개발자 포럼</a></div>
		</div>
		<% Member member = (Member)session.getAttribute("member"); %>   <%-- <%=member %> 자바 변수를 사용하기위해 다음과 같은 코드를 사욜해 준다. email을 받아오는 경로가 없기때문 생성해줌 --%>
		<%
		 if (session.getAttribute("member") == null) {
		%>
		<div class="member">
			<a class="login" href="loginpage" style="text-decoration:none">로그인</a>
			<a class="join" href="joinpage" style="text-decoration:none">회원가입</a>
		</div>
		<% } else if (session.getAttribute("member") != null) { %>
		<div class="member">
		    <div><img id="image" src="<%=member.getProfile_url()%>"></div>
		    <div id="nicknamearea"><%=member.getNickname()%> 님<br> 환영합니다</div>
		    <a class="mypage" href="myinfo" style="text-decoration:none">마이페이지</a>
		    <a class="logout" href="logout" style="text-decoration:none">로그아웃</a>
		</div>
		<% } %>
	</div>
</body>
</html>