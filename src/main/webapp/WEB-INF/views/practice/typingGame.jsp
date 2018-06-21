<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Typing Game</title>
<style type="text/css">
* {
	box-sizing: border-box; /* 오페라(Opera) */
	-moz-box-sizing: border-box; /* 파이어폭스(Firefox)*/
	-webkit-box-sizing: border-box; /* 웹킷(Webkit) & 크롬(Chrome) */
	border-collapse: collapse;
}

html, body{
	width: 100%;
	height: 100%;
	color: white; 
}

#start-frame{
	top: 0;
	right: 0;
	bottom: 0;
	left: 0;
	margin: auto;
	height: 80%;
	width: 80%;
	position: absolute;
	display: inline-block;
	border: 1px solid;
	border-collapse: collapse;
	background-color: #161616;
}

#start-wrapper{
	width: 100%;
	font-size: 70px;
	text-align: center;
	position: relative;
	border-collapse: collapse;
	background-color: #161616;
	margin: 20px 0;
}

#start-btn{
	width: 170px;
	height: 80px;
	border-radius: 10px;
	font-size: 35px;
	font-weight: bold;
	background: #FFE400;
	color: black;
	border: none;
	cursor: pointer;
	transition: 0.6s;
}

#start-btn:hover{
	background: #FAED7D;
}

#frame {
	top: 0;
	right: 0;
	bottom: 0;
	left: 0;
	margin: auto;
	height: 80%;
	width: 80%;
	position: absolute;
	display: none;
	border: 1px solid;
	border-collapse: collapse;
	background-color: #161616;
}

#shop{
	top: 0;
	right: 0;
	bottom: 0;
	left: 0;
	margin: auto;
	height: 40%;
	width: 40%;
	position: absolute;
	display: none;
	border: 1px solid;
	border-collapse: collapse;
	background-color: #161616;
	z-index: 1;
}

#title {
	width: 80%;
	height: 100px;
	border: 1px solid;
	border-collapse: collapse;
	margin-top: 25px;
	margin-left: auto;
	margin-right: auto;
	text-align: center;
	line-height: 100px;
	font-size: 50px;
}

#inner-frame{
	width: 80%;
	height: 90%;
	margin-left: auto;
	margin-right: auto;
	display: flex;
}

#user{
	width: 25%;
	height: 100%;
	display: inline-block;
}

#info{
	width: 50%;
	height: 100%;
	display: inline-block;
}

#com{
	width: 25%;
	height: 100%;
	display: inline-block;
}

#blank {
	width: 100%;
	height: 10%;
	border: 1px solid;
	border-collapse: collapse;
	display:flex;
	align-items: center;
    justify-content: center;
}

#user-id, #com-id{
	width: 100%;
	height: 15%;
	border: 1px solid;
	border-collapse: collapse;
	font-size: 20px;
	display: flex;
    align-items: center;
    justify-content: center;
}

#user-info, #com-info{
	width: 100%;
	height: 15%;
	border: 1px solid;
	border-collapse: collapse;
	font-size: 20px;
	display: flex;
    align-items: center;
    justify-content: center;
    flex-flow: column;
	padding-top: 3%;
}

#items{
	width: 100%;
	height: 15%;
	font-size: 20px;
	display: flex;
    align-items: center;
    justify-content: center;
	border: 1px solid;
	border-collapse: collapse;
}

#user-hp-left, #user-damage, #com-hp-left, #com-damage{
	display: block;
	text-align: center;
	padding: 0 auto;
}


#user-image, #com-image{
	width: 100%;
	height: 35%;
	border: 1px solid;
	border-collapse: collapse;
}

#level{
	width: 100%;
	height: 10%;
	border: 1px solid;
	border-collapse: collapse;
	font-size: 25px;
	display: flex;
    align-items: center;
    justify-content: center;
}

#typing-area{
	width: 100%;
	height: 35%;
	border: 1px solid;
	border-collapse: collapse;
	display: flex;
    align-items: center;
}

#attack-command, #defense-command{
	width: 100%;
	height: 15%;
	border: 1px solid;
	border-collapse: collapse;
	font-size: 25px;
	display: flex;
    align-items: center;
    justify-content: center;
}

#menu {
	width: 100%;
	height: 15%;
	border: 1px solid;
	border-collapse: collapse;
	font-size: 25px;
	display: flex;
    align-items: center;
    justify-content: center;
}

