<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>게시판</title>
<link rel="stylesheet" href="css/bootstrap.css">
<link href="${path}/resources/css/style.css" rel="stylesheet" />
<style>
.list_table tbody td { 
	text-align: center;  border-bottom: 1px solid #e5e5e5; padding: 5px 0; 
}
</style>
<body>
<section id="mainsection">
			<header>
				<a href="/main"> <img src="${path}/resources/images/logo2.png"
					alt="My Image" width="200" height="150">
				</a>
			</header>
			<nav>
				<ul class="nav-1">
					<li class="nav-item1"><a href="/login">Login</a></li>
					<li class="nav-item1"><a href="">My Page</a></li>
					<li class="nav-item1"><a href="/signup">Join</a></li>
					<li class="nav-item1"><a href="/qna">QnA</a></li>
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
<div id="boardcss_list_add_button_table">
	<div class="boardcss_list_add_button">
		<a href="/write"><p class="add_button">글쓰기</p></a>
		<ul></ul>
	</div>
</div>
<div class="boardcss_list_table">
	<table class="list_table">
		<colgroup>
			<col width="15%" />
			<col width="45%" />
			<col width="20%" />
			<col width="20%" />
		</colgroup>
		<thead>
			<tr>
				<th>번호</th>
				<th>제목</th>
				<th>이름</th>
				<th>등록일자</th>
			</tr>
		</thead>
		<tbody>
			<tr>
				<td>5</td>
				<td>
					<a href="/pass">예약 확인 문의</a>
				</td>
				<td>강민성</td>
				<td>2023-01-30</td>
			</tr>
			<tr>
				<td>4</td>
				<td>
					<a href="/pass">세일 관련 문의</a>
				</td>
				<td>김민정</td>
				<td>2023-01-29</td>
			</tr>
			<tr>
				<td>3</td>
				<td>
					<a href="/pass">결제 관련 문의</a>
				</td>
				<td>이병철</td>
				<td>2023-01-29</td>
			</tr>
			<tr>
				<td>2</td>
				<td>
					<a href="/pass">예약 확인 문의</a>
				</td>
				<td>강민하</td>
				<td>2023-01-27</td>
			</tr>
			<tr>
				<td>1</td>
				<td>
					<a href="/pass">예약 확인 문의</a>
				</td>
				<td>김유정</td>
				<td>2023-01-25</td>
			</tr>
		</tbody>
	</table>
</div>
<footer id="mainfooter">
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
</body>
</html>