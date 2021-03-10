<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<script src="http://code.jquery.com/jquery-3.5.1.min.js"></script>
<!-- Popper 최신 버전 링크  -->
<script
  src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>

<!-- Bootstrap을 이용하기 위한 최신 버전 링크 -->
<script
  src="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>
<script type="text/javascript"
  src="https://cdnjs.cloudflare.com/ajax/libs/moment.js/2.24.0/moment.min.js"></script>
<script src="//code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
<link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
<style type="text/css">
input[type=text][readonly],[type=textarea][readonly] {
	border: none;
}

input[type=text]{
	border:none;
}

input[type=textarea]{
	border:none;
}

.title{
	margin-top:21px;
    margin-bottom: 21px;
    line-height: 22px;
    letter-spacing: -1px;
    font-size: 20px;
    color: #1e2732;
    padding-bottom: 15px;
    border-bottom: 1px solid #a4a9b0;
}

.guide{
	margin-bottom: 14px;
    font-size: 14px;
    line-height: 20px;
    letter-spacing: -1px;
    text-align: center;
    color: #757c8a;
    font-weight: bold;
}

table{
	table-layout: fixed;
    width: 100%;
    border-collapse: collapse;
    border-top: 1px solid #ececec;
    font-size: 14px;
    line-height: 20px;
    color: #5e636d;
}

td{
    padding: 12px 20px 12px 20px;
    border-bottom: 1px solid #ececec;
    color: #5e636d;
}

th{
	width:92px;
	padding: 13px 0 13px 20px;
    text-align: left;
    vertical-align: middle;
    color: #222;
    font-weight: 400;
    background: #f8f9fa;
    border-bottom: 1px solid #ececec;
}

#insert {
	display: inline-block;
    width: 100px;
    height: 38px;
    border: 1px solid #2383dc;
    overflow: hidden;
    background: #2e8de5;
    border-radius: 20px;
    display: inline-block;
    line-height: 16px;
    padding: 11px 0;
    font-size: 18px;
    font-weight: bold;
    color: #fff;
    cursor: pointer;
}

.deleteletter{
	display: inline-block;
    width: 100px;
    height: 38px;
    border: 1px solid #9ba0a8;
    overflow: hidden;
    background: #a4a9b0;
    border-radius: 20px;
    display: inline-block;
    line-height: 16px;
    padding: 11px 0;
    font-size: 18px;
    font-weight: bold;
    color: #fff;
    cursor: pointer;
}

.close{
	position: fixed;
    bottom: 0;
    left: 0;
    width: 100%;
    height: 32px;
    font-size:15px;
    background: #f8f9fa;
    border-top: 1px solid #ececec;
    text-align: right;
    color : #1e2732;
}

.close a{
	position: relative;
    display: inline-block;
    padding-right: 14px;
    margin: 8px 16px 0 0;
    font-size: 14px;
    line-height: 16px;
    color: #757c8a;
    cursor: pointer;
}

.close a:hover {
	color: black;
}
</style>
<meta charset="UTF-8">
<title>멍멍이의 하루 - ${vo.userId }님의 쪽지</title>
</head>
<body>
	<div style="margin-left: 10px; color: black;">
  	<div class="title"><span style="color: #2e8de5">${vo.userId }</span>님의 쪽지</div>
	
	<table>
	<tr>
	<th>제목</th>
	<td style="font-weight: bold">${vo.titleLetter }
	</td>
	</tr>
	<tr>
	<th>날짜</th>
	<td><fmt:formatDate value="${vo.dataLetter}" pattern="yyyy-MM-dd HH시 mm분" />
	</td>
	</tr>
		<tr>
	<th>내용</th>
	<td style="width: 528px; height: 400px;">${vo.contentLetter }</td>
	</tr>
	</table>
    

    <div style="text-align: center; margin-top: 20px;">
   	<button id ="insert" style="margin-right: 10px; margin-bottom: 10px;" onclick="window.close();">확인</button><button value="${vo.numLetter }" class="deleteletter">삭제</button>
	</div>
	<div class="close" style="text-align: right;"><a onclick="window.close();">닫기X</a></div>
	</div>
	
<script type="text/javascript">

$(document).on('click', '.deleteletter', function(){
    var num = $(this).val();
    console.log("num : " + num);
    var numletter = num;
    console.log("numletter : "+numletter);
    
    $.ajax({
      type : 'delete',
      url : '/hotel/letter/delete/'+numletter,
      headers : {
        'Content-Type' : 'application/json',
        'X-HTTP-Method-Override' : 'DELETE'
      },
    data : JSON.stringify({
        'numletter' : numletter
      }),
    success : function(result){
        if(result == 'success') {
        opener.parent.location='/hotel/letter/list';
        window.close();
        alert("쪽지 삭제 완료")
        }
      } // end success  
    }); // end ajax                  
  });

</script>
</body>
</html>