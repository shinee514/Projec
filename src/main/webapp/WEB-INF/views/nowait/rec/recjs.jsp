<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html id="mainhtml">
<head>
<meta charset="UTF-8">
<title>메인화면</title>
<link href="${path}/resources/css/style.css" rel="stylesheet" />
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script type="text/javascript"></script>
<style>
a {
	text-decoration: none;
	color: #000;
}

ul {
	list-style: none;
}
</style>
</head>
<body id="mainbody">
	<div id="mainwrap">
		<section id="mainsection">
			<header>
				<a href="/main"> <img src="${path}/resources/images/logo2.png"
					alt="My Image" width="200" height="150">
				</a>
			</header>
			<nav>
				<ul class="nav-1">
			<li class="nav-item1"> <a href="/nowait/login">Login</a></li>
			<li class="nav-item1"> <a href="">My Page</a></li>
			<li class="nav-item1"> <a href="/nowait/signup">Join</a></li>
			<li class="nav-item1"> <a href="">QnA</a></li>
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
		<div id="all">
			<div id="all2">
				<div id="left">
					<div id="leftmenu">
						<div id="title">주변맛집추천</div>
						<div id="submenu">

							<ul>
								<li><a href="#" id="left0" class="lnb">서울</a>
									<ul class="depth2">

										<li><a class="recjs" href="#">잠실</a></li>
										<li><a class="recch" href="#">천호</a></li>
									</ul></li>
								<li><a href="#" id="left1" class="lnb">경기</a>
									<ul class="depth2">
										<li><a class="recms" href="#">하남미사</a></li>
									</ul></li>
								<li><a href="#" id="left2" class="lnb">인천</a>

								<li><a href="#" id="left3" class="lnb">강원</a>

								<li><a href="#" id="left4" class="lnb">충청</a>

								<li><a href="#" id="left5" class="lnb">경상</a>
								</li>
							</ul>


						</div>
					</div>

				</div>

			</div>
							
				<ul class="contentbox">
					<li class="contentimg">
						<div class="boximg">
							<a href="/detail?resId=13">
								<img class="a" src="${path}/resources/images/recommend/hy.png">
							</a>
						</div>
					</li>
					<li class="contentimg">
						<div class="boximg">
							<a href="/detail?resId=14">
								<img class="a" src="${path}/resources/images/recommend/pd.png">
							</a>
						</div>
					</li>
					<li class="contentimg">
						<div class="boximg">
							<a href="/detail?resId=16">
								<img class="a" src="${path}/resources/images/recommend/ssm.png">
							</a>
						</div>
					</li>
					<li class="contentimg">
						<div class="boximg">
							<a href="/detail?resId=10">
								<img class="a" src="${path}/resources/images/recommend/ct.png">
							</a>
						</div>
					</li>
				</ul>
				
		</div>
	</div>
<footer id="mainfooter">
	<hr width="100%">
		<nav>
			<a href="" target="_blank">이용약관</a>
			<a href="" target="_blank">개인정보 처리방침</a>
		</nav>
		<p>
			<h3><span>nowait</span></h3><br/>
			<span>경기도 하남시 미사강변동로 85 힐스테이트에코미사, 3층 nowait</span><br/>
			<span>© nowait All rights reserved.</span>
		</p>
</footer>
</body>
<script>
	var currentLeft;
	var prevLeft;
	$("ul.depth2").hide();
	lnb("left0");
	function lnb(str) {
		currentLeft = $("#" + str);
		prevLeft = currentLeft;
		currentLeft.addClass("on");
		currentLeft.next(".depth2").slideDown("fast");
	}
	$("a.lnb").click(function() {
		if ($(this).hasClass("on") == false) {
			$("a.lnb").each(function() {
				if ($(this).hasClass("on")) {
					$(this).removeClass("on");
					//전체의 "lnb"클래스에서 "on"클래스가 삭제됩니다.
					//"on" 클래스가 추가되면 활성화된 1 Depth로 지정됩니다.
					$(this).next(".depth2").slideUp("fast");
					//전체의 2 Depth에 해당하는 <ul>태그가 닫힙니다.
				}
			});
			$(this).addClass("on"); // 클릭된 메뉴를 활성화시킵니다.
			$(this).next(".depth2").slideDown("fast");
			//클릭된 메뉴의 서브 메뉴가 열립니다. $(this).next().slideDown("fast");
		} else {
			//console.log ("현재 활성화 중입니다.")
			$(this).removeClass("on");
			$(this).next(".depth2").slideUp("fast");
		}

	});
	/*인기 줄서기*/
	$(function() {
		$(".recjs").click(function() {
			location.href = "/recjs"
		});
	});
	$(function() {
		$(".recch").click(function() {
			location.href = "/recch"
		});
	});
	$(function() {
		$(".recms").click(function() {
			location.href = "/recms"
		});
	});
</script>
</html>