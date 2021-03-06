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
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">


<style type="text/css">
	*{
		margin: 0;
		padding: 0;
	}
	.header{
		margin-bottom: 70px;
	}
	body{
		overflow:hidden;
		width: 100%;
		height: 860px;
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
		transition: 0.5s;
		opacity: 0;
	}
	.list{
		transition: 0.5s;
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
		height: 50px;
		opacity: 0;
	}
	#top-image{
		background-size: 100% 100%;
		width: 50px;
		height: 50px;
		margin-left: 30px;
		float: left;
		border-radius: 50%;
	}
	#top-desc{
		width: 100px;
		height: 50px;
		margin-left: 10px;
		font-size: 2em;
		float: left;
	}
	
	#practice-wrapper{
		margin: 0 auto;
		width: 80%;
		height: 700px;
		transition: 0.5s;
		opacity: 0;
	}
	#practice-top{
		width: 100%;
		height: 50px;
		
	}
	#practice-top-wrapper{
		display: inline-block;
		width: 50%;
		height: 50px;
		border: 3px solid gray;
		border-bottom: none;
		border-radius: 5px 20px 0 0;
	}
	#practice-top-image{
		background-image: url(/cota/images/document.png);
		background-size: 100% 100%;
		float: left;
		width: 10%;
		height: 45px;
	
	}
	#practice-top-class{
		float: left;
		margin-left: 15px;
		width: 70%;
		height: 50px;
		font-size: 2em;
	
	}
	#practice-top-time{
		display: inline-block;
		width: 25%;
		height: 50px;
		float: right;
		font-size: 2em;
	}
	#sandglass{
		display:inline-block;
		width: 10%;
		height: 50px;
		background-image: url(/cota/images/sandglass.png);
		background-size: 100% 100%;
		float: right;
	}
	
	#time-label{
		display:inline-block;
		float: right;
		margin-left: 10px;
	}
	
	#practice-middle{
		width: 100%;
		height: 630px;
		border: 3px solid gray;
		border-radius: 0 10px 10px;
	}
	#practice-paragraph{
		margin: 10px 10px;
		overflow: hidden;
		float: left;
		display: inline-block;
		font-size: 20px;
		width: 100%;
		height: 600px;
	}
	#practice-lineresult{
		float: left;
		display: inline-block;
		height: 500px;
		overflow: hidden;
	
	}
	#practice-bottom{
		width: 100%;
		height: 100px;	
	}
	#lbl-pages{
		float: right;
	}
	#practice-pages{
		width: 35%;
		height: 100px;
		float: right;
		font-size: 2em;
	
	}
	#class-name{
		margin: auto;
	}
	.line-divs{
		height: 62px;
		width: 100%;
		margin-bottom: 15px;
	}
	.space{
		display: inline-block;
	}
	.lbl-lines{
		height: 30px;
	}
	.s2{
		height: 30px;
	}
	.ipt-lines{
		height: 30px;
		border: none;
		outline: none;
	}
	.ipt-line-divs{
		display: inline-block;
	}
	.line-result-divs{
		height: 62px;
	}
	
	
	
	.modal {
    display: none; /* Hidden by default */
    position: fixed; /* Stay in place */
    z-index: 1; /* Sit on top */
    padding-top: 100px; /* Location of the box */
    left: 0;
    top: 0;
    width: 100%; /* Full width */
    height: 100%; /* Full height */
    overflow: auto; /* Enable scroll if needed */
    background-color: rgb(0,0,0); /* Fallback color */
    background-color: rgba(0,0,0,0.4); /* Black w/ opacity */
}
	/* Modal Content */
.modal-content {
	font-family: 'NanumSquareRound',sans-serif;
    position: relative;
    background-color: #fefefe;
    margin: auto;
    padding: 0;
    border: 1px solid #888;
    border-radius: 10px;
    width: 60%;
    box-shadow: 0 4px 8px 0 rgba(0,0,0,0.2),0 6px 20px 0 rgba(0,0,0,0.19);
    -webkit-animation-name: animatetop;
    -webkit-animation-duration: 0.4s;
    animation-name: animatetop;
    animation-duration: 0.4s
}

/* Add Animation */
@-webkit-keyframes animatetop {
    from {top:-300px; opacity:0} 
    to {top:0; opacity:1}
}

@keyframes animatetop {
    from {top:-300px; opacity:0}
    to {top:0; opacity:1}
}

/* The Close Button */
.close {
    color: #A6A6A6;
    float: right;
    font-size: 28px;
    font-weight: bold;
}

.close:hover,
.close:focus {
    color: #000;
    text-decoration: none;
    cursor: pointer;
}

.modal-header {
	maring: 10px 0;
    padding: 2px 16px;
    background-color: white;
}

