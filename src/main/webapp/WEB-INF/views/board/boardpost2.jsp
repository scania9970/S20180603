<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@include file="/WEB-INF/views/main/header.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>GROUP</title>
<script src="https://code.jquery.com/jquery-3.3.1.min.js" integrity="sha256-FgpCb/KJQlLNfOu91ta32o/NMZxltwRo8QtmkMRdAu8=" crossorigin="anonymous"></script>
<link href="//netdna.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//netdna.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/bootbox.js/4.4.0/bootbox.min.js"></script>

<style type="text/css">
:focus {
  outline: none;
}
.row {
  margin-right: 0;
  margin-left: 0; 
}
/* 
    Sometimes the sub menus get too large for the page and prevent the menu from scrolling, limiting functionality
    A quick fix is to change .side-menu to 

    -> position:absolute
    
    and uncomment the code below.
    You also need to uncomment 
    
    -> <div class="absolute-wrapper"> </div> in the html file

    you also need to tweek the animation. Just uncomment the code in that section
    --------------------------------------------------------------------------------------------------------------------
    If you want to make it really neat i suggest you look into an alternative like http://areaaperta.com/nicescroll/
    This will allow the menu to say fixed on body scoll and scoll on the side bar if it get to large
*/
.absolute-wrapper{
    position: fixed;
    width: 300px;
    height: 100%;
    background-color: #f8f8f8;
    border-right: 1px solid #e7e7e7;
}

