<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
	<style type="text/css">
		#main {
			width: 1200px;
			border: 1px solid;
			margin: 0 auto;
			padding: 20px;
			height: 610px;
			background-image: url(/cota/images/background.png);
		}
		#personaldata{
			width: 350px;
			height: 600px;
			border: 1px solid;
			float: left;
			margin-right: 20px;
			background-color: white;
		}
		#project{
			width: 800px;
			border: 1px solid;
			height: 285px;
			float: left;
			margin-bottom: 20px;
			background-color: white;
		}
		#project_ex{
			width: 800px;
			border: 1px solid;
			height: 285px;
			float: left;
			background-color: white;
		}
		#output{
			width: 300px;
			height: 300px;
			margin: 20px;
		}
		#output2{
			width: 350px;
			height: 240px;
		}
		#project_img{
			width: 360px;
			float: left;
		}
		#project_main{
			float: left;
		}
		#project_content{
			width: 410px;
			height: 180px;
		}
	</style>
	<script type="text/javascript" src="https://code.jquery.com/jquery-3.3.1.min.js"></script>
	<script type="text/javascript">
	
	var loadFile = function(event) {
		var output = document.getElementById('output');
		output.src = URL.createObjectURL(event.target.files[0]);
	};
	
	var loadFile2 = function(event) {
		var output2 = document.getElementById('output2');
		output2.src = URL.createObjectURL(event.target.files[0]);
	};
	</script>
</head>
<body>
	<div id="main">
		<form action="">
		
		<div id="personaldata">
			<div>
				<img id="output" src="images/no_profile_image.png">
				<input type="file" accept="image/*" name="image_url" onchange="loadFile(event)"><br>
				생년월일<input type="text" name="birth"><br>
				희망직무 <input type="text" name="job"><br>
				자기소개 <input type="text" name="iniroduction"><br>
				코멘트   <input type="text" name="comment"><br>
				<input type="radio" name="is_search" value="1">구직희망
				<input type="radio" name="is_search" value="2">구직비희망<br>
				<input type="radio" name="is_visible" value="1">공개
				<input type="radio" name="is_visible" value="2">비공개<br>
			</div>
			
			
			
		</div>
		
		<div id="project">
			<div id="project_img">
				<img id="output2" src="images/no_profile_image.png"><br>
				<input type="file" accept="image/*" name="project_url" onchange="loadFile2(event)">
			</div>
			<div id="project_main" >
				프로젝트 명 : <input type="text" name="title"><br>
				<center>프로젝트 소개</center> <br>
				<input type="text" name="content" id="project_content"><br>
			</div>
		</div>
		
		<div id="project_ex">
		
		</div>
	
		</form>
	
	
	</div>
</body>
</html>