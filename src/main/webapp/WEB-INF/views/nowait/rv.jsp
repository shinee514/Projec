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
        <form action="" method="post">
            <fieldset>
                <legend>예약자 정보</legend>
                <label for="sub">예약자:</label>
                <input type="text" name="person" id="sub"/><br>
                <label for="phone">연락처:</label>
                <input type="tel" name="tell" id="phone" placeholder="01*-000*-0000" pattern="(01[0-9]{1}-[0-9]{3,4}-[0-9]{4}"/><br>
                예약인원:
                <select name="person" id="person_cnt" size="1">
                    <option value="">2명</option>
                    <option value="">3명</option>
                    <option value="">4명</option>
                    <option value="">5명</option>
                    <option value="">6명</option>
                    <option value="">기타..</option>
                </select>
            </fieldset>
            
            <fieldset>
                <legend>일자 및 시간 선택</legend>
                <input type="date" name="reservation_date">
                <input type="time" name="reservation_time"><br>
                <label for="position">위치:</label>
                <input type="radio" name="site" value="yes"/>본관
                <input type="radio" name="site" value="yes"/>별관<br>

                <label for="choice">옵션:</label>
                <input type="radio" name="op" id="choice" value="sep_room"/>단독룸
                <input type="radio" name="op" id="choice" value="baby_chair"/>아기의자
                <input type="radio" name="op" id="choice" value="veg_cuisine"/>채식요리
            </fieldset>
            <br>
            <input type="button" value="예약" onclick="location.href='/rvcf'">
            <input type="reset" value="취소">
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