<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html id='mainhtml'>
<head>
<title>마이페이지</title>
<meta charset="UTF-8">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"> 
</script>
<!-- 부트스트랩 -->
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
        <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
<!-- daum 도로명주소 찾기 api -->
<script src="http://dmaps.daum.net/map_js_init/postcode.v2.js"></script>

<script type="text/javascript">

//모든 공백 체크 정규식
var empJ = /\s/g;
//아이디 정규식
var idJ = /^[a-z0-9][a-z0-9_\-]{4,19}$/;
// 비밀번호 정규식
var pwJ = /^[A-Za-z0-9]{4,12}$/;
// 이름 정규식
var nameJ = /^[가-힣]{2,4}|[a-zA-Z]{2,10}\s[a-zA-Z]{2,10}$/;
// 이메일 검사 정규식
var mailJ = /^[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*@[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*.[a-zA-Z]{2,3}$/i;
// 휴대폰 번호 정규식
var phoneJ = /^01([0|1|6|7|8|9]?)?([0-9]{3,4})?([0-9]{4})$/;

/^[가-힣]{2,4}|[a-zA-Z]{2,10}\s[a-zA-Z]{2,10}$/


var birthJ = false;

var address = $('#cust_detailaddr');

$(document).ready(function() {
   var address = $('#cust_detailaddr');

   //아이디 중복확인
      $("#cust_id").blur(function() {
          if($('#cust_id').val()==''){
             $('#id_check').text('아이디를 입력하세요.');
             $('#id_check').css('color', 'red');                     
      
             } else if(idJ.test($('#cust_id').val())!=true){
                $('#id_check').text('4~12자의 영문, 숫자만 사용 가능합니다.');
                $('#id_check').css('color', 'red');
             } else if($('#cust_id').val()!=''){
                
               var cust_id=$('#cust_id').val();
                 $.ajax({
                     async : true,
                        type : 'POST',
                      data : cust_id,//cust_id라는 이름으로 cust_id라는 데이터를 @WebServlet("/idsearch.do")에 보내겠다
                      url : 'idcheck.do',
                        dateType: 'json',
                        contentType: "application/json; charset=UTF-8",
                        success : function(data) {

             if(data.cnt > 0){
                $('#id_check').text('중복된 아이디 입니다.');
                      $('#id_check').css('color', 'red');
                      $("#usercheck").attr("disabled", true);
             }else{
                if(idJ.test(cust_id)){
                   $('#id_check').text('사용가능한 아이디 입니다.');
                   $('#id_check').css('color', 'blue');
                   $("#usercheck").attr("disabled", false);
                }
                else if(cust_id==''){
                $('#id_check').text('아이디를 입력해주세요.');
                      $('#id_check').css('color', 'red');
                      $("#usercheck").attr("disabled", true);
                }
                else{
                   $('#id_check').text("아이디는 소문자와 숫자 4~12자리만 가능합니다.");
                   $('#id_check').css('color', 'red');
                   $("#usercheck").attr("disabled", true);
                }
             }

           }

                });//ajax/// 
             }//else if
           
    });//blur
    
     $('form').on('submit',function(){
         var inval_Arr = new Array(8).fill(false);
         if (idJ.test($('#cust_id').val())) {
            inval_Arr[0] = true;   
         } else {
            inval_Arr[0] = false;
            alert('아이디를  확인하세요.');
            return false;
         }
         // 비밀번호가 같은 경우 && 비밀번호 정규식
         if (($('#cust_pw').val() == ($('#cust_pw2').val()))
               && pwJ.test($('#cust_pw').val())) {
            inval_Arr[1] = true;
         } else {
            inval_Arr[1] = false;
            alert('비밀번호를 확인하세요.');
            return false;
         }
/*          // 이메일 정규식
         if (mailJ.test($('#cust_email').val())){
            console.log(phoneJ.test($('#cust_email').val()));
            inval_Arr[4] = true;
         } else {
            inval_Arr[4] = false;
            alert('이메일을 확인하세요.');
            return false;
         } */
         // 휴대폰번호 정규식
         /* if (phoneJ.test($('#cust_pn').val())) {
            console.log(phoneJ.test($('#cust_pn').val()));
            inval_Arr[5] = true;
         } else {
            inval_Arr[5] = false;
            alert('휴대폰 번호를 확인하세요.');
            return false;
         } */
         //주소확인
         if(address.val() == ''){
            inval_Arr[7] = false;
            alert('주소를 확인하세요.');
            return false;
         }else
            inval_Arr[7] = true;      


   $('#cust_id').blur(function() {
      if (idJ.test($('#cust_id').val())) {
         console.log('true');
         $('#id_check').text('');
      } else {
         console.log('false');
         $('#id_check').text('5~20자의 영문 소문자, 숫자와 특수기호(_),(-)만 사용 가능합니다.');
         $('#id_check').css('color', 'red');
      }
   });
   $('#cust_pw').blur(function() {
      if (pwJ.test($('#cust_pw').val())) {
         console.log('true');
         $('#pw_check').text('');
      } else {
         console.log('false');
         $('#pw_check').text('4~12자의 숫자 , 문자로만 사용 가능합니다.');
         $('#pw_check').css('color', 'red');
      }
   });

   //1~2 패스워드 일치 확인
   $('#cust_pw2').blur(function() {
      if ($('#cust_pw').val() != $(this).val()) {
         $('#pw2_check').text('비밀번호가 일치하지 않습니다.');
         $('#pw2_check').css('color', 'red');
      } else {
         $('#pw2_check').text('');
      }
   });

   //이름에 특수문자 들어가지 않도록 설정
   $("#cust_name").blur(function() {
      if (nameJ.test($(this).val())) {
         console.log(nameJ.test($(this).val()));
         $("#name_check").text('');
      } else {
         $('#name_check').text('한글 2~4자 이내로 입력하세요. (특수기호, 공백 사용 불가)');
         $('#name_check').css('color', 'red');
      }
   });
   $("#cust_email").blur(function() {
      if (mailJ.test($(this).val())) {
         $("#email_check").text('');
      } else {
         $('#email_check').text('이메일 양식을 확인해주세요.');
         $('#email_check').css('color', 'red');
      }
   });
   

         // 생일 유효성 검사
           var birthJ = false;
           
           // 생년월일   birthJ 유효성 검사
           $('#cust_birth').blur(function(){
              var dateStr = $(this).val();      
               var year = Number(dateStr.substr(0,4)); // 입력한 값의 0~4자리까지 (연)
               var month = Number(dateStr.substr(4,2)); // 입력한 값의 4번째 자리부터 2자리 숫자 (월)
               var day = Number(dateStr.substr(6,2)); // 입력한 값 6번째 자리부터 2자리 숫자 (일)
               var today = new Date(); // 날짜 변수 선언
               var yearNow = today.getFullYear(); // 올해 연도 가져옴
              
               if (dateStr.length <=8) {
                 // 연도의 경우 1900 보다 작거나 yearNow 보다 크다면 false를 반환합니다.
                  if (year > yearNow || year < 1900 ){
                     
                     $('#birth_check').text('생년월일을 확인해주세요');
                    $('#birth_check').css('color', 'red');
                  }  
                  else if (month < 1 || month > 12) {
                        
                     $('#birth_check').text('생년월일을 확인해주세요 ');
                    $('#birth_check').css('color', 'red'); 
                  
                  }else if (day < 1 || day > 31) {
                     
                     $('#birth_check').text('생년월일을 확인해주세요 ');
                    $('#birth_check').css('color', 'red'); 
                     
                  }else if ((month==4 || month==6 || month==9 || month==11) && day==31) { 
                     $('#birth_check').text('생년월일을 확인해주세요 ');
                    $('#birth_check').css('color', 'red'); 
                  }else if (month == 2) {
                        var isleap = (year % 4 == 0 && (year % 100 != 0 || year % 400 == 0));
                        
                      if (day>29 || (day==29 && !isleap)) {
                         
                         $('#birth_check').text('생년월일을 확인해주세요 ');
                       $('#birth_check').css('color', 'red'); 
                     
                    }else{
                       $('#birth_check').text('');
                       birthJ = true;
                    }
                  }else{
                     $('#birth_check').text(''); 
                    birthJ = true;
                 }//end of if
                 }else{
                    //1.입력된 생년월일이 8자 초과할때 :  auth:false
                    $('#birth_check').text('생년월일을 확인해주세요 ');
                    $('#birth_check').css('color', 'red');  
                 }
              }); //End of method /*
 
              // 휴대전화
              $('#cust_pn').blur(function(){
                 if(phoneJ.test($(this).val())){
                    console.log(nameJ.test($(this).val()));
                    $("#phone_check").text('');
                 } else {
                    $('#phone_check').text('휴대폰번호를 확인해주세요 ');
                    $('#phone_check').css('color', 'red');
                 }
              });
});

//우편번호 찾기 버튼 클릭시 발생 이벤트
function execPostCode() {
     new daum.Postcode({
         oncomplete: function(data) {
            // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.

            // 도로명 주소의 노출 규칙에 따라 주소를 조합한다.
            // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
            var fullRoadAddr = data.roadAddress; // 도로명 주소 변수
            var extraRoadAddr = ''; // 도로명 조합형 주소 변수

            // 법정동명이 있을 경우 추가한다. (법정리는 제외)
            // 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
            if(data.bname !== '' && /[동|로|가]$/g.test(data.bname)){
                extraRoadAddr += data.bname;
            }
            // 건물명이 있고, 공동주택일 경우 추가한다.
            if(data.buildingName !== '' && data.apartment === 'Y'){
               extraRoadAddr += (extraRoadAddr !== '' ? ', ' + data.buildingName : data.buildingName);
            }
            // 도로명, 지번 조합형 주소가 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
            if(extraRoadAddr !== ''){
                extraRoadAddr = ' (' + extraRoadAddr + ')';
            }
            // 도로명, 지번 주소의 유무에 따라 해당 조합형 주소를 추가한다.
            if(fullRoadAddr !== ''){
                fullRoadAddr += extraRoadAddr;
            }

            // 우편번호와 주소 정보를 해당 필드에 넣는다.
            console.log(data.zonecode);
            console.log(fullRoadAddr);
         /*      var a = console.log(data.zonecode);
            var b = console.log(fullRoadAddr);
            
            if(a == null || b = null){
               alert("주소를 확인하세요.");
               return false;
            }   */
            
            
            $("[name=cust_oaddr]").val(data.zonecode);
            $("[name=cust_addr]").val(fullRoadAddr);
            
            document.getElementById('cust_oaddr').value = data.zonecode; //5자리 새우편번호 사용
            document.getElementById('cust_addr').value = fullRoadAddr;

            //document.getElementById('cust_detailaddr').value = data.jibunAddress; 
        }
     }).open();
 }

</script>
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
					<li class="nav-item1"><a href="/mypage" onClick="mypage_check();">My Page</a></li>
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
                <h3>마이페이지</h3>
                </div>
                
                <article class="container">
            <div class="col-sm-6 col-md-offset-3">
                <form action="/mypage" method="post" role="form" autocomplete="off">
               <div class="form-group">
                        <label for="id">아이디</label>
                        <input type="text" class="form-control" id="cust_id" name="cust_id" value="${nowait.cust_id}" readonly>
                    </div>
                    
                    <div class="form-group">
                        <label for="pw">비밀번호</label>
                        <input type="password" class="form-control" name="cust_pw" placeholder="Password" value="">
                        <div class="eheck_font" id="pw_check"></div>
                    </div>
                    
                    <div class="form-group">
                        <label for="pw2">비밀번호 확인</label>
                        <input type="password" class="form-control" placeholder="Confirm Password" value="">
                          <div class="eheck_font" id="pw2_check"></div>
                    </div>
                    
                       <div class="form-group">
                        <label for="cust_name">이름</label>
                        <input type="text" class="form-control"  name="cust_name" value="${nowait.cust_name}" readonly>
                    </div>
                    
                        <div class="form-group">
                        <label for="cust_birth">생년월일</label>
                        <input type="text" class="form-control" name="cust_birth" value="${nowait.cust_birth}" readonly>          
                    </div>
                    
                    <div class="form-group">
                        <label for="cust_email">이메일 주소</label>
                        <input type="text" class="form-control" name="cust_email" value="${nowait.cust_email}">
                    </div>
                    
             
                    <div class="form-group">
                        <label for="cust_pn">휴대폰 번호</label>
                        <input type="text" class="form-control"name="cust_pn" value="${nowait.cust_pn}" readonly>
                    </div>
                    <div class="form-group">    
               <label for="cust_pn">주소</label><br>           
               <input class="form-control" style="width: 40%; display: inline;" placeholder="우편번호" name="cust_oaddr" type="text" value="${nowait.cust_oaddr}" >
                      <button type="button" class="btn btn-default" onclick="execPostCode();"><i class="fa fa-search"></i> 우편번호 찾기</button>                               
               </div>

               <div class="form-group">
                <input class="form-control" style="top: 5px;" name="cust_addr" type="text" value="${nowait.cust_addr}"/>
               </div>

               <div class="form-group">
                <input class="form-control" placeholder="상세주소" name="cust_detailaddr" type="text"  value="${nowait.cust_detailaddr}"/>
               </div>
               
                <div class="form-group text-center">
                   <button type="submit" class="btn text-white" style="background-color: black;">회원정보 수정하기</button>
                   </div>
                   
                   <div class="form-group text-center">
                   <button type="button" class="btn text-white" style="background-color: black;" onclick="location.href='withdrawal'">회원 탈퇴</button> 
                   </div>
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