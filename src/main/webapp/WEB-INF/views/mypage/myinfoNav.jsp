<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<title>마이 페이지 메뉴</title>
</head>
<body>
	<nav class="navbar navbar-default navbar-static-top" role="navigation" style="margin-bottom: 0">
		<jsp:include page="../main/header.jsp" />
		<div class="navbar-default sidebar" role="navigation">
			<div class="sidebar-nav navbar-collapse">
				<ul class="nav" id="side-menu">
					<li><a href="forms.html"><i class="fa fa-edit fa-fw"></i>내 정보 수정<span class="fa arrow"></span></a>
						<ul class="nav nav-second-level">
							<li><a href="myinfo">개인 정보 수정</a></li>
							<li><a href="myinfoPort">포트폴리오 수정</a></li>
							<li><a href="#">비밀번호 변경</a></li>
						</ul></li>
					<li><a href="#"><i class="fa fa-bar-chart-o fa-fw"></i>활동 내역 통계<span class="fa arrow"></span></a>
						<ul class="nav nav-second-level">
							<li><a href="statisticsTyping?email=${member.email}">타자 연습 통계</a></li>
							<li><a href="#">작성한 글 통계</a></li>
						</ul></li>
					<li><a href="#"><i class="fa fa-sign-out fa-fw"></i>회원 탈퇴</a>
					</li>
				</ul>
			</div>
		</div>
	</nav>
</body>
</html>