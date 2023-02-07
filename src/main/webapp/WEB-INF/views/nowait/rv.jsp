<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html id='mainhtml'>
<head>
<meta charset="UTF-8">
<title>예약화면</title>
<link href="${path}/resources/css/style.css?after" rel="stylesheet" />
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
		</section>

		<form action="" id="joinForm" method="POST">
			<ul class="join_box">
				<li class="checkBox check01">
					<ul class="clearfix">
						<h2>예약 신청서</h2>
						<p class="rvservcice1">
							음식점명 : <input required value="${ data.res_name }" name="res_name" readonly style="width: 250px; height:30px; font-size:15px; border:none;">
						</p>

						<p class="rvservcice1">
							예약자 성함 : <input required value="${nowait.cust_name}" name="cust_name" readonly style="width: 120px; height:30px; font-size:15px; border:none;"	/>
						</p>
						<p class="rvservcice1">
							예약날짜 : <input required type="date" name="rv_date" style="width: 120px; height:30px; font-size:15px;"/>
						</p>
						<p class="rvservcice1">
							예약시간 : <input required type="time" name="rv_time" style="width: 120px; height:30px; font-size:15px;"/>
						<p class="rvservcice1">
							예약 인원수 : <select name="rv_cnt" size="1" style="width: 60px; height:30px; font-size:15px;">
								<option value="1명">1명</option>
								<option value="2명">2명</option>
								<option value="3명">3명</option>
								<option value="4명">4명</option>
								<option value="5명">5명</option>
								<option value="6명">6명</option>
								<option value="단체">단체</option>
							</select>
						</p>

						<li class="checkAllBtn">
						<li style="margin-top:20px; margin-left:10px;">이용약관, 개인정보 수집 및 이용, 위치정보 이용약관(선택), 프로모션 안내 메일 수신(선택)에 모두
							동의합니다. </li>
						
						<li class="checkAllBtn"><input type="checkbox" name="rv_chk1" onchange="YnCheck(this);"
							style="width: 40px; height:20px; margin-top:20px;" id="chk" class="chkAll"></li>
					</ul>
				</li>


				<li class="checkBox check03">
					<ul class="clearfix">
						<li>개인정보 수집 및 이용에 대한 안내(필수)</li>
						<li class="checkBtn"><input required type="checkbox" name="rv_chk2" style="width: 40px; height:20px;" onchange="YnCheck(this);">
						</li>
					</ul> <textarea name="" id="">                                                     여러분을 환영합니다.
  노웨이트 서비스 및 제품(이하 ‘서비스’)을 이용해 주셔서 감사합니다. 본 약관은 다양한 노웨이트의 이용과 관련하여 노웨이트 서비스를 제공하는 노웨이트와 이를 이용하는 노웨이트 서비스 회원(이하 ‘회원’) 또는 비회원과의 관계를 설명하며, 아울러 여러분의 노웨이트 서비스 이용에 도움이 될 수 있는 유익한 정보를 포함하고 있습니다.
       </textarea>
				</li>
				<li class="checkBox check03">
					<ul class="clearfix">

						<li class="checkBox check04">
							<ul class="clearfix">
								<li>이벤트 등 프로모션 알림 메일 수신(선택)</li>
								<li class="checkBtn"><input type="checkbox" name="rv_chk3" style="width: 40px; height:20px;" onchange="YnCheck(this);">
								</li>
							</ul>
						</li>
				</li>
			</ul>
			<ul class="footBtwrap clearfix">
				<li><button type="submit" onClick="return check()" class="fpmgBt2">예약하기</button></li>
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
<script type="text/javascript">

function YnCheck(obj){
var checked = obj.checked;
if(checked){
	obj.value="Y";
}else{
	obj.value="N";
}
};

function check(){
	if(joinForm.cust_name.value.length == 0){
		alert("로그인 후 이용가능합니다.");
		return false;
	}
	}
</script>
</html>