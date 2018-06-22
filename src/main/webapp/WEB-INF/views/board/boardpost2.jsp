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
		
	
		#reply {
			border: 3px solid;
		} 
		
	#replyPosting {
		width: 550px;
		height: 100px;
		background: white;
	}
	#replyPosting_btn{
		width: 70px;
		height: 100px;
	}
	
	
	#main{
			position : absolute;
    		width: 100%;
    		height: 100%;
    	}
    	
    	
    	
	#post_data{
	  	border: 1px solid;           /* data 전체 감싸는 div */
		width: 650px;
		margin: 47px 15px 15px 180px; 
	}
	
	
	
	#main_data{
		margin: 0 auto;
		border: 1px solid black;
		padding: 10px;
		width: 600px;
		border-radius:10px;
		margin-bottom: 20px; 
		
	}
	
	#title{
		float: left;
		width: 450px;
		border: 1px solid;
	}
	#date{
		text-align: right;
	}
	#content{
		padding: 5px;
		margin: 0 auto;
		width: 550px;
		height: 400px;
		border: 1px solid;
		text-align: left;
	}
	
	
	
	
	#feplyall{
		background-color: #f4f4f4;
		padding: 10px;
		border: 1px solid;
	}
	
	
	#replyform{               /* 댓글 리스트 */
		border: 3px solid;
	}
	
	#r_nickname{
	
		width: 500px;
		float: left;
	}
	#r_date{
	
	}
	#r_content{
		width: 550px;
		height: 60px;
		border: 1px solid;
		margin: 6px;
	}
	
	
	
	.listbtn{
				font-size: 18px;
			}
    .aaa{
   		text-align: right;
    	}
    	
    	
    #post{
    		background-color:#e2e2e8;
    		position : absolute;
    		width: 83.5%;
    		left: 16.5%;
    		top: 8%;
    		float: left;
    }
   		 #side_advertising{
    			position : absolute;
    			
    			width: 240px;
    			height: 590px;
    			top: 40px;
    			right: 70px;
    			background: blue;
    }
    #btn{
    	position : absolute;
    	bottom: -30px;
    	right: 20px;
    }
    .nickname{
		width: 450px;
		float: left;
		text-align: left;
    }
    #ud{
    	text-align: right;
    }
</style>
<script type="text/javascript" src="https://code.jquery.com/jquery-3.3.1.min.js"></script>
<script type="text/javascript">
	


</script>
</head>

<body>

<% String email = (String)session.getAttribute("email"); 
  System.out.println("session email->"+ email);
%>
<div id="main">
</div>
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
		
		
		
		
		
	<div id="post">
		<div id="post_data">
			<div id="main_data">
				<input type="hidden" name="bnum" value="${board.bnum }"> 
				
				<input type="hidden" name="email" value="${board.email }">
			
				<div id="title">${board.title } | 자유 게시판</div><div id="date">${board.board_date }</div>
				
				<c:set var="MEmail" value="${member.email }"/>
				 <c:if test="${board.email eq MEmail }">
					<div class="nickname">${board.nickname}</div><div id="ud"><a href="boardupdateForm?bnum=${board.bnum }">수정 </a>| <a href="boarddelete?bnum=${board.bnum }"> 삭제</a></div>
				</c:if>
				<c:if test="${board.email ne MEmail }">
					<div class="nickname">${board.nickname}</div>
				</c:if> 
				<div>
					<pre id="content">
						${board.content }
					</pre>
				</div>
				
			</div>
				
				
			 <div id="feplyall">
				
				<div id="replyform">
					
					<c:forEach var="reply" items="${rlist }">
						<div id="r_nickname">
							${reply.nickname }
						</div>
						<div id="r_date">
							${reply.reply_date }
						</div>
						
						<div id="r_content">
							${reply.content }
						</div>
						<hr id="hr"/>
					</c:forEach>
				</div>
			
			</div> 
				
				
				
			 	<div id="reply">             
					<form action="replyPosting2">
						<input type="hidden" value="${board.bnum }" name="bnum">
						<input type="hidden" value="${member.email }" name="email">
						<input type="text" id="replyPosting" name="content">
							<input type="submit" id="replyPosting_btn" value="댓글입력" >
					</form>
				</div> 
				
				
				<div id="btn">
				<input type="button" value="글쓰기" onclick="location.href='postingform2'">
				 <input type="button" value="목록" onclick="location.href='list2'">
				</div>
			
			
			 
		</div>
		 
		 <div id="side_advertising">
				
				 광고 모집
			</div>
		 
		 
	</div>
	 
	 
	 
	 
	 

	 
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