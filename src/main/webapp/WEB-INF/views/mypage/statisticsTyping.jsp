<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<title>타자 연습 통계</title>

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

.incorrect_key {
	visibility: hidden;
	font-size: 0px;
}

.fixed_width_wrapper {
	float: left;
	margin: 0 15px;
	display: inline-block;
	width: 765px;
}

.line {
	width: 100%;
	text-align: center;
	margin: 10px auto;
}

#sentence-div {
	margin: 10px auto;
	border: 1px solid gray;
	border-radius: 5px;
	width: 1200px;
	text-align: center;
}

.line div {
	display: inline-block;
}

#middle-wrapper {
	overflow: hidden;
	width: 1200px;
	margin: 20px auto;
}

.keyboard {
	width: 765px;
	background-color: #cccccc;
	border: 1px solid black;
}

.key {
	background-color: white;
	color: #737373;
	border: 1px solid #cccccc;
	border-radius: 10px;
	width: 43px;
	height: 52px;
	box-shadow: inset 0 -1px 1px rgba(255, 255, 255, 0.3);
}

.key.wide_1 {
	width: 66px;
	height: 52px;
}

.key.wide_2 {
	width: 100px;
	height: 52px;
}

.key.wide_3 {
	width: 96px;
	height: 52px;
}

.key.wide_4 {
	width: 120px;
	height: 52px;
}

.key.wide_5 {
	width: 300px;
	height: 52px;
}

.line1 {
	height: 25px;
	width: 100%;
}

.line2 {
	height: 25px;
	width: 100%;
}
</style>

<script src="${pageContext.request.contextPath}/js/heatmap.js"></script>
<script type="text/javascript">
	window.onload = function() {
		//minimal heatmap instance configuration
		var heatmapInstance = h337.create({
			// only container is required, the rest will be defaults
			container : document.querySelector('.fixed_width_wrapper')
		});

		// now generate some random data
		var points = [];
		var max = 0;
		var width = 765;
		var height = 322;

		var incorrect_total = $('.incorrect_key').html();
		alert(incorrect_total);
		var count = (incorrect_total.match(/,/g) || []).length;

		var start = 0;
		var end = 1;
		var current_count = 0;
		var current_key = '';
		
		while (count--) {
			current_key = incorrect_total.substring(start, end);
			start += 2;
			end += 2;
			current_count = incorrect_total.substring(start, end);
			start += 2;
			end += 2;
			
			var positions = $('#key_' + current_key).position();
			var width_half = $('#key_' + current_key).width() / 2;
			var height_half = $('#key_' + current_key).height() / 2;
			var key_x = Math.floor(positions.left);
			var key_y = Math.floor(positions.top);
			var center_x = key_x + Math.floor(width_half);
			var center_y = key_y + Math.floor(height_half);
			
			var val = current_count;
			max = Math.max(max, val);
			
			var point = {
				x : center_x,
				y : center_y,
				value : val
			};
			
			points.push(point);
		}
		
		// heatmap data format
		var data = {
			max : max,
			data : points
		};
		
		// if you have a set of datapoints always use setData instead of addData
		// for data initialization
		heatmapInstance.setData(data);
	};
</script>

