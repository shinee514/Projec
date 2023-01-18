<%@ page pageEncoding="UTF-8" contentType="text/html;charset=utf-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<html>
 <head>
  <title>상세페이지</title>
 </head>
 <body>
  <h1>상세페이지</h1>
  <p>아이디 : ${ data.cust_id }</p>
  <p>비밀번호 : ${ data.cust_pw }</p>
  <p>이름 : ${ data.cust_name }</p> 
  <p>주소 :${ data.cust_addr }</p>
  <p>연락처 :${ data.cust_pn }</p>
  <p>이메일 : <img src="${path}/resources/images/${ data.cust_email }" width="400" height="250"></p>
 
 </body>
</html>