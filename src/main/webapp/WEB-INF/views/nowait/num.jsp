<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html id="mainhtml">
<head>
<meta charset="UTF-8">
<title>메인화면</title>
<link href="${path}/resources/css/style.css?after" rel="stylesheet" />
</head>
<body id='mainbody'>
	<div id='mainwrap'>
		<section id='mainsection'>
			<header>
				<a href="/first"> <img src="${path}/resources/images/logo2.png"
					alt="My Image" width="200" height="150">
				</a>
			</header>
			<nav>
				<ul class="nav-1">
					<li class="nav-item1"><a href="/nowait/login">Login</a></li>
					<li class="nav-item1"><a href="">My Page</a></li>
					<li class="nav-item1"><a href="/nowait/signup">Join</a></li>
					<li class="nav-item1"><a href="">QnA</a></li>
				</ul>
			</nav>
			<c:if test="${nowait != null }">
				<p>${nowait.cust_name}님 환영합니다.</p>
			</c:if>
			<nav>
				<ul class="nav-2">
					<li class="nav-item2"><a href="/rev">원격 줄서기/예약</a></li>
					<li class="nav-item2"><a href="/recommend">주변맛집추천</a></li>
					<li class="nav-item2"><a href="/sale">타임세일</a></li>
				</ul>
			</nav>
			
			<form action="" id="joinForm" method="POST">
			
						<p class="rvservcice">
							음식점명 : <input value="${ data.res_name }" name="res_name" readonly style="width: 250px; height:30px; font-size:15px; border:none;">
						</p>
						
						<p class="rvservcice">
							예약자 이름 : <input value="${ nowait.cust_name }" name="cust_name" readonly style="width: 250px; height:30px; font-size:15px; border:none;">
						</p>
						
						<p class="rvservcice">
							예약자 전화번호 : <input value="${ nowait.cust_pn }" name="cust_pn" readonly style="width: 250px; height:30px; font-size:15px; border:none;">
						</p>

			<ul class="footBtwrap clearfix">

				<li><button class="fpmgBt2">원격줄서기</button></li>
			</ul>
		</form>
			
		<footer id="mainfooter">
			<hr width="100%">

			<a href="" target="_blank">이용약관</a> <a href="" target="_blank">개인정보
				처리방침</a>
			</nav>
			<p></p>
			<h3>
				<span>nowait</span>
			</h3>
			<br /> <span>경기도 하남시 미사강변동로 85 힐스테이트에코미사, 3층 nowait</span><br /> <span>©
				nowait All rights reserved.</span>
		</footer>
	</div>
</body>
</html>