.modal-body {
	padding: 2px 16px;
}

.modal-footer {
    padding: 2px 16px;
}
#onestar{
	font-size: 2em;
	transition: 1s;
}
#twostar{
	font-size: 2em;
	transition: 1s;
}

#threestar{
	font-size: 2em;
	transition: 1s;
}

#fourstar{
	font-size: 2em;
	transition: 1s;
}

#fivestar{
	font-size: 2em;
	transition: 1s;
} 

#statTable{
	margin: auto;
	font-family: 'NanumSquareRound',sans-serif;
	text-align: center;
	color: gray;
}
.stat{
	font-family: 'NanumSquareRound',sans-serif;
	width: 200px;
	height: 50px;
	font-size: 20px;
}
.statResult{
	font-family: 'NanumSquareRound',sans-serif;
	width: 200px;
	height: 50px;
	font-size: 20px;
}
.buttons{
	font-family: 'NanumSquareRound',sans-serif;
	font-size: 20px;
	margin-left: 5px;
	width: 48%;
	height: 45px;
	border-radius: 5px;
	border: 1px solid gray;
	background-color: white;
	color: gray;
}
.checked {
    color: orange;
}
.fixed_width_wrapper {
	float: left;
	margin: 0 15px;
	display: inline-block;
	width: 765px;
}

.line div {
	display: inline-block;
}
.line {
	width: 100%; 
	text-align: center;
	margin: 10px auto;
}
.keyboard {
	width: 765px;
	background-color: #cccccc;
	border: 1px solid #cccccc;
	border-radius: 25px;     
}

