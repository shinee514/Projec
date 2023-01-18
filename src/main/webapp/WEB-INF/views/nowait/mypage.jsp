<%@ page pageEncoding="UTF-8" contentType="text/html;charset=utf-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<html>
 <head>
  <title>마이페이지</title>
 </head>
 <body>
  <h1>마이페이지</h1>
  <p>아이디 : ${ data.cust_id } </p>
  <p>비밀번호 : ${ data.cust_pw }</p>
  <p>이름 : ${ data.cust_name }</p> 
  <p>주소 :${ data.cust_addr }</p>
  <p>연락처 :${ data.cust_pn }</p>
  <p>이메일 :${ data.cust_email }</p>

  <p>
   <a href="/update?custId=${custId}">수정</a>
  </p>
  <form method="POST" action="/delete">
   <input type="hidden" name="custId" value="${custId}" />
   <input type="submit" value="삭제" />
  </form>
  <p>
   <a href="/list">목록으로</a>
  </p>
 </body>
</html>