.side-menu {
  position:absolute;
  width: 300px;
  height: 100%;
  background-color: #f8f8f8;
  border-right: 1px solid #e7e7e7;
}
.side-menu .navbar {
  border: none;
}
.side-menu .navbar-header {
  width: 100%;
  border-bottom: 1px solid #e7e7e7;
}
.side-menu .navbar-nav .active a {
  background-color: transparent;
  margin-right: -1px;
  border-right: 5px solid #e7e7e7;
}
.side-menu .navbar-nav li {
  display: block;
  width: 100%;
  border-bottom: 1px solid #e7e7e7;
}
.side-menu .navbar-nav li a {
  padding: 15px;
}
.side-menu .navbar-nav li a .glyphicon {
  padding-right: 10px;
}
.side-menu #dropdown {
  border: 0;
  margin-bottom: 0;
  border-radius: 0;
  background-color: transparent;
  box-shadow: none;
}
.side-menu #dropdown .caret {
  float: right;
  margin: 9px 5px 0;
}
.side-menu #dropdown .indicator {
  float: right;
}
.side-menu #dropdown > a {
  border-bottom: 1px solid #e7e7e7;
}
.side-menu #dropdown .panel-body {
  padding: 0;
  background-color: #f3f3f3;
}
.side-menu #dropdown .panel-body .navbar-nav {
  width: 100%;
}
.side-menu #dropdown .panel-body .navbar-nav li {
  padding-left: 15px;
  border-bottom: 1px solid #e7e7e7;
}
.side-menu #dropdown .panel-body .navbar-nav li:last-child {
  border-bottom: none;
}
.side-menu #dropdown .panel-body .panel > a {
  margin-left: -20px;
  padding-left: 35px;
}
.side-menu #dropdown .panel-body .panel-body {
  margin-left: -15px;
}
.side-menu #dropdown .panel-body .panel-body li {
  padding-left: 30px;
}
.side-menu #dropdown .panel-body .panel-body li:last-child {
  border-bottom: 1px solid #e7e7e7;
}
.side-menu #search-trigger {
  background-color: #f3f3f3;
  border: 0;
  border-radius: 0;
  position: absolute;
  top: 0;
  right: 0;
  padding: 15px 18px;
}
.side-menu .brand-name-wrapper {
  min-height: 50px;
}
.side-menu .brand-name-wrapper .navbar-brand {
  display: block;
}
.side-menu #search {
  position: relative;
  z-index: 1000;
}
.side-menu #search .panel-body {
  padding: 0;
}
.side-menu #search .panel-body .navbar-form {
  padding: 0;
  padding-right: 50px;
  width: 100%;
  margin: 0;
  position: relative;
  border-top: 1px solid #e7e7e7;
}
.side-menu #search .panel-body .navbar-form .form-group {
  width: 100%;
  position: relative;
}
.side-menu #search .panel-body .navbar-form input {
  border: 0;
  border-radius: 0;
  box-shadow: none;
  width: 100%;
  height: 50px;
}
.side-menu #search .panel-body .navbar-form .btn {
  position: absolute;
  right: 0;
  top: 0;
  border: 0;
  border-radius: 0;
  background-color: #f3f3f3;
  padding: 15px 18px;
}
/* Main body section */
.side-body {
  margin-left: 310px;
}
/* small screen */
@media (max-width: 768px) {
  .side-menu {
    position: relative;
    width: 100%;
    height: 0;
    border-right: 0;
    border-bottom: 1px solid #e7e7e7;
  }
  .side-menu .brand-name-wrapper .navbar-brand {
    display: inline-block;
  }
  /* Slide in animation */
  @-moz-keyframes slidein {
    0% {
      left: -300px;
    }
    100% {
      left: 10px;
    }
  }
  @-webkit-keyframes slidein {
    0% {
      left: -300px;
    }
    100% {
      left: 10px;
    }
  }
  @keyframes slidein {
    0% {
      left: -300px;
    }
    100% {
      left: 10px;
    }
  }
  @-moz-keyframes slideout {
    0% {
      left: 0;
    }
    100% {
      left: -300px;
    }
  }
  @-webkit-keyframes slideout {
    0% {
      left: 0;
    }
    100% {
      left: -300px;
    }
  }
  @keyframes slideout {
    0% {
      left: 0;
    }
    100% {
      left: -300px;
    }
  }
  /* Slide side menu*/
  /* Add .absolute-wrapper.slide-in for scrollable menu -> see top comment */
  .side-menu-container > .navbar-nav.slide-in {
    -moz-animation: slidein 300ms forwards;
    -o-animation: slidein 300ms forwards;
    -webkit-animation: slidein 300ms forwards;
    animation: slidein 300ms forwards;
    -webkit-transform-style: preserve-3d;
    transform-style: preserve-3d;
  }
  .side-menu-container > .navbar-nav {
    /* Add position:absolute for scrollable menu -> see top comment */
    position: fixed;
    left: -300px;
    width: 300px;
    top: 43px;
    height: 100%;
    border-right: 1px solid #e7e7e7;
    background-color: #f8f8f8;
    -moz-animation: slideout 300ms forwards;
    -o-animation: slideout 300ms forwards;
    -webkit-animation: slideout 300ms forwards;
    animation: slideout 300ms forwards;
    -webkit-transform-style: preserve-3d;
    transform-style: preserve-3d;
  }
  /* Uncomment for scrollable menu -> see top comment */
  /*.absolute-wrapper{
        width:285px;
        -moz-animation: slideout 300ms forwards;
        -o-animation: slideout 300ms forwards;
        -webkit-animation: slideout 300ms forwards;
        animation: slideout 300ms forwards;
        -webkit-transform-style: preserve-3d;
        transform-style: preserve-3d;
    }*/
  @-moz-keyframes bodyslidein {
    0% {
      left: 0;
    }
    100% {
      left: 300px;
    }
  }
  @-webkit-keyframes bodyslidein {
    0% {
      left: 0;
    }
    100% {
      left: 300px;
    }
  }
  @keyframes bodyslidein {
    0% {
      left: 0;
    }
    100% {
      left: 300px;
    }
  }
  @-moz-keyframes bodyslideout {
    0% {
      left: 300px;
    }
    100% {
      left: 0;
    }
  }
  @-webkit-keyframes bodyslideout {
    0% {
      left: 300px;
    }
    100% {
      left: 0;
    }
  }
  @keyframes bodyslideout {
    0% {
      left: 300px;
    }
    100% {
      left: 0;
    }
  }
  /* Slide side body*/
  .side-body {
    margin-left: 5px;
    margin-top: 70px;
    position: relative;
    -moz-animation: bodyslideout 300ms forwards;
    -o-animation: bodyslideout 300ms forwards;
    -webkit-animation: bodyslideout 300ms forwards;
    animation: bodyslideout 300ms forwards;
    -webkit-transform-style: preserve-3d;
    transform-style: preserve-3d;
  }
  .body-slide-in {
    -moz-animation: bodyslidein 300ms forwards;
    -o-animation: bodyslidein 300ms forwards;
    -webkit-animation: bodyslidein 300ms forwards;
    animation: bodyslidein 300ms forwards;
    -webkit-transform-style: preserve-3d;
    transform-style: preserve-3d;
  }
  /* Hamburger */
  .navbar-toggle {
    border: 0;
    float: left;
    padding: 18px;
    margin: 0;
    border-radius: 0;
    background-color: #f3f3f3;
  }
  /* Search */
  #search .panel-body .navbar-form {
    border-bottom: 0;
  }
  #search .panel-body .navbar-form .form-group {
    margin: 0;
  }
  .navbar-header {
    /* this is probably redundant */
    position: fixed;
    z-index: 3;
    background-color: #f8f8f8;
  }
  /* Dropdown tweek */
  #dropdown .panel-body .navbar-nav {
    margin: 0;
  }
  
 
}
#replyContent{
	height: 120px;
}
</style>
<link href="https://gitcdn.github.io/bootstrap-toggle/2.2.2/css/bootstrap-toggle.min.css" rel="stylesheet">
<script src="https://gitcdn.github.io/bootstrap-toggle/2.2.2/js/bootstrap-toggle.min.js"></script>
<script type="text/javascript">
$(function () {
    $('.navbar-toggle').click(function () {
        $('.navbar-nav').toggleClass('slide-in');
        $('.side-body').toggleClass('body-slide-in');
        $('#search').removeClass('in').addClass('collapse').slideUp(200);

        /// uncomment code for absolute positioning tweek see top comment in css
        //$('.absolute-wrapper').toggleClass('slide-in');
        
    });
   
   // Remove menu for searching
   $('#search-trigger').click(function () {
        $('.navbar-nav').removeClass('slide-in');
        $('.side-body').removeClass('body-slide-in');

        /// uncomment code for absolute positioning tweek see top comment in css
        //$('.absolute-wrapper').removeClass('slide-in');

    });
});

