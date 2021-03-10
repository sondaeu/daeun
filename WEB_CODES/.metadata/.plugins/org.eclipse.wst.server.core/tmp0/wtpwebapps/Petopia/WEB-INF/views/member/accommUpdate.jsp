<%@ page language="java" contentType="text/html; charset=UTF-8"
  pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
<style type="text/css">
.container {
  width: 1060px;
  margin: 0 auto;
}

.menu {
  margin-top: 20px;
  margin-bottom: 20px;
}


.section {
  margin-bottom:40px;
  float: right;
  width: 75%;
  color: black;
}

.center {
  overflow: hidden;
  padding-top: 30px;
}

.search {
  height: 100px;
  background-color: grey;
}

h1 {
  color: black;
  text-align: center;
}

.tbl_model {
  width: 100%;
  table-layout: fixed;
  border-spacing: 0;
  border-collapse: collapse;
  word-wrap: break-word;
  word-break: keep-all;
  border: 0;
  border-bottom: 1px solid #e5e5e5;
}

.tbl_model th {
  line-height: 100px;
  text-align: left;
  vertical-align: top;
  letter-spacing: -1px;
  border: 0;
  border-top: 1px solid #e5e5e5;
  padding: 32px 31px 32px;
  color: #333;
  border-right: 1px solid #e5e5e5;
  background: #f9f9f9;
  display: table-cell;
  font-weight: bold;
  width: 20%;
}

.tbl_model td {
  text-align: left;
  letter-spacing: -1px;
  border: 0;
  border-top: 1px solid #e5e5e5;
  padding: 32px 31px 32px;
}

strong {
  font-size: 30px;
  color: skyblue;
}

.info-update-title {
  height: 30px;
  border-bottom: 2px solid #159efd;
  color: black;
  font-size: 20px;
}

.info-update-tap-right {
  float: right;
  width: 395px;
  cursor: pointer;
  border-bottom: 2px solid black;
}

.info-update-tap-left {
  float: left;
  width: 396px;
  border: 2px solid black;
  border-bottom-color: white;
  background-color: white;
  cursor: pointer;
}

.info-update-tap {
  height: 62px;
  line-height: 60px;
  text-align: center;
  overflow: hidden;
  background-color: #f1f0f3;
  margin-top: 20px;
  margin-bottom: 20px;
  font-size: 16px;
  color: black;
}

