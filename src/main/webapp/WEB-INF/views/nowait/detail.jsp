<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html id="mainhtml">
<head>
<meta charset="UTF-8">
<title>메인화면</title>
<link href="${path}/resources/css/style.css" rel="stylesheet"/>
</head>
<body id='mainbody'>
<div id='mainwrap'>
	<section id='mainsection'>
<header>
<a href="/first"> 
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
	<img class="reslogo" src="${path}/resources/images/${ data.res_logo }" width="400" height="250">
	<img class="res1" src="${path}/resources/images/${ data.res_logo1 }" width="200" height="120">
	<img class="res2" src="${path}/resources/images/${ data.res_logo2 }" width="200" height="120">
	<img class="resmap" src="${path}/resources/images/${ data.res_map }" width="600" height="350">
	<img class="resmenu"  src="${path}/resources/images/${ data.res_menu }">
	<p class="text1">${ data.res_name }</p>
	<p class="text2">${ data.res_kind }</p>
	<p class="text3">${ data.res_addr }</p>
	<form action=''>
  <input id="detailinput" type='button' 
         value="예약페이지로"
         onclick= "location.href='/rv'"/>
</form>
	</section>
		<h1>상세페이지</h1>
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
	</div>
</body>
</html>