</head>
<body>

	<div id="wrapper">

		<!-- Navigation -->
		<nav class="navbar navbar-default navbar-static-top" role="navigation" style="margin-bottom: 0">
			<jsp:include page="../main/header.jsp" />
			<div class="navbar-default sidebar" role="navigation">
				<div class="sidebar-nav navbar-collapse">
					<ul class="nav" id="side-menu">
						<li><a href="forms.html"><i class="fa fa-edit fa-fw"></i>내
								정보 수정<span class="fa arrow"></span></a>
							<ul class="nav nav-second-level">
								<li><a href="myinfo?email=${email}">개인 정보 수정</a></li>
								<li><a href="#">포트폴리오 수정</a></li>
								<li><a href="#">비밀번호 변경</a></li>
							</ul></li>
						<li><a href="#"><i class="fa fa-bar-chart-o fa-fw"></i>활동
								내역 통계<span class="fa arrow"></span></a>
							<ul class="nav nav-second-level">
								<li><a href="statisticsTyping?email=${email}">타자 연습 통계</a></li>
								<li><a href="#">작성한 글 통계</a></li>
							</ul></li>
						<li><a href="#" onclick="alert('좆까');"><i
								class="fa fa-sign-out fa-fw"></i>회원 탈퇴</a></li>
					</ul>
				</div>
			</div>
		</nav>

		<!-- Content -->
		<div id="page-wrapper">
			<div class="row">
				<div class="col-lg-12">
					<h1 class="page-header">타자 연습 통계</h1>
				</div>
			</div>

			<div class="row">
				<div class="col-lg-12">
					<div class="panel panel-default">
						<div class="panel-heading">많이 틀린 키</div>
						<div class="panel-body">
							<div class="row">
								<div class="col-lg-12">
									<div class="incorrect_key">
										<c:forEach items="${listStatToday}" var="list">
											${list.incorrect_key}
										</c:forEach>
									</div>
									<div class="fixed_width_wrapper">
										<div class="keyboard">
											<div class="line">
												<div id="key_accent" class="key">
													<div class="line1">~</div>
													<div class="line2">`</div>
												</div>
												<div id="key_one" class="key">
													<div class="line1">!</div>
													<div class="line2">1</div>
												</div>
												<div id="key_two" class="key">
													<div class="line1">@</div>
													<div class="line2">2</div>
												</div>
												<div id="key_three" class="key">
													<div class="line1">#</div>
													<div class="line2">3</div>
												</div>
												<div id="key_four" class="key">
													<div class="line1">$</div>
													<div class="line2">4</div>
												</div>
												<div id="key_five" class="key">
													<div class="line1">%</div>
													<div class="line2">5</div>
												</div>
												<div id="key_six" class="key">
													<div class="line1">^</div>
													<div class="line2">6</div>
												</div>
												<div id="key_seven" class="key">
													<div class="line1">&</div>
													<div class="line2">7</div>
												</div>
												<div id="key_eight" class="key">
													<div class="line1">*</div>
													<div class="line2">8</div>
												</div>
												<div id="key_nine" class="key">
													<div class="line1">(</div>
													<div class="line2">9</div>
												</div>
												<div id="key_zero" class="key">
													<div class="line1">)</div>
													<div class="line2">0</div>
												</div>
												<div id="key_hyphen" class="key">
													<div class="line1">_</div>
													<div class="line2">-</div>
												</div>
												<div id="key_equals" class="key">
													<div class="line1">+</div>
													<div class="line2">=</div>
												</div>
												<div id="key_backspace" class="key wide_2">
													<div class="line1">backspace</div>
													<div class="line2">&nbsp;</div>
												</div>
											</div>
											<div class="line">
												<div id="key_tab" class="key wide_2">
													<div class="line1">tab</div>
													<div class="line2">&nbsp;</div>
												</div>
												<div id="key_q" class="key single">
													<div class="line1">Q</div>
													<div class="line2">&nbsp;</div>
												</div>
												<div id="key_w" class="key single">
													<div class="line1">W</div>
													<div class="line2">&nbsp;</div>
												</div>
												<div id="key_e" class="key single">
													<div class="line1">E</div>
													<div class="line2">&nbsp;</div>
												</div>
												<div id="key_r" class="key single">
													<div class="line1">R</div>
													<div class="line2">&nbsp;</div>
												</div>
												<div id="key_t" class="key single">
													<div class="line1">T</div>
													<div class="line2">&nbsp;</div>
												</div>
												<div id="key_y" class="key single">
													<div class="line1">Y</div>
													<div class="line2">&nbsp;</div>
												</div>
												<div id="key_u" class="key single">
													<div class="line1">U</div>
													<div class="line2">&nbsp;</div>
												</div>
												<div id="key_i" class="key single">
													<div class="line1">I</div>
													<div class="line2">&nbsp;</div>
												</div>
												<div id="key_o" class="key single">
													<div class="line1">O</div>
													<div class="line2">&nbsp;</div>
												</div>
												<div id="key_p" class="key single">
													<div class="line1">P</div>
													<div class="line2">&nbsp;</div>
												</div>
												<div id="key_left_bracket" class="key">
													<div class="line1">{</div>
													<br>
													<div class="line2">[</div>
												</div>
												<div id="key_right_bracket" class="key">
													<div class="line1">}</div>
													<br>
													<div class="line2">]</div>
												</div>
												<div id="key_backslash" class="key">
													<div class="line1">|</div>
													<br>
													<div class="line2">\</div>
												</div>
											</div>
											<div class="line">
												<div id="key_capslock" class="key wide_3">
													<div class="line1">caps lock</div>
													<div class="line2">&nbsp;</div>
												</div>
												<div id="key_a" class="key single">
													<div class="line1">A</div>
													<div class="line2">&nbsp;</div>
												</div>
												<div id="key_s" class="key single">
													<div class="line1">S</div>
													<div class="line2">&nbsp;</div>
												</div>
												<div id="key_d" class="key single">
													<div class="line1">D</div>
													<div class="line2">&nbsp;</div>
												</div>
												<div id="key_f" class="key single">
													<div class="line1">F</div>
													<div class="line2">&nbsp;</div>
												</div>
												<div id="key_g" class="key single">
													<div class="line1">G</div>
													<div class="line2">&nbsp;</div>
												</div>
												<div id="key_h" class="key single">
													<div class="line1">H</div>
													<div class="line2">&nbsp;</div>
												</div>
												<div id="key_j" class="key single">
													<div class="line1">J</div>
													<div class="line2">&nbsp;</div>
												</div>
												<div id="key_k" class="key single">
													<div class="line1">K</div>
													<div class="line2">&nbsp;</div>
												</div>
												<div id="key_l" class="key single">
													<div class="line1">L</div>
													<div class="line2">&nbsp;</div>
												</div>
												<div id="key_semicolon" class="key">
													<div class="line1">:</div>
													<br>
													<div>;</div>
												</div>
												<div id="key_apostrophe" class="key">
													<div class="line1">"</div>
													<br>
													<div>'</div>
												</div>
												<div id="key_enter" class="key wide_3">
													<div class="line1">enter</div>
													<div class="line2">&nbsp;</div>
												</div>
											</div>
											<div class="line">
												<div id="key_left_shift" class="key wide_4">
													<div class="line1">shift</div>
													<div class="line2">&nbsp;</div>
												</div>
												<div id="key_z" class="key single">
													<div class="line1">Z</div>
													<div class="line2">&nbsp;</div>
												</div>
												<div id="key_x" class="key single">
													<div class="line1">X</div>
													<div class="line2">&nbsp;</div>
												</div>
												<div id="key_c" class="key single">
													<div class="line1">C</div>
													<div class="line2">&nbsp;</div>
												</div>
												<div id="key_v" class="key single">
													<div class="line1">V</div>
													<div class="line2">&nbsp;</div>
												</div>
												<div id="key_b" class="key single">
													<div class="line1">B</div>
													<div class="line2">&nbsp;</div>
												</div>
												<div id="key_n" class="key single">
													<div class="line1">N</div>
													<div class="line2">&nbsp;</div>
												</div>
												<div id="key_m" class="key single">
													<div class="line1">M</div>
													<div class="line2">&nbsp;</div>
												</div>
												<div id="key_comma" class="key">
													<div class="line1">&lt;</div>
													<br>
													<div>,</div>
												</div>
												<div id="key_period" class="key">
													<div class="line1">&gt;</div>
													<br>
													<div>.</div>
												</div>
												<div id="key_forwardslash" class="key">
													<div class="line1">?</div>
													<br>
													<div>/</div>
												</div>
												<div id="key_right_shift" class="key wide_4">
													<div class="line1">shift</div>
													<div class="line2">&nbsp;</div>
												</div>
											</div>
											<div class="line">
												<div id="key_left_ctrl" class="key wide_1">
													<div class="line1">ctrl</div>
												</div>
												<div id="key_left_alt" class="key wide_1">
													<div class="line1">alt</div>
												</div>
												<div id="key_left_cmd" class="key wide_1">
													<div class="line1">cmd</div>
												</div>
												<div id="key_space" class="key wide_5">
													<div class="line1">space</div>
												</div>
												<div id="key_right_cmd" class="key wide_1">
													<div class="line1">cmd</div>
												</div>
												<div id="key_right_alt" class="key wide_1">
													<div class="line1">alt</div>
												</div>
												<div id="key_right_ctrl" class="key wide_1">
													<div class="line1">ctrl</div>
												</div>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>

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