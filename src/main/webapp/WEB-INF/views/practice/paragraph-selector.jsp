<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/main/header.jsp" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
<script src="https://code.jquery.com/jquery-3.3.1.min.js"
	integrity="sha256-FgpCb/KJQlLNfOu91ta32o/NMZxltwRo8QtmkMRdAu8="
	crossorigin="anonymous"></script>
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">

<style type="text/css">
	*{
		margin: 0;
		padding: 0;
	}
	
	body{
		overflow:hidden;
		width: 100%;
		height: 700px;
	}
	#center{
		margin: auto;
		width: 1200px;
		transition: 0.5s;
	}
	#wrapper{
		text-align: center;
		margin: 250px auto;
		width: 1200px;
		height: 200px;
	}
	.lang-wrapper{
		margin: auto 20px;
		display: inline-block;
		border-radius: 5px;
		box-shadow: 3px 3px 3px 3px #aaaaaa;
	}
	.lang-wrapper:hover{
		box-shadow: 3px 3px 3px 3px #CE3636;
	}
	.lang-desc{
		font-size: 20px;
		margin: 30px 0;
	}
	.lang{
		margin: 50px;
	}
	#javadiv{
		width: 200px;
		height: 200px;
		background-image: url(/cota/images/java.png);
		background-size: 100% 100%;	
	}
	
	#cdoubleplusdiv{
		width: 200px;
		height: 200px;
		background-image: url(/cota/images/cdoubleplus.png);
		background-size: 100% 100%;	
	}
	
	#pythondiv{
		width: 200px;
		height: 200px;
		background-image: url(/cota/images/python.png);
		background-size: 100% 100%;	
	}
	#practice-wrapper{
		position:absolute;
		top: 60px;
		width: 0;
		height: 0;
		opacity: 0;
		transition: 0.8s;
	}
	
	#paragraphlist-wrapper{
		margin: 20px auto;
		overflow: hidden;
		transition: 0.5s;
		opacity: 0;
	}
	
	
	#list-wrapper{
		margin: auto;
		width: 1000px;
		height: 700px;
		opacity: 0;
	}
	.list{
		margin: 10px 45px;
		float: left;
		width: 400px;
		height: 100px;
		border-radius: 5px;
		box-shadow: 2px 2px 2px 2px gray;
		background: linear-gradient(to right,#ff9e2c 0%, #ff9e2c 5%, WHITE 5%, WHITE 100%);
	}
	.list:hover{
		box-shadow: 2px 2px 2px 2px #CE3636;
	}
	
	.list-desc{
		display: inline-block;
		margin-left: 30px;
		margin-top: 10px;
		width: 300px;
		height: 100px;
	}
	
	.list-title{
		width: 300px;
		height: 50px;
	}
	
	.list-lines{
		width: 300px;
		height: 50px;
	}
	
	.right-arrow{
		opacity: 0.5;
		text-align: center;
		display: inline-block;
		width: 50px;
		height: 50px;
		background-image: url(/cota/images/right-arrow.png);
		background-size: 100% 100%
	}
	.lbl-title{
		font-size: 2em;
		margin: auto;
	}
	
	.lbl-lines{
		font-size: 1em;
		color: gray;
		margin: auto;
	}
	#top{
		margin: 30px auto 10px auto;
		width: 1000px;
		height: 80px;
		opacity: 0;
	}
	#top-image{
		background-size: 100% 100%;
		width: 80px;
		height: 80px;
		margin-left: 30px;
		float: left;
		border-radius: 50%;
	}
	#top-desc{
		width: 100px;
		height: 80px;
		margin-left: 10px;
		font-size: 2em;
		float: left;
	}
	
	
</style>
<script>
	$(document).on('click', '.lang-wrapper', function() {
		var $this = $(this);
		console.log("$this : " + $this);
		var selectedLang = $this.attr('id');
		console.log("selectedLang : " + selectedLang);
		var sendData = "lang_type="+selectedLang;
		
		
		$('#center').css("opacity", '0');
		setTimeout(function() {
			$('#center').children().remove();
		}, 1000);
		setTimeout(function() {
		$('#paragraphlist-wrapper').css("width", '1200px');
		}, 100);
		setTimeout(function() {
		$('#paragraphlist-wrapper').css("height", '700px');
		}, 100);
		
		$('#paragraphlist-wrapper').css("position", '');
		$('#paragraphlist-wrapper').css("margin", '0 auto');

		
		$.ajax({
			url : '/cota/paragraphlist',			// 전송할 URL
			type : 'get',				// 전송 방식
			data : sendData, 							// 전송할 데이터
			success : function(data) {  // 통신이 성공했다면 수행할 콜백메서드
				$('#top-image').css('background-image', 'url(/cota/images/'+selectedLang+'.png)');
				$('#top-desc').text(selectedLang);
				$.each(data, function(idx, val){
					$('#list-wrapper').append("<div class='list' id="+val+"><div class='list-desc'><div class='list-title'><label class='lbl-title'>"+val+"</label></div><div class='list-lines'><label class='lbl-lines'>"+val+"</label></div></div><div class='right-arrow'></div></div>")
						
				});
			}
		});
		
		setTimeout(function() {
		$('#paragraphlist-wrapper').css("opacity", '1');
		$('#list-wrapper').css("opacity", '1');
		$('#top').css("opacity", '1');
		}, 1000);
	});
	
	$(document).on('click', '.list', function(){
		var $this = $(this);
		var selectedParagraph = $this.attr('id');
		console.log("selectedParagraph : " + selectedParagraph);
		var sendData = 'para_title='+selectedParagraph;
		$.ajax({
			url : '/cota/getParagraphContent',			// 전송할 URL
			type : 'get',				// 전송 방식
			data : sendData, 							// 전송할 데이터
			success : function(data) {  // 통신이 성공했다면 수행할 콜백메서드
				$('#paragraphlist-wrapper').css("opacity", '0');
				setTimeout(function() {
					$('#paragraphlist-wrapper').remove();
					$('body').append(data);
				}, 500);
			}
		});
	});
	
</script>
</head>
<body>
<div id="center">
	<div id="wrapper">
		
		<div id="java" class="lang-wrapper">
			<div id="javadiv" class="lang">
			</div>
			<div class="lang-desc">
				<label>JAVA</label>
			</div>
		</div>
		
		<div id="cdoubleplus" class="lang-wrapper">
			<div id="cdoubleplusdiv" class="lang">
			</div>
			<div class="lang-desc">
				<label>C++</label>
			</div>
		</div>
		
		<div id="python" class="lang-wrapper">
			<div id="pythondiv" class="lang">
			</div>
			<div class="lang-desc">
				<label>PYTHON</label>
			</div>
		</div>
	</div>
</div>
<div id="paragraphlist-wrapper" class='w3-animate-opacity'>
	<div id='top'>
		<div id='top-image'></div>
		<div id='top-desc'></div>
	</div>
	<div id="list-wrapper">
	</div>
</div>

</body>
</html>