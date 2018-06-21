<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description" content="">
<meta name="author" content="">

<title>게시판</title>

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
    	#dataTables-example{
    		width: 900px;
    		/* float: left; */
    	}
    	#dataTables-example th {
    		text-align: center;
    	}
    	* {
		   margin: 0px;
		   padding: 0px;
		}
		
		li {
		   list-style: none;
		}
		
		a {
		   text-decoration: none;
		}
		
		a:LINK {
		   color: black;
		}
		
		a:VISITED {
		   color: black;
		}
		body {
			overflow: scroll;
		}
    	#main{
			position : absolute;
    		width: 100%;
    		height: 100%;
    	}
    	
    	
    	#boardlist {
			/* background-image: url(/cota/images/main-background.jpg); */
			background-color:#e2e2e8;
			background-size: 100% 100%;
    		position : absolute;
    		width: 83.5%;
    		height:92%;
    		left: 16.5%;
    		top: 8%;
    		float: left;
    	}
    	.pagination {
				clear: both;
			    position : absolute;
			    left: 28%;
			    margin: 50px 0 35px 0;
			}
						
			.pagination .a {
				color:black;
			    padding: 8px 16px;
			    font-size:20px;
			    text-decoration: none;
			}
			
			.pagination .a.active {
			    background-color: #4CAF50;
			    color: white;
			}
			
			.pagination .a:hover:not(.active) {
			    background-color: #ddd;
			    border-radius: 5px;
			}
			#postingbtn{
				position : absolute;
				left: 67%;
			}
			.listbtn{
				font-size: 18px;
			}
    		.aaa{
    			text-align: right;
    		}
    		
    		#td_bnum{
    			width: 50px;
    		}
    		#td_title{
    			width: 450px;
    		}
    		#td_nickname{
    			width: 100px;
    		}
    		#td_view_count{
    			width: 60px;
    		}
    		#td_board_date{
    			width: 100px;
    		}
    		
    		#side_advertising{
    			position : absolute;
    			width: 15%;
    			height: 80%;
    			top: 14.5%;
    			right: 5%;
    			
    			background: blue;
    		}
    		.panel-body{
    			padding-left: 30px; 
    			padding-top: 47px;
    		}
    </style>
</head>
<body>
	<div id="main">
		<nav class="navbar navbar-default navbar-static-top" role="navigation" style="margin-bottom: 0">
			<jsp:include page="../main/header.jsp"/>
			<div class="navbar-default sidebar" role="navigation">
				<div class="sidebar-nav navbar-collapse">
					<ul class="nav" id="side-menu">
						<li>
							
						</li>
						<li>
							<!-- <a href="#"><i class="fa fa-bar-chart-o fa-fw"></i>활동 내역 통계</a> -->
							<p class="listbtn"><span class="glyphicon glyphicon-align-justify"><a href="/cota/list1"><i class="aaa"> 자유 게시판 </i></a></span></p>
							
						</li>
						<li>
							<!-- <a href="#"><i class="fa fa-sign-out fa-fw"></i>회원 탈퇴</a> -->
							<p class="listbtn"><span class="glyphicon glyphicon-align-justify"><a href="/cota/list2"> <i class="aaa"> 질문 답 </i> </a></span></p>
						</li>
					</ul>
				</div>
			</div>
		</nav>
		
		<div id="boardlist">             
		<div class="panel-body">
			<div class="table-reble-responsive">
				<table class="table table-striped table-bordered table-hover" id="dataTables-example">
					<tr>
						<th id="td_bnum">번호</th><th id="td_title">제목</th><th id="td_nickname">작성자</th><th id="td_board_date">작성일</th><th id="td_view_count">조회수</th>
					</tr>
					<c:forEach var="board" items="${list2 }">
					<tr>
						<td>${board.bnum}</td>
						<td><a href="postform2?bnum=${board.bnum }">${board.title}</a></td>
						<td>${board.nickname}</td>
						<td>${board.board_date}</td>
						<td>${board.view_count}</td>
					</tr>
					<c:set var="num" value="${num - 1}" />
					</c:forEach>
					
				</table>
				<input type="button" value="글쓰기" id="postingbtn" class="btn btn-primary" onclick="location.href='postingform2'">
				<div class="pagination" >
				<c:if test="${pg.startPage > pg.pageBlock}">
					<a class="a" href="/cota/list1?currentPage=${pg.startPage - pg.pageBlock}">[이전]</a>
				</c:if>
				<c:forEach var="i" begin="${pg.startPage}" end="${pg.endPage}">
					<a class="a" href="/cota/list1?currentPage=${i}">[${i}]</a>
				</c:forEach>
				<c:if test="${pg.endPage < pg.totalPage}">
					<a class="a" href="/cota/list1?currentPage=${pg.startPage + pg.pageBlock}">[다음]</a>
				</c:if>
				</div>
		
			</div>
		
		
		</div>
		</div>
			<div id="side_advertising">
				
				 광고 모집
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