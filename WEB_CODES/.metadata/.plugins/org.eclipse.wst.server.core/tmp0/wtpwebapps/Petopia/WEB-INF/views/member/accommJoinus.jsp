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

.content{
	margin: 0 auto;
	width: 400px;
	padding: 20px;
}

.main label{
	font-size: 14px;
	font-weight: bold;
	color: black;
	
}
.menu {
	margin-top: 20px;
	margin-bottom: 20px;
}

#userJoin{
	background: #2e8de5;
    border: 1px solid #d9d9d9;
    color: #fff;
    width: 100%;
    height: 60px;
    font-size: 24px;
    font-weight: bold;
    line-height: 60px;
    cursor: pointer;
}

#btnFindAddress{
    background: #2e8de5;
    border: 1px solid #d9d9d9;
    color: #fff;
    width: 50px;
    height: 30px;
    font-size: 13px;
    font-weight: bold;
    line-height: 15px;
    cursor: pointer;
}

.menu {
	color: black;
}
</style>
<meta charset="UTF-8">
<title>멍멍이의 하루 - 기업회원가입</title>
<script type="text/javascript">
var regexpEmpty = /\s/g; //모든 공백 체크 정규식
var regexpId = /^[a-z0-9][a-z0-9_\-]{3,12}$/; // 아이디 정규식
var regexpPassword = /^(?=.*[A-Za-z])(?=.*\d)[A-Za-z\d]{8,}$/; // 비밀번호 정규식
var regexpName = /^[가-힣]{2,4}|[a-zA-Z]{2,10}\s[a-zA-Z\s]{2,10}$/; // 이름 정규식
var regexpEmail = /^[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*[@]{1}[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*[.]{1}[a-zA-Z]{2,3}$/i; // 이메일 주소 정규식

$(document).ready(function() {
	var arrInvalid = new Array(9).fill(false); // 유효성 검사
	
 	/* id 중복 검사 & 정규식 */
	$('#id').blur(function() {
		if($('#id').val() == '') {
			$('#id_check').text('아이디를 입력하세요.');
			$('#id_check').css('color', 'red');
			arrInvalid[0] = false;
			console.log(arrInvalid[0]);
		} else if(!regexpId.test($('#id').val())) {
			$('#id_check').text('4~12자의 영문 또는 숫자만 사용 가능합니다.');
			$('#id_check').css('color', 'red');
			arrInvalid[0] = false;
			console.log(arrInvalid[0]);
		} else if($('#id').val() != '') {
			var id = $('#id').val();
			$.ajax({
				type : 'post',
				url : '/hotel/member/idcheck',
				headers : {
					'Content-Type' : 'application/json',
					'X-HTTP-Method-Override' : 'POST'
				},
				data : id,
				success : function(checkId) {
					console.log("중복 id 수 = " + checkId + "개");
					if(checkId > 0) {
						$('#id_check').text('중복된 아이디입니다.');
						$('#id_check').css('color', 'red');
						arrInvalid[0] = false;
						console.log(arrInvalid[0]);
					} else {
						$('#id_check').text('사용 가능한 아이디입니다.');
						$('#id_check').css('color', 'blue');
						arrInvalid[0] = true;
						console.log(arrInvalid[0]);
					}
				}
			});
		}
	});
	
	/* password 정규식 */
	$('#password1').blur(function() {
		if($('#password1').val() == '') {
			$('#password1_check').text('비밀번호를 입력하세요.');
			$('#password1_check').css('color', 'red');
		} else if(!regexpPassword.test($('#password1').val())) {
			$('#password1_check').text('최소 8자의 영문과 숫자 조합으로 사용 가능합니다.');
			$('#password1_check').css('color', 'red');
		} else {
			$('#password1_check').text('사용 가능한 비밀번호입니다.');
			$('#password1_check').css('color', 'blue');
		}
	});
	
	/* password 체크 */
	$('#password2').blur(function() {
		if($('#password2').val() == $('#password1').val()) {
			$('#password2_check').text(' ');
			arrInvalid[1] = true;
			console.log(arrInvalid[1]);
		} else {
			$('#password2_check').text('입력한 비밀번호가 일치하지 않습니다.');
			$('#password2_check').css('color', 'red');
			arrInvalid[1] = false;
			console.log(arrInvalid[1]);
		}
	});
	
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
	
	/* email 중복 검사 & 정규식 */
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
		} else if($('#email').val() != '') {
			var email = $('#email').val();
			$.ajax({
				type : 'post',
				url : '/hotel/member/emailcheck',
				headers : {
					'Content-Type' : 'application/json',
					'X-HTTP-Method-Override' : 'POST'
				},
				data : email,
				success : function(checkEmail) {
					console.log("중복 email 수 = " + checkEmail + "개");
					if(checkEmail > 0) {
						$('#email_check').text('중복된 이메일입니다.');
						$('#email_check').css('color', 'red');
						arrInvalid[0] = false;
						console.log(arrInvalid[3]);
					} else {
						$('#email_check').text('사용 가능한 이메일입니다.');
						$('#email_check').css('color', 'blue');
						arrInvalid[4] = true;
						console.log(arrInvalid[3]);
					}
				}
			});
		}
	});
	
	/* 전화 번호 자동 하이픈 */
	var autoHypenMobile = function(num) {
	      num = num.replace(/[^0-9]/g, '');
	      var tmp = '';

	      if (num.substring(0, 2) == 02) {
	    	  if (num.length < 3) {
	    	      return num;
	    	    } else if (num.length < 6) {
	    	      tmp += num.substr(0, 2);
	    	      tmp += '-';
	    	      tmp += num.substr(2);
	    	      return tmp;
	    	    } else if (num.length < 10) {
	    	      tmp += num.substr(0, 2);
	    	      tmp += '-';
	    	      tmp += num.substr(2, 3);
	    	      tmp += '-';
	    	      tmp += num.substr(5);
	    	      return tmp;
	    	    } else {
	    	      tmp += num.substr(0, 2);
	    	      tmp += '-';
	    	      tmp += num.substr(2, 4);
	    	      tmp += '-';
	    	      tmp += num.substr(6, 4);
	    	      return tmp;
	    	    }
	      } else {
	    	  if(num.length < 4) {
		          return num;
		      } else if(num.length < 7) {
		          tmp += num.substr(0, 3);
		          tmp += '-';
		          tmp += num.substr(3);
		          return tmp;
		      } else if(num.length < 11) {
		          tmp += num.substr(0, 3);
		          tmp += '-';
		          tmp += num.substr(3, 3);
		          tmp += '-';
		          tmp += num.substr(6);
		          return tmp;
		      } else {              
		          tmp += num.substr(0, 3);
		          tmp += '-';
		          tmp += num.substr(3, 4);
		          tmp += '-';
		          tmp += num.substr(7);
		          return tmp;
		      }
		      return num;
	      }
	}
	var mobileNum = document.getElementById('mobile');
	mobileNum.onkeyup = function() {
		console.log(this.value);
		this.value = autoHypenMobile(this.value);  
	}
	
	/* 기타 반려동물 텍스트 박스 활성화*/
	$("#animal5").click(function() {
		if(this.checked) {
			$("#animal6").attr("disabled", false);
		} else {
			$("#animal6").attr("disabled", true);
		}
	});
		
	/* 전체 반려동물 */
	$("#userJoin").click(function() {
		var totalAnimals = [];
		$('input:checkbox[name="animal"]').each(function() {
			if(this.checked) {
				if (this.id == "animal5") {
					totalAnimals.push($('#animal6').val());
				}
				else {
					totalAnimals.push(this.value);
				}
			}
		});
		$('#totalAnimals').val('');
		$('#totalAnimals').val(totalAnimals + '');
	});
		
	/* 유효성 검사 */
	function invalidAll() {
		var invalidAll = false;
        if (arrInvalid[0]) {
        	console.log("id = " + $('#id').val());
        	alert("아이디를 확인해주세요.");
            return false;
        } else if (arrInvalid[1]) {
        	console.log("password1 = " + document.getElementById('password1').value);
        	console.log("password2 = " + document.getElementById('password2').value);
        	alert("비밀번호를 확인해주세요.");
            return false;
        } else if (arrInvalid[2]) {
        	console.log("name = " + document.getElementById('name').value);
        	alert("호텔명을 확인해주세요.");
            return false;
        } else if (arrInvalid[3]) {
        	console.log("email = " + document.getElementById('email').value);
        	alert("이메일 주소를 확인해주세요.");
            return false;
        } else if (document.getElementById('mobile').value == '') {
        	console.log("mobile = " + document.getElementById('mobile').value);
            return false;
        } else if (document.getElementsValuesById('animals').value == '') {
        	arrInvalid[4] = true;
            return false;
        } else if (document.getElementsValuesById('zipNo').value == '') { 
        	arrInvalid[5] = true;
            return false;
        } else if (document.getElementsValuesById('roadAddrPart1').value == '') { 
        	arrInvalid[6] = true;
            return false;
        } else if (document.getElementsValuesById('addrDetail').value == '') { 
        	arrInvalid[7] = true;
            return false;
        } else {
        	arrInvalid[8] = true;
        	for(var i = 0; i < arrInvalid.length; i++) {
        		if (arrInvalid[i]) {
        			invalidAll = true;
        		}
        	}
        	if (invalidAll) {
	        	return true;
        	} else {
        		return false;	
        	}
        }
	}
	
	/* 도로명주소 API 팝업창 */
 	$("#btnFindAddress").click(function(event){
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
</head>
<body>

	<div class="container">
		<%@ include file="../common/header.jspf"%>
		<div class="content">
			<h1 style="text-align: center; color: black;">기업 회원가입</h1>
		<div class="main">
			<form action="../member/join" method="post" id="userInfo" name="userInfo" onsubmit="return invalidAll()"> <!-- 회원가입 버튼 클릭 이벤트 : 유효성 검사 -->
				<div class="menu">
					<label>아이디</label>
					<input type="text" id="id" name="id" placeholder="ID" required>
					<div id="id_check"></div>
				</div>
				<div class="menu">
					<label>비밀번호</label>
					<input type="password" id="password1" name="password" placeholder="password" required>
					<div id="password1_check"></div>
				</div>
				<div class="menu">
					<label>비밀번호 확인</label>
					<input type="password" id="password2" name="password2" placeholder="confirm password" required>
					<div id="password2_check"></div>
				</div>
				<div class="menu">
					<label>호텔명</label>
					<input type="text" id="name" name="name" placeholder="hotel name" required>
					<div id="name_check"></div>
				</div>
				<div class="menu">
					<label>이메일</label>
					<input type="email" id="email" name="email" placeholder="email" required>
					<div id="email_check"></div>
				</div>
				<div class="menu">
					<label>대표번호</label>
					<input type="tel" id="mobile" name="contact" placeholder="phone number">
					<div id="mobile_check"></div>
				</div>
				<div class="menu">
					<fieldset>
						<legend>주소</legend>
						<table>
							<tbody>
								<tr>
									<th>우편번호</th>
									<td>
										<input type="text" id="zipNo" name="zipcode" value="" readonly>
										
									</td>
									<td><input type="button" id="btnFindAddress" value="검색"></td>
								</tr>
								<tr>
									<th width="60px">도로명주소</th>
									<td>
										<input type="text" id="roadAddrPart1" name="address" value="" readonly>
										<input type="text" id="roadAddrPart2" value="" readonly>
									</td>
								</tr>
								<tr>
									<th>상세주소</th>
									<td>
										<input type="text" id="addrDetail" name="detailaddress" style="border: none;">
									</td>
								</tr>
							</tbody>
						</table>
					</fieldset>
				</div>
				<div class="menu">
					<fieldset>
						<label>취급 반려동물</label>
						<br>
						<input type="checkbox" id="animal1" name="animal" value="개">개
						<input type="checkbox" id="animal2" name="animal" value="고양이">고양이
						<input type="checkbox" id="animal3" name="animal" value="조류">조류
						<input type="checkbox" id="animal4" name="animal" value="파충류">파충류
						<input type="checkbox" id="animal5" name="animal">기타
						<input type="text" id="animal6" name="animal6" disabled>
						<input type="hidden" id="totalAnimals" name="animals" readonly>
					</fieldset>
				</div>
				<div class="menu">
					<label>호텔소개</label>
					<input type="text" id="note" name="note">
				</div>
				<div class="menu">
					<input type="hidden" id="authority" name="authority" value="3"> <!-- 1:관리자, 2:개인회원, 3:업체회원 -->
				</div>
				<div class="menu">
					<input type="hidden" id="deletion" name="deletion" value="0"> <!-- 0:기본값, 1:삭제요청 -->
				</div>
 				<div class="menu">
					<input type="submit" id="userJoin" value="회원가입">
				</div>
			</form>
		</div>
	</div>
		<%@ include file="../common/footer.jspf"%>
	</div>
	
</body>
</html>