$(document).on('click', '#replyBtn', function(){
	var replyContent = $("#replyContent").val();
	var email = "";
	var bnum = "${board.bnum}";
	<%if(member != null){%>
		email = "<%=member.getEmail()%>"
	<%}%>
	
	if(replyContent == "" && email == ""){
		return;
	}else{
		var sendData = "email="+email+"&content="+Content+"&bnum="+bnum;
		$.ajax({
			url : '/cota/replyPosting2',			// 전송할 URL
			type : 'get',				// 전송 방식
			data : sendData, 							// 전송할 데이터
			success : function() {  // 통신이 성공했다면 수행할 콜백메서드
				location.href = "/cota/postform2?bnum=${board.bnum }";
			}
		});
	}
});


$(document).on('click', '#updateBtn', function(){
	location.href = "/cota/boardupdateForm2?bnum="+"${board.bnum }";
});                       

$(document).on('click', '#deleteBtn', function(){
	bootbox.confirm({
	    message: "게시물을 삭제하시겠습니까?",
	    buttons: {
	        confirm: {
	            label: 'Yes',
	            className: 'btn-success'
	        },
	        cancel: {
	            label: 'No',
	            className: 'btn-danger'
	        }
	    },
	    callback: function (result) {
			if(result == true){
				location.href = "/cota/boarddelete2?bnum="+"${board.bnum }";
			}else{                     
				return;
			}
	    }
	});
});


 

</script>
</head>
<body>
<div class="row">
    <!-- uncomment code for absolute positioning tweek see top comment in css -->
    <div class="absolute-wrapper"> </div>
    <!-- Menu -->
    <div class="side-menu">
    
    <nav class="navbar navbar-default" role="navigation">
    <!-- Brand and toggle get grouped for better mobile display -->
    <div class="navbar-header">
        <div class="brand-wrapper">
            <!-- Hamburger -->
            <button type="button" class="navbar-toggle">
                <span class="sr-only">Toggle navigation</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
        </div>

    </div>

    <!-- Main Menu -->
    <div class="side-menu-container">
        <ul class="nav navbar-nav">
            <li style="border:none;"><a href="#"><span class=""></span></a></li> <!-- add class "active" -->
            <li><a href="/cota/list1" style="font-size:20px;"><span class="glyphicon glyphicon-comment"></span>자유게시판</a></li> <!-- add class "active" -->
            <li><a href="/cota/list2" style="font-size:20px;"><span class="glyphicon glyphicon-search"></span>Q & A</a></li>
            <li><a href="/cota/group" style="font-size:20px;"><span class="glyphicon glyphicon-user"></span>소모임 / 스터디</a></li>

        </ul>
    </div><!-- /.navbar-collapse -->
