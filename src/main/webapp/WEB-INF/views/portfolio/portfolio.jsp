<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
	<style type="text/css">
	body{
		width: 100%;
		height: 100%
	}
		 #back {
			width: 100%;
			border: 1px solid;
			margin: 0 auto;
			height: 610px;
			background-color: white;
			/* background-image: url(/cota/images/background.png); */
			
		} 
		#personal{
			position : absolute;
			width: 70%;
			height: 530px;
			 left : 15%;
			 top: 5%;
			border: 1px solid;
			float: left;
			margin-right: 20px;
			/* background-color: white; */
		}
		#myimg{
		    position : relative;
			float: left;
			border: 1px solid;
			width: 40%;
			height: 95%;
			background-image: url(/cota/images/background.png);
			
		}
		
		#personaldata{
			margin: 20px;
			border: 1px solid;
			width: 55%;
			height: 500px;
			float: left;
			
		}
		#name{
			font-size: 25px;
			margin-bottom: 30px;
		}
		#comment{
			width: 90%;
			height: 300px;
			border: 1px solid;
			margin-bottom: 20px;
		}
		#comment_mess{
			overflow: auto;
			font-size: 16px;
		}
		.data{
			margin: 10px;
		}
		
		
		
		
		#career{
			position : absolute;
			top:610px;
			width: 100%;
			height: 300px;
			border: 1px solid;
			float: left;
			margin-right: 20px;
			background-color: #e2e2e8;
		}
		#career_title{
			position : absolute;
			border: 1px solid;
			 left : 15%;
			 top: 5%;
			 font-size: 25px;
		}
		#careerdata_list{
			position : absolute;
			border: 1px solid;
			width: 70%;
			height: 200px;
			 left : 15%;
			 top: 25%;
		}
		.careerdata{
			position : absolute;
			border: 1px solid;
			width: 31%;
			height: 93%;
			padding: 5px;
		}
		
		.company{
			font-size: 20px;
			margin-bottom: 10px;
		}
		.date{
			float: left;
			margin-bottom: 20px;
		}
		.rank{
			float: right;
		}
		.detail{
			clear: both;
			overflow: auto;
		}
		
		
		
		
		#project{
			position : absolute;
			top: 910px;
			width: 100%;
			height: 800px;
		}
		#profect_img{
			position : absolute;
			width: 70%;
			height: 400px;
			 left : 15%;
			 top: 5%;
			background-image: url(/cota/images/background.png);
		}
		#profect_content{
			position : absolute;
			width: 70%;
			height: 300px;
			 left : 15%;
			 top: 58%;
			background: #e2e2e8;
		}
		#profect_title{
			font-size: 24px;
		}
		#profect_content_mess{
			overflow: auto;
			font-size: 18px;
		}
		
	</style>
	<script type="text/javascript" src="https://code.jquery.com/jquery-3.3.1.min.js"></script>
	<script type="text/javascript">
	
	
	</script>
</head>
<body>
	<div id="back">
		<div id="personal">
			<div id="myimg">
				<!-- <img id="output" src="images/no_profile_image.png"> -->
			</div>
			<div id="personaldata">
				<div id="name">
				<b>김대희</b>				
				</div>
				<div id="comment">
					<pre id="comment_mess">자기소개 ~comment</pre>
				</div>
				<div id="birth" class="data"> 1990/12/20</div>
				<div id="job" class="data"> 개발자 </div>
				<div id="is_search" class="data"> 구직중 </div>
			</div>
		</div>
		<div id="back1">
		
		</div>
		
		<div id="career">
			<div id="career_title">
				<b>경력</b>
			</div>
			<div id="careerdata_list">
				<div class="careerdata">
					<div class="company">
						<b>중앙정보처리학원</b>
					</div>
					<div class="date">
						10.11.11 ~ 17.01.02
					</div>			
					<div class="rank">
						직무 : 학생
					</div>
					<div class="detail">
<pre>이런 저런 역활과 이런 저런 업무를 했다
dddd
ddd</pre>
					</div>
				</div>
				
				
			</div>
		</div>
		<div id="project">
			
		
			               <!-- 프로젝트 포문 -->
			<div id="profect_img">
			</div>
			<div id="profect_content">
				<div id="profect_title"><b>프로젝트 이름</b></div>
				<pre id="profect_content_mess">ddd</pre>
			</div>
			
			
			
		</div>
	
	
	</div>
</body>
</html>