<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html id='mainhtml'>
<head>
<meta charset="UTF-8">
<title>예약화면</title>
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
	</section>

        <h3>예약하기</h3>
          <form method="POST">
   <p>예약식당 : <input type="text" name="res_name" value="${ res_name }" /></p>
   ${ res_name }
   <p>예약자 성함 : <input type="text" name="cust_name" /></p>
   <p>예약날짜 : <input type="date" name="rv_date" /></p>
   <p>예약시간 : <input type="time" name="rv_time" /></p>
   <p>예약 인원수 : <select name="rv_cnt" size="1">
                    <option value="2명">2명</option>
                    <option value="3명">3명</option>
                    <option value="4명">4명</option>
                    <option value="5명">5명</option>
                    <option value="6명">6명</option>
                    <option value="단체">단체</option>
                </select></p>
   <p><input type="submit" value="예약하기" />
  </form>

    <footer id='mainfooter'>
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