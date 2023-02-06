<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html id='mainhtml'>
<head>
<title>로그인</title>
<meta charset="UTF-8">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<!-- 부트스트랩 -->
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
        <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
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
         <li class="nav-item2"> <a href="/rev">원격 줄서기-예약</a></li>
         <li class="nav-item2"> <a href="/recommend">주변맛집추천</a></li>
         <li class="nav-item2"> <a href="/sale">타임세일</a></li>
      </ul>
   </nav>
   </section>
   
	   <article class="container">
            <div class="page-header">
                <div class="col-6 text-center">
                <h3>로그인</h3>
                </div>
                
                <article class="container">
            <div class="col-sm-6 col-md-offset-3">
                <form action="/login" method="post" role="form" autocomplete="off">
					<div class="form-group">
                        <label for="id">아이디</label>
                        <input type="text" class="form-control" id="cust_id" name="cust_id" placeholder="ID">
                        <div class="eheck_font" id="id_check"></div>
                    </div>
                    
                    <div class="form-group">
                        <label for="pw">비밀번호</label>
                        <input type="password" class="form-control" id="cust_pw" name="cust_pw" placeholder="PASSWORD">
                        <div class="eheck_font" id="pw_check"></div>
                    </div>
                    
                     <div class="form-group text-center">
       				<button type="submit" class="btn text-white" style="background-color: black;">로그인</button> 
       				</div>

  					
<c:if test="${msg == false}">
	<p style="color:#f00;">로그인에 실패했습니다. 아이디 또는 패스워드를 다시 입력해주세요.</p>
</c:if>

  </form>
  
  </div>
  </article>
  </div>
  </article>
   
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