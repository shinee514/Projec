<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>주변맛집추천</title>
<link href="${path}/resources/css/style.css" rel="stylesheet"/>
<style>
.nav-1{
	float:right;
	display: flex;
	flex-direction: row;
	margin: 0;
	padding: 0;
	list-style-type: none;
	border-bottom: solid 1px grey;
}
.nav-item1{
	padding: 15px;
	cursor: pointer;
}

.nav-item1 a {
	text-align: center;
	text-decoration: none;
	color : black;
	font-family: sans-serif;
}

.nav-2 {
	display: flex;
	flex-direction: row;
	width: 100%;
	margin: 0;
	padding: 0;
	list-style-type: none;
	border-bottom: solid 2px black;
}

.nav-item2{
	padding: 15px;
	cursor: pointer;
}

.nav-item2 a {
	text-align: center;
	text-decoration: none;
	color : black;
	font-family: fantasy;
}
#menu2 a {
	display: block;
	color: #fff;
	text-decoration: none;
}
.M01 {
	margin-left: 20px;
	width: 100px;
	background: #000;
}
.M01>li, .M02>li {
	position: relative;
	width: 100%;
	height: 50px;
	background: #1c1c1c;
	text-align: center;
	line-height: 50px;
}
.M01>li a:hover {
	display: block;
	background: #585858;
	text-decoration: none;
}
.M02 {
	width: 100px;
	background: #585858;
	position: absolute;
	top: 0;
	left: -9999px;
}
.M02>li a:hover {
	display: block;
	background: #585858;
	text-decoration: none;
}
.M01>li:hover .M02{
	left: 100px;
}
#wrap{
	display: flex;
	position: absolute;
	top: 30%
}
.a{
	width: 300px;
	height: 250px;
	margin-left: 320px;
	display: flex;
	margin-bottom: 40px;
	top: 30%;
	
}
.b, .c, .d {
	width: 300px;
	height: 250px;
	display: flex;
	margin-left: 60px;
	margin-bottom: 40px;
	top: 30%;
}
</style>
</head>
<body>
<header>
<a href="/main">
 	<img src="${path}/resources/images/logo2.png" alt="My Image" width="200" height="150">
</a>
</header>
<nav>
	<ul class="nav-1">
		<li class="nav-item1"> <a href="">Login</a></li>
		<li class="nav-item1"> <a href="">My Page</a></li>
		<li class="nav-item1"> <a href="">Join</a></li>
		<li class="nav-item1"> <a href="">QnA</a></li>
	</ul>
</nav>
<nav>
	<ul class="nav-2">
		<li class="nav-item2"> <a href="">원격 줄서기-예약</a></li>
		<li class="nav-item2"> <a href="">주변맛집추천</a></li>
		<li class="nav-item2"> <a href="">타임세일</a></li>
	</ul>
</nav>
<div id="menu2">
	<ul class="M01">
       <li><a href="#">서울</a>
       	 <ul class="M02">
       	 	<li><a href="">잠실</a></li>
       	 	<li><a href="">천호</a></li>
         </ul>
       </li>
       <li><a href="#">경기</a>
       	 <ul class="M02">
       	 	<li><a href="">하남미사</a></li>
         </ul>
       </li>
       <li><a href="#">인천</a></li>
       <li><a href="#">강원</a></li>
       <li><a href="#">충청</a></li>
       <li><a href="#">경상</a></li>
       <li><a href="#">전라</a></li>
    </ul>
</div>
<div id="wrap">
<section>
	<img class="a" src="${path}/resources/images/recommend/건강밥상심마니.png">
	<img class="a" src="${path}/resources/images/recommend/더식당.png">
	<img class="a" src="${path}/resources/images/recommend/로니로티.png">
</section>
<section>
	<img class="b" src="${path}/resources/images/recommend/치즈룸.png">
	<img class="b" src="${path}/resources/images/recommend/한남대교.png">
	<img class="b" src="${path}/resources/images/recommend/한양중식.png">
</section>
<section>
	<img class="c" src="${path}/resources/images/recommend/페어링하우스.png">
	<img class="c" src="${path}/resources/images/recommend/사시미.png">
	<img class="c" src="${path}/resources/images/recommend/대팔이네.png">
</section>
<section>
	<img class="d" src="${path}/resources/images/recommend/동경산책.png">
	<img class="d" src="${path}/resources/images/recommend/경양카츠.png">
	<img class="d" src="${path}/resources/images/recommend/스시공간.png">
</section>
</div>
</body>
</html>