.key {
	background-color: white;
	color: #737373;
	border: 1px solid #cccccc;
	border-radius: 10px;
	width: 43px;
	height: 52px;
	box-shadow: inset 0 -1px 1px rgba(255,255,255,0.3);
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
<script>
var currPage = 1;
var paragraphLength = 0;
var typeableChars = 0;
var selectedLang = null;
	$(document).on('click', '.lang-wrapper', function() {
		var $this = $(this);
		//console.log("$this : " + $this);
		selectedLang = $this.attr('id');
		//console.log("selectedLang : " + selectedLang);
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
		
		$('#paragraphlist-wrapper').css("margin", '0 auto');

		
		$.ajax({
			url : '/cota/paragraphlist',			// 전송할 URL
			type : 'get',				// 전송 방식
			data : sendData, 							// 전송할 데이터
			success : function(data) {  // 통신이 성공했다면 수행할 콜백메서드
				$('#top-image').css('background-image', 'url(/cota/images/'+selectedLang+'.png)');
				$('#top-desc').text(selectedLang.toUpperCase());
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
		
		// paragraph 선택 시 없어질 css 컨트롤
		$('#paragraphlist-wrapper').css("opacity", '0');
		setTimeout(function(){
			$('#paragraphlist-wrapper').remove();
		},1000);
		$('#class-name').text(selectedParagraph);  // 클래스명 설정
		
		parseParagraphData(selectedParagraph);
	});
	
	
	
	
	function parseParagraphData(_selectedParagraph){
		var sendData = "para_title="+_selectedParagraph;  // 전송할 파라미터
		var paragraphData = ""; // 성공 시 데이터를 담을 변수
		var indentedData = "";
		var linedData = [];
		var parsedDiv = '';
		var parsedLineDiv = '';
		var parsedLineLbl = '';
		var parsedLineIpt = '';
		var lastIndexOfTab = 0;
		var numOfTabs = 0;
		var paragraphData = '';
		$.ajax({
			url : '/cota/getParagraphContent',			// 전송할 URL
			type : 'get',				// 전송 방식
			data : sendData, 							// 전송할 데이터
			success : function(data) {  // 통신이 성공했다면 수행할 콜백메서드
				linedData = data.split('@)!*');  // 개행 처리
				paragraphLength = linedData.length;
				$.each(linedData, function(idx, val){
					//console.log('val : ' + idx + ", "+ val )
					if(idx == 0){
						$('#practice-paragraph').append("<div id='line-div"+(idx+1)+"' class='line-divs'><span><label id='lbl-line"+(idx+1)+"' class='lbl-lines'></label><label id='s2' class='s2'></label><label id='result"+(idx+1)+"'></label></span><br><div id='ipt-line"+(idx+1)+"-div' class='ipt-line-divs'><input type='text' id='ipt-line"+(idx+1)+"' class='ipt-lines' spellcheck='false' index="+(idx+1)+"><input type='hidden' id='sentence"+(idx+1)+"'></div></div>")
					}else{
						$('#practice-paragraph').append("<div id='line-div"+(idx+1)+"' class='line-divs'><span><label id='lbl-line"+(idx+1)+"' class='lbl-lines'></label><label id='s2' class='s2'></label><label id='result"+(idx+1)+"'></label></span><br><div id='ipt-line"+(idx+1)+"-div' class='ipt-line-divs'><input type='text' id='ipt-line"+(idx+1)+"' class='ipt-lines' spellcheck='false' index="+(idx+1)+"><input type='hidden' id='sentence"+(idx+1)+"'></div></div>")
					}
				});
				
				$.each(linedData, function(idx, val){
					
					lastIndexOfTab = val.lastIndexOf(')^)#');  // ')^)#'의 마지막 인덱스 >> indent처리에 필요한 변수
					if(lastIndexOfTab == -1){  // 마지막 인덱스가 0 라면 indent처리할 필요 x
						numOfTabs = 0;  // prepend할 탭의 수
					}else{
						numOfTabs = (lastIndexOfTab+3) / 4;  
					}
					parsedDiv = "#line-div"+(idx+1);  // 해당 div
					parsedLineLbl = "#lbl-line"+(idx+1); // 해당 라인의 라벨
					parsedLineDiv = "#ipt-line"+(idx+1)+"-div"; // 해당 라인의 input div
					parsedLineIpt = "#ipt-line"+(idx+1); // 해당 라인의 input
					parsedLineSentence = "#sentence"+(idx+1);
					if(numOfTabs != 0){ // indent 처리가 필요할 경우
						for(var i = 0; i < numOfTabs; i++){ // numOfTabs에 맞게 prepend
							$(parsedDiv).prepend("<div class='space'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</div>"); // numOfTabs에 맞게 prepend
							$(parsedLineDiv).prepend("<div class='space'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</div>"); // numOfTabs에 맞게 prepend
						}
					}
					var text = val.replace(/\)\^\)\#/gi, "").trim();
					$(parsedLineLbl).text(text);  //  tab을 표시하는 문자열 제거
					$(parsedLineIpt).css('width', $(parsedLineLbl).css('width')); // 문장의 길이와 입력할 input태그의 width를 동일하게 지정
					$(parsedLineSentence).val(text);
					typeableChars += text.length;
				});
					getPage(currPage, paragraphLength);
					setTimeout(function(){
						$("#practice-wrapper").css('opacity', '1');
					}, 1000);
					setTimeout(function(){
						$('#ipt-line1').focus();
					}, 1600);
					
			}
		});
	}
	
	
	//////////////////////////////////////////////////////////
	
	var inputs = $('.ipt-lines');
	var inputIdx = 1;
	
	
	

	
	var sentenceHits = 0;  // 문장을 타이핑하며 키를 누른 횟순
	var speed = "";  // 속도를 담을 변수
	var accuracy = "";
	var startDate = null;  // 시작 날짜 
	var startTime = null;  // 시작 시간
	var endTime = null;    // 종료 날짜
	var ellapsedTime = null;  // 소요 시간
	var speedArr = [];
	var accArr = [];
	var typealbeChars = 0;
	var incorrectHits = 0;
	var timerOn = 0;
	var totalHits = 0;
	var incorrect_keys = [];
	$(document).on('keyup', '.ipt-lines', function(event){
		var x = event.key;	//입력값 저장
		if(timerOn == 0){
			timerOn = 1;
			startTimer();
		}
		if (x == 'tab') {
	        e.preventDefault();
	        e.stopPropagation();
	    }
		
		if(startDate == null){ // 시간이 키를 누를때마다 업데이트 되는 것을 방지
			startDate = new Date();
			startTime = startDate.getTime();
		}
		var input = $(this).val();
		var sentence = $(this).next().val();
		var s1elem = $(this).parent().parent().children().children().eq(0);
		var s2elem = $(this).parent().parent().children().children().eq(1);
		var index = $(this).attr('index');
		//console.log("$this method start : " + index);
		
	
		if(x != 'Enter' && x != 'Shift'){
			totalHits++;
			sentenceHits++; // enter 와 shift를 제외한 key typing만을 인정
		}
		
		
		if(x === 'Enter'){ //엔터 키 입력 시
			if(input.length == 0){
				return;
			}
			
   			chkLineCount(inputIdx, paragraphLength);
	    	if(inputIdx % 8 == 0){
	    		for(var i = inputIdx-7; i <= inputIdx; i++ ){
				    var parsedId1 = "#line-div"+i;
	    			$(parsedId1).remove();
	    		}
	    			currPage++;
	    			getPage(currPage, paragraphLength);
	    	}
	    	inputIdx++;
	    	var test = "#ipt-line"+inputIdx;
	    	$(test).focus();
			var endDate = new Date();
			endTime = endDate.getTime();
			ellapsedTime = endTime - startTime; 
			speed = getSpeed(sentenceHits, ellapsedTime);
			acc = getAccuracy(sentence, input);
			startDate = null; // 시간 초기화
			sentenceHits = 0; // 문장 타이핑 수 초기화;
			var result = "#result"+index;
			$(result).text(" // " + speed + ", " + acc);
			$(result).css('color', 'blue');
			
	    }
		
		
	   if(sentence.substring(0,input.length) == input.substring(0,input.length)){
	    	$(this).css({"color":"green"});
	    	var s1 = sentence.substring(0, input.length);
	    	var s2 = sentence.substring(input.length, sentence.length);
	    	s1elem.text(s1);
	    	s1elem.css({"color":"green"});
	    	s2elem.text(s2);
	    }else{
	    	incorrectHits++;
	    	incorrect_keys.push(sentence.substr(input.length-1,1));

	    	$(this).css({"color":"red"});
	    	var s1 = sentence.substring(0, input.length);
	    	var s2 = sentence.substring(input.length, sentence.length);
	    	s1elem.text(s1);
	    	s2elem.text(s2);
	    	s1elem.css({"color":"red"});
	    }
		
	})
	
	function getSpeed(sentenceHits, ellapsedTime){
		var seconds = ellapsedTime / 1000;
		var speed = Math.round(sentenceHits / seconds * 60, 2);
		speedArr.push(speed);
		console.log("speed : " + speed);
		return speed+' h/m';
	}
	
	function getAccuracy(sentence, input){
		var sChar = null;
		var tChar = null;
		var sLength = sentence.length;
		var incorrectChars = 0;
		var accuracy = 0;
		for(var i = 0; i < sLength; i++){
			sChar = sentence.charAt(i);
			tChar = input.charAt(i);
			if(tChar != null){
				if(sChar != tChar){
					incorrectChars++;
				}
			}else{
				incorrectChars++;
			}	
		}
		accuracy = Math.round(((sLength - incorrectChars) / sLength * 100));
		console.log('acc : ' + accuracy);
		accArr.push(accuracy);	
	
		return accuracy+ ' %';
	}

	function getPage(currPage, _paragraphLength){
		//console.log("getPage in c:" + currPage);
		//console.log("getPage in p:" + _paragraphLength);
		var pageString = "";
		var totalPages = Math.ceil(_paragraphLength / 8);
		pageString = currPage + " / " + totalPages + "page";
		$('#lbl-pages').text(pageString);
	}
	var playAlert = null;
	function startTimer(){
		var minutes = 0;
		var seconds = 0;
		var minutesString = "";
		var secondsString = "";
		console.log("started")
			playAlert = setInterval(function(){
				seconds++;
				if(seconds == 60){
					seconds = 0;
					minutes++;
				}
				if(seconds < 10){
					secondsString = "0" + seconds;
				}else{
					secondsString = seconds;
				}
				if(minutes < 10){
					minutesString = "0" + minutes;
				}else{
					minutesString = minutes;
				}
				$('#time-label').text(minutesString + " : " + secondsString);	
			}, 1000);
	}
	
	function stopTimer(){
	  clearInterval(playAlert);
	}
	
	function chkLineCount(idx, _paragraphLength){
		console.log("idx : " + idx);
		console.log("length : " + _paragraphLength);
		if(idx == _paragraphLength){
			stopTimer();
			showModal(speedArr, accArr, totalHits, typeableChars, incorrect_keys);
		}
	} 	
	
	function showModal(_speedArr, _accArr, _totalHits, _typeableChars, _incorrectKeys){
		var modal = document.getElementById('myModal');
	    var speedSum = 0;
	    var speedMean = 0;
	    var speedScore = 0;
	    var accSum = 0;
	    var accMean = 0;
	    var accScore = 0;
	    var productivity = 0;
	    var productivityScore = 0;
	   
		// 평균 타수
	    for(var i = 0; i < _speedArr.length; i++){
	    	speedSum += _speedArr[i];
	    }
	    speedMean = Math.round(speedSum / _speedArr.length);
		$('#mspeed').text(speedMean + " h/m");
		
		if(speedMean > 600){
			speedScore = 5;	
		}else if(600 >= speedMean > 450){
			speedScore = 4;	
		}else if(450 >= speedMean > 300){
			speedScore = 3;	
		}else if(300 >= speedMean > 150){
			speedScore = 2;	
		}else{
			speedScore = 1;	
		}
		
		console.log('speedScore : ' + speedScore);
		
		
		// 평균 정확도
		for(var i = 0; i < _accArr.length; i++){
			accSum += _accArr[i];
	    }
		accMean = Math.round(accSum / _accArr.length);
		$('#macc').text(accMean + " %");
		
		// 생산성
		console.log("_totalHits : " + _totalHits);
		console.log("_typeableChars : " + _typeableChars);
		if(_totalHits < _typeableChars){
			productivity = '오타가 너무 많습니다.';
			typeableChars = 0;
			$('#prod').text(productivity);
		}else{
			productivity = Math.round((_totalHits - _typeableChars) / _totalHits * 100)+'%';
			$('#prod').text(productivity);
			productivity = 0;
			typeableChars = 0;
		}
		
		if(accMean > 80){
			accScore = 5;	
		}else if(80 >= accMean > 60){
			accScore = 4;	
		}else if(60 >= accMean > 40){
			accScore = 3;	
		}else if(40 >= accMean > 20){
			accScore = 2;	
		}else{
			accScore = 1;	
		}

		console.log('accscore : ' + accScore);
// 많이 틀린 키
		
		if(_incorrectKeys == null){
			return;
		}
		
		_incorrectKeys.sort();
		var flag = _incorrectKeys[0];
	    var incorrectJson = new Object();
		var times = 0;
	 	var current = null;
	 	var incorrectText = ' ';
		var incorrectArr = [];
		var incorrect = "";
		if(_incorrectKeys == ''){
			incorrectText = '정확도 100%!';
		}else{
			for(var i = 0; i < _incorrectKeys.length; i++){
				current = _incorrectKeys[i];
				if(_incorrectKeys[i] != 'Backspace' &&_incorrectKeys[i] != 'Shift' ){
					if(flag == current){
						times++;
						incorrectJson[flag] = times;
					}else{
						flag = _incorrectKeys[i];
						times = 1;
						incorrectJson[flag] = times;
					}
				}
			}
			
			$.each(incorrectJson, function(index, value){ // incorrectJson 색인배열화(map처럼 만든다는 소리)
		        incorrectArr.push({key: index, value: value});
			});
			incorrectArr.sort(function(a, b){ // value에 따라 정렬
				return(a.value < b.value) ? -1 : (a.value > b.value) ? 1 : 0;
			});
			incorrectArr.reverse();
			console.log(incorrectArr);
			for(var i = 0; i < incorrectArr.length; i++){
				var currVal = incorrectArr[i].value * 1;
				var currKey = incorrectArr[i].key;
				var parsedKey = _getParsedKey(currKey);
				var curr = $(parsedKey);
				console.log("currKey : " + currKey);
				console.log("currVal : " + currVal);
				console.log(typeof currVal)
				
				
				if(currVal == 1){
					console.log('1');
					$(parsedKey).css('background-color', '#fffc00');
					$(parsedKey).children().eq(1).text("");
					$(parsedKey).children().eq(1).text(currVal);
				}else if(currVal == 2){
					console.log('2');
					$(parsedKey).css('background-color', '#fda500');
					$(parsedKey).css('color', 'white');
					$(parsedKey).children().eq(1).text("");
					$(parsedKey).children().eq(1).text(currVal);
				}else if(currVal == 3){
					console.log('3');
					$(parsedKey).css('background-color', '#e66c0f');
					$(parsedKey).css('color', 'white');
					$(parsedKey).children().eq(1).text("");
					$(parsedKey).children().eq(1).text(currVal);
				}else if(currVal == 4){
					console.log('4');
					$(parsedKey).css('background-color', '#ff0000');
					$(parsedKey).css('color', 'white');
					$(parsedKey).children().eq(1).text("");
					$(parsedKey).children().eq(1).text(currVal);
				}else if(currVal >= 5){
					console.log('5');
					$(parsedKey).css('background-color', '#cf1a1a');
					$(parsedKey).css('color', 'white');
					$(parsedKey).children().eq(1).text("");
					$(parsedKey).children().eq(1).text(currVal);
				}
				
			}
			
			for(var i = 0; i < 3; i++){
				if(!incorrectArr[i]){
					continue;
				}
				incorrectText += " " + incorrectArr[i].key + " : " + incorrectArr[i].value + ",";
			}
			for(var i = 0; i < incorrectArr.length; i++){
				incorrect += incorrectArr[i].key + ":" + incorrectArr[i].value+",";
			}
		}
		
		
		
		var starScore = Math.round((speedScore+accScore)/2);
		console.log("starScore : " + starScore); 
		
		if(starScore == 1){
			setInterval(function() {
				$('#onestar').addClass("checked");
			}, 100);
		}else if(starScore == 2){
			setInterval(function() {
				$('#onestar').addClass("checked");
			}, 100);
			setInterval(function() {
				$('#twostar').addClass("checked");
			}, 400);
		}else if(starScore == 3){
			setInterval(function() {
				$('#onestar').addClass("checked");
			}, 100);
			setInterval(function() {
				$('#twostar').addClass("checked");
			}, 400);
			setInterval(function() {
				$('#threestar').addClass("checked");
			}, 700);
		}else if(starScore == 4){
			setInterval(function() {
				$('#onestar').addClass("checked");
			}, 100);
			setInterval(function() {
				$('#twostar').addClass("checked");
			}, 400);
			setInterval(function() {
				$('#threestar').addClass("checked");
			}, 700);
			setInterval(function() {
				$('#fourstar').addClass("checked");
			}, 1000);
		}else{
			setInterval(function() {
				$('#onestar').addClass("checked");
			}, 100);
			setInterval(function() {
				$('#twostar').addClass("checked");
			}, 400);
			setInterval(function() {
				$('#threestar').addClass("checked");
			}, 700);
			setInterval(function() {
				$('#fourstar').addClass("checked");
			}, 1000);
			setInterval(function() {
				$('#fivestar').addClass("checked");
			}, 1300);
		}
		
		
		$('#incorrect_keys').text(incorrectText);
		modal.style.display = "block";
		var email = null;
		<%
			if(member != null){
				
				%>
				var email = "<%=member.getEmail()%>"
				var lang_type = $('#lang-selector option:selected').val();
				var sendData = "email="+email
								+"&lang_type="+selectedLang
								+"&field_type=paragraph"
								+"&speed="+speedMean
								+"&accuracy="+accMean
								+"&interrupt="+productivity
								+"&incorrect_key="+incorrect;
				
				$.ajax({
					url : '/cota/insertStatistics',			// 전송할 URL
					type : 'post',				// 전송 방식
					data : sendData, 			// 전송할 데이터
					success : function(data) {  // 통신이 성공했다면 수행할 콜백메서드
						console.log("success");
					}
				});	
			
				<%
			}
		%>
		
	}
	
	function _getParsedKey(key) {
		if (key === ' ') {
			return "#_key_space";
		} else if (key === '0' || key === ')') {
			return "#_key_zero";
		} else if (key === '1' || key === '!') {
			return "#_key_one";
		} else if (key === '2' || key === '@') {
			return "#_key_two";
		} else if (key === '3' || key === '#') {
			return "#_key_three";
		} else if (key === '4' || key === '$') {
			return "#_key_four";
		} else if (key === '5' || key === '%') {
			return "#_key_five";
		} else if (key === '6' || key === '^') {
			return "#_key_six";
		} else if (key === '7' || key === '&') {
			return "#_key_seven";
		} else if (key === '8' || key === '*') {
			return "#_key_eight";
		} else if (key === '9' || key === '(') {
			return "#_key_nine";
		} else if (key === '`' || key === '~') {
			return "#_key_accent";
		} else if (key === '-' || key === '_') {
			return "#_key_hyphen";
		} else if (key === '=' || key === '+') {
			return "#_key_equals";
		} else if (key === '[' || key === '{') {
			return "#_key_left_bracket";
		} else if (key === ']' || key === '}') {
			return "#_key_right_bracket";
		} else if (key === '\\' || key === '|') {
			return "#_key_backslash";
		} else if (key === ';' || key === ':') {
			return "#_key_semicolon";
		} else if (key === "'" || key === '"') {
			return "#_key_apostrophe";
		} else if (key === ',' || key === '<') {
			return "#_key_comma";
		} else if (key === '.' || key === '>') {
			return "#_key_period";
		} else if (key === '/' || key === '?') {
			return "#_key_forwardslash";
		} else if (key === 'Control') {
			return "#_key_right_ctrl";
		} else if (key === 'Alt') {
			return "#_key_right_alt";
		} else if (key === 'Shift') {
			return "#_key_right_shift";
		} else {
			return "#_key_" + key.toLowerCase();
		}
	}
	
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
<div id="paragraphlist-wrapper">
	<div id='top'>
		<div id='top-image'></div>
		<div id='top-desc'></div>
	</div>
	<div id="list-wrapper">
	</div>
</div>

<div id="practice-wrapper"> <!-- 전체 -->
	<div id="practice-top"> <!-- 상단 -->
		<div id="practice-top-wrapper"> <!-- 이미지&클래스명 -->
			<div id="practice-top-image"></div> <!-- 이미지 -->
			<div id="practice-top-class">
				<label id="class-name"></label>
			</div> <!-- 클래스명 -->
		</div>
		<div id="practice-top-time"> <!-- 시간 -->
			<label id="time-label">00 : 00</label>
			<div id="sandglass"></div>
		</div>
	</div>
	
	<div id="practice-middle"> <!-- 중단 -->
		<div id="practice-paragraph"> <!-- 문단연습 -->
		</div>
	</div>
	
	<div id="practice-bottom"> <!-- 하단 -->
		<div id="practice-pages">
			<label id="lbl-pages"></label>
		</div> <!-- 페이지 -->
	</div>
	
</div>
<div id="myModal" class="modal">
  <div class="modal-content">
    <div class="modal-header" style="background-color:gray;color:white;font-size:25px;">
		통계
    </div>
    <div class="modal-body">
    	<table id='statTable'>
    		<tr>
    			<td colspan='2'>	
	    			<span id="onestar" class="fa fa-star"></span>
					<span id="twostar" class="fa fa-star"></span>
					<span id="threestar" class="fa fa-star"></span>
					<span id="fourstar" class="fa fa-star"></span>
					<span id="fivestar" class="fa fa-star"></span>
				</td>
    		</tr>
    		<tr>
    			<td class='stat'>평균타수</td>
    			<td id="mspeed" class='statResult'></td>
    		</tr>
    		<tr>
    			<td class='stat'>평균정확도</td>
    			<td id="macc" class='statResult'></td>
    		</tr>
    		<tr>
    			<td class='stat'>비생산적 타이핑</td>
    			<td id="prod" class='statResult'></td>
    		</tr>
    		<tr>
    			<td class='stat'>많이 틀린 자리</td>
    			<td id="incorrect_keys" class='statResult'></td>
    		</tr>
    		<tr>
	    			<td colspan="2">
	    				<div class="fixed_width_wrapper">
					<div class="keyboard">
						<div class="line">
							<div id="_key_accent" class="key">
								<div class="line1">~</div>
								<div class="line2">`</div>
							</div>
							<div id="_key_one" class="key">
								<div class="line1">!</div>
								<div class="line2">1</div>
							</div>
							<div id="_key_two" class="key">
								<div class="line1">@</div>
								<div class="line2">2</div>
							</div>
							<div id="_key_three" class="key">
								<div class="line1">#</div>
								<div class="line2">3</div>
							</div> 
							<div id="_key_four" class="key">
								<div class="line1">$</div>
								<div class="line2">4</div>
							</div>
							<div id="_key_five" class="key">
								<div class="line1">%</div>
								<div class="line2">5</div>
							</div>
							<div id="_key_six" class="key">
								<div class="line1">^</div>
								<div class="line2">6</div>
							</div>
							<div id="_key_seven" class="key">
								<div class="line1">&</div>
								<div class="line2">7</div>
							</div>
							<div id="_key_eight" class="key">
								<div class="line1">*</div>
								<div class="line2">8</div>
							</div>
							<div id="_key_nine" class="key">
								<div class="line1">(</div>
								<div class="line2">9</div>
							</div>
							<div id="_key_zero" class="key">
								<div class="line1">)</div>
								<div class="line2">0</div>
							</div>
							<div id="_key_hyphen" class="key">
								<div class="line1">_</div>
								<div class="line2">-</div>
							</div>
							<div id="_key_equals" class="key">
								<div class="line1">+</div>
								<div class="line2">=</div>
							</div>
							<div id="_key_backspace" class="key wide_2">
								<div class="line1">backspace</div>
								<div class="line2">&nbsp;</div>
							</div>
						</div>
						<div class="line">
							<div id="_key_tab" class="key wide_2">
								<div class="line1">tab</div>
								<div class="line2">&nbsp;</div>
							</div>
							<div id="_key_q" class="key single">
								<div class="line1">Q</div>
								<div class="line2">&nbsp;</div>
							</div>
							<div id="_key_w" class="key single">
								<div class="line1">W</div>
								<div class="line2">&nbsp;</div>
							</div>
							<div id="_key_e" class="key single">
								<div class="line1">E</div>
								<div class="line2">&nbsp;</div>
							</div>
							<div id="_key_r" class="key single">
								<div class="line1">R</div>
								<div class="line2">&nbsp;</div>
							</div>
							<div id="_key_t" class="key single">
								<div class="line1">T</div>
								<div class="line2">&nbsp;</div>
							</div>
							<div id="_key_y" class="key single">
								<div class="line1">Y</div>
								<div class="line2">&nbsp;</div>
							</div>
							<div id="_key_u" class="key single">
								<div class="line1">U</div>
								<div class="line2">&nbsp;</div>
							</div>
							<div id="_key_i" class="key single">
								<div class="line1">I</div>
								<div class="line2">&nbsp;</div>
							</div>
							<div id="_key_o" class="key single">
								<div class="line1">O</div>
								<div class="line2">&nbsp;</div>
							</div>
							<div id="_key_p" class="key single">
								<div class="line1">P</div>
								<div class="line2">&nbsp;</div>
							</div>
							<div id="_key_left_bracket" class="key">
								<div class="line1">{</div>
								<div class="line2">[</div>
							</div>
							<div id="_key_right_bracket" class="key">
								<div class="line1">}</div>
								<div class="line2">]</div>
							</div>
							<div id="_key_backslash" class="key">
								<div class="line1">|</div>
								<div class="line2">\</div>
							</div>
						</div>
						<div class="line">
							<div id="_key_capslock" class="key wide_3">
								<div class="line1">caps lock</div>
								<div class="line2">&nbsp;</div>
							</div>
							<div id="_key_a" class="key single">
								<div class="line1">A</div>
								<div class="line2">&nbsp;</div>
							</div>
							<div id="_key_s" class="key single">
								<div class="line1">S</div>
								<div class="line2">&nbsp;</div>
							</div>
							<div id="_key_d" class="key single">
								<div class="line1">D</div>
								<div class="line2">&nbsp;</div>
							</div>
							<div id="_key_f" class="key single">
								<div class="line1">F</div>
								<div class="line2">&nbsp;</div>
							</div>
							<div id="_key_g" class="key single">
								<div class="line1">G</div>
								<div class="line2">&nbsp;</div>
							</div>
							<div id="_key_h" class="key single">
								<div class="line1">H</div>
								<div class="line2">&nbsp;</div>
							</div>
							<div id="_key_j" class="key single">
								<div class="line1">J</div>
								<div class="line2">&nbsp;</div>
							</div>
							<div id="_key_k" class="key single">
								<div class="line1">K</div>
								<div class="line2">&nbsp;</div>
							</div>
							<div id="_key_l" class="key single">
								<div class="line1">L</div>
								<div class="line2">&nbsp;</div>
							</div>
							<div id="_key_semicolon" class="key">
								<div class="line1">:</div>
								
								<div>;</div>
							</div>
							<div id="_key_apostrophe" class="key">
								<div class="line1">"</div>
								
								<div>'</div>
							</div>
							<div id="_key_enter" class="key wide_3">
								<div class="line1">enter</div>
								<div class="line2">&nbsp;</div>
							</div>
						</div>
						<div class="line">
							<div id="_key_left_shift" class="key wide_4">
								<div class="line1">shift</div>
								<div class="line2">&nbsp;</div>
							</div>
							<div id="_key_z" class="key single">
								<div class="line1">Z</div>
								<div class="line2">&nbsp;</div>
							</div>
							<div id="_key_x" class="key single">
								<div class="line1">X</div>
								<div class="line2">&nbsp;</div>
							</div>
							<div id="_key_c" class="key single">
								<div class="line1">C</div>
								<div class="line2">&nbsp;</div>
							</div>
							<div id="_key_v" class="key single">
								<div class="line1">V</div>
								<div class="line2">&nbsp;</div>
							</div>
							<div id="_key_b" class="key single">
								<div class="line1">B</div>
								<div class="line2">&nbsp;</div>
							</div>
							<div id="_key_n" class="key single">
								<div class="line1">N</div>
								<div class="line2">&nbsp;</div>
							</div>
							<div id="_key_m" class="key single">
								<div class="line1">M</div>
								<div class="line2">&nbsp;</div>
							</div>
							<div id="_key_comma" class="key">
								<div class="line1">&lt;</div>
								
								<div>,</div>
							</div>
							<div id="_key_period" class="key">
								<div class="line1">&gt;</div>
								
								<div>.</div>
							</div>
							<div id="_key_forwardslash" class="key">
								<div class="line1">?</div>
								
								<div>/</div>
							</div>
							<div id="_key_right_shift" class="key wide_4">
								<div class="line1">shift</div>
								<div class="line2">&nbsp;</div>
							</div>
						</div>
						<div class="line">
							<div id="_key_left_ctrl" class="key wide_1">
								<div class="line1">ctrl</div>
								<div class="line2"></div>
							</div>
							<div id="_key_left_alt" class="key wide_1">
								<div class="line1">alt</div>
								<div class="line2"></div>
							</div>
							<div id="_key_left_cmd" class="key wide_1">
								<div class="line1">cmd</div>
								<div class="line2"></div>
							</div>
							<div id="_key_space" class="key wide_5">
								<div class="line1">space</div>
								<div class="line2"></div>
							</div>
							<div id="_key_right_cmd" class="key wide_1">
								<div class="line1">cmd</div>
								<div class="line2"></div>
							</div>
							<div id="_key_right_alt" class="key wide_1">
								<div class="line1">alt</div>
								<div class="line2"></div>
							</div>
							<div id="_key_right_ctrl" class="key wide_1">
								<div class="line1">ctrl</div>
								<div class="line2"></div>
							</div>
						</div>
					</div>
				</div>
	    			</td>
	    		</tr>
    	</table>
    </div>
    <div class="modal-footer">
		<a href='/cota/paragraph-selector'><button class="buttons">계속하기</button></a>
		<a href="/cota/main"><button class="buttons">종료하기</button></a>
    </div>
  </div>

</div>

</body>
</html>