td button,input[type=button] {
	width: 70px;
	height: 30px;
	color: black;
	background-color: white;
	border: 1px solid #dadada;
	cursor: pointer;
}
</style>
<meta charset="UTF-8">
<title>마이페이지 - 기업정보 변경</title>
</head>
<body>
  <div class="container">
    <%@ include file="../common/header.jspf"%>
  </div>
  <%@ include file="../common/search.jspf"%>

  <div class="container">
    <div class="center">
      <%@ include file="../common/accommNav.jspf"%>
      <div class="section">
        <div class="info-update-title">업체정보 수정</div>
        <div class="info-update-tap">
          <div onclick="location.href='updatePassword'"
            class="info-update-tap-right">비밀번호 수정</div>
          <div onclick="location.href='accommUpdate'"
            class="info-update-tap-left">업체정보 수정</div>
        </div>

        <strong>${MemberVO.id }</strong>님의 정보입니다.<br>
        <table class="tbl_model">
          <tbody>

            <%-- 이름 --%>
            <tr>
              <th>호텔명</th>
              <td><p>${MemberVO.name }</p> <br>
                <button id="nameButton" style="" onclick=display("updateName","nameButton");>수정</button>
                <div style="display: none;" id="updateName">
                  <p>변경할 호텔명</p>
                  <input type="text" name="name" id="name"
                    required="required"><br> <br>
                  <div id="name_check"></div>
                  <button onclick=display("updateName","nameButton");>수정
                    취소</button>
                  &nbsp; <input type="button" id="btnName" value="수정완료">
                </div></td>
            </tr>

            <%-- 연락처 --%>
            <tr>
              <th>연락처</th>
              <td><p>${MemberVO.contact }</p> <br>
                <button id="contactButton" style="" onclick=display("updateContact","contactButton");>수정</button>
                <div style="display: none;" id="updateContact">
                  <p>변경할 연락처</p>
                  <input type="tel" id="mobile" name="contact"
                    required="required"><br>
                  <div id="mobile_check"></div>
                  <br>
                  <button onclick=display("updateContact","contactButton");>수정
                    취소</button>
                  &nbsp; <input type="button" id="btnContact"
                    value="수정완료">
                </div></td>
            </tr>

            <%-- 이메일 --%>
            <tr>
              <th>이메일</th>
              <td><p>${MemberVO.email }</p> <br>
                <button id="emailButton" style="" onclick=display("updateEmail","emailButton");>수정</button>
                <div style="display: none;" id="updateEmail">
                  <p>변경할 이메일</p>
                  <input type="text" id="email" required="required"><br>
                  <div id="email_check"></div>
                  <br>
                  <button onclick=display("updateEmail","emailButton");>수정
                    취소</button>
                  &nbsp; <input type="button" id="btnEmail" value="수정완료">
                </div></td>
            </tr>


            <%-- 자기소개 --%>
            <tr>
              <th>소개글</th>
              <td><p>${MemberVO.note }</p> <br>
                <button id="SNButton" style="" onclick=display("updateSN","SNButton");>수정</button>
                <div style="display: none;" id="updateSN">
                  <p>변경할 업체소개글</p>
                  <textarea rows="10" cols="100" id="note"
                    required="required"></textarea>
                  <br> <br>
                  <button onclick=display("updateSN","SNButton");>수정
                    취소</button>
                  &nbsp; <input type="button" id="btnNote" value="수정완료">
                </div></td>
            </tr>

            <%-- 주소 --%>
            <tr>
              <th>주소</th>
              <td><p>${MemberVO.address }</p> <p>${MemberVO.detailaddress }</p> <br>
                <button id="addressBtn">수정</button>
                <div style="display: none;" id="updateAddress"></div>
                <div id="addresstext">                  
                </div></td>
            </tr>
            
            <tr>
              <th>취급 동물</th>
              <td> <p>${MemberVO.animals }</p><br>
             <button id="animalsButton" style="" onclick=display("updateAnimals","animalsButton");>수정</button>
                <div style="display: none;" id="updateAnimals">
                  <p>가능한 동물에 체크</p>
                  <fieldset>
						<legend>취급 반려동물</legend>
						<input type="checkbox" id="animal1" name="animal" value="개">개
						<input type="checkbox" id="animal2" name="animal" value="고양이">고양이
						<input type="checkbox" id="animal3" name="animal" value="기타">기타
						<input type="hidden" id="totalAnimals" name="animals" readonly>
					</fieldset>
                  <div id="animals_check"></div>
                  <br>
                  <button onclick=display("updateAnimals","animalsButton");>수정
                    취소</button>
                  &nbsp; <input type="button" id="btnAnimals" value="수정완료">
                </div></td>
            </tr>
            
          </tbody>
        </table>

      </div>

    </div>
    <%@ include file="../common/footer.jspf"%>
  </div>

  <script type="text/javascript">
		function display(a, b) {
			var con = document.getElementById(a)
			var con2 = document.getElementById(b)
			if (con.style.display == 'none') {
				con.style.display = 'block';
			} else {
				con.style.display = 'none';
			}

			if (con2.style.display == 'none') {
				con2.style.display = 'block';
			} else {
				con2.style.display = 'none';
			}
		}
		
		$(document).ready(function(){
		  $('#btnName').click(function(){
			console.log(this);
		    var name = $('#name').val();
		    console.log(name);
		    $.ajax({
		      type : 'POST',
		      url : '/hotel/member/updateName',
		      headers : {
		        'Content-Type' : 'application/json',
            	'X-HTTP-Method-Override' : 'POST'
		      },
		      data : JSON.stringify({
		          'name' : name}),
		      success : function(result) {
		        $('#updateName').hide();
		        location.reload();
		      }
		    });// end ajax
		  });
		  
		  $('#btnContact').click(function(){
				console.log(this);
			    var contact = $('#mobile').val();
			    console.log(contact);
			    $.ajax({
			      type : 'POST',
			      url : '/hotel/member/updateContact',
			      headers : {
			        'Content-Type' : 'application/json',
	            	'X-HTTP-Method-Override' : 'POST'
			      },
			      data : JSON.stringify({
			          'contact' : contact}),
			      success : function(result) {
			        $('#updateName').hide();
			        location.reload();
			      }
			    });// end ajax
			  });
		  $('#btnEmail').click(function(){
				console.log(this);
			    var email = $('#email').val();
			    console.log(email);
			    $.ajax({
			      type : 'POST',
			      url : '/hotel/member/updateEmail',
			      headers : {
			        'Content-Type' : 'application/json',
	            	'X-HTTP-Method-Override' : 'POST'
			      },
			      data : JSON.stringify({
			          'email' : email}),
			      success : function(result) {
			        $('#updateName').hide();
			        location.reload();
			      }
			    });// end ajax
			  });
		  
		  $('#btnAnimals').click(function(){
				console.log(this);
			var animals = "";
			$('input:checkbox[name="animal"]').each(function() {
			  if(this.checked) {			    
			  animals += $(this).val() + ",";
			  console.log("동물 : " + $('input:checkbox[name="animal"]').val());
			  }
			});
		    console.log(animals);
			
		    
		    $.ajax({
		      type : 'POST',
		      url : '/hotel/member/updateAnimals',
		      headers : {
		        'Content-Type' : 'application/json',
            	'X-HTTP-Method-Override' : 'POST'
		      },
		      data : JSON.stringify({
		          'animals' : animals}),
		      success : function(result) {
		        location.reload();
		      }
		    });// end ajax
		  });
		  
		  
		  $(document).on('click', '#btnAddress',function(){
				console.log(this);
				var address = $(this).prevAll('#roadAddrPart1').val();
				var detailaddress = $(this).prevAll('#addrDetail').val();
			    console.log(address);
			    $.ajax({
			      type : 'POST',
			      url : '/hotel/member/updateAddress',
			      headers : {
			        'Content-Type' : 'application/json',
	            	'X-HTTP-Method-Override' : 'POST'
			      },
			      data : JSON.stringify({
			          'address' : address,
			          'detailaddress' : detailaddress}),
			      success : function(result) {
			        $('#updateName').hide();
			        location.reload();
			      }
			    });// end ajax
			  });
		  $('#btnNote').click(function(){
				console.log(this);
			    var note = $('#note').val();
			    console.log(note);
			    $.ajax({
			      type : 'POST',
			      url : '/hotel/member/updateNote',
			      headers : {
			        'Content-Type' : 'application/json',
	            	'X-HTTP-Method-Override' : 'POST'
			      },
			      data : JSON.stringify({
			          'note' : note}),
			      success : function(result) {
			        $('#updateName').hide();
			        location.reload();
			      }
			    });// end ajax
			  });
		  
		  $('#addressBtn').click(function(){
		    console.log(this);
		    var list = "";
		    $('#addressBtn').hide();
		    list += '<fieldset id="adressMenu">'
				+'<legend>주소</legend>'
						+'<td><input type="button" id="btnFindAddress" value="검색" style="margin-bottom:10px;"><br></td>'
						+'<tr>'
							+'<th>우편번호</th>'
							+'<td>'
								+'<input type="text" id="zipNo" name="zipcode" value="" readonly>'
							+'</td>'
							
						+'</tr>'
						+'<tr>'
						+	'<th width="60px">도로명주소</th>'
						+	'<td>'
						+		'<input type="text" id="roadAddrPart1" name="address" value="" readonly>'
						+		'<input type="text" id="roadAddrPart2" value="" readonly>'
						+	'</td>'
						+'</tr>'
						+'<tr>'
						+	'<th>상세주소</th>'
						+	'<td>'
						+		'<input type="text" id="addrDetail" name="detailaddress" style="border: none;">'
						+	'</td>'
						+'</tr>'
						+ '<button type="button" id="btnAddressCancle" style="margin-right:5px;">수정취소</button>'
						+ '<button type="button" id="btnAddress">수정완료</button>'
			+'</fieldset>';
		    console.log(list);
		  $('#addresstext').append(list);
		  });
		  
		});
		
		$(document).on('click', '#btnAddressCancle',function(){
		    console.log("togle");
		  $('#addressBtn').show();
		  $('#adressMenu').remove();
		  });
		
		
		var regexpEmpty = /\s/g; //모든 공백 체크 정규식
		var regexpId = /^[a-z0-9][a-z0-9_\-]{3,12}$/; // 아이디 정규식
		var regexpPassword = /^(?=.*[A-Za-z])(?=.*\d)[A-Za-z\d]{8,}$/; // 비밀번호 정규식
		var regexpName = /^[가-힣]{2,4}|[a-zA-Z]{2,10}\s[a-zA-Z]{2,10}$/; // 이름 정규식
		var regexpEmail = /^[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*[@]{1}[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*[.]{1}[a-zA-Z]{2,3}$/i; // 이메일 주소 정규식

		$(document).ready(function() {
			var arrInvalid = new Array(9).fill(false); // 유효성 검사
			
			/* 이름 체크 */
			$('#name').blur(function() {
				if($('#name').val() == '') {
					$('#name_check').text('이름을 입력하세요.');
					$('#name_check').css('color', 'red');
					arrInvalid[2] = false;
					console.log(arrInvalid[2]);
				} else if(!regexpName.test($('#name').val())) {
					$('#name_check').text('특수문자는 사용 불가능합니다.');
					$('#name_check').css('color', 'red');
					arrInvalid[2] = false;
					console.log(arrInvalid[2]);
				} else {
					$('#name_check').text(' ');
					arrInvalid[2] = true;
					console.log(arrInvalid[2]);
				}
			});
			
			/* email 정규식 */
			$('#email').blur(function() {
				if($('#email').val() == '') {
					$('#email_check').text('이메일 주소를 입력하세요.');
					$('#email_check').css('color', 'red');
					arrInvalid[4] = false;
					console.log(arrInvalid[3]);
				} else if(!regexpEmail.test($('#email').val())) {
					$('#email_check').text('유효한 이메일 주소를 입력하세요.');
					$('#email_check').css('color', 'red');
					arrInvalid[4] = false;
					console.log(arrInvalid[3]);
				} else {
					$('#email_check').text(' ');
					arrInvalid[4] = true;
					console.log(arrInvalid[3]);
				}
			});
			
			/* 전화 번호 자동 하이픈 */
			var autoHypenMobile = function(num) {
			      num = num.replace(/[^0-9]/g, '');
			      var tmp = '';
			      if(num.length < 4) {
			          return num;
			      } else if(num.length < 7) {
			          tmp += num.substr(0, 3);
			          tmp += '-';
			          tmp += num.substr(3);
			          $('#mobile_check').text("전화 번호를 확인해주세요.");
			          $('#mobile_check').css('color', 'red');
			          return tmp;
			      }else if(num.length < 11) {
			          tmp += num.substr(0, 3);
			          tmp += '-';
			          tmp += num.substr(3, 3);
			          tmp += '-';
			          tmp += num.substr(6);
			          $('#mobile_check').text("");
			          return tmp;
			      } else if(num.length >11) {
			        tmp += num.substr(0, 3);
		          tmp += '-';
		          tmp += num.substr(3, 4);
		          tmp += '-';
		          tmp += num.substr(7);			         
		          $('#mobile_check').text("전화 번호를 확인해주세요.");
		          return tmp;
			      }
			      else {              
			          tmp += num.substr(0, 3);
			          tmp += '-';
			          tmp += num.substr(3, 4);
			          tmp += '-';
			          tmp += num.substr(7);
			          $('#mobile_check').text("");
			          return tmp;
			      }
			      return num;
			}
			var mobileNum = document.getElementById('mobile');
			 mobileNum.onkeyup = function() {
				console.log(this.value);
				this.value = autoHypenMobile(this.value);  
			} 
			
			 // 번호 포커싱이 벗어낫을때
			 $('#mobile').focusout(function(){
			   var num = $('#mobile').val();
			   var first = num.substring(0,2);
		      var two = num.substring(0,3);			      
		     if(two == '010' || first == "02" || two == "031" || two == "032" || two == "033" || two == "041" || two == "042" || two == "044"  || two == "051"  || two == "052" || two == "053" || two == "054" || two == "055" || two == "061" || two == "062" || two == "063" || two == "064") {
	          console.log(two);
		      } else {
		        $('#mobile_check').text('전화 번호를 확인해주세요.');
	          $('#mobile_check').css('color', 'red');
		      }
			 });
				
				
			/* 도로명주소 API 팝업창 */
		 	$('#addresstext').on('click', '#btnFindAddress', function(event){
		 	  console.log(this);
				var url = "../member/postcode";
		        var name = "popUpPostCode";
		        var option = "width = 570, height = 420, scrollbars=yes, resizable=yes"
				window.open(url, name, option);
			});
				
		});

		document.domain = "localhost";

		/* 도로명주소 API Callback */
		function jusoCallBack(
				roadFullAddr,
				roadAddrPart1,
				addrDetail,
				roadAddrPart2,
				engAddr,
				jibunAddr,
				zipNo,
				admCd,
				rnMgtSn,
				bdMgtSn,
				detBdNmList,
				bdNm,
				bdKdcd,
				siNm,
				sggNm,
				emdNm,
				liNm,
				rn,
				udrtYn,
				buldMnnm,
				buldSlno,
				mtYn,
				lnbrMnnm,
				lnbrSlno,
				emdNo
				) {
			// 팝업페이지에서 주소입력한 정보를 받아서 현 페이지에 정보를 등록
			// document.getElementById('roadFullAddr').value = roadFullAddr; // 전체 도로명주소
			document.getElementById('roadAddrPart1').value = roadAddrPart1; // 도로명주소(참고항목 제외)
			document.getElementById('roadAddrPart2').value = roadAddrPart2; // 도로명주소 참고항목
			document.getElementById('addrDetail').value = addrDetail; // 고객 입력 상세 주소
			// document.getElementById('engAddr').value = engAddr; // 도로명주소(영문)
			// document.getElementById('jibunAddr').value = jibunAddr; // 지번 정보
			document.getElementById('zipNo').value = zipNo; // 우편번호
			// document.getElementById('admCd').value = admCd; // 행정구역코드
			// document.getElementById('rnMgtSn').value = rnMgtSn; // 도로명코드
			// document.getElementById('bdMgtSn').value = bdMgtSn; // 건물관리번호
			// document.getElementById('detBdNmList').value = detBdNmList; // 상세건물명
			// document.getElementById('bdNm').value = bdNm; // 건물명
			// document.getElementById('bdKdcd').value = bdKdcd; // 공동주택여부(1:공동주택, 0: 비공동주택)
			// document.getElementById('siNm').value = siNm; // 시도명
			// document.getElementById('sggNm').value = sggNm; // 시군구명
			// document.getElementById('emdNm').value = emdNm; // 읍면동명
			// document.getElementById('liNm').value = liNm; // 법정리명
			// document.getElementById('rn').value = rn; // 도로명
			// document.getElementById('udrtYn').value = udrtYn; // 지하여부(0:지상, 1:지하)
			// document.getElementById('buldMnnm').value = buldMnnm; // 건물본번
			// document.getElementById('buldSlno').value = buldSlno; // 건물부번(부번이 없는 경우 0)
			// document.getElementById('mtYn').value = mtYn; // 산여부(0:대지, 1:산)
			// document.getElementById('lnbrMnnm').value = lnbrMnnm; // 지번본번(번지)
			// document.getElementById('lnbrSlno').value = lnbrSlno; // 지번부번(호)(부번이 없는 경우 0)
			// document.getElementById('emdNo').value = emdNo; // 읍면동일련번호
		}

	</script>
</body>
</html>