</nav>
    
    </div>

    <!-- Main Content -->
    <div class="container-fluid">
        <div class="side-body">
           <h2>Q & A </h2>
           
           <!-- <div class="row" style="height:15px;"></div> -->
           			
           		<div class="col-lg-8" id="rowWrapper">
           			<div class="alert alert-success col-lg-12">
						 Q & A 입니다. 다른 개발자들에게 자유롭게 질문해보세요.
					</div>
           			<div class="row">
					<div class="col-lg-12" style="padding: 0; border: 1px solid gray;">
						<div class="row">
							<div class="col-lg-6">
								<div class="row">
									<div class="col-lg-12" style="padding:0; margin:0;"><h4># ${board.bnum }</h4></div>
								</div>
								<div class="row">
									<div class="col-lg-12" style="padding:0; margin:0;"><h4>${board.title }</h4></div>
								</div>
							</div>
							<div class="col-lg-2" style="border-right: 1px solid gray; height: 85px;">
									<div class="col-lg-2" style="margin-top: 15px;">
										<span class="glyphicon glyphicon-comment"></span> 
									</div>
									<div class="col-lg-3" style="margin-top: 15px;">
										${replyCnt }  댓글 아직   <!-- 댓글수 -->
									</div>
									<div class="col-lg-2" style="margin-top: 15px;">
										<span class="glyphicon glyphicon-eye-open"></span>
									</div>
									<div class="col-lg-3" style="margin-top: 15px;">
										${board.view_count }
									</div>
							</div>
							<div class="col-lg-1" style="margin-top: 15px;">
								  <img src="/cota/images/python.png" class="mr-3 mt-3 rounded-circle" style="width:60px;">
							</div>
							<div class="col-lg-3" style="margin-top: 15px;">
							    <h4 style="margin-top:5px; margin-left:10px;">${board.nickname }</h4>
							    <i style="margin-left:10px;">Posted on </i> ${board.board_date } 
							</div>
						</div>
					</div>
				</div>   
				
				        
				        
				        
				<div class="row">
					<div class="col-lg-12" style="font-size:16px; height: 500px; border: 1px solid gray; border-bottom:none;">
						${board.content }					
					</div>
				</div>
				<div class="row" style="margin-bottom: 15px;">
					<div class="col-lg-12"  style="height: 40px; border: 1px solid gray; border-top:none;">
						<div class="col-lg-1">
							<button type="button" class="btn btn-primary" onclick="location.href='list2'">목 록</button>
						</div>
						<c:if test="${member.email eq board.email }">
						<div class="col-lg-offset-8 col-lg-1">
							<button type="button" class="btn btn-primary" id="updateBtn">수 정</button>
						</div>
						<div class="col-lg-1">
							<button type="button" class="btn btn-primary" id="deleteBtn">삭 제</button>
						</div>
						<div class="col-lg-1">
						<c:if test="${post.join_status == 1}">
							<input type="checkbox" data-toggle="toggle" id="updateChkBox" data-on="모집" data-off="마감">
						</c:if>
						<c:if test="${post.join_status == 0}">
							<input type="checkbox" checked data-toggle="toggle" id="updateChkBox" data-on="모집" data-off="마감">
						</c:if>
						</div>
						</c:if>
					</div>
				</div>
				
					<c:forEach var="reply" items="${rlist }">
					<div class="row">
						<div class="col-lg-12" style="border:1px solid gray; border-bottom:none;">
							<div class="col-lg-1" style="margin-top: 10px;">
								  <img src="/cota/images/python.png" class="mr-3 mt-3 rounded-circle" style="width:60px;">
							</div>
							<div class="col-lg-7" style="margin-top: 15px;">
							    <label style="font-size: 20px; width:100px; margin:0px 0px 5px 10px;">${reply.nickname }</label>
							    <i style="margin-left:10px;">Posted on </i> <label width>${reply.reply_date }</label> 
							    <p style="margin-left:10px;">${reply.content }</p>
							</div>
						</div>
					</div>
					</c:forEach>
					
					
					
					<div class="row justify-content-center" style="margin-bottom: 100px;">
						<div class="col-lg-12" style="padding: 0px; border: 1px solid gray;">
							<div class="col-lg-1" style="padding: 0px;">
								  <img src="/cota/images/python.png" style="width:60px;">
								  ${member.nickname }
							</div>
							<form action="replyPosting2">
								<input type="hidden" value="${board.bnum }" name="bnum">
								<input type="hidden" value="${member.email }" name="email">
								<div class="col-lg-10">
									<input type="text" class="form-control" name="content" id="replyContent" placeholder="댓글 입력"></textarea>
								</div>
							<div class="col-lg-1">
								<input type="submit" class="btn btn-primary" id="replyBtn" value="입력">
							</div>
							</form>
						</div>	
					</div>
           		</div>
           		
           		
           		
           		
           		
           		
           		
           		
           		
           		
				<div class="col-lg-2" style="height: 700px; background-image:url(/cota/images/verticalad.gif); background-size:100% 100%;">
	        	</div>
					
        </div>
    </div>
	       	
</div>

</body>
</html>