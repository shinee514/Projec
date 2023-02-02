<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>게시판 비밀번호</title>
<link rel="stylesheet" href="css/bootstrap.css">
<link href="${path}/resources/css/style.css" rel="stylesheet" />
<SCRIPT LANGUAGE=JavaScript>
function decrypt(pwd) {
	var str="3e6541531958b89ddfd42a65c0be01824fba";
	if(pwd == null || pwd.length <= 0) {
		alert('비밀번호를 입력하세요.');
		return;
	}
	var prand = "";
	for(var i=0; i<pwd.length; i++) {
		prand += pwd.charCodeAt(i).toString();
	}
	var sPos = Math.floor(prand.length / 5);
	var mult = parseInt(prand.charAt(sPos) + prand.charAt(sPos*2) + prand.charAt(sPos*3) + prand.charAt(sPos*4) + prand.charAt(sPos*5));
	var incr = Math.round(pwd.length / 2);
	var modu = Math.pow(2, 31) - 1;
	var salt = parseInt(str.substring(str.length - 8, str.length), 16);
	str = str.substring(0, str.length - 8);
	prand += salt;
	while(prand.length > 10){
		prand = (parseInt(prand.substring(0, 10)) + parseInt(prand.substring(10, prand.length))).toString();
	}
	prand = (mult * prand + incr) % modu;
	var enc_chr = "";
	var enc_str = "";
	for(var i=0; i<str.length; i+=2){
		enc_chr = parseInt(parseInt(str.substring(i, i+2), 16) ^ Math.floor((prand / modu) * 255));
		enc_str += String.fromCharCode(enc_chr);
	prand = (mult * prand + incr) % modu;
	}
	if(!enc_str.match(/\.html/g)){
		alert("비밀번호가 일치하지 않습니다");
	}
	else {
		window.location.href=enc_str;
	}
}
</SCRIPT>
</head>
<body>
<section id="mainsection">
			<header>
				<a href="/main"> <img src="${path}/resources/images/logo2.png"
					alt="My Image" width="200" height="150">
				</a>
			</header>
			<nav>
				<ul class="nav-1">
					<li class="nav-item1"><a href="/login">Login</a></li>
					<li class="nav-item1"><a href="">My Page</a></li>
					<li class="nav-item1"><a href="/signup">Join</a></li>
					<li class="nav-item1"><a href="">QnA</a></li>
				</ul>
			</nav>
			<nav>
				<ul class="nav-2">
					<li class="nav-item2"><a href="/rev">원격 줄서기/예약</a></li>
					<li class="nav-item2"><a href="/recommend">주변맛집추천</a></li>
					<li class="nav-item2"><a href="/sale">타임세일</a></li>
				</ul>
			</nav>
</section>
<BR><BR><BR>
<form action="javascript:decrypt(document.all.pass.value);">
<center>비밀번호 <input type="password" name=pass size="15"> <input type="submit" value=확인>
</form>
<br/><br/>
게시글을 확인하려면 비밀번호를 입력하세요. <br />
</center>
<footer id="mainfooter">
		<hr width="100%">
		<nav>
			<a href="" target="_blank">이용약관</a>
			<a href="" target="_blank">개인정보 처리방침</a>
		</nav>
		<p></p>
			<h3><span>nowait</span></h3><br/>
			<span>경기도 하남시 미사강변동로 85 힐스테이트에코미사, 3층 nowait</span><br/>
			<span>© nowait All rights reserved.</span>
</footer>
</body>
</html>