<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description" content="">
<meta name="author" content="">

<title>마이 페이지</title>

<!-- Bootstrap Core CSS -->
<link href="${pageContext.request.contextPath}/mypage/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">

<!-- MetisMenu CSS -->
<link href="${pageContext.request.contextPath}/mypage/vendor/metisMenu/metisMenu.min.css" rel="stylesheet">

<!-- Custom CSS -->
<link href="${pageContext.request.contextPath}/mypage/dist/css/sb-admin-2.css" rel="stylesheet">

<!-- Morris Charts CSS -->
<link href="${pageContext.request.contextPath}/mypage/vendor/morrisjs/morris.css" rel="stylesheet">

<!-- Custom Fonts -->
<link href="${pageContext.request.contextPath}/mypage/vendor/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">

<!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
<!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
        <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->
    
<style type="text/css">
	#output {
		border: 1px solid #CCCCCC;
		width: 150px;
		margin-bottom: 10px;
	}
</style>

<script type="text/javascript">
	var loadFile = function(event) {
		var output = document.getElementById('output');
		output.src = URL.createObjectURL(event.target.files[0]);
	};
</script>
</head>
<body>

	<div id="wrapper">
	
		<!-- Navigation -->
		<nav class="navbar navbar-default navbar-static-top" role="navigation" style="margin-bottom: 0">
			<jsp:include page="../main/header.jsp"/>
			<div class="navbar-default sidebar" role="navigation">
				<div class="sidebar-nav navbar-collapse">
					<ul class="nav" id="side-menu">
						<li>
							<a href="forms.html"><i class="fa fa-edit fa-fw"></i>내 정보 수정<span class="fa arrow"></span></a>
							<ul class="nav nav-second-level">
								<li><a href="myinfo?email=${member.email}">개인 정보 수정</a></li>
								<li><a href="#">포트폴리오 수정</a></li>
								<li><a href="#">비밀번호 변경</a></li>
							</ul>
						</li>
						<li>
							<a href="#"><i class="fa fa-bar-chart-o fa-fw"></i>활동 내역 통계<span class="fa arrow"></span></a>
							<ul class="nav nav-second-level">
								<li><a href="statisticsTyping?email=${member.email}">타자 연습 통계</a></li>
								<li><a href="#">작성한 글 통계</a></li>
							</ul>
						</li>
						<li>
							<a href="#"><i class="fa fa-sign-out fa-fw"></i>회원 탈퇴</a>
						</li>
					</ul>
				</div>
			</div>
		</nav>

		<!-- Content -->
		<form role="form" action="myinfoProc" method="post" enctype="multipart/form-data">
			<div id="page-wrapper">
				<div class="row">
					<div class="col-lg-12">
						<h1 class="page-header">개인 정보 수정</h1>
					</div>
				</div>

				<div class="row">
					<div class="col-lg-12">
						<div class="panel panel-default">
							<div class="panel-heading">필수 입력 정보 수정</div>
							<div class="panel-body">
								<div class="row">
									<div class="col-lg-4">

										<div class="form-group">
											<label>이메일 주소</label>
											<input type="hidden" name="email" value="${member.email}">
											<p class="form-control-static">${member.email}</p>
										</div>
										<div class="form-group">
											<label>별명 수정</label><input class="form-control" name="nickname"
												value="${member.nickname}">
											<p class="help-block">Example block-level help text here.</p>
										</div>

									</div>
								</div>
							</div>
						</div>
					</div>
				</div>

				<div class="row">
					<div class="col-lg-12">
						<div class="panel panel-default">
							<div class="panel-heading">선택 입력 정보 수정</div>
							<div class="panel-body">
								<div class="row">
									<div class="col-lg-4">

										<div class="form-group">
											<input type="hidden" name="original_url" value="${member.profile_url}">
											<label>프로필 사진 변경</label><br> <img id="output"
												src="${member.profile_url}"> <input type="file"
												accept="image/*" onchange="loadFile(event)"
												name="profile_url">
										</div>

									</div>
								</div>
							</div>
						</div>
					</div>
				</div>

				<div class="row">
					<div class="col-lg-12">
						<input type="submit" class="btn btn-outline btn-success btn-lg"
							value="정보 수정">
					</div>
				</div>

			</div>
		</form>

	</div>

	<!-- jQuery -->
	<script src="${pageContext.request.contextPath}/mypage/vendor/jquery/jquery.min.js"></script>

	<!-- Bootstrap Core JavaScript -->
	<script src="${pageContext.request.contextPath}/mypage/vendor/bootstrap/js/bootstrap.min.js"></script>

	<!-- Metis Menu Plugin JavaScript -->
	<script src="${pageContext.request.contextPath}/mypage/vendor/metisMenu/metisMenu.min.js"></script>

	<!-- Morris Charts JavaScript -->
	<script src="${pageContext.request.contextPath}/mypage/vendor/raphael/raphael.min.js"></script>
	<script src="${pageContext.request.contextPath}/mypage/vendor/morrisjs/morris.min.js"></script>
	<script src="${pageContext.request.contextPath}/mypage/data/morris-data.js"></script>

	<!-- Custom Theme JavaScript -->
	<script src="${pageContext.request.contextPath}/mypage/dist/js/sb-admin-2.js"></script>

</body>

</html>