input[type="text"]{
	width: 85%;
	height: 40%;
	display: block;
	margin: auto auto;
	font-size: 40px;
	text-align: center;
}

#toShop{
	width: 100px;
	height: 70%;;
	border-radius: 10%;
}

#resume{
	float: right;
	width: 25px;
	height: 25px;
	margin-top: 3px;
}

#buy-item{
	float: right;
	width: 70px;
	height: 35px;
	margin-right: 10px;
	display: none;
}

#potion{
	display: inline-block;
	cursor: pointer;
	width: 60px;
	height: 60px;
	background: url("${pageContext.request.contextPath}/images/potion.svg");
	background-repeat: no-repeat;
	background-size: 100% 100%;
}

#thunderbolt{
	display: inline-block;
	cursor: pointer;
	width: 60px;
	height: 60px;
	background: url("${pageContext.request.contextPath}/images/thunderbolt.svg");
	background-repeat: no-repeat;
	background-size: 100% 100%;
	margin-left: 20px;
}

#potion-shop{
	display: inline-block;
	cursor: pointer;
	width: 100px;
	height: 100px;
	background: url("${pageContext.request.contextPath}/images/potion.svg");
	background-repeat: no-repeat;
	background-size: 100% 100%;
	margin-left: 20px;
	margin-top: 10px;
}

#strength-shop{
	display: inline-block;
	cursor: pointer;
	width: 95px;
	height: 95px;
	background: url("${pageContext.request.contextPath}/images/strength.svg");
	background-repeat: no-repeat;
	background-size: 100% 100%;
	margin-left: 20px;
	margin-top: 5px;
}

#hp-shop{
	display: inline-block;
	cursor: pointer;
	width: 90px;
	height: 90px;
	background: url("${pageContext.request.contextPath}/images/hp.svg");
	background-repeat: no-repeat;
	background-size: 100% 100%;
	margin-left: 20px;
	margin-top: 5px;
}

#thunderbolt-shop{
	display: inline-block;
	cursor: pointer;
	width: 90px;
	height: 90px;
	background: url("${pageContext.request.contextPath}/images/thunderbolt.svg");
	background-repeat: no-repeat;
	background-size: 100% 100%;
	margin-left: 20px;
	margin-top: 5px;
}

#shop-items{
	width: 100%;
	height: 50%;
	display: block;
	border: 1px solid;
	border-collapse: collapse;
}

#shop-items-desc{
	width: 100%;
	height: 45%;
	display: block;
	padding: 10px 10px;
}

#money{
	display: inline-block;
	cursor: pointer;
	width: 35px;
	height: 35px;
	background: url("${pageContext.request.contextPath}/images/coins.svg");
	background-repeat: no-repeat;
	background-size: 100% 100%;
}

#money-left{
	display: inline-block;
	cursor: pointer;
	width: 40px;
	margin-left: 10px;
	font-size: 20px;
}

#image-wrapper{
	display: flex;
}

#pikachu-image{
	display: inline-block;
	cursor: pointer;
	width: 160px;
	height: 160px;
	background: url("${pageContext.request.contextPath}/images/pikachu.svg");
	background-repeat: no-repeat;
	background-size: 100% 100%;
	margin-left: 23%;
	margin-top: 5%;
	transform: scaleX(-1);
}

#shield-image{
	display: none;
	cursor: pointer;
	width: 55px;
	height: 130px;
	background: url("${pageContext.request.contextPath}/images/shield.svg");
	background-repeat: no-repeat;
	background-size: 100% 100%;
}

.shake{
	animation: shake 0.3s;
	animation-iteration-count: 1;
}

.com-shake{
	animation: com-shake 0.3s;
	animation-iteration-count: 1;
}

#com-char-image{
	display: inline-block;
	cursor: pointer;
	width: 160px;
	height: 160px;
	background: url("${pageContext.request.contextPath}/images/pikachu.svg");
	background-repeat: no-repeat;
	background-size: 100% 100%;
	margin-left: 23%;
	margin-top: 5%;
}

#user-meter, #com-meter{
	margin-left: 25%;
	width: 150px;
}

.fake-div{
	position: relative;
	width: 100%;
	height: 90%;
}

@keyframes shake {
  0% { transform: translate(1px, 1px) scaleX(-1) rotate(0deg); }
  10% { transform: translate(-1px, -2px) scaleX(-1) rotate(-1deg); }
  20% { transform: translate(-3px, 0px) scaleX(-1) rotate(1deg); }
  30% { transform: translate(3px, 2px) scaleX(-1) rotate(0deg); }
  40% { transform: translate(1px, -1px) scaleX(-1) rotate(1deg); }
  50% { transform: translate(-1px, 2px) scaleX(-1) rotate(-1deg); }
  60% { transform: translate(-3px, 1px) scaleX(-1) rotate(0deg); }
  70% { transform: translate(3px, 1px) scaleX(-1) rotate(-1deg); }
  80% { transform: translate(-1px, -1px) scaleX(-1) rotate(1deg); }
  90% { transform: translate(1px, 2px) scaleX(-1) rotate(0deg); }
  100% { transform: translate(1px, -2px) scaleX(-1) rotate(-1deg); }
 }
 
@keyframes com-shake {
  0% { transform: translate(1px, 1px) rotate(0deg); }
  10% { transform: translate(-1px, -2px) rotate(-1deg); }
  20% { transform: translate(-3px, 0px) rotate(1deg); }
  30% { transform: translate(3px, 2px) rotate(0deg); }
  40% { transform: translate(1px, -1px) rotate(1deg); }
  50% { transform: translate(-1px, 2px) rotate(-1deg); }
  60% { transform: translate(-3px, 1px) rotate(0deg); }
  70% { transform: translate(3px, 1px) rotate(-1deg); }
  80% { transform: translate(-1px, -1px) rotate(1deg); }
  90% { transform: translate(1px, 2px)rotate(0deg); }
  100% { transform: translate(1px, -2px) rotate(-1deg); }
 }
 
.pokeball-img{
	width: 250px;
	height: 250px;
	background: url("${pageContext.request.contextPath}/images/pokeball.svg") no-repeat;
	margin: 120px auto 10px auto;
}
 
</style>
</head>
<body onload="start()">
	<jsp:include page="/WEB-INF/views/main/header.jsp" />
	<div class="fake-div"></div>
	
	<audio id="audio-attack">
		<source src="${pageContext.request.contextPath}/audios/pikachu-thunderbolt.mp3" type="audio/mpeg">
	</audio>
	<audio id="audio-start">
		<source src="${pageContext.request.contextPath}/audios/pikachu-start.mp3" type="audio/mpeg">
	</audio>
	
	<div id="start-frame">
		<label class="pokeball-img"></label>
		<div id="start-wrapper">Pokemon Typing</div>
		<div id="start-wrapper"><button id="start-btn">시작하기</button></div>
	</div>
	
	<div id="shop">
		<button id ="resume" onclick="shop()">X</button>
			<div id="shop-items">
				<label id="potion-shop"></label>
				<label id="strength-shop"></label>
				<label id="hp-shop"></label>
				<label id="thunderbolt-shop"></label>
			</div>
			<div id="shop-items-desc">
				<label id="item-desc">
					게임에 필요한 아이템을 구입할 수 있는 상점입니다.<br/>
					구매하고자 하는 아이템을 클릭한 후 설명을 읽고 구입하기 버튼을 누르세요.
				</label>
				<button id="buy-item">구입</button>
			</div>
	</div>
	
	<div id="frame">
		<div id="title">Pokemon Typing</div>
		<div id="inner-frame">
			<div id="user">
				<div id="blank">
					<label id="money"></label><label id="money-left">0</label>
				</div>
				<div id="user-id"><label>USER ID</label></div>
				<div id="user-image">
					<div id="image-wrapper">
						<label id="pikachu-image"></label>
						<label id="shield-image"></label>
					</div>
					<meter id="user-meter" min="0" max="100"></meter>
				</div>
				<div id="user-info">
					<div id="user-hp-left"><label>체력: 100</label></div>
					<div id="user-damage"><label>공격력: 10</label></div>
				</div>
				<div id="items">
					<label id="potion">0</label>
					<label id="thunderbolt">0</label>
				</div>
			</div>
			<div id="info">
				<div id="level">LEVEL&nbsp;<label id="current-level">1</label></div>
				<div id="attack-command">
					공격 명령:&nbsp;<label id="attack-sentence">java</label>
				</div>
				<div id="typing-area">
					 <input type="text" id="input-sentence" autofocus onkeyup="enter(event)">
				</div>
				<div id="defense-command">
					방어 명령:&nbsp;<label id="defense-sentence">defense</label>
				</div>
				<div id="menu">
					<button id="toShop" onclick="shop()">상점(Esc)</button>
				</div>
			</div>
			<div id="com">
				<div id="blank"></div>
				<div id="com-id"><label>COMPUTER</label></div>
				<div id="com-image">
					<label id="com-char-image"></label>
					<meter id="com-meter" min="0" max="100"></meter>
				</div>
				<div id="com-info">
					<div id="com-hp-left"><label>체력: 100</label></div>
					<div id="com-damage"><label>공격력: 10</label></div>
				</div>
			</div>
		</div>
	</div>
	
	<jsp:include page="/WEB-INF/views/main/footer.jsp"/>
	
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
	<script type="text/javascript">
		
		var com_hp = 100;
		var com_full_hp = 100;
		var user_hp = 100;
		var user_full_hp = 100;
		var level = 1;
		var intervalTime = 2500;
		var user_damage = 4;
		var com_damage = 3;
		var money = 0;
		var potion = 0;
		var thunderbolt = 0;
		
		function start(){
			$('#user-damage').text('공격력: ' + user_damage);
			$('#com-damage').text('공격력: ' + com_damage);
			document.getElementById("user-meter").max = user_full_hp;
			document.getElementById("user-meter").value = user_hp;
			document.getElementById("com-meter").max = com_full_hp;
			document.getElementById("com-meter").value = com_hp;
			$('#com-hp-left').text('체력: ' + com_hp);
			$('#user-hp-left').text('체력: ' + com_hp);
			clearInterval(intervalId);
		}
		
		function enter(event){
			
			var x = event.key;
			console.log("key= " + x);
			
			var attack_sentence = $('#attack-sentence').text();
			
			var defense_sentence = $('#defense-sentence').text();
			
			var input_sentence = document.getElementById('input-sentence').value;
			
			if(x == 'Enter'){
			
				if(input_sentence == attack_sentence){
					
					//attack_sound();
					com_hp -= user_damage;
					document.getElementById("com-meter").value = com_hp;
					
					$('#com-char-image').addClass('com-shake');
					setTimeout(function() {
						$('#com-char-image').removeClass('com-shake');
					}, 100);
					
					if(com_hp <= 0){
						com_hp = 0;
						money += level*10;
						$('#money-left').text(money);
						alert("you win!");
						next_round();
					}
					console.log("com_hp= "+ com_hp);
					$('#com-hp-left').text('체력: ' + com_hp);
					replaceAttackSentence();
				}
				
				if(input_sentence == defense_sentence){
					/* clearInterval(intervalId);
					intervalId = setInterval(com_attack, intervalTime); */
					
					$('#shield-image').css('display', 'inline-block');
				}
				
				$('input').val("");
				
			}
			
			
			if(x == 'Escape'){
				$( "#toShop" ).click();
			}
			
		}
		
		var intervalId = setInterval(com_attack, intervalTime);
		function com_attack(){
			
			if( $('#shield-image').css('display') === 'none' ){
				user_hp -= com_damage;
				document.getElementById("user-meter").value = user_hp;
				$('#user-hp-left').text('체력: ' + user_hp);
				
				$('#pikachu-image').addClass('shake');
				setTimeout(function() {
					$('#pikachu-image').removeClass('shake');
				}, 100);
				
				if(user_hp <= 0){
					user_hp = 0;
					alert("you lose!");
					restart();
				}
			} else{
				$('#shield-image').css('display', 'none');
			}
		}
		
		function next_round(){
			com_full_hp = 100 + level * 5;
			com_hp = com_full_hp;
			user_hp = user_full_hp;
			level += 1;
			com_damage += 1;
			
			document.getElementById("com-meter").max = com_hp;
			document.getElementById("com-meter").value = com_hp;
			document.getElementById("user-meter").value = user_hp;
			if(intervalTime > 1000){
				intervalTime -= 200;
			}
			$('#current-level').text(level);
			$('#user-hp-left').text('체력: ' + user_hp);
			$('#com-hp-left').text('체력: ' + com_hp);
			$('#user-damage').text('공격력: ' + user_damage);
			$('#com-damage').text('공격력: ' + com_damage);
			$('input').val("");
		}
		
		function shop(){
			
			/* if($('#frame').css('display') != 'none'){
				$('#frame').css('display', 'none');
			} else{
				$('#frame').css('display', 'inline-block');
			} */
			if($('#shop').css('display') != 'none'){
				$('#shop').css('display', 'none');
				$('#frame').css('opacity', '1');
				intervalId = setInterval(com_attack, intervalTime);
			} else{
				$('#shop').css('display', 'inline-block');
				$('#frame').css('opacity', '0.5');
				clearInterval(intervalId);
			}
		}
		
		function restart(){
			$('#frame').css('display', 'none');
			$('#start-frame').css('display', 'inline-block');
			com_hp = 100;
			com_full_hp = 100;
			user_hp = 100;
			user_full_hp = 100;
			level = 1;
			intervalTime = 2500;
			user_damage = 4;
			com_damage = 3;
			money = 0;
			potion = 0;
			thunderbolt = 0;
			clearInterval(intervalId);
		}
		
		document.getElementById("start-btn").onclick = function() {
			start_sound();
			start();
			$('#start-frame').css('display', 'none');
			$('#frame').css('display', 'inline-block');
			intervalId = setInterval(com_attack, intervalTime);
		};
		
		document.getElementById("potion-shop").onclick = function() {
			$('#buy-item').css('display', 'block');
			$('#item-desc').text('사용하는 즉시 50HP를 회복한다. 가격: 50골드');
			document.getElementById("buy-item").onclick = function() {
				if(money >= 50){
					potion += 1;
					money -= 50;
					$('#money-left').text(money);
					$('#potion').text(potion);
				} else{
					$('#item-desc').text('골드가 모자랍니다.');
				}
			};
		};
		
		document.getElementById("strength-shop").onclick = function() {
			$('#buy-item').css('display', 'block');
			$('#item-desc').text('공격력을 1만큼 증가시킨다. 가격: 30골드');
			document.getElementById("buy-item").onclick = function() {
				if(money >= 30){
					user_damage += 1;
					$('#user-damage').text('공격력: ' + user_damage);
					money -= 30;
					$('#money-left').text(money);
				} else{
					$('#item-desc').text('골드가 모자랍니다.');
				}
			};
		};
		
		document.getElementById("hp-shop").onclick = function() {
			$('#buy-item').css('display', 'block');
			$('#item-desc').text('체력을 5만큼 증가시킨다. 가격: 30골드');
			document.getElementById("buy-item").onclick = function() {
				if(money >= 30){
					user_full_hp += 5;
					money -= 30;
					$('#money-left').text(money);
				} else{
					$('#item-desc').text('골드가 모자랍니다.');
				}
			};
		};
		
		document.getElementById("thunderbolt-shop").onclick = function() {
			$('#buy-item').css('display', 'block');
			$('#item-desc').text('백만볼트를 이용해 적을 타격한다. 데미지: 적 체력의 50% 가격: 50골드');
			document.getElementById("buy-item").onclick = function() {
				if(money >= 50){
					thunderbolt += 1;
					$('#thunderbolt').text(thunderbolt);
					money -= 50;
					$('#money-left').text(money);
				} else{
					$('#item-desc').text('골드가 모자랍니다.');
				}
			};
		};
		
		document.getElementById("potion").onclick = function() {
			if(potion >= 1){
				potion -=  1;
				$('#potion').text(potion);
				user_hp += 50;
				if(user_hp > user_full_hp){
					user_hp = user_full_hp;
				}
				$('#user-hp-left').text('체력: ' + user_hp);
				document.getElementById("user-meter").value = user_hp;
			}
		};
		
		document.getElementById("thunderbolt").onclick = function() {
			if(thunderbolt >= 1){
				
				thunderbolt -= 1;
				$('#thunderbolt').text(thunderbolt);
				com_hp = com_hp - (com_full_hp * 0.5);
				$('#com-hp-left').text('체력: ' + com_hp);
				document.getElementById("com-meter").value = com_hp;
				
				if(com_hp <= 0){
					com_hp = 0;
					money += level*10;
					$('#money-left').text(money);
					alert("you win!");
					next_round();
				}
				
			}
		};
		
		function attack_sound(){
			var audio = document.getElementById("audio-attack");
		    audio.play();
		}
		
		function start_sound(){
			var audio = document.getElementById("audio-start");
		    audio.play();
		}
		
		var sentences = ['String',
			 'int',
			 'double',
			 'BigInteger',
			 'long',
			 'float',
			 'Class',
			 'Interface',
			 'Annotation',
			 'public',
			 'private',
			 'Enum',
			 'void'];
		
		var current = 0;
		function replaceAttackSentence(){
			
			while(true){
				var a = Math.ceil(Math.random()*12);
				if(a != current){
					current = a;
					break;
				}
			}
			
			var currentSentence = sentences[current];
			$('#attack-sentence').text(currentSentence);
		}
		
	</script>
</body>
</html>