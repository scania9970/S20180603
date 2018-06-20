<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description" content="">
<meta name="author" content="">

<title>포트폴리오 수정</title>

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
	
	.div_career_add {
		border-top: 1px solid #CCCCCC;
		text-align: right;
		padding-top: 10px;
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
		<form role="form" action="myinfoPortUpdate" method="post" enctype="multipart/form-data">
			<div id="page-wrapper">
				<div class="row">
					<div class="col-lg-12">
						<h1 class="page-header">포트폴리오 수정</h1>
					</div>
				</div>

				<div class="row">
					<div class="col-lg-12">
						<div class="panel panel-default">
							<div class="panel-heading">기본 정보 수정</div>
							<div class="panel-body">
								<div class="row">
									<div class="col-lg-4">
										<div class="form-group">
											<label>생년월일</label>
											<input type="hidden" name="email" value="${member.email}">
											<input class="form-control" type="date" name="birth" value="${portfolio.birth}">
										</div>
										<div class="form-group">
											<label>사진</label><br>
											<input type="hidden" name="original_url" value="${portfolio.image_url}">
											<c:if test="${portfolio.image_url == null}">
												<img id="output" src="images/no_profile_image.png">
											</c:if>
											<c:if test="${portfolio.image_url != null}">
												<img id="output" src="${portfolio.image_url}">
											</c:if>
											<input type="file" accept="image/*" onchange="loadFile(event)" name="image_url">
										</div>
										<div class="form-group">
											<label>희망직무</label>
											<input class="form-control" name="job" value="${portfolio.job}">
										</div>
										<div class="form-group">
											<label>자기소개</label>
											<textarea class="form-control" name="introduction" rows="5">${portfolio.introduction}</textarea>
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
							<div class="panel-heading">경력 정보 수정</div>
							<div class="panel-body">
								<div class="row">
									<div class="col-lg-4">
										<input type="hidden" name="cnum" value="${career.cnum}">
										<c:if test="${career == null}">
											<div class="form-group">
												<label>회사명</label>
												<input class="form-control" name="company" value="${career.company}">
											</div>
											<div class="form-group">
												<label>입사일</label>
												<input class="form-control" type="date" name="data_start" value="${career.data_start}">
											</div>
											<div class="form-group">
												<label>퇴사일</label>
												<input class="form-control" type="date" name="data_end" value="${career.data_end}">
											</div>
											<div class="form-group">
												<label>직급</label>
												<input class="form-control" name="rank" value="${career.rank}">
											</div>
											<div class="form-group">
												<label>업무설명</label>
												<textarea class="form-control" name="detail" rows="3">${career.detail}</textarea>
											</div>
										</c:if>
										<c:if test="${career != null}">
											<c:forEach items="career" var="career">
												<p>${career.company}</p>
											</c:forEach>
										</c:if>
										<div class="div_career_add">
											<button type="button" class="btn btn-default btn-circle btn-lg">
												<i class="fa fa-plus"></i>
											</button>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>

				<div class="row">
					<div class="col-lg-12">
						<input type="submit" class="btn btn-outline btn-success btn-lg" value="수정하기">
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