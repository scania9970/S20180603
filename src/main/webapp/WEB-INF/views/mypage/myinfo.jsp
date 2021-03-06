<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
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
		<jsp:include page="myinfoNav.jsp" />

		<!-- Content -->
		<form role="form" action="myinfoUpdate" method="post" enctype="multipart/form-data">
			<div id="page-wrapper">
				<div class="row">
					<div class="col-lg-12">
						<h1 class="page-header">개인 정보 수정</h1>
					</div>
				</div>

				<div class="row">
					<div class="col-lg-8">
						<div class="panel panel-default">
							<div class="panel-heading">필수 입력 정보 수정</div>
							<div class="panel-body">
								<div class="row">
									<div class="col-lg-6">
										<div class="form-group">
											<label>이메일 주소</label>
											<input type="hidden" name="email" value="${member.email}">
											<p class="form-control-static">${member.email}</p>
										</div>
										<div class="form-group">
											<label>별명 수정</label><input class="form-control" name="nickname"
												value="${member.nickname}">
											<p class="help-block"></p>
										</div>
										<div class="form-group">
											<label>회원 레벨</label>
											<p class="form-control-static">${member.grade}</p>
										</div>
										<div class="form-group">
											<label>경험치</label><br>
											<meter value="${member.exp}" max="10000" style="width: 400px;" ></meter> ${member.exp} / 10000<br>
										</div>
										<div class="form-group">
											<label>기업회원 여부</label><br>
											<c:if test="${member.is_enterprise == 0}">
												<p class="form-control-static">일반회원</p>
											</c:if>
											<c:if test="${member.is_enterprise == 1}">
												<p class="form-control-static">기업회원</p>
											</c:if>
										</div>
										<div class="form-group">
											<label>회원 가입일</label><br>
											<fmt:formatDate value="${member.join_date}" pattern="yyyy-MM-dd" var="join_date" />
											<p class="form-control-static">${join_date}</p>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>

				<div class="row">
					<div class="col-lg-8">
						<div class="panel panel-default">
							<div class="panel-heading">선택 입력 정보 수정</div>
							<div class="panel-body">
								<div class="row">
									<div class="col-lg-6">
										<div class="form-group">
											<input type="hidden" name="original_url" value="${member.profile_url}">
											<label>프로필 사진 변경</label><br>
											<img id="output" src="${member.profile_url}">
											<input type="file" accept="image/*" onchange="loadFile(event)" name="profile_url">
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>

				<div class="row">
					<div class="col-lg-8">
						<input type="submit" class="btn btn-outline btn-success btn-lg"value="수정하기">
					</div>
				</div>
				
				<div class="row">　</div>
				
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

