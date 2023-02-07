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

			<h2>줄서기 완료</h2>

			

			<ul class="numbox">
				<li class="numsubbox"><img class="numcfimg"
					src="${path}/resources/images/${ numData.res_logo }"></li>
			</ul>
				<h1 style="margin-left:650px; margin-top:20px">
				번호표 : ${ numData.num_id }</h1>
				
				<li class="numcftext1">
				예약자 성함 : ${ numData.cust_name }<br>
					</li>
				
					<li class="numcftext2">
					예약 식당 : ${ numData.res_name }<br>
						</li>
				
					<li class="numcftext3">
				<br> 입장 30분전 해당 매장에서 연락할 예정입니다.<br>	
				</li>

				<form method="POST" action="/numc">
					<input type="hidden" name="numId" value="${numId}" />
					<input type="submit" onClick="return check()" value="원격줄서기취소"
						style="width: 200px; height: 30px; margin-left: 1095px;">


				</form>
	</div>
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

</body>
<script type="text/javascript">
	function check() {
		alert("원격 줄서기가 취소되었습니다.");
	}
</script>
</html>