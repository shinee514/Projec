<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
			<div class="name">
				<c:if test="${nowait != null }">
					<p
						style="font-size: 12px; font-family: sans-serif; margin-right: 10px; float: right;">
						${nowait.cust_name}님 환영합니다.</p>
				</c:if>
			</div>
			<header>
				<a href="/first"> <img src="${path}/resources/images/logo2.png"
					alt="My Image" width="200" height="150">
				</a>
			</header>
			<nav>
				<ul class="nav-1">
             	  	<li class="nav-item1"> <c:if test="${nowait != null}"><a href="/logout">Logout</a></c:if></li>
               		<li class="nav-item1"> <c:if test="${nowait == null}"><a href="/login">Login</a></c:if></li>
					<li class="nav-item1"><a href="/mypage">My Page</a></li>
					<li class="nav-item1"><a href="/signup">Join</a></li>
					<li class="nav-item1"><a href="/faq">FAQ</a></li>
				</ul>
			</nav>
			<nav>
				<ul class="nav-2">
					<li class="nav-item2"><a href="/rev">원격 줄서기/예약</a></li>
					<li class="nav-item2"><a href="/recommend">주변맛집추천</a></li>
					<li class="nav-item2"><a href="/sale">타임세일</a></li>
				</ul>
			</nav>

			<form action="" id="joinForm1" method="POST">
					<input type="hidden" value="${ data.res_logo }" name="res_logo">
				<p class="rvservcice1">
					음식점명 : <input required value="${ data.res_name }" name="res_name"
						readonly
						style="width: 250px; height: 30px; font-size: 25px; border: none;">
				</p>

				<p class="rvservcice1">
					예약자 이름 : <input value="${ nowait.cust_name }" name="cust_name"
						readonly
						style="width: 250px; margin-top: 10px; height: 30px; font-size: 25px; border: none;">
				</p>

				<p class="rvservcice1">

					예약자 전화번호 : <input value="${ nowait.cust_pn }" name="cust_pn"
						readonly
						style="width: 250px; margin-top: 10px; height: 30px; font-size: 25px; border: none;">
				</p>

	

   			

				

				
			<ul class="footBtwrap clearfix">
						<li><button type="submit" onClick="return check()"
								class="fpmgBt2">원격줄서기</button></li>
					</ul>
				</form>
			
		
	</div>
		<footer id='mainfooter'>
			<hr width="100%">
			<nav>
				<a href="" target="_blank">이용약관</a> <a href="" target="_blank">개인정보
					처리방침</a>
			</nav>
			<p>
			
		<h3>
				<span>nowait</span>
			</h3>
			<br /> <span>경기도 하남시 미사강변동로 85 힐스테이트에코미사, 3층 nowait</span><br /> <span>©
				nowait All rights reserved.</span>
			</p>
		</footer>
</body>
<script>
	function check() {
		if (joinForm.cust_name.value.length == 0) {
			alert("로그인 후 이용가능합니다.");
			return false;
		}
	}
</script>
</html>