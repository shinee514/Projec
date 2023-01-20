<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>메인화면</title>
<link href="${path}/resources/css/style.css" rel="stylesheet" />
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script type="text/javascript"></script>
<style>
body {
	margin: 0;
}

#wrap {
	min-height: 100vh;
	porition: relative;
	width: 100%;
}

footer {
	width: 100%;
	height: 0px;
	bottom: -300px;
	position: absolute;
}

section {
	padding-bottom: -300px;
}

html, body {
	margin: 0;
	padding: 0;
}

a {
	text-decoration: none;
	color: #000;
}

ul {
	list-style: none;
}

#all2 {
	width: 1015px;
}

#all2>div {
	float: left;
}

#left {
	position: absolute;
	width: 280px;
}

#leftmenu {
	margin: 0 auto;
	margin-top: 20px;
	width: 215px;
	background: url(images/menu-line.gif) repeat-x center;
}

#leftmenu #title {
	height: 41px;
	line-height: 45px;
	text-indent: 16px;
	font-size: 14px;
	font-weight: 900;
	background-color: #fcd7d7;
	border: 1px solid #f89a9a;
	border-top: 3px solid #ff0000;
}

#submenu>ul>li>a {
	display: block;
	height: 33px;
	line-height: 38px;
	text-indent: 28px;
	font-size: 20px;
	font-weight: 500;
	background: url(images/sub_line.gif) no-repeat bottom;
	border-left: 1px solid #f89a9a;
	border-right: 1px solid #f89a9a;
	cursor: pointer;
}

#submenu>ul>li>a:hover, #submenu>ul>li>a.on {
	line-height: 36px;
	text-indent: 19px;
	font-weight: 900;
	background-color: #fcd7d7;
	background: url(imimages/arrow_select.gif) no-repeat 190px;
	color: #f89a9a;
	border: none;
}

.depth2 {
	display: block;
	background: url(images/sub_line_edge.gif) no-repeat bottom;
}

.depth2>li>a {
	display: block;
	height: 40px;
	line-height: 40px;
	text-indent: 45px;
	border-left: 1px solid #f89a9a;
	border-right: 1px solid #f89a9a;
	cursor: pointer;
	font-size: 14px;
}

.depth2>li>a:hover, .depth2>li>a.on {
	color: #f89a9a;
}

.kangdong {
	width: 100%;
	margin-left: 1000px;
	display: none;
}

.contentbox {
	width: 60%;
	margin: 0 auto;
	display: flex;
	flex-wrap: wrap;
	margin-left: 600px;
}

.contentbox .contentimg {
	width: 48%;
	margin-bottom: 20px;
}

.contentbox .contentimg .boximg {
	width: 300px;
	height: 300px;
}

.contentbox .contentimg .boximg img {
	width: 100%;
	height: 100%;
}
</style>
</head>
<body>
	<div id="wrap">
		<section>
			<header>
				<a href="/main"> <img src="${path}/resources/images/logo.png"
					alt="My Image" width="200" height="150">
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

										<li><a href="#">>강동</a></li>
										<li><a href="#">>송파</a></li>
										<li><a href="#">>하남</a></li>
									</ul></li>
								<li><a href="#" id="left1" class="lnb">호프 줄서기</a>
									<ul class="depth2">
										<li><a href="#">>강동</a></li>
										<li><a href="#">>송파</a></li>
										<li><a href="#">>하남</a></li>
									</ul></li>
								<li><a href="#" id="left2" class="lnb">한식 줄서기</a>
									<ul class="depth2">
										<li><a href="#">>강동</a></li>
										<li><a href="#">>송파</a></li>
										<li><a href="#">>하남</a></li>
									</ul></li>
								<li><a href="#" id="left3" class="lnb">양식 줄서기</a>
									<ul class="depth2">
										<li><a href="#">>강동</a></li>
										<li><a href="#">>송파</a></li>
										<li><a href="#">>하남</a></li>
									</ul></li>
								<li><a href="#" id="left4" class="lnb">일식 줄서기</a>
									<ul class="depth2">
										<li><a href="#">>강동</a></li>
										<li><a href="#">>송파</a></li>
										<li><a href="#">>하남</a></li>
									</ul></li>
								<li><a href="#" id="left5" class="lnb">중식 줄서기</a>
									<ul class="depth2">
										<li><a href="#">>강동</a></li>
										<li><a href="#">>송파</a></li>
										<li><a href="#">>하남</a></li>
									</ul></li>
							</ul>


						</div>
					</div>

				</div>

			</div>
			<ul class="contentbox">

				<li class="contentimg">
					<div class="boximg">
						<img id="misa don" src="./resources/images/경양카츠.png">
					</div>
				</li>
				<li class="contentimg">
					<div class="boximg">
						<img id="misa don" src="./resources/images/경양카츠.png">
					</div>
				</li>
				<li class="contentimg">
					<div class="boximg">
					<a href="/detail?resId=19">
						<img id="misa don" src="./resources/images/recommend/gn.png">
					</a>
					</div>
				</li>
				<li class="contentimg">
					<div class="boximg">
						<img id="misa don" src="./resources/images/경양카츠.png">
					</div>
				</li>

			</ul>
		</div>
		</div>
</body>
<script>
var state= "off";
contentbox.onclick = function(){
	   if()
}

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
  
</script>
<footer>
	<hr width="100%">
	<nav>
		<a href="" target="_blank">Blog</a> <a href="" target="_blank">Github</a>
	</nav>
	<p>
		<span>1</span><br /> <span>2</span><br /> <span>Copyright
			2023</span>
	</p>
</footer>
</body>
</html>