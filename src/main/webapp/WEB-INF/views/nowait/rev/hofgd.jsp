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
						<div id="title">원격 줄서기/예약</div>
						<div id="submenu">

							<ul>
								<li><a href="#" id="left0" class="lnb">인기 줄서기</a>
									<ul class="depth2">

										<li><a class="pop-gd" href="#">>강동</a></li>
										<li><a class="pop-sp" href="#">>송파</a></li>
										<li><a class="pop-hn" href="#">>하남</a></li>
									</ul></li>
								<li><a href="#" id="left1" class="lnb">호프 줄서기</a>
									<ul class="depth2">

										<li><a class="hof-gd" href="#">>강동</a></li>
										<li><a class="hof-sp" href="#">>송파</a></li>
										<li><a class="hof-hn" href="#">>하남</a></li>
									</ul></li>
								<li><a href="#" id="left2" class="lnb">한식 줄서기</a>
									<ul class="depth2">
										<li><a class="kor-gd" href="#">>강동</a></li>
										<li><a class="kor-sp" href="#">>송파</a></li>
										<li><a class="kor-hn" href="#">>하남</a></li>
									</ul></li>
								<li><a href="#" id="left3" class="lnb">양식 줄서기</a>
									<ul class="depth2">
										<li><a class="usa-gd" href="#">>강동</a></li>
										<li><a class="usa-sp" href="#">>송파</a></li>
										<li><a class="usa-hn" href="#">>하남</a></li>
									</ul></li>
								<li><a href="#" id="left4" class="lnb">일식 줄서기</a>
									<ul class="depth2">
										<li><a class="jp-gd" href="#">>강동</a></li>
										<li><a class="jp-sp" href="#">>송파</a></li>
										<li><a class="jp-hn" href="#">>하남</a></li>
									</ul></li>
								<li><a href="#" id="left5" class="lnb">중식 줄서기</a>
									<ul class="depth2">
										<li><a class="ch-gd" href="#">>강동</a></li>
										<li><a class="ch-sp" href="#">>송파</a></li>
										<li><a class="ch-hn" href="#">>하남</a></li>
									</ul></li>
							</ul>


						</div>
					</div>

				</div>

			</div>
			
			<ul class="contentbox">
 			
				<li class="contentimg">
					<div class="boximg">
						<a href="/detail?resId=8"> <img id="misa don"
							src="./resources/images/recommend/yp.png">
						</a>
					</div>
				</li>
				<li class="contentimg">
					<div class="boximg">
						<a href="/detail?resId=5"> <img id="misa don"
							src="./resources/images/recommend/sg.png">
						</a>
					</div>
				</li>
				<li class="contentimg">
					<div class="boximg">
						<a href="/detail?resId=6"> <img id="misa don"
							src="./resources/images/recommend/tsd.png">
						</a>
					</div>
				</li>
				<li class="contentimg">
					<div class="boximg">
						<a href="/detail?resId=11"> <img id="misa don"
							src="./resources/images/recommend/yk.png">
						</a>
					</div>
				</li>

			</ul>
		</div>
	</div>
</body>
<script>
	var currentLeft;
	var prevLeft;
	$("ul.depth2").hide();
	lnb("left1");
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
		$(".pop-gd").click(function() {
			location.href = "/popgd"
		});
	});
	$(function() {
		$(".pop-sp").click(function() {
			location.href = "/popsp"
		});
	});
	$(function() {
		$(".pop-hn").click(function() {
			location.href = "/pophn"
		});
	});
	/*호프 줄서기*/
	$(function() {
		$(".hof-gd").click(function() {
			location.href = "/hofgd"
		});
	});
	$(function() {
		$(".hof-sp").click(function() {
			location.href = "/hofsp"
		});
	});
	$(function() {
		$(".hof-hn").click(function() {
			location.href = "/hofhn"
		});
	});
	/*한식 줄서기*/
	$(function() {
		$(".kor-gd").click(function() {
			location.href = "/korgd"
		});
	});
	$(function() {
		$(".kor-sp").click(function() {
			location.href = "/korsp"
		});
	});
	$(function() {
		$(".kor-hn").click(function() {
			location.href = "/korhn"
		});
	});
	/*양식 줄서기*/
	$(function() {
		$(".usa-gd").click(function() {
			location.href = "/usagd"
		});
	});
	$(function() {
		$(".usa-sp").click(function() {
			location.href = "/usasp"
		});
	});
	$(function() {
		$(".usa-hn").click(function() {
			location.href = "/usahn"
		});
	});
	/*일식 줄서기*/
	$(function() {
		$(".jp-gd").click(function() {
			location.href = "/jpgd"
		});
	});
	$(function() {
		$(".jp-sp").click(function() {
			location.href = "/jpsp"
		});
	});
	$(function() {
		$(".jp-hn").click(function() {
			location.href = "/jphn"
		});
	});
	/*중식 줄서기*/
	$(function() {
		$(".ch-gd").click(function() {
			location.href = "/chgd"
		});
	});
	$(function() {
		$(".ch-sp").click(function() {
			location.href = "/chsp"
		});
	});
	$(function() {
		$(".ch-hn").click(function() {
			location.href = "/chhn"
		});
	});
</script>
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
</html>