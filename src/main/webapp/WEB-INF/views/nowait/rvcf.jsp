<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html id='mainhtml'>
<head>
<meta charset="UTF-8">
<title>메인화면</title>
<link href="${path}/resources/css/style.css" rel="stylesheet"/>
</head>
<body id='mainbody'>
<div id='mainwrap'>
	<section id='mainsection'>
		<div class="name">
			<c:if test="${nowait != null }">
    		<p style="font-size: 12px; font-family: sans-serif; margin-right: 10px; float: right;">
    		${nowait.cust_name}님 환영합니다.
    		</p>
    		</c:if>
   		</div>
<header>
<a href="/first"> 
	<img src="${path}/resources/images/logo2.png" alt="My Image" width="200" height="150">
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
			<li class="nav-item2"> <a href="/rev">원격 줄서기/예약</a></li>
			<li class="nav-item2"> <a href="/recommend">주변맛집추천</a></li>
			<li class="nav-item2"> <a href="/sale">타임세일</a></li>
		</ul>
	</nav>
	</section>
	<div class="member_rvComplete">
    <div class="rvComplete">
        <p class="desc"><h2>예약이 완료 되었습니다.</h2></p>
        <br/>
        <div class="memberInfo">       
            <ul>
                <li><strong>> 예약번호: </strong><span>${ rvData.rv_id }</span></li>
                <li><strong>> 예약자 성함: </strong><span>${ rvData.cust_name }</span></li>
                <li><strong>> 예약 식당: </strong><span>${ rvData.res_name }</span></li>
                <li><strong>> 예약 날짜: </strong><span>${ rvData.rv_date }</span></li>
                <li><strong>> 예약 시간: </strong><span>${ rvData.rv_time }</span></li>
                <li><strong>> 인원 수: </strong><span>${ rvData.rv_cnt }</span></li>
            </ul>
        </div>
        <br/>
        <p class="button2">
         <form method="POST" action="/rvc">
   			<input type="hidden" name="rvId" value="${rvId}" />
   			<input type="submit" onClick="return check()" value="예약취소" />
  		</form>
        </p>

    </div>
</div>

	<footer id='mainfooter'>
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
	</div>
</body>
<script type="text/javascript">
function check(){
		alert("예약이 취소되었습니다.");
	}
</script>
</html>