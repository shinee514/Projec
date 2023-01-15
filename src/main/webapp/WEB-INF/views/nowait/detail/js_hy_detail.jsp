<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>메인화면</title>
<link href="${path}/resources/css/style.css" rel="stylesheet"/>
<style>
body {
	margin:0;
}
.reslogo{
	position : absolute;
	left : 300px;
	top : 400px;
}

.res1{
    position : absolute;
	left : 710px;
	top : 400px;
}

.res2{
	position : absolute;
	left : 710px;
	top : 530px;
}

.resname{
	position : absolute;
	left : 300px;
	top : 660px;
}

.resmap{
	position : absolute;
	left : 300px;
	top : 800px;
}

.resmenu{
	position : absolute;
	left : 1000px;
	top : 400px;
}

#wrap {
	min-height: 100vh;
	porition: relative;
	width: 100%;
}

footer {
	width: 100%;
	height: 0px;
	bottom: -300px;
	position: absolute;
}

section{
	padding-bottom: -300px;
	
}

html, body{
	margin: 0;
	padding: 0;
}

input{
	position: absolute;
    left: 1100px;
    top: 1100px;
}

</style>
</head>
<body>
<div id='wrap'>
	<section>
<header>
<a href="/main"> 
	<img src="${path}/resources/images/logo.png" alt="My Image" width="200" height="150">
</a>
</header>
	<nav>
		<ul class="nav-1">
			<li class="nav-item1"> <a href="">로그인</a></li>
			<li class="nav-item1"> <a href="">My Page</a></li>
			<li class="nav-item1"> <a href="">회원가입</a></li>
		</ul>
	</nav>
	<nav>
		<ul class="nav-2">
			<li class="nav-item2"> <a href="">원격 줄서기-예약</a></li>
			<li class="nav-item2"> <a href="">주변맛집추천</a></li>
			<li class="nav-item2"> <a href="">타임세일</a></li>
		</ul>
	</nav>
	<img class="reslogo" src="${path}/resources/images/JS_hy/hylogo.png" width="400" height="250">
	<img class="res1" src="${path}/resources/images/JS_hy/hy1.png" width="200" height="120">
	<img class="res2" src="${path}/resources/images/JS_hy/hy2.png" width="200" height="120">
	<img class="resname" src="${path}/resources/images/JS_hy/hyname.png">
	<img class="resmap" src="${path}/resources/images/JS_hy/hymap.png" width="600" height="350">
	<img class="resmenu"  src="${path}/resources/images/JS_hy/hymenu.png">
	<form action=''>
  <input type='button' 
         value="예약하기"
         onclick= "location.href='/main'"/>
</form>
	</section>
		<h1>상세페이지</h1>
	<footer>
		<hr width="100%">
		<nav>
			<a href="" target="_blank">Blog</a>
			<a href="" target="_blank">Github</a>
		</nav>
		<p>
			<span>1</span><br/>
			<span>2</span><br/>
			<span>Copyright 2023</span>
		</p>
	</footer>
	</div>
</body>
</html>