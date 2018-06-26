<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html lang="ko">
<head>
  <title>Party Mix</title>
  <style type="text/css">
a {
    text-decoration: none;
}
.contBg {
    min-width: 1260px;
    padding-top: 0;
    padding-bottom: 150px;
    background: #eeeeee;
}
.contWrap {
    width: 1216px;
    margin: 0 auto 0;
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
    padding: 42px 70px 70px;
    margin: auto;
    margin-top: 25px;
}
.authorization {
    text-align: center;
    margin: 26px 0;
}
.memberBenefit {
    padding: 32px 32px;
    margin: 32px auto 0;
    background: #f3f1f0;
    border: 1px solid #e6e0df;
    width: 1000px;
}
.tb {
    border-top: solid 1px #aa9b96;
    margin: 10px 0 10px;
    font-size: 13px;
    width: 934px;
}
.tb thead tr:last-child th {
    border-bottom: 0;
}
.tb thead th {
    background: #aa9b96;
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
.fc-1 {
    color: #e87a92 !important;
}
.title-3 {
    font-size: 18px;
    font-weight: bold;
    margin: 51px 0 13px;
    color: #000;
}
.tb-1 {
    border-top: solid 2px #e87a92;
}
.cHead .chwTit {
    float: left;
    margin: 0;
}
.fR {
    float: right !important;
}
.tb-1 th {
    background: #fafafa;
    font-weight: bold;
    color: #111;
}
.tb-1 th, .tb-1 td {
    border-bottom: solid 1px #e5e5e5;
    box-sizing: border-box;
}
.obligatory {
    padding-left: 10px;
    font-size: 14px;
    color: #666;
}
.tb-1 td.fm {
    padding-top: 16px;
    padding-bottom: 16px;
}
.tbData th {
    padding: 13px 22px 12px 22px;
}
.tbData td {
    padding: 14px 20px 14px 20px;
}
.vT {
    vertical-align: top;
}
.tb-1 td {
    color: #333;
}
.fw-1 {
    width: 130px;
}
.fw-2 {
    width: 160px;
}
.fw-3 {
    width: 90px;
}
.fw-4 {
    width: 90px;
}
.fw-5 {
    width: 175px;
}
.fw-6 {
    width: 240px;
}
.fw-7 {
    width: 205px;
}
.fw-8 {
    width: 630px;
}
.fmMgL {
    margin-left: 15px;
}
.fmMg-1 {
    display: block;
    margin-top: 10px;
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
.radG .radFm:first-child, .chkG .chkFm:first-child {
    margin-left: 0;
}
.chk:not(old), .rad:not(old) {
    width: 16px;
    height: 16px;
    padding: 0;
    left: 0;
    top: 50%;
    z-index: 10;
    box-sizing: border-box;
    width: 16px;
    height: 16px;
    margin: -5px 3px 0 0;
}
.chkFm label, .radFm label {
    display: inline-block;
    padding-right: 21px;
    vertical-align: middle;
}
input[type="radio"], input[type="checkbox"] {
    vertical-align: middle;
}
.fm .btnD {
    margin-right: 1px;
}
.fmBtn {
    margin-left: 2px;
}
.btnD {
    min-width: 82px;
    height: 36px;
    line-height: 34px;
    font-size: 14px;
    padding: 0 14px;
}
.btn-4 {
    background: #eee;
    border: solid 1px #ddd;
    color: #333;
}
.btnA, .btnB, .btnC, .btnD, .btnE, .btnG, .btnH, .btnF, .btnShare {
    box-sizing: border-box;
    vertical-align: middle;
    display: inline-block;
    text-align: center;
}
.btnArea-1 {
    margin-top: 20px;
    min-height: 60px;
    position: relative;
    text-align: center;
}
.fmTxt-2 {
    display: inline-block;
    margin: 0 0 0 7px;
    vertical-align: middle;
    color: #666;
}
.fmTxt-3 {
    display: inline-block;
    margin: 0 2px;
    text-align: center;
    vertical-align: middle;
    color: #666;
    font-size: 16px;
}
.fmSecurity {
    position: relative;
    display: inline-block;
    box-sizing: border-box;
    padding-right: 72px;
}
.fw-24 {
    width: 240px;
}
.fmSecurity div {
    outline: none;
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
  </style>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  <script src="https://ssl.daumcdn.net/dmaps/map_js_init/postcode.v2.js"></script>
<script>
	$(function() {
		
		$("#modify-btn").click(function() {
			alert("수정이 완료되었습니다.");
		})
		
		var birthday = ${user.birthday} + "";
		var YYYY = birthday.substring(0, 4);
		var MM = birthday.substring(4, 6);
		var DD = birthday.substring(6, 8);
		$("#birthdayyy option[value="+YYYY+"]").prop('selected', true);
		$("#birthdaymt option[value="+MM+"]").prop('selected', true);
		$("#birthdayde option[value="+DD+"]").prop('selected', true);
		
		var phone = '${user.phone}';
		var phonesplit = phone.split('-');
		var telno1 = phonesplit[0];
		$("#telno1 option[value="+telno1+"]").prop('selected', true);
		var telno2 = phonesplit[1];
		$("#telno2").val(telno2);
		var telno3 = phonesplit[2];
		$("#telno3").val(telno3);
		
		var email = '${user.email}';
		var emailsplit = email.split('@');
		$("#emailid").val(emailsplit[0]);
		$("#emailDomain").val(emailsplit[1]);
		
		var zip = '${user.zip}';
		$('#zip').val(zip);
		
		var address = '${user.address}';
		var addresssplit = address.split('/');
		$('#address1').val(addresssplit[0]);
		$('#address2').val(addresssplit[1]);
		
		var sexcode = '${user.sexcode}';
		if(sexcode == 'M')
			$('#sexcode1').prop('checked','checked');
		if(sexcode == 'W')
			$('#sexcode2').prop('checked','checked');
		
		var emailreceipt = '${user.emailreceipt}';
		if(emailreceipt == 'Y')
			$('#emailreceipt').prop('checked','checked');
		
		var smsreceipt = '${user.smsreceipt}';
		if(smsreceipt == 'Y')
			$('#smsreceipt').prop('checked','checked');	
		$("#insertForm").submit(function(event) {
			var id = $("#id").val().trim();
			var pwd = $("#pwd").val().trim();
			var pw_confirm = $("#pw_confirm").val().trim();
			var birthdayyy = $("#birthdayyy").val().trim();
			var birthdaymt = $("#birthdaymt").val().trim();
			var birthdayde = $("#birthdayde").val().trim();
			var telno1 = $("#telno1").val().trim();
			var telno2 = $("#telno2").val().trim();
			var telno3 = $("#telno3").val().trim();
			var emailid = $("#emailid").val().trim();
			var emailDomain = $("#emailDomain").val().trim();
			var checkyn = $(':checkbox[name=checkyn]').prop('checked');

			if(!id) {
				alert("아이디를 입력하세요.");
				return false;
			}
			if(!pwd) {
				alert("비밀번호를 입력하세요.");
				return false;
			}
			if(!pw_confirm) {
				alert("비밀번호를 확인하세요.");
				return false;
			}
			if(pwd != pw_confirm) {
				alert("비밀번호가 일치하지 않습니다.")
				return false;
			}
			if(!birthdayyy) {
				alert("생년월일을 선택하세요.")
				return false;
			}
			if(!birthdaymt) {
				alert("생년월일을 선택하세요.")
				return false;
			}
			if(!birthdayde) {
				alert("생년월일을 선택하세요.")
				return false;
			}
			if(!telno1) {
				alert("연락처를 입력하세요.")
				return false;
			}
			if(!telno2) {
				alert("연락처를 입력하세요.")
				return false;
			}
			if(!telno3) {
				alert("연락처를 입력하세요.")
				return false;
			}
			if(!emailid) {
				alert("이메일을 입력하세요.")
				return false;
			}
			if(!emailDomain) {
				alert("이메일을 입력하세요.")
				return false;
			}
			
			if(checkyn == false) {
				alert("개인정보 수집항목 및 이용에 동의해주세요.")
				return false;
			}
			
			return true;
		})
	
		$("#email_domain_sel").change(function() {
			var domainsel = $(this).val();
			$("#emailDomain").val(domainsel);
		})		
	})
     function sample6_execDaumPostcode(index) {
          new daum.Postcode({
              oncomplete: function(data) {
                  // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.

                  // 각 주소의 노출 규칙에 따라 주소를 조합한다.
                  // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
                  var fullAddr = ''; // 최종 주소 변수
                  var extraAddr = ''; // 조합형 주소 변수

                  // 사용자가 선택한 주소 타입에 따라 해당 주소 값을 가져온다.
                  if (data.userSelectedType === 'R') { // 사용자가 도로명 주소를 선택했을 경우
                      fullAddr = data.roadAddress;

                  } else { // 사용자가 지번 주소를 선택했을 경우(J)
                      fullAddr = data.jibunAddress;
                  }

                  // 사용자가 선택한 주소가 도로명 타입일때 조합한다.
                  if(data.userSelectedType === 'R'){
                      //법정동명이 있을 경우 추가한다.
                      if(data.bname !== ''){
                          extraAddr += data.bname;
                      }
                      // 건물명이 있을 경우 추가한다.
                      if(data.buildingName !== ''){
                          extraAddr += (extraAddr !== '' ? ', ' + data.buildingName : data.buildingName);
                      }
                      // 조합형주소의 유무에 따라 양쪽에 괄호를 추가하여 최종 주소를 만든다.
                      fullAddr += (extraAddr !== '' ? ' ('+ extraAddr +')' : '');
                  }
				if(index == 1){
                  // 우편번호와 주소 정보를 해당 필드에 넣는다.
                  document.getElementById('zip').value = data.zonecode; //5자리 새우편번호 사용
                  document.getElementById('address1').value = fullAddr;

                  // 커서를 상세주소 필드로 이동한다.
                  document.getElementById('address2').focus();
				}
				if(index == 2){
	              // 우편번호와 주소 정보를 해당 필드에 넣는다.
	              document.getElementById('trans_zip1').value = data.zonecode; //5자리 새우편번호 사용
	              document.getElementById('trans_adres1').value = fullAddr;

	              // 커서를 상세주소 필드로 이동한다.
	              document.getElementById('trans_adres2').focus();
				}
              }
          }).open();
      }
</script>
</head>
<body>
<%@ include file="../../include/nav.jsp" %>
<div id="container ct" class="contBg" style="font-family: '맑은 고딕';">
	<div class="contWrap">
		<h2 class="pagTit">회원 정보 수정</h2>
		<form id="insertForm" name="insertForm" method="post" action="updatemyinfo.do">
		<input type="hidden" value='${user.no }' name="no"/>
		<input type="hidden" value='${user.type }' name="type"/>
		<input type="hidden" value='${user.name }' name="nameFirst"/>
			<div class="contBox">
				<div class="cHead chw-3 first">
					<h4 class="title-3 fc-1 chwTit">기본정보</h4>
				</div>
				<table class="tb-1 tbData" style="margin: 35px auto; width: 100%;">
					<colgroup>
						<col width="175px">
						<col width="*">
					</colgroup>
					<tbody>
						<tr>
							<th scope="row">
								<span class="obligatory">
									<span class="blind">* </span>구분
								</span>
							</th>
							<td class="fm">
								<span class="radG fmMgL">
									<span class="radFm">
										<label for="type2" style="margin: 0;">
											<c:if test="${user.type eq 'C' }">업체</c:if>
											<c:if test="${user.type eq 'U' }">고객</c:if>
											</label>
									</span>
								</span>
							</td>
						</tr>
						<tr>
							<th scope="row">
								<span class="obligatory">
									<span class="blind">* </span>이름
								</span>
							</th>
							<td class="fm">
								<label>${user.name }</label>
								<span class="radG fmMgL">
									<span class="radFm">
										<input type="radio" class="rad" id="sexcode1" name="sexcode" value="M">
										<span class="act"></span>
										<label for="sexcode1" style="margin: 0;">남</label>
									</span>
									<span class="radFm">
										<input type="radio" class="rad" id="sexcode2" name="sexcode" value="W">
										<span class="act"></span>
										<label for="sexcode2" style="margin: 0;">여</label>
									</span>
								</span>
							</td>
						</tr>
						<tr>
							<th scope="row">
								<span class="obligatory">
									<span class="blind">* </span>아이디
								</span>
							</th>
							<td class="fm">
								<input type="text" value="${user.id }" class="ipt fw-24" title="아이디" id="id" name="id" maxlength="20" disabled>
								<span class="fmTxt-2">4~20자의 영문, 숫자 조합 필수</span>
							</td>
						</tr>
						<tr>
							<th scope="row">
								<span class="obligatory">
									<span class="blind">* </span>비밀번호
								</span>
							</th>
							<td class="fm">
								<div class="fmSecurity fw-24">
									<input type="password" class="ipt fw-24" title="비밀번호" id="pwd" name="pwd" maxlength="20">
									<span class="security" id="pwdLv1"></span>
								</div>
								<span class="fmTxt-2">8~20자의 영문, 숫자, 특수문자(!,@,#,$,%,^,&,*) 조합 필수</span>
							</td>
						</tr>
						<tr>
							<th scope="row">
								<span class="obligatory">
									<span class="blind">* </span>비밀번호 확인
								</span>
							</th>
							<td class="fm">
								<input type="password" class="ipt fw-24" title="비밀번호 확인" id="pw_confirm" name="pw_confirm" maxlength="20">
							</td>
						</tr>
						<tr>
							<th scope="row">
								<span class="obligatory">
									<span class="blind">* </span>생년월일
								</span>
							</th>

							<td class="fm">
								<select class="slt fw-4" title="년" id="birthdayyy" name="birthdayyy" >
									<option value="">선택</option>
									<option value="1950">1950년</option>
									<option value="1951">1951년</option>
									<option value="1952">1952년</option>
									<option value="1953">1953년</option>
									<option value="1954">1954년</option>
									<option value="1955">1955년</option>
									<option value="1956">1956년</option>
									<option value="1957">1957년</option>
									<option value="1958">1958년</option>
									<option value="1959">1959년</option>
									<option value="1960">1960년</option>
									<option value="1961">1961년</option>
									<option value="1962">1962년</option>
									<option value="1963">1963년</option>
									<option value="1964">1964년</option>
									<option value="1965">1965년</option>
									<option value="1966">1966년</option>
									<option value="1967">1967년</option>
									<option value="1968">1968년</option>
									<option value="1969">1969년</option>
									<option value="1970">1970년</option>
									<option value="1971">1971년</option>
									<option value="1972">1972년</option>
									<option value="1973">1973년</option>
									<option value="1974">1974년</option>
									<option value="1975">1975년</option>
									<option value="1976">1976년</option>
									<option value="1977">1977년</option>
									<option value="1978">1978년</option>
									<option value="1979">1979년</option>
									<option value="1980">1980년</option>
									<option value="1981">1981년</option>
									<option value="1982">1982년</option>
									<option value="1983">1983년</option>
									<option value="1984">1984년</option>
									<option value="1985">1985년</option>
									<option value="1986">1986년</option>
									<option value="1987">1987년</option>
									<option value="1988">1988년</option>
									<option value="1989">1989년</option>
									<option value="1990">1990년</option>
									<option value="1991">1991년</option>
									<option value="1992">1992년</option>
									<option value="1993">1993년</option>
									<option value="1994">1994년</option>
									<option value="1995">1995년</option>
									<option value="1996">1996년</option>
									<option value="1997">1997년</option>
									<option value="1998">1998년</option>
									<option value="1999">1999년</option>
								</select>
								<span class="fmTxt-1">년</span>
								<select class="slt fw-4" title="월" id="birthdaymt" name="birthdaymt">
									<option value="">선택</option>
									<option value="01">1월</option>
									<option value="02">2월</option>
									<option value="03">3월</option>
									<option value="04">4월</option>
									<option value="05">5월</option>
									<option value="06">6월</option>
									<option value="07">7월</option>
									<option value="08">8월</option>
									<option value="09">9월</option>
									<option value="10">10월</option>
									<option value="11">11월</option>
									<option value="12">12월</option>
								</select>
								<span class="fmTxt-1">월</span>
								<select class="slt fw-4" title="일" id="birthdayde" name="birthdayde">
									<option value="">선택</option>
									<option value="01">1일</option>
									<option value="02">2일</option>
									<option value="03">3일</option>
									<option value="04">4일</option>
									<option value="05">5일</option>
									<option value="06">6일</option>
									<option value="07">7일</option>
									<option value="08">8일</option>
									<option value="09">9일</option>
									<option value="10">10일</option>
									<option value="11">11일</option>
									<option value="12">12일</option>
									<option value="13">13일</option>
									<option value="14">14일</option>
									<option value="15">15일</option>
									<option value="16">16일</option>
									<option value="17">17일</option>
									<option value="18">18일</option>
									<option value="19">19일</option>
									<option value="20">20일</option>
									<option value="21">21일</option>
									<option value="22">22일</option>
									<option value="23">23일</option>
									<option value="24">24일</option>
									<option value="25">25일</option>
									<option value="26">26일</option>
									<option value="27">27일</option>
									<option value="28">28일</option>
									<option value="29">29일</option>
									<option value="30">30일</option>
									<option value="31">31일</option>
								</select>
								<span class="fmTxt-1">일</span>
							</td>
						</tr>
						<tr>
							<th scope="row">
								<span class="obligatory">
									<span class="blind">* </span>연락처
								</span>
							</th>
							<td class="fm">
								<select class="slt fw-3" title="연락처 앞자리" id="telno1" name="telno1">
									<option value="010">010</option>
									<option value="011">011</option>
									<option value="016">016</option>
									<option value="017">017</option>
									<option value="018">018</option>
									<option value="019">019</option>
								</select>
								
								<span class="fmTxt-3">-</span>
								<input type="text" class="ipt fw-3" title="연락처 중간자리" id="telno2" name="telno2" value="" maxlength="4" />
								<span class="fmTxt-3">-</span>
								<input type="text" class="ipt fw-3" title="연락처 끝자리" id="telno3" name="telno3" value="" maxlength="4"/>
							</td>
						</tr>
						<tr>
							<th scope="row">
								<span class="obligatory">
									<span class="blind">* </span>이메일
								</span>
							</th>
							<td class="fm">
								<input type="text" class="ipt fw-5" title="이메일" id="emailid" name="emailid" maxlength="30" />
								<span class="fmTxt-3">@</span>
								<input type="text" class="ipt fw-5" title="E-mail 도메인" id="emailDomain" name="emailDomain" maxlength="30"/>
								<select class="slt fw-6" title="직접입력" onchange="" id="email_domain_sel" name="email_domain_sel">
									<option value="직접입력">직접입력</option>
									<option value="gmail.com">gmail.com</option>
									<option value="naver.com">naver.com</option>
									<option value="hamail.net">hamail.net</option>
									<option value="nate.com">nate.com</option>
									<option value="yahoo.com">yahoo.com</option>
									<option value="hanmir.com">hanmir.com</option>
								</select>
								<a href="#" class="btnD btn-4 fmBtn" id="btnEmailConfirm" onclick="" disabled="disabled" style="display: none;">중복검사</a>
							</td>
						</tr>
						<tr>
							<th scope="row" class="" style="text-align: center !important;">주소</th>
							<td class="fm">
								<input type="text" class="ipt fw-7" title="우편번호" id="zip" name="zip" />
								<a href="#address" class="btnD btn-4 fmBtn" onclick="sample6_execDaumPostcode(1)">우편번호검색</a>
								<input type="text" class="ipt fw-8 fmMg-1" title="주소" id="address1" name="address1" maxlength="100"/>
								<input type="text" class="ipt fw-8 fmMg-1" title="상세주소" id="address2" name="address2" maxlength="50" onkeyup=""/>
							</td>
						</tr>
						<tr>
							<th scope="row" class="" style="text-align: center !important;">포인트</th>
							<td class="fm">
								<label>${user.totalPoint } 포인트</label>
							</td>
						</tr>
						<tr>
							<th scope="row" class="" style="text-align: center !important;">정보수신동의</th>
							<td>
								<span class="chkG">
									<span class="chkFm ty-3">
										<input type="checkbox" class="chk" id="recptChkAll" name="">
										<span class="act"></span>
										<label for="recptChkAll" style="margin: 0;"><strong class="fc-1">전체동의</strong></label>
									</span>
									<span class="chkFm">
										<input type="checkbox" class="chk agree" id="emailreceipt" name="emailreceipt" value="Y"/>
										<span class="act"></span>
										<label for="email_recptn_yn" style="margin: 0;">E-mail</label>
									</span>
									<span class="chkFm">
										<input type="checkbox" class="chk agree" id="smsreceipt" name="smsreceipt" value="Y"/>
										<span class="act"></span>
										<label for="sms_recptn_yn" style="margin: 0;">SMS</label>
									</span>
								</span>
								<ul class="list-2 fc-6" style="padding-left: 20px; margin-top: 10px;">
									<li>정보수신 동의를 하시면, 회원 혜택, 회원 특별 세일 초대, 이벤트 등 다양한 정보 안내를 받으실 수 있습니다.</li>
									<li>정보수신 동의를 하지 않으시더라도 소멸예정 포인트 안내는 이메일 또는 문자로 자동 발송 됩니다.</li>
									<li>선택항목에 동의하지 않으셔도 정상적인 서비스를 이용하실 수 있습니다.</li>
								</ul>
							</td>
						</tr>
					</tbody>
				</table>
				
				<!--  <h4 class="title-3 fc-1">플라스틱 카드 신청</h4>
				<table class="tb-1 tbData" style="margin: 20px auto; width: 100%;">
					<colgroup>
						<col width="175px">
						<col width="*">
					</colgroup>
					<tbody>
						<tr>
							<th scope="row">플라스틱 카드 신청</th>
							<td>
								웹 회원가입 시 무료 멤버십에 대한 모바일 카드가 자동 발급됩니다.
								<ul class="list-2 fmMg-2 fc-3" style="padding-left: 20px; margin-top: 10px;">
									<li>플라스틱 멤버십 카드 발급을 원하시는 분은 체크해 주세요.</li>
									<li>추후 플라스틱 멤버십 카드를 분실하실 경우 모바일 카드로 사용 가능합니다.</li>
								</ul>
								<span class="chkFm ty-3 fmMg-2">
									<input type="checkbox" class="chk" id="request_card_type" name="request_card_type" value="P" data-fcase="cardappok" data-visible="show">
									<span class="act"></span>
									<label for="request_card_type" style="margin-bottom: 0;">플라스틱 카드 신청</label>
								</span>
							</td>
						</tr>
						<tr class="fcase_cardappok fcaseHide">
							<th scope="row">카드 우편 수령처</th>
							<td class="fm">
								<span class="radG">
									<span class="radFm">
										<input type="radio" class="rad" id="req_addr_type1" name="req_addr_type" value="1" data-fcase="cardadd2" checked="checked">
										<span class="act"></span>
										<label for="req_addr_type1" style="margin-bottom: 0;">기본 주소</label>
									</span>
									<span class="radFm">
										<input type="radio" class="rad" id="req_addr_type2" name="req_addr_type" value="2" data-fcase="cardadd1">
										<span class="act"></span>
										<label for="req_addr_type2" style="margin-bottom: 0;">수령지 변경</label>
									</span>
								</span>
							</td>
						</tr>
						<tr class="fcase_cardappok fcaseHide">
							<th scope="row">주소</th>
							<td class="fm fcase_cardadd1 fcaseHide">
								<input type="text" class="ipt fw-7" title="우편번호" id="trans_zip1" name="trans_zip1">
								<a href="#address" class="btnD btn-4 fmBtn" onclick="sample6_execDaumPostcode(2)">우편번호검색</a>
								<input type="text" class="ipt fw-8 fmMg-1" title="주소" id="trans_adres1" name="trans_adres1">
								<input type="text" class="ipt fw-8 fmMg-1" title="상세주소" id="trans_adres2" name="trans_adres2">
							</td>
							<td class="fm fcase_cardadd2">
								<span id="def_ipt_addr"></span>
							</td>
						</tr>
					</tbody>
				</table>-->
			</div>
			<div class="btnArea-1">
				<button type="submit" id="modify-btn" class="w3-btn w3-red" style="width: 126px !important; padding: 19px 32px; background-color: #e87a92 !important; text-decoration: none;">완료</button>
				<a href="userlist.do?type=${user.type }" class="w3-btn w3-red" style="width: 126px !important; padding: 19px 32px; background-color: #e87a92 !important; text-decoration: none;">목록</a>
			</div>
		</form>
	</div>
</div>
<%@include file="../../include/footer.jsp" %>
</body>
</html>