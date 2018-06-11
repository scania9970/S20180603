<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>COTA</title>
<link type="text/css" rel="stylesheet" 
		  href="${pageContext.request.contextPath}/css/start.css" />
</head>
<body oncopy="return false" oncut="return false" onpaste="return false" onload="replaceSentence()">
		<div class="spinner">
	 	     <div class="rect1"></div>
	 		 <div class="rect2"></div>
 			 <div class="rect3"></div>
 	    	 <div class="rect4"></div>
  		 	 <div class="rect5"></div>
  		 	 <div class="rect6"></div>
  		 	 <div class="rect7"></div>
		</div>
		<div class="main">
				<div class="logo_name_wrapper">
					<svg class="eclipse" viewBox="0 0 160 160" width="160" height="160"> 
						<circle cx="80" cy="80" r="50" /> 
						<g transform=" matrix(0.866, -0.5, 0.25, 0.433, 80, 80)"> 
						<path d="M 0,70 A 65,70 0 0,0 65,0 5,5 0 0,1 75,0 75,70 0 0,1 0,70Z" fill="#FF3636"> 
						<animateTransform attributeName="transform" type="rotate" from="360 0 0" to="0 0 0" dur="0.9s" repeatCount="indefinite" /> 
						</path> 
						</g>
						<path d="M 50,0 A 50,50 0 0,0 -50,0Z" transform="matrix(0.866, -0.5, 0.5, 0.866, 80, 80)" /> 
					</svg>
					<label class="site-name">COTA</label>
				</div>
				<br>
				<span><label class="s1" id="s1"></label><label class="s2" id="s2"></label></span>
				<input type="text" id="typed" placeholder="Type the method above to enter" onkeyup="redirection(event)"/>
				<div class="refresh-enter">
					<div id="refresh" onclick="refresh()"></div>
					<button>Enter</button>
				</div>
		<input type="hidden" class="sentence" id="sentence"/>
		</div>
		
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
	<script type="text/javascript">
	
	//입력값 확인
	function redirection(event) {
		console.log($('#typed').prop("selectionStart")); //커서 포지션
	    var x = event.key;	//입력값 저장
	    console.log("x=" + x);
	    var input_textfield = document.getElementById('typed');
	    var input = input_textfield.value;
	    var sentence = document.getElementById('sentence').value;
	    var sentence_obj = document.getElementById('sentence');
   		var cursorPosition = $('#typed').prop("selectionStart");
   		var input_color = $("input").css('color');
	    console.log("input=" + input); //입력값
	    console.log("input.legnth=" + input.length);
	    console.log("sentence=" + sentence); //입력해야 할 문장
		console.log("===============================");
	    if(x === 'Enter'){ //엔터 키 입력 시
	    	if(input === sentence){
	    		showLoading(); //로딩 화면
	    		setTimeout(function(){ window.location="main"; }, 2200); //2.2초 대기 후 메인화면으로 이동
	    	}else{ // 입력값이 틀릴 때
    			console.log("input color="+input_color);
    			$(input_textfield).addClass('shakeIt');
    		 	setTimeout(function() {
	    			$(input_textfield).css({"color":"red"});
	    		 	setTimeout(function() {
		    			$(input_textfield).removeClass('shakeIt');
	    				$(input_textfield).css({"color":input_color});
					}, 500);
				}, 1);
	    	}
	    }
	   if(sentence.substring(0,input.length) == input.substring(0,input.length)){
		    console.log("input.legnth=" + input.length);
	    	$(input_textfield).css({"color":"green"});
	    	var s1 = sentence.substring(0, input.length);
	    	var s2 = sentence.substring(input.length, sentence.length);
	    	$('#s1').text(s1);
	    	$('#s1').css({"color":"green"});
	    	$('#s2').text(s2);
	    }else{
	    	console.log("input.legnth=" + input.length);
	    	$(input_textfield).css({"color":"red"});
	    	var s1 = sentence.substring(0, input.length);
	    	var s2 = sentence.substring(input.length, sentence.length);
	    	$('#s1').text(s1);
	    	$('#s2').text(s2);
	    	$('#s1').css({"color":"red"});
	    }
	}

	//버튼 클릭
	$("button").click(function(){
	    var input_textfield = document.getElementById('typed');
	    var input = input_textfield.value;
	    var sentence = document.getElementById('sentence').value;
	    var input_color = $("input").css('color');
	    if(input === sentence){
    		showLoading();
    		setTimeout(function(){ window.location="main"; }, 2200);
    	}else{
    		console.log("input color="+input_color);
			$(input_textfield).addClass('shakeIt');
		 	setTimeout(function() {
    			$(input_textfield).css({"color":"red"});
    		 	setTimeout(function() {
	    			$(input_textfield).removeClass('shakeIt');
    				$(input_textfield).css({"color":input_color});
				}, 500);
			}, 1);
    	}
    }); 
	
	//로딩 화면
	function showLoading() {
		  $(".main").css({"display": "none"});
		  $(".spinner").css({"display": "block"});
	}
	
	var sentences = ['test'];
	
	//문장 랜덤으로 뿌려주기
	var current = 0;
	function replaceSentence() {
		while(true){
			var a = Math.ceil(Math.random()*12);
			if(a != current){
				current = a;
				break;
			}
		} 
		var currentSentence = sentences[0];
		$('#sentence').val(currentSentence);
		$('#s1').text(currentSentence);
	}
	
	function refresh(){
		
		$('#refresh').addClass('spin-refresh');
		
		while(true){
			var a = Math.ceil(Math.random()*12);
			if(a != current){
				current = a;
				break;
			}
		} 
		var currentSentence = sentences[current];
		$('#sentence').val(currentSentence);
		$('#s1').text(currentSentence);
		
		setTimeout(function(){ $('#refresh').removeClass('spin-refresh'); }, 250);
		
	}
	
	</script>
</body>
</html>