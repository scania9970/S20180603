<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ include file="../main/header.jsp" %>
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
    		width: 800px;
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
    	#main{
    		width: 1000px;
    		margin: 0 auto;
    	}
    	#boardmenu {
    		border: 1px solid black;
    		width: 150px;
    		border-radius:20px;
    		text-align: center;
    		float: left;
    	}
    	#boardlist {
    		border: 1px solid black; 
    		float: left;
    	}
    	.pagination {
				clear: both;
			    margin: 0 auto;
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
				float: right;
			}
			table th {
				background-color: #5bc0de;
			}
    
    </style>
</head>
<body>
	<div id="main">
	
		<div id="boardmenu">
			<ul>
				<li> <a href="/cota/list1"> 자유 게시판 </a></li>
				<li> <a href="/cota/list2">질문답 </a></li>
			</ul>	
		</div>
		
		<div id="boardlist">             
		<div class="panel-body">
		<div class="table-reble-responsive">
			<table class="table table-striped table-bordered table-hover" id="dataTables-example">
				<tr>
					<th>번호</th><th>제목</th><th>작성자</th><th>조회수</th><th>작성일</th>
				</tr>
				<c:forEach var="board" items="${list }">
				<tr>
					<td>${board.bnum}</td>
					<td><a href="postform1?bnum=${board.bnum }">${board.title}</a></td>
					<td>${board.nickname}</td>
					<td>${board.view_count}</td>
					<td>${board.board_date}</td>
				</tr>
				<c:set var="num" value="${num - 1}" />
				</c:forEach>
				
			</table>
			<input type="button" value="글쓰기" id="postingbtn" class="btn btn-primary" onclick="location.href='postingform'">
			<center>
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
			</center>
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