<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html id="mainhtml">
<head>
<meta charset="UTF-8">
<title>주변맛집추천</title>
<link href="${path}/resources/css/style.css" rel="stylesheet"/>
</head>
<body id="mainbody">
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
		<li class="nav-item2"> <a href="/rev">원격 줄서기/예약</a></li>
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
<ul class="contentbox">
 			
				<li class="contentimg">
					<div class="boximg">
	<a href="/detail?resId=20">
		<img class="a" src="${path}/resources/images/recommend/gs.png">
	</a>
	</div>
				</li>
				<li class="contentimg">
					<div class="boximg">
	<a href="/detail?resId=6">
		<img class="a" src="${path}/resources/images/recommend/tsd.png">
	</a>
	</div>
				</li>
				<li class="contentimg">
					<div class="boximg">
	<a href="/detail?resId=3">
		<img class="a" src="${path}/resources/images/recommend/ll.png">
	</a>
		</div>
				</li>

<li class="contentimg">
					<div class="boximg">
	<a href="/detail?resId=10">
		<img class="b" src="${path}/resources/images/recommend/ct.png">
	</a>
		</div>
				</li>
	<li class="contentimg">
					<div class="boximg">
	<a href="/detail?resId=12">
		<img class="b" src="${path}/resources/images/recommend/hd.png">
	</a>
		</div>
				</li>
	<li class="contentimg">
					<div class="boximg">
	<a href="/detail?resId=13">
		<img class="b" src="${path}/resources/images/recommend/hy.png">
	</a>
		</div>
				</li>
<li class="contentimg">
					<div class="boximg">
	<a href="/detail?resId=24">
		<img class="c" src="${path}/resources/images/recommend/ph.png">
	</a>
		</div>
				</li>
	<li class="contentimg">
					<div class="boximg">
	<a href="/detail?resId=16">
		<img class="c" src="${path}/resources/images/recommend/ssm.png">
	</a>
		</div>
				</li>
	<li class="contentimg">
					<div class="boximg">
	<a href="/detail?resId=2">
		<img class="c" src="${path}/resources/images/recommend/dp.png">
	</a>
		</div>
				</li>
<li class="contentimg">
					<div class="boximg">
	<a href="/detail?resId=11">
		<img class="d" src="${path}/resources/images/recommend/ds.png">
	</a>
		</div>
				</li>
	<li class="contentimg">
					<div class="boximg">
	<a href="/detail?resId=22">
		<img class="d" src="${path}/resources/images/recommend/kk.png">
	</a>
		</div>
				</li>
	<li class="contentimg">
					<div class="boximg">
	<a href="/detail?resId=5">
		<img class="d" src="${path}/resources/images/recommend/sg.png">
	</a>
	</div>
				</li>
</div>
<footer id="mainfooter">
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
</body>
</html>