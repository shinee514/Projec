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
	<img src="${path}/resources/images/logo2.png" alt="My Image" width="200" height="150">
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
			<li class="nav-item2"> <a href="/rev">원격 줄서기/예약</a></li>
			<li class="nav-item2"> <a href="/recommend">주변맛집추천</a></li>
			<li class="nav-item2"> <a href="/sale">타임세일</a></li>
		</ul>
	</nav>
	</section>

        <h2>예약하기</h2>
          <form method="POST">
          <div class="form-group col-sm-5">
   		   <label for="resAddr">지역 선택</label>
   		   <select class="form-control" id="resAddr" name="resAddr" onchange="resChange(this)">
   		   		<option>지역을 선택하세요</option>
   		   		<option value="a">잠실</option>
   		   		<option value="b">천호</option>
   		   		<option value="c">하남미사</option>
   		   </select>
   		   </div>
   		   <div class="form-group col-sm-4">
   		   	<label for="res_name">음식점 선택</label>
   		   	<select class="form-control" id="res_name" name="res_name">
				<option>선택해주세요.</option>   		   	
   		   	</select>
   		   	</div>
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
    <script>
    	function resChange(e){
    		var chenho = ["천호쭈꾸미","대팔이네","로니로티 천호점","풍국면 천호점","스시공간","더식당","얌얌카츠","연풍민락"]
    		var jamsil = ["잠실백정","치즈룸 & 테이스팅룸 롯데월드몰","동경산책 석촌호수점","한남대교","한양중식","피자덕후 피자힙 송리단길점","세컨디포레스트 송리단길점","사시미 신천본점"]
    		var misa = ["반치앙마이","고기랑조개당","굽네치킨 미사수변공원점","건강밥상심마니 하남점","찌엔용","경양카츠 하남미사점","미뜸 하남미사역점","페어링하우스"]
    		var target = document.getElementById("res_name");
    		
    		if(e.value == "a") var d = jamsil;
    		else if(e.value == "b") var d = chenho;
    		else if(e.value == "c") var d = misa;
    		
    		target.options.length = 0;
    		
    		for (x in d) {
    			var opt = document.createElement("option");
    			opt.value = d[x];
    			opt.innerHTML = d[x];
    			target.appendChild(opt);
    		}
    	}
    </script>
</html>