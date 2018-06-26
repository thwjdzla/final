<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html lang="ko">
<head>
  <title></title>
<style type="text/css">
.nav-pills>li.active, .nav-pills>li.active, .nav-pills>li.active {
    color: #fff !important;
    background-color: #e87a92 !important;
    font-weight: bold;
}
.nav-justified>li {
    color: #e87a92 !important;
    background-color: #fff !important;
    font-weight: bold;
    text-decoration: none !important;
    position: relative;
    display: block;
    padding: 10px 15px;
}
.nav-justified>li {
    margin-bottom: 0;
}
.nav-justified>li {
    margin-bottom: 5px;
    text-align: center;
}
.nav-pills>li {
    border-radius: 4px;
}
.contBg {
    min-width: 1260px;
    padding-top: 0;
    padding-bottom: 150px;
    background: #eeeeee;
}
.contWrap {
    width: 1216px;
    margin: 32px auto 0;
    padding-top: 50px;
}
.pagTit {
    font-size: 32px;
    padding: 0 0 10px;
    color: #e87a92;
    line-height: 1.1;
    text-align: center;
    font-weight: bold;
}
.title-1 {
	color: #333;
    line-height: 1.5;
}
.fs-15 {
	font-size: 15px !important;
}
.fs-16 {
	font-size: 16px !important;
}
.aC {
	text-align: center !important;
}
.contBox {
    background: #fff;
    border: solid 1px #eee;
    padding: 42px 32px 32px;
    margin: auto;
    margin-top: 25px;
}
.authorization {
    text-align: center;
    margin: 26px 0;
}
.memberBenefit {
    padding: 32px 59px;
    margin: 32px 0 0;
    background: #f3f1f0;
    border: 1px solid #e6e0df;
}
.tb {
    border-top: solid 1px #aa9b96;
    margin: 10px 0 10px;
    font-size: 13px;
    width: 100%;
}
.tb thead tr:last-child th {
    border-bottom: 0;
}
.tb thead th {
    background: #edadba;
    color: #fff;
}
.tb th {
    background: #e8e4e3;
    padding: 8px 10px 9px 10px;
    color: #333;
    border-bottom: solid 1px #ded4d2;
    text-align: center;
}
.tb th+td {
    border-left: 1px solid #ded4d2;
}
.tb td {
    padding: 8px 10px 9px 10px;
    color: #333;
    border-bottom: solid 1px #e7dedc;
    text-align: center;
}
.btnR {
    position: absolute;
    right: 0;
    top: 0;
}
.tbBtmBtn {
    margin-top: 14px;
    min-height: 48px;
    position: relative;
}
.slt {
    border: solid 1px #aaa;
    box-sizing: border-box;
    padding: 0 20px 0 8px;
    height: 36px;
    line-height: 34px;
    color: #000;
    vertical-align: middle;
}
.fmTxt-3 {
    display: inline-block;
    margin: 0 2px;
    text-align: center;
    vertical-align: middle;
    color: #666;
    font-size: 16px;
}
.ipt {
    border: solid 1px #aaa;
    box-sizing: border-box;
    padding: 0 8px;
    height: 36px;
    line-height: 34px;
    color: #000;
    vertical-align: middle;
}
  </style>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>
<body>
<%@ include file="../../include/nav.jsp" %>
<div id="container ct" class="contBg" style="font-family: '맑은 고딕';">
	<div class="contWrap">
		<h2 class="pagTit">PARTY MIX</h2>
		<div class="pagTitSub" style="text-align: center; margin-bottom: 25px;">
			회원으로 가입하시면 파티믹스에서 제공하는 포인트 적립 및 다양한 할인 혜택을 받으실 수 있습니다.
		</div>
		<div class="w3-container" style="padding: 0;">
			<ul class="nav nav-pills nav-justified" role="tablist">
				<li class="active">STEP1. 본인확인</li>
				<li>STEP2. 약관동의</li>
				<li>STEP3. 개인정보 입력</li>
				<li>STEP4. 가입 완료</li>
			</ul>
		</div>
		<div class="contBox">
			<h3 class="title-1 fs-16 aC">
				파티믹스는 회원가입 시 본인확인을 받고 있습니다. <br>
				<span style="color: #e87a92 !important;">E-Mail 인증</span>으로 본인확인을 해주시기 바랍니다.
			</h3>
			<div class="authorization">
				<img src="../resources/image/email.JPG" style="width: 110px; height: 100px;"/><br>
				<button type="button" class="w3-btn w3-red" data-toggle="modal" data-target="#myModal" style="background-color: #e87a92 !important;">E-Mail 인증</button>
			</div>
		</div>
		<div class="memberBenefit">
			<h3 class="title-2 fs-15 aC" style="color: #e87a92; font-weight: bold; margin-bottom: 15px;">
				파티믹스 회원만을 위한 특별한 혜택
			</h3>
			<table class="tb">
				<colgroup>
					<col width="20%">
					<col width="25%">
					<col width="*">
				</colgroup>
				<thead>
					<tr>
						<th scope="col">Membership</th>
						<th scope="col">PARTY MIX CLUB</th>
						<th scope="col">PARTY MIX PLUS CLUB</th>
					</tr>
				</thead>
				<tbody>
					<tr>
						<th scope="row">회원 가입비</th>
						<td>무료</td>
						<td>PREMIUM 360,000원, HONORS 520,000원, ROYAL 840,000원, I AM 179,000원</td>
					</tr>
					<tr>
						<th scope="row">객실 할인</th>
						<td>로그인 시 객실 기본가 5%</td>
						<td>로그인 또는 전화 예약 시 객실 기본가 10% 할인</td>
					</tr>
					<tr>
						<th scope="row">레스토랑&바 할인</th>
						<td>10% 할인</td>
						<td>15~20% 할인</td>
					</tr>
					<tr>
						<th scope="row">포인트 적립률</th>
						<td colspan="2">객실 5%, 식음료 1%, 연회 0.5%</td>
					</tr>
					<tr>
						<th scope="row">회원 특전</th>
						<td colspan="2">객실 인터넷 무료, 회원만을 위한 특별 프로모션, 호텔 소식 및 회원등급 별 특전</td>
					</tr>
				</tbody>
			</table>
			<div class="tbBtmBtn">
				<ul class="list-1" style="font-size: 14px; color: #666; padding-left: 20px;">
					<li>일부 지정 패키지 및 프로모션 상품은 할인에서 제외될 수 있습니다.</li>
				</ul>
				<span class="btnR">
					<a href="#" class="btn btn-default" style="line-height: 35px;">PARTY MIX CLUB 안내</a>
					<a href="#" class="btn btn-default" style="line-height: 35px;">PARTY MIX PLUS CLUB 안내</a>
				</span>
			</div>
		</div>
	</div>
	
	<!-- Modal -->
  <div class="modal fade" id="myModal" role="dialog">
    <div class="modal-dialog">
    
      <!-- Modal content-->
      <div class="modal-content">
        <div class="modal-header" style="background-color: #e87a92;">
          <button type="button" class="close" data-dismiss="modal">&times;</button>
          <h4 class="modal-title" style="color: #fff; font-weight: bold;">E-mail 본인 인증</h4>
        </div>
        <div class="modal-body" style="text-align: center;">
	        <input type="text" class="ipt fw-5" title="E-mail 주소" id="email" name="emailid" maxlength="30" style="width: 168px !important;">
			<span class="fmTxt-3">@</span>
			<input type="text" class="ipt fw-5" title="E-mail 도메인" id="email_domain" name="emailDomain" maxlength="30" style="width: 146px !important;">
			<select class="slt fw-6" title="직접입력" id="email_domain_sel" name="email_domain_sel">
				<option value="">직접입력</option>
				<option value="gmail.com">gmail.com</option>
				<option value="hanmail.net">hanmail.net</option>
				<option value="naver.com">naver.com</option>
				<option value="nate.com">nate.com</option>
				<option value="hotmail.com">hotmail.com</option>
				<option value="zum.com">zum.com</option>
				<option value="yahoo.com">yahoo.com</option>
			</select>
			<button id="transfer" class="w3-btn w3-red" style="border-radius: 0.25em; padding: 7px 16px; text-decoration: none; background-color: #e26c85 !important;">발송</button>
			<form method="post" action="confirmNumber.do" enctype="multipart/form-data">
				<input type="text" class="ipt fw-5" id="code" name="number" maxlength="30" style="width: 496px !important; margin-top: 12px;">
				<button id="compare" class="w3-btn w3-red pull-right" style="border-radius: 0.25em; padding: 7px 16px; text-decoration: none; background-color: #e26c85 !important; margin: 12px 2px 0 5px;">입력</button>
			</form>
        </div>
        <div class="modal-footer">
          <button type="button" class="btn btn-default" data-dismiss="modal" style="width: 62px; margin-right: 2px;">Close</button>
        </div>
      </div>
    </div>
  </div>
</div>
<%@include file="../../include/footer.jsp" %>
</body>
<script type="text/javascript">
$(function() {
	
	$("#email_domain_sel").change(function() {
		var domainsel = $(this).val();
		$("#email_domain").val(domainsel);
	})
	
	
	
	$("#transfer").click(function() {
		
		var emailid1 = $("#email").val();
		var emailDomain1 = $("#email_domain").val();

		$.ajax({
			type : "GET",
			url : "../ajax/sendMail.do",
			dataType : "text",
			data : {
				emailid : emailid1,
				emailDomain : emailDomain1
			},
			success : function(data) {
				if (data == "success") {
					alert("메일이 전송되었습니다.")
					$("#code").focus();
				} 
			}
		});
	});
	
	/* $("#compare").click(function() {
		
		var code = $("#code").val();
		
		$.ajax({
			type : 'GET',
			url : "../ajax/confirmNumber.do",
			dataType : "json",
			data : {number : code},
			success : function(data) {
				if (data == 'true') {
					alert("인증되었습니다.")
					
				} else {
					alert("인증에 실패했습니다.")
				}
			}
		});
	}); */
	
})
</script>
</html>