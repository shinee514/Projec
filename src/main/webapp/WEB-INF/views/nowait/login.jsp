<%@ page pageEncoding="UTF-8" contentType="text/html;charset=utf-8"%>
<html>
 <head>
  <title>책 생성하기</title>
 </head>
 <body>
  <h1>책 생성하기</h1>
  <form method="POST">
   <p>아이디 : <input type="text" name="cust_id" /></p>
   <p>비밀번호 : <input type="text" name="cust_pw" /></p>
   <p>이름 : <input type="text" name="cust_name" /></p>
   <p>주소 : <input type="text" name="cust_addr" /></p>
   <p>연락처 : <input type="text" name="cust_pn" /></p>
   <p>이메일 : <input type="text" name="cust_email" /></p>
   <p><input type="submit" value="저장" />
  </form>
 </body>
</html>