<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
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
	
	#output_project {
		border: 1px solid #CCCCCC;
		width: 150px;
		margin-bottom: 10px;
	}
	
	.div_career_add {
		border-top: 1px solid #CCCCCC;
		text-align: right;
		padding-top: 10px;
	}
	
	.div_project_add {
		border-top: 1px solid #CCCCCC;
		text-align: right;
		padding-top: 10px;
	}
</style>

<script type="text/javascript">
	var career_count = 0;
	var project_count = 0;
	
	window.onload = function() {
		if ($('.career_exist_count').length > 0) {
			career_count = $('.career_exist_count').length;
			$('.input_career_count').val(career_count);
		} else {
			$('.input_career_count').val(0);
		}
		
		if ($('.project_exist_count').length > 0) {
			project_count = $('.project_exist_count').length;
			$('.input_project_count').val(project_count);
		} else {
			$('.input_project_count').val(0);
		}
	};

	var loadFile = function(event) {
		var output = document.getElementById('output');
		output.src = URL.createObjectURL(event.target.files[0]);
	};
	
	var loadFileProject = function(event) {
		var output = document.getElementById('output_project');
		output.src = URL.createObjectURL(event.target.files[0]);
	};
	
	function btn_career_add() {
		career_count += 1;
		$('.input_career_count').val(career_count);
		
		if (career_count > 0) {
			$('.p_no_career').remove();
		}
		
		if (career_count > 5) {
			alert('경력사항은 최대 5개까지 입력 가능합니다.');
			
			return;
		}
		
		var input_career = '<div class="div_wrapper' + career_count + '">' +
						       '<div class="form-group">' +
						           '<label>회사명</label>' +
						           '<input class="form-control" name="company' + career_count + '">' +
						       '</div>' +
						       '<div class="form-group">' +
						           '<label>입사일</label>' +
						           '<input class="form-control" type="date" name="date_start' + career_count + '">' +
						       '</div>' +
							   '<div class="form-group">' +
							       '<label>퇴사일</label>' +
							       '<input class="form-control" type="date" name="date_end' + career_count + '">' +
							   '</div>' +
							   '<div class="form-group">' +
							       '<label>직급</label>' +
								   '<input class="form-control" name="rank' + career_count + '">' +
							   '</div>' +
							   '<div class="form-group">' +
							       '<label>업무설명</label>' +
								   '<textarea class="form-control" rows="3" name="detail' + career_count + '"></textarea>' +
							   '</div>' +
							   '<div style="border-top: 1px solid #CCCCCC; margin-bottom: 10px;"></div>' +
						   '</div>';
		
		$('.div_career_add').before(input_career);
	};
	
	function btn_career_del() {
		if (career_count <= 0) {
			alert("작성한 경력사항이 없습니다.");
			
			return;
		}
		
		if ($('.career_exist_count').length <= 0) {
			$('.div_wrapper' + career_count).remove();
			
			if (career_count - 1 < 0) {
				career_count = 0;
			} else {
				career_count -= 1;
			}
			
			$('.input_career_count').val(career_count);
			
			if ($('.p_no_career').html() == null && career_count == 0) {
				$('.div_no_career').after('<p class="p_no_career">경력 없음</p>');
			}
			
			return;
		}
		
		if (confirm("경력사항은 삭제 확인 시 즉시 삭제됩니다.\n삭제하시겠습니까?") == true) {
			var sendData = 'cnum=' + $('.cnum' + career_count).val();

			$.ajax({
				url : '/cota/deleteMyinfoCareer',
				type : 'get',
				data : sendData,
				success : function(data) {
					if (data > 0) {
						$('.div_wrapper' + career_count).remove();
						
						if (career_count - 1 < 0) {
							career_count = 0;
						} else {
							career_count -= 1;
						}
						
						$('.input_career_count').val(career_count);
						
						if ($('.p_no_career').html() == null && career_count == 0) {
							$('.div_no_career').after('<p class="p_no_career">경력 없음</p>');
						}
					} else {
						alert("경력 삭제에 실패하였습니다.");
					}
				}
			});
		}
	};
	
	function btn_project_add() {
		project_count += 1;
		$('.input_project_count').val(project_count);
		
		if (project_count > 0) {
			$('.p_no_project').remove();
		}
		
		if (project_count > 3) {
			alert('프로젝트는 최대 3개까지 입력 가능합니다.');
			
			return;
		}
		
		var input_project = '<div class="div_wrapper_project' + project_count + '">' +
						       '<div class="form-group">' +
						           '<label>프로젝트명</label>' +
						           '<input class="form-control" name="title' + project_count + '">' +
						       '</div>' +
						       '<div class="form-group">' +
						           '<label>설명</label>' +
						           '<textarea class="form-control" rows="3" name="content' + project_count + '"></textarea>' +
						       '</div>' +
							   '<div class="form-group">' +
							       '<label>프로젝트 기간</label>' +
							       '<input class="form-control" name="project_date' + project_count + '">' +
							   '</div>' +
							   '<div class="form-group">' +
							       '<label>프로젝트 이미지</label><br>' +
							       '<img id="output_project" src="images/no_profile_image.png">' +
								   '<input type="file" accept="image/*" onchange="loadFileProject(event)" name="project_url">' +
							   '</div>' +
							   '<div style="border-top: 1px solid #CCCCCC; margin-bottom: 10px;"></div>' +
						   '</div>';
		
		$('.div_project_add').before(input_project);
	};
	
	function btn_project_del() {
		if (project_count <= 0) {
			alert("작성한 프로젝트가 없습니다.");
			
			return;
		}
		
		if ($('.project_exist_count').length <= 0) {
			$('.div_wrapper_project' + project_count).remove();
			
			if (project_count - 1 < 0) {
				project_count = 0;
			} else {
				project_count -= 1;
			}
			
			$('.input_project_count').val(project_count);
			
			if ($('.p_no_project').html() == null && project_count == 0) {
				$('.div_no_project').after('<p class="p_no_project">프로젝트 없음</p>');
			}
			
			return;
		}
		
		if (confirm("프로젝트 사항은 삭제 확인 시 즉시 삭제됩니다.\n삭제하시겠습니까?") == true) {
			var sendData = 'pnum=' + $('.pnum' + project_count).val();

			$.ajax({
				url : '/cota/deleteMyinfoProject',
				type : 'get',
				data : sendData,
				success : function(data) {
					if (data > 0) {
						$('.div_wrapper_project' + project_count).remove();
						
						if (project_count - 1 < 0) {
							project_count = 0;
						} else {
							project_count -= 1;
						}
						
						$('.input_project_count').val(project_count);
						
						if ($('.p_no_project').html() == null && project_count == 0) {
							$('.div_no_project').after('<p class="p_no_project">경력 없음</p>');
						}
					} else {
						alert("프로젝트 삭제에 실패하였습니다.");
					}
				}
			});
		}
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
									<div class="col-lg-6">
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
									<div class="col-lg-6">
										<div class="div_no_career"></div>
										<c:if test="${fn:length(listCareer) <= 0}">
											<p class="p_no_career">경력 없음</p>
										</c:if>
										<c:if test="${fn:length(listCareer) > 0}">
											<c:forEach items="${listCareer}" var="career" varStatus="status">
												<input type="hidden" class="career_exist_count">
												<input type="hidden" name="cnum" class="cnum${status.count}" value="${career.cnum}">
												<div class="div_wrapper${status.count}">
													<div class="form-group">
														<label>회사명</label>
														<input class="form-control" name="company${status.count}" value="${career.company}">
													</div>
													<div class="form-group">
														<label>입사일</label>
														<fmt:formatDate var="dateStart" value="${career.date_start}" pattern="yyyy-MM-dd" />
														<input class="form-control" type="date" name="date_start${status.count}" value="${dateStart}">
													</div>
													<div class="form-group">
														<fmt:formatDate var="dateEnd" value="${career.date_end}" pattern="yyyy-MM-dd" />
														<label>퇴사일</label>
														<input class="form-control" type="date" name="date_end${status.count}" value="${dateEnd}">
													</div>
													<div class="form-group">
														<label>직급</label>
														<input class="form-control" name="rank${status.count}" value="${career.rank}">
													</div>
													<div class="form-group">
														<label>업무설명</label>
														<textarea class="form-control" rows="3" name="detail${status.count}">${career.detail}</textarea>
													</div>
													<div style="border-top: 1px solid #CCCCCC; margin-bottom: 10px;"></div>
												</div>
											</c:forEach>
										</c:if>
										<div class="div_career_add">
											<input type="hidden" class="input_career_count" name="input_career_count">
											<button type="button" class="btn btn-default btn-circle btn-lg" onclick="btn_career_add()">
												<i class="fa fa-plus"></i>
											</button>
											<button type="button" class="btn btn-default btn-circle btn-lg" onclick="btn_career_del()">
												<i class="fa fa-minus"></i>
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
						<div class="panel panel-default">
							<div class="panel-heading">프로젝트 정보 수정</div>
							<div class="panel-body">
								<div class="row">
									<div class="col-lg-6">
										<div class="div_no_project"></div>
										<c:if test="${fn:length(listProject) <= 0}">
											<p class="p_no_project">프로젝트 없음</p>
										</c:if>
										<c:if test="${fn:length(listProject) > 0}">
											<c:forEach items="${listProject}" var="project" varStatus="statusProject">
												<input type="hidden" class="project_exist_count">
												<input type="hidden" name="pnum" class="pnum${statusProject.count}" value="${project.pnum}">
												<div class="div_wrapper_project${statusProject.count}">
													<div class="form-group">
														<label>프로젝트명</label>
														<input class="form-control" name="company${statusProject.count}" value="${project.title}">
													</div>
													<div class="form-group">
														<label>설명</label>
														<textarea class="form-control" rows="3" name="content${statusProject.count}">${project.content}</textarea>
													</div>
													<div class="form-group">
														<label>프로젝트 기간</label>
														<input class="form-control" name="project_date${statusProject.count}" value="${project.project_date}">
													</div>
													<div class="form-group">
														<label>프로젝트 이미지</label><br>
														<input type="hidden" name="original_url" value="${project.project_url}">
														<c:if test="${project.project_url == null}">
															<img id="output_project" src="images/no_profile_image.png">
														</c:if>
														<c:if test="${project.project_url != null}">
															<img id="output_project" src="${project.project_url}">
														</c:if>
														<input type="file" accept="image/*" onchange="loadFileProject(event)" name="project_url">
													</div>
													<div style="border-top: 1px solid #CCCCCC; margin-bottom: 10px;"></div>
												</div>
											</c:forEach>
										</c:if>
										<div class="div_project_add">
											<input type="hidden" class="input_project_count" name="input_project_count">
											<button type="button" class="btn btn-default btn-circle btn-lg" onclick="btn_project_add()">
												<i class="fa fa-plus"></i>
											</button>
											<button type="button" class="btn btn-default btn-circle btn-lg" onclick="btn_project_del()">
												<i class="fa fa-minus"></i>
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