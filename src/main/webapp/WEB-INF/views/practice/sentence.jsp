<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>COTA</title>
<%@ include file="/WEB-INF/views/main/header.jsp" %>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet" type="text/css" href="https://cdn.rawgit.com/innks/NanumSquareRound/master/nanumsquareround.min.css">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">

<style>
* {
	margin: 0;
	padding: 0;
}
.header{
	margin-bottom: 5%;
}
.checked {
    color: orange;
}
#selector{
	margin:auto;
	width: 1200px;
}
#lang-selector{
	width: 1200px;
	font-size: 25px;
	height: 50px;
	margin-top: 10px;
	background: #f3f3f3; /* Old browsers */
	background: #fff -webkit-gradient(linear, left top, left bottom, from(#ffffff),to(#e5e5e5));
	background: #fff linear-gradient(to bottom, #ffffff 0%,#e5e5e5 100%); /* W3C */
	border-radius: 5px;
}

#wrapper {
	width: 100%;
	height: 700px;
}

#center {
	width: 100%;
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
#middle-wrapper{
	overflow: hidden;
	width: 1200px;
	margin: 20px auto;
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

em {
	text-align: center;
}

strong {
	text-align: center;
}

.line1 {
	height: 25px;
	width: 100%;
}

.line2 {
	height: 25px;
	width: 100%;
}

#s1 {
	height: 50px;
}

#sentence {
	width: 500px;
	height: 50px;
}

.shakeIt {
	animation: shake 0.3s;
	animation-iteration-count: 1;
}

input[type="text"] {
	background-color: transparent;
	border-style: solid;
	border-width: 0px 0px 2px 0px;
	border-color: #CE3636;
	font-size: 40px;
	font-family: 'Noto Sans KR', sans-serif;
	font-weight: lighter;
	color: black;
	outline: none;
	width: 10px;
	display: inline-block;
	transition: 0.1s;
}

#sentence-span {
	font-size: 40px;
	color: #A6A6A6;
	margin: auto;
	font-weight: lighter;
	font-family: sans-serif;
	display: inline-block;
}

.shakeIt {
	animation: shake 0.3s;
	animation-iteration-count: 1;
}

@keyframes shake {
  0% { transform: translate(1px, 1px) rotate(0deg); }
  10% { transform: translate(-1px, -2px) rotate(-1deg); }
  20% { transform: translate(-3px, 0px) rotate(1deg); }
  30% { transform: translate(3px, 2px) rotate(0deg); }
  40% { transform: translate(1px, -1px) rotate(1deg); }
  50% { transform: translate(-1px, 2px) rotate(-1deg); }
  60% { transform: translate(-3px, 1px) rotate(0deg); }
  70% { transform: translate(3px, 1px) rotate(-1deg); }
  80% { transform: translate(-1px, -1px) rotate(1deg); }
  90% { transform: translate(1px, 2px) rotate(0deg); }
  100% { transform: translate(1px, -2px) rotate(-1deg); }
 }
 .meter { 
 	width: 80%;
	height: 20px;  /* Can be anything */
	margin: auto;
	background: white;
	-moz-border-radius: 25px;
	-webkit-border-radius: 25px;
	border-radius: 25px;
	padding: 10px;
	box-shadow: inset 0 -1px 1px rgba(255,255,255,0.3);
}
.meter > span {
  display: block;
  height: 100%;
  border-top-right-radius: 8px;
  border-bottom-right-radius: 8px;
  border-top-left-radius: 20px;
  border-bottom-left-radius: 20px;
  background-color: rgb(43,194,83);
  background-image: linear-gradient(
    center bottom,
    rgb(43,194,83) 37%,
    rgb(84,240,84) 69%
  );
  box-shadow: 
    inset 0 2px 9px  rgba(255,255,255,0.3),
    inset 0 -2px 6px rgba(0,0,0,0.4);
  overflow: hidden;
}

#status-div{
	text-align: center;
	width: 1200px;
	height: 30px;
	border-radius: 5px;
	margin: 0 auto;
}

#speed-div{
	float: left;
	width: 50%;
	height: 150px;
	border: 1px solid gray;
	border-radius: 5px;
}
#acuuracy-divs{
	float: left;
	width: 50%;
	height: 150px;
	border: 1px solid gray;
	border-radius: 5px;
}

#ad{
	position: absolute;
	bottom: 100px;
	left: 390px;
	border: 1px solid gray;
	width: 60%;
	height: 100px;
	margin: auto;
	background-image: url(${pageContext.request.contextPath}/images/ad.png);
	background-size: 100% 100%;
	display: none;
	
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
    width: 30%;
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

#left-hand{
	float: left;
	width: 200px;
	height: 280px;
	background-image: url(${pageContext.request.contextPath}/images/lefthand.png);
	background-size: 100% 100%;
}

#right-hand{
	float: left;
	width: 200px;
	height: 280px;
	background-image: url(${pageContext.request.contextPath}/images/righthand.png);
	background-size: 100% 100%;
}
#star-wrapper{
	margin: auto;
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

.fa fa-star{
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

</style>
<meta name="viewport" content="width=device-width, initial-scale=1">
<script src="https://code.jquery.com/jquery-3.3.1.min.js"
	integrity="sha256-FgpCb/KJQlLNfOu91ta32o/NMZxltwRo8QtmkMRdAu8="
	crossorigin="anonymous"></script>

<script type="text/javascript">
	var totalHits = 0;
	var sentenceHits = 0;
	var startDate = new Date();
	var startTime = null;
	var lapCnt = 0;
	var sentences = ${dataList};
	var correctHits = 0;
	var incorrectHits = 0;
	var typeableChars = 0;
	var speedArr = [];
	var accArr = [];
	var incorrectKeys = [];
	
	$(document).on('click', '.close', function(){
		var modal = document.getElementById('myModal');
		modal.style.display = "none";
	})
	
	
	
	function redirection(event) {
		if (startTime === null) {
			startDate = new Date();
			startTime = startDate.getTime();
		}
		var x = event.key; //입력값 저장
		changeFinger(getCharToTyping());
		var parsedKey = getParsedKey(x); // 키보드 css 컨트롤할 element string
		var input_textfield = document.getElementById('typed');
		var input = input_textfield.value;
		var sentence = document.getElementById('sentence').value;
		var sentence_obj = document.getElementById('sentence');
		var cursorPosition = $('#typed').prop("selectionStart");

		sentenceHits++;
		if(x != 'Shift'&& x!='Enter'){
			totalHits++;
		}
		getCharToTyping();
		if (x === 'Enter') { //엔터 키 입력 시
			if(input.length == 0){
				return;
			}
			var endDate = new Date();
			var endTime = endDate.getTime();
			var ellapsedTime = endTime - startTime;
			typeableChars += sentence.length;
			if (input.length == sentence.length) {
				$('#typed').val('');
				replaceSentence();
				changeFinger(getCharToTyping());
				lapCnt++; // lapCnt 증가
				$('#s1').css('color', '#A6A6A6');
				$('#s2').css('color', '#A6A6A6');
				$('#typing-speed').text(getSpeed(sentenceHits, ellapsedTime));
				$('#typing-accuracy').text(getAccuracy(sentence, input));
				chkLapCnt(lapCnt); // lapCnt를 체크하여 modal load
				sentenceHits = 0;
				$('#meter-span').css('width', 0+"%");
				startTime = null;
				return;
			} else { // 입력값이 틀릴 때
				$(input_textfield).addClass('shakeIt');
				$("input").css({
					"color" : "#CE3636"
				});
				setTimeout(function() {
					$(input_textfield).removeClass('shakeIt');
					setTimeout(function() {
						$("input").css({
							"color" : "black"
						});
					}, 1000);
				}, 100);
				$('#typed').val('');
				replaceSentence();
				changeFinger(getCharToTyping());
				lapCnt++; // lapCnt 증가
				$('#s1').css('color', '#A6A6A6');
				$('#s2').css('color', '#A6A6A6');
				$('#typing-speed').text(getSpeed(sentenceHits, ellapsedTime));
				$('#typing-accuracy').text(getAccuracy(sentence, input));
				chkLapCnt(lapCnt); // lapCnt를 체크하여 modal load
				sentenceHits = 0;
				$('#meter-span').css('width', 0+"%");
				startTime = null;
				return;
			}
		}
		if (sentence.substring(0,input.length) == input.substring(0,input.length)) {
			correctHits++;
			$(input_textfield).css({
				"color" : "green"
			});
			let selectedObj = $(parsedKey);
			selectedObj.css("background-color", "#e1ffc6");
			setTimeout(function(){
				selectedObj.css("background-color", "white");
			},100);
			var s1 = sentence.substring(0, input.length);
			var s2 = sentence.substring(input.length, sentence.length);
			$('#s1').text(s1);
			$('#s1').css({
				"color" : "green"
			});
			$('#s2').text(s2);
		} else {
			incorrectHits++;
			incorrectKeys.push(x);
			$(input_textfield).css({
				"color" : "red"
			});
			let selectedObj = $(parsedKey);
			selectedObj.css("background-color", "#ffbaba");
			setTimeout(function(){
				selectedObj.css("background-color", "white");
			},100);
			var s1 = sentence.substring(0, input.length);
			var s2 = sentence.substring(input.length, sentence.length);
			$('#s1').text(s1);
			$('#s2').text(s2);
			$('#s1').css({
				"color" : "red"
			});
		}
	}
	
	
	function changeFinger(key){
		// uppercase 고려하기
		// uppercase라면 shift
		if(key == ''){
			key = 'Enter';
		}
		var pasredCss = "";
		var defaultLeft = "url(${pageContext.request.contextPath}/images/lefthand.png)";
		var defaultRight = "url(${pageContext.request.contextPath}/images/righthand.png)";
		var keyMap = new Map([
			 [" ","l-thumb"],// l-thumb
			 ["4","l-index"],["$","l-index"],["5","l-index"],["%","l-index"],["r","l-index"],["R","l-index"],["t","l-index"],["T","l-index"],["f","l-index"],["F","l-index"],["g","l-index"],["G","l-index"],["v","l-index"],["V","l-index"],["b","l-index"],["B","l-index"],// l-index
			 ["3","l-middle"],["#","l-middle"],["e","l-middle"],["E","l-middle"],["d","l-middle"],["D","l-middle"],["c","l-middle"],["C","l-middle"],// l-middle
			 ["2","l-ring"],["@","l-ring"],["w","l-ring"],["W","l-ring"],["s","l-ring"],["S","l-ring"],["x","l-ring"],["X","l-ring"],// l-ring
			 ["1","l-little"],["!","l-little"],["q","l-little"],["Q","l-little"],["a","l-little"],["A","l-little"],["z","l-little"],["Z","l-little"],// l-little
			 [" ","r-thumb"],// r-thumb
			 ["6","r-index"],["^","r-index"],["7","r-index"],["&","r-index"],["y","r-index"],["Y","r-index"],["u","r-index"],["U","r-index"],["h","r-index"],["H","r-index"],["j","r-index"],["J","r-index"],["n","r-index"],["N","r-index"],["m","r-index"],["M","r-index"],// r-index
			 ["8","r-middle"],["*","r-middle"],["i","r-middle"],["I","r-middle"],["k","r-middle"],["K","r-middle"],[",","r-middle"],["<","r-middle"],// r-middle
			 ["9","r-ring"],["(","r-ring"],["o","r-ring"],["O","r-ring"],["l","r-ring"],["L","r-ring"],[".","r-ring"],[">","r-ring"],// r-ring
			 ["0","r-little"],[")","r-little"],["p","r-little"],["P","r-little"],[";","r-little"],[":","r-little"],["/","r-little"],["?","r-little"],// r-little
			 ["Enter", "r-middle"]
		]);
		//console.log("key : " +keyMap.get(key));
		//console.log(key);
		//console.log(keyMap.get(key));
		var keyArr = keyMap.get(key).split('-');
		parsedCss = "url(${pageContext.request.contextPath}/images/"+keyArr[0]+"-"+keyArr[1]+".png)";
		 
		if(keyArr[0] == 'l'){
			$("#left-hand").css("background-image", parsedCss);
			$("#right-hand").css("background-image", defaultRight);
		}else{
			$("#left-hand").css("background-image", defaultLeft);
			$("#right-hand").css("background-image", parsedCss);
			
		}
		//console.log("parsedCss : " + parsedCss);
	};
	
	
	function replaceSentence() {
		current = Math.floor(Math.random() * 10);
		var currentSentence = sentences[current];
		$('#sentence').val(currentSentence);
		$('#s1').text(currentSentence);
		$('#s2').text('');
		var s1Width = $('#s1').css('width');
		$('#typed').css('width', s1Width);
	}
	
	function getSpeed(sentenceHits, ellapsedTime){
		var seconds = ellapsedTime / 1000;
		var speed = Math.round(sentenceHits / seconds * 60, 2);
		speedArr.push(speed);
		return speed+' h/s';
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
		accArr.push(accuracy);		
		return accuracy+ ' %';
	}
	
	function chkLapCnt(lCnt){
		if(lCnt == 3){
			lapCnt = 0;
			showModal(speedArr, accArr, totalHits, typeableChars, correctHits, incorrectHits, incorrectKeys);
			speedArr = [];
			accArr = [];
			totalHits = 0; 
			correctHits = 0;
			incorrectHits = 0;
			incorrectKeys = [];
			
		}
	}
	
	function showModal(_speedArr, _accArr, _totalHits, _typeableChars, _correctHits, _incorrectHits, _incorrectKeys){
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
		$('#mspeed').text(speedMean);
		
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
		$('#macc').text(accMean);
		
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
		incorrectKeys.sort();
		var flag = _incorrectKeys[0];
	    var incorrectJson = new Object();
		var times = 0;
	 	var current = null;
	 	var incorrectText = ' ';
		var incorrectArr = [];
		var incorrect = "";
		if(incorrectKeys == ''){
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
		var lang_type = $('#lang-selector option:selected').val();
		var sendData = "email=aa@aa.com&lang_type="+lang_type
						+"&field_type=sentence"
						+"&speed="+speedMean
						+"&accuracy="+accMean
						+"&interrupt="+productivity
						+"&incorrect_key="+incorrect;
						
		
		$.ajax({
			url : '/cota/insertStatistics',			// 전송할 URL
			type : 'post',				// 전송 방식
			data : sendData, 							// 전송할 데이터
			success : function(data) {  // 통신이 성공했다면 수행할 콜백메서드
					alert("success");					
			}
		});
		
		
	}
	
	function getCharToTyping(){
		var tText = $("#typed").val().length;
		var sentence = $("#sentence").val();
		var ch = sentence.substr(tText, 1);
		//console.log("tText length : " + tText);
		//console.log("sentence : " + sentence);
		//console.log("ch : " + ch);
		return ch;
	}
	
	function getDataByLang(){
		var lang_type = $('#lang-selector option:selected').val();
		location.href = '/cota/sentence?lang_type='+lang_type;
	}
	function setData(){
		var param = window.location.search.split("=")[1];
		$('#lang-selector').val(param).prop("selected, true");
		$('#continue').attr('href', '/cota/sentence?lang_type='+param);
		replaceSentence();
		changeFinger(getCharToTyping());
	}
	
	function getParsedKey(key) {
		if (key === ' ') {
			return "#key_space";
		} else if (key === '0' || key === ')') {
			return "#key_zero";
		} else if (key === '1' || key === '!') {
			return "#key_one";
		} else if (key === '2' || key === '@') {
			return "#key_two";
		} else if (key === '3' || key === '#') {
			return "#key_three";
		} else if (key === '4' || key === '$') {
			return "#key_four";
		} else if (key === '5' || key === '%') {
			return "#key_five";
		} else if (key === '6' || key === '^') {
			return "#key_six";
		} else if (key === '7' || key === '&') {
			return "#key_seven";
		} else if (key === '8' || key === '*') {
			return "#key_eight";
		} else if (key === '9' || key === '(') {
			return "#key_nine";
		} else if (key === '`' || key === '~') {
			return "#key_accent";
		} else if (key === '-' || key === '_') {
			return "#key_hyphen";
		} else if (key === '=' || key === '+') {
			return "#key_equals";
		} else if (key === '[' || key === '{') {
			return "#key_left_bracket";
		} else if (key === ']' || key === '}') {
			return "#key_right_bracket";
		} else if (key === '\\' || key === '|') {
			return "#key_backslash";
		} else if (key === ';' || key === ':') {
			return "#key_semicolon";
		} else if (key === "'" || key === '"') {
			return "#key_apostrophe";
		} else if (key === ',' || key === '<') {
			return "#key_comma";
		} else if (key === '.' || key === '>') {
			return "#key_period";
		} else if (key === '/' || key === '?') {
			return "#key_forwardslash";
		} else if (key === 'Control') {
			return "#key_right_ctrl";
		} else if (key === 'Alt') {
			return "#key_right_alt";
		} else if (key === 'Shift') {
			return "#key_right_shift";
		} else {
			return "#key_" + key.toLowerCase();
		}
	}

</script>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
</head>

<body oncopy="return false" oncut="return false" onpaste="return false" onload="setData()">

	<div id="selector">
		<select id="lang-selector" onchange='getDataByLang()'>
			<option value="java">JAVA</option>
			<option value="python">PYTHON</option>
			<option value="cdoubleplus">C++</option>
		</select>
	</div>
	<div id="wrapper">
		<div id="center">
			<div id="sentence-div">
				<span id='sentence-span'><label class="s1" id="s1"></label><label class="s2"
					id="s2"></label></span><br> <input type="text" id="typed"
					onkeyup="redirection(event)" autofocus /> <input type="hidden"
					class="sentence" id="sentence" />
			</div>
			<div id="status-div">
					<label>현재타수</label>
					<label id='typing-speed'>0 h/s</label>
					&nbsp;&nbsp;&nbsp;
					<label>정확도</label>
					<label id='typing-accuracy'>0 %</label>
						
			</div>
			<div id="middle-wrapper">
				<div id="left-hand"></div>
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
				<div id="right-hand"></div>
			</div>	
			<div id="ad">
			</div>
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
	    	</table>
	    </div>
	    <div class="modal-footer">
			<a id='continue'><button class="buttons">계속하기</button></a>
			<a href="/cota/main"><button class="buttons">종료하기</button></a>
	    </div>
	  </div>

</div>
</body>
</html>