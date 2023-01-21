<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
 <head>
 <meta charset="UTF-8">
  <title>회원가입</title>
  <link href="${path}/resources/css/signuptest.css" rel="stylesheet"/>
 </head>
 <body>
  <h1>회원가입</h1>
  <form method="POST">
			<!-- 아이디 -->
			<div class="form-group">
				<label for="cust_id">아이디</label>
					<input type="text" class="form-control" id="cust_id" name="cust_id" placeholder="ID" required>
				<div class="check_font" id="id_check"></div>
			</div>
			<!-- 비밀번호 -->
			<div class="form-group">
				<label for="cust_pw">비밀번호</label>
					<input type="password" class="form-control" id="cust_pw" name="vust_pw" placeholder="PASSWORD" required>
				<div class="check_font" id="pw_check"></div>
			</div>
			<!-- 비밀번호 재확인 -->
			<div class="form-group">
				<label for="cust_pw2">비밀번호 확인</label>
					<input type="password" class="form-control" id="cust_pw2" name="cust_pw2" placeholder="Confirm Password" required>
				<div class="check_font" id="pw2_check"></div>
			</div>
			<!-- 이름 -->
			<div class="form-group">
				<label for="cust_name">이름</label>
					<input type="text" class="form-control" id="cust_name" name="cust_name" placeholder="Name" required>
				<div class="check_font" id="name_check"></div>
			</div>			
			<!-- 본인확인 이메일 -->
			<div class="form-group">
				<label for="cust_email">이메일</label>
					<input type="text" class="form-control" name="cust_email" id="cust_email" placeholder="E-mail" required>
					<!-- <input type="text" style="margin-top: 5px;"class="email_form" name="email_confirm" id="email_confirm" placeholder="인증번호를 입력해주세요!" required>
						<button type="button" class="btn btn-outline-danger btn-sm px-3" onclick="confirm_email()">
							<i class="fa fa-envelope"></i>&nbsp;인증
						</button>&nbsp;
						<button type="button" class="btn btn-outline-info btn-sm px-3">
							<i class="fa fa-envelope"></i>&nbsp;확인
						</button>&nbsp; -->
					<div class="check_font" id="email_check"></div>
			</div>
			<!-- 휴대전화 -->
			<div class="form-group">
				<label for="cust_pn">휴대전화 ('-' 없이 번호만 입력해주세요)</label>
				<input type="text" class="form-control" id="cust_pn" name="cust_pn" placeholder="Phone Number" required>
				<div class="check_font" id="phone_check"></div>
			</div>
			<div class="reg_button">
				<a class="btn btn-danger px-3" href="${pageContext.request.contextPath}">
					<i class="fa fa-rotate-right pr-2" aria-hidden="true"></i>취소하기
				</a>&emsp;&emsp;
				<button class="btn btn-primary px-3" id="reg_submit">
					<i class="fa fa-heart pr-2" aria-hidden="true"></i>가입하기
				</button>
			</div>
		</form>
 </body>
</html>