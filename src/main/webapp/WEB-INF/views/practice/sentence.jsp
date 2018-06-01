<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title></title>
<style>
* {
	margin: 0;
	padding: 0;
}

#wrapper {
	width: 100%;
	height: 900px;
}

#center {
	width: 100%;
	border: 1px solid gray;
}

.fixed_width_wrapper {
	width: 80%;
	margin: 20px auto;
}

.line {
	width: 100%;
	text-align: center;
	margin: 10px auto;
}

#sentence-div {
	margin: 20px auto;
	border: 1px solid gray;
	width: 80%;
	text-align: center;
}

.line div {
	display: inline-block;
}

.keyboard {
	width: 100%;
}

.key {
	border: 1px solid gray;
	border-radius: 10px;
	width: 50px;
	height: 52px;
	box-shadow: inset 0 -1px 1px rgba(255,255,255,0.3);
}

.key.wide_1 {
	width: 84px;
	height: 52px;
}

.key.wide_2 {
	width: 100px;
	height: 52px;
}

.key.wide_3 {
	width: 105px;
	height: 52px;
}

.key.wide_4 {
	width: 134px;
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
	width: 500px;
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
	font-family: sans-serif;
	font-weight: lighter;
	color: black;
	outline: none;
	width: 81%;
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
	width: 80%;
	height: 150px;
	border: 1px solid gray;
	margin: 0 auto;
}

#speed-div{
	float: left;
	width: 50%;
	height: 150px;
	border: 1px solid gray;
}
#acuuracy-divs{
	float: left;
	width: 50%;
	height: 150px;
	border: 1px solid gray;
}

#ad{
	border: 1px solid gray;
	width: 60%;
	height: 100px;
	margin: auto;
	background-image: url(${pageContext.request.contextPath}/images/ad.png);
	background-size: 100% 100%;
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
    padding: 2px 16px;
    background-color: white;
    border-radius: 10px;
}

.modal-body {
	padding: 2px 16px;
}

.modal-footer {
    padding: 2px 16px;
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
	var sentences = [ 'System.out.println("Hello Java");',
		'Connection conn = null;', 'int[] arr = new int[6];',
		'int k = Integer.parseInt(str);',
		'BigInteger a = BigInteger.ZERO;', 'Collections.sort(array);',
		'if(p^q >= q);', 'double k = Math.sqrt(n);',
		'thread.setPriority(10);', 'char c = string.charAt(14);',
		'Welcome to JAVA TAJA', 'private long cyphertext;' ];
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
			//console.log('startTime : ' + startTime);
			//console.log('startTime milli : ' + startTime);
		}
		totalHits++;
		sentenceHits++;
		//console.log("totalHits : " + totalHits);
		//console.log("2. redirection method");
		//console.log($('#typed').prop("selectionStart")); //커서 포지션
		var x = event.key; //입력값 저장
		var parsedKey = getParsedKey(x); // 키보드 css 컨트롤할 element string
		//console.log("x=" + x);
		var input_textfield = document.getElementById('typed');
		var input = input_textfield.value;
		var sentence = document.getElementById('sentence').value;
		var sentence_obj = document.getElementById('sentence');
		var cursorPosition = $('#typed').prop("selectionStart");
		var progressbar = setProgressBar(sentence.length, input_textfield.value.length);

		$('#meter-span').css('width', progressbar+"%");

		//console.log("input=" + input); //입력값
		//console.log("sentence=" + sentence); //입력해야 할 문장
		//console.log("===============================");
		if (x === 'Enter') { //엔터 키 입력 시
			var endDate = new Date();
			var endTime = endDate.getTime();
			//console.log('endTime : ' + endTime);
			var ellapsedTime = endTime - startTime;
			//console.log('ellapsedTime : ' + ellapsedTime);
			//console.log('sentence length : ' + sentence.length);
			if (input.length == sentence.length) {
				//console.log("3. enter pressed");
				//console.log("ellapsed time : " + (endTime - startTime));
				replaceSentence();
				lapCnt++; // lapCnt 증가
				$('#s1').css('color', '#A6A6A6');
				$('#s2').css('color', '#A6A6A6');
				$('#typed').val('');
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
				replaceSentence();
				lapCnt++; // lapCnt 증가
				$('#s1').css('color', '#A6A6A6');
				$('#s2').css('color', '#A6A6A6');
				$('#typed').val('');
				$('#typing-speed').text(getSpeed(sentenceHits, ellapsedTime));
				$('#typing-accuracy').text(getAccuracy(sentence, input));
				chkLapCnt(lapCnt); // lapCnt를 체크하여 modal load
				sentenceHits = 0;
				$('#meter-span').css('width', 0+"%");
				startTime = null;
				return;
			}
		}3
		if (sentence.substring(0,input.length) == input.substring(0,input.length)) {
			correctHits++;
			//console.log("correctHits : " + correctHits);
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
			//console.log("incorrectHits : " + incorrectHits);
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

	$(document).ready(function() {
		replaceSentence();
	});
	
	function replaceSentence() {
		current = Math.floor(Math.random() * 12);
		var currentSentence = sentences[current];
		typeableChars += currentSentence.length;
		$('#sentence').val(currentSentence);
		$('#s1').text(currentSentence);
		$('#s2').text('');
	}
	
	function setProgressBar(totalLength, currLength){
		var result = Math.round(currLength / totalLength * 100);
		if(result >= 100){
			return 100;
		}
		//console.log("totalLength : " + totalLength);
		//console.log("currLength : " + currLength);
		//console.log("progressbar : " + result);
		return result;
	}
	
	function getSpeed(sentenceHits, ellapsedTime){
		var seconds = ellapsedTime / 1000;
		var speed = Math.round(sentenceHits / seconds * 60, 2);
		speedArr.push(speed);
		//console.log('seconds : ' + seconds);
		//console.log('sentenceHits : ' + sentenceHits);
		//console.log('speed : ' + speed);

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
		//console.log("accuracy : " + accuracy);
		accArr.push(accuracy);		
		return accuracy+ ' %';
	}
	
	function chkLapCnt(lCnt){
		//console.log("lCnt : " + lCnt);
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
	    var sum = 0;
	    var mean = 0;
	    var productivity = 0;
	   
		// 평균 타수
	    for(var i = 0; i < _speedArr.length; i++){
	    	sum += _speedArr[i];
	    }
		//console.log('sArr length : ' + _speedArr.length);
		//console.log("ssum : " + sum);
		mean = Math.round(sum / _speedArr.length);
		//console.log('smean : ' + mean);
		$('#mspeed').text(mean);
		sum = 0; mean = 0;
		
		// 평균 정확도
		for(var i = 0; i < _accArr.length; i++){
	    	sum += _accArr[i];
	    }
		//console.log('aArr length : ' + _accArr.length);
		//console.log("asum : " + sum);
		mean = Math.round(sum / _accArr.length);
		//console.log('amean : ' + mean);
		$('#macc').text(mean);
		sum = 0; mean = 0;
		
		
		// 생산성
		if(_totalHits < _typeableChars){
			productivity = '오타가 너무 많습니다.';
			typeableChars = 0;
			$('#prod').text(productivity);
		}else{
			productivity = Math.round((_totalHits - _typeableChars) / _totalHits * 100)+'%';
			//console.log("prod : " + productivity);
			//console.log("_totalHits : " + _totalHits);
			//console.log("_typeableChars : " + _typeableChars);
			$('#prod').text(productivity);
			productivity = 0;
			typeableChars = 0;
		}
		
		
		// 많이 틀린 키
		
		incorrectKeys.sort();
		var flag = _incorrectKeys[0];
	    var incorrectJson = new Object();
		var times = 0;
	 	var current = null;
	 	var incorrectText = ' ';
	 	//console.log('_incorrectKeys :' + _incorrectKeys);
		
		for(var i = 0; i < _incorrectKeys.length; i++){
			//console.log('i :' + i);
			//console.log('flag : ' + flag);
			current = _incorrectKeys[i];
			//console.log('current : ' + current);
			if(_incorrectKeys[i] != 'Backspace' &&_incorrectKeys[i] != 'Shift' ){
				if(flag == current){
					times++;
					incorrectJson[flag] = times;
				}else{
					//console.log('flag : ' + flag);
					//console.log('incorrectJson[flag] : ' + incorrectJson[flag]);
					flag = _incorrectKeys[i];
					times = 1;
					incorrectJson[flag] = times;
				}
			}
		}
		
		// 
		for(var i = 0; i < Object.keys(incorrectJson).length; i++){
			incorrectText += Object.keys(incorrectJson)[i] + ' : ' + Object.values(incorrectJson)[i] + ', ';
		}
		
		$('#incorrect_keys').text(incorrectText);
		modal.style.display = "block";
		
	}
	
	
	
	function getParsedKey(key) {
		//console.log("key in method : " + key);
		//console.log("1. paint key method");
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

	/* $(document).keyup(function(event) {
		let key = event.key;
		//console.log("key : " + key);
		let parsedId = getParsedKey(key);
		//console.log("parsedId : " + parsedId);
		//console.log("selectedId : " + selectedId);
		
	});

	$(document).keydown(function(event) {
		let key = event.key;
		//console.log("key : " + key);
		let parsedId = getParsedKey(key);
		//console.log("parsedId : " + parsedId);
		let selectedObj = $(parsedId);
		//console.log("selectedId : " + selectedId);
		selectedObj.css("background-color", "red");
	}); */
</script>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
</head>
<!-- 
////////////////////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////////////////////
	o 타수 버그 확인 o
	o arr 안에 새로운 arr를 할당하여 json 형태로 만들기  incorrect key들의 횟수 카운트하여 푸쉬 o 
	o 많이 틀린 자리, 계속하기, 종료하기 표현하기  o
	o modal 설계하기 o
	database 연동하기
	o git 환경만들기 o
	비생산적 타자가 0일때 버그, 비생산적 타이핑 수와 퍼센트가 잘 맞지 않음 확인하기	
////////////////////////////////////////////////////////////////////////////////////
////////////////////////////////////////////ㅅㄱ////////////////////////////////////////
 -->

<body oncopy="return false" oncut="return false" onpaste="return false">
	<div id="wrapper">
		<div id="center">
			<div id="sentence-div">
				<span id='sentence-span'><label class="s1" id="s1"></label><label class="s2"
					id="s2"></label></span><br> <input type="text" id="typed"
					onkeyup="redirection(event)" autofocus /> <input type="hidden"
					class="sentence" id="sentence" />
			</div>
			<div class="meter">
	  			<span id="meter-span"></span>
			</div>
			<div id="status-div">
				<div id="speed-div">
					<label>현재타수</label>
					<label id='typing-speed'>0.0h/s</label>
				</div>	
				<div id="accuracy-div">
					<label>정확도</label>
					<label id='typing-accuracy'>0.0%</label>
				</div>	
						
			</div>
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
			<div id="ad">
			</div>
		</div>
	</div>
	<div id="myModal" class="modal">
	  <div class="modal-content">
	    <div class="modal-header">
	      <span class="close">&times;</span>
	      <h2>코타 통계</h2>
	      <span></span>
	    </div>
	    <div class="modal-body">
			<p>
				<label class="stat">평균타수</label><label id="mspeed" class="statResult"></label>
			</p>
			<p>
				<label class="stat">평균정확도</label><label id="macc" class="statResult"></label>
			</p>
			<p>
				<label class="stat">비생산적 타이핑</label><label id="prod" class="statResult"></label>
			</p>
			<p>
				<label class="stat">많이 틀린 자리</label><label id="incorrect_keys" class="statResult"></label>
			</p>
	    </div>
	    <div class="modal-footer">
			<a href="#"><button>계속하기</button></a>
			<a href="#"><button>종료하기</button></a>
	    </div>
	  </div>

</div>
</body>
</html>