<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
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
 <style>
body {
	margin:0;
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

section{
	padding-bottom: -300px;
	
}

html, body{
	margin: 0;
	padding: 0;
}
</style>
</head>
<body>
<div id='wrap'>
	<section>
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
	<footer>
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

   <article class="container">
            <div class="page-header">
                <div class="col-6 text-center">
                <h3>로그인</h3>
                </div>
                
                <article class="container">
            <div class="col-sm-6 col-md-offset-3">
                <form action="memberjoinpro.do" method="post" role="form" id="usercheck" name="member">
					<div class="form-group">
                        <label for="id">아이디</label>
                        <input type="text" class="form-control" id="mem_id" name="mem_id" placeholder="ID">
                        <div class="eheck_font" id="id_check"></div>
                    </div>
                    
                    <div class="form-group">
                        <label for="pw">비밀번호</label>
                        <input type="password" class="form-control" id="mem_pw" name="mem_pw" placeholder="PASSWORD">
                        <div class="eheck_font" id="pw_check"></div>
                    </div>
                    
                     <div class="form-group text-center">
       				<button type="submit" class="btn btn-primary">로그인</button> 
  </div>
  </form>
  </div>
</body>
</html>