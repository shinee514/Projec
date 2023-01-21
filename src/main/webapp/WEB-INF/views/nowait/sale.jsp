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
 	<img src="${path}/resources/images/logo.png" alt="My Image" width="200" height="150">
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
		<li class="nav-item2"> <a href="/rev">원격 줄서기-예약</a></li>
		<li class="nav-item2"> <a href="/recommend">주변맛집추천</a></li>
		<li class="nav-item2"> <a href="/sale">타임세일</a></li>
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
	<a href="/detail?resId=20">
		<img class="a" src="${path}/resources/images/recommend/gs.png">
	</a>
	<a href="/detail?resId=6">
		<img class="a" src="${path}/resources/images/recommend/tsd.png">
	</a>
	<a href="/detail?resId=3">
		<img class="a" src="${path}/resources/images/recommend/ll.png">
	</a>
</section>
<section>
	<a href="/detail?resId=10">
		<img class="b" src="${path}/resources/images/recommend/ct.png">
	</a>
	<a href="/detail?resId=12">
		<img class="b" src="${path}/resources/images/recommend/hd.png">
	</a>
	<a href="/detail?resId=13">
		<img class="b" src="${path}/resources/images/recommend/hy.png">
	</a>
</section>
<section>
	<a href="/detail?resId=24">
		<img class="c" src="${path}/resources/images/recommend/ph.png">
	</a>
	<a href="/detail?resId=16">
		<img class="c" src="${path}/resources/images/recommend/ssm.png">
	</a>
	<a href="/detail?resId=2">
		<img class="c" src="${path}/resources/images/recommend/dp.png">
	</a>
</section>
<section>
	<a href="/detail?resId=11">
		<img class="d" src="${path}/resources/images/recommend/ds.png">
	</a>
	<a href="/detail?resId=22">
		<img class="d" src="${path}/resources/images/recommend/kk.png">
	</a>
	<a href="/detail?resId=5">
		<img class="d" src="${path}/resources/images/recommend/sg.png">
	</a>
</section>
</div>
</body>
</html>