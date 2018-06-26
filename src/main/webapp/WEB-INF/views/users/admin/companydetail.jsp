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
    margin: 64px auto 0;
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
    border-top: solid 2px #604d40;
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
.pagTitSub1 {
    position: relative;
    font-family: Arial;
    background-image: url("../resources/image/faq.gif");
}
.text-block {
    position: absolute;
    color: white;
    padding-left: 20px;
    padding-right: 20px;
    top: 50%;
    left: 50%;
    transform: translate(-50%, -50%);
    text-align : center;
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
<div id="container ct" class="contBg" style="font-family: '맑은 고딕'; width: 1216px !important;">
	<div class="pagTitSub1" style="height: 250px; margin-bottom: 10px; margin-top: 50px;">
		<div class="text-block">
			<h4>최고의 순간을 PARTYMIX 호텔에서 함께 하실 수 있도록</h4>
    		<h4>귀 기울여 감동 서비스로 보답해드리겠습니다.</h4>
		</div>
	</div>
	<div class="contWrap">
		<h2 class="pagTit">PARTY MIX</h2>
		
		<form id="insertForm" name="insertForm" method="post">
			<div class="contBox">
				<div class="cHead chw-3 first">
					<h4 class="title-3 fc-1 chwTit">기본정보</h4>
					<span class="fR chwTxt">
						<span class="obligatory">
							<span class="blind">* </span>표시 필수 입력사항
						</span>
					</span>
				</div>
				<table class="tb-1 tbData" style="margin: 35px auto;">
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
										<input type="radio" class="rad" id="type1" name="type" value="">
										<span class="act"></span>
										<label for="type1" style="margin: 0;">업체</label>
									</span>
									<span class="radFm">
										<input type="radio" class="rad" id="type2" name="type" value="">
										<span class="act"></span>
										<label for="type2" style="margin: 0;">고객</label>
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
								<input type="text" class="ipt fw-1" placeholder="성" title="성" id="kr_nm_last" name="kr_nm_last" maxlength="2">
								<input type="text" class="ipt fw-2" placeholder="이름" title="이름" id="kr_nm_first" name="kr_nm_first" maxlength="5">
								<span class="radG fmMgL">
									<span class="radFm">
										<input type="radio" class="rad" id="sexdstn_code1" name="sexdstn_code" value="">
										<span class="act"></span>
										<label for="sexdstn_code1" style="margin: 0;">남</label>
									</span>
									<span class="radFm">
										<input type="radio" class="rad" id="sexdstn_code2" name="sexdstn_code" value="">
										<span class="act"></span>
										<label for="sexdstn_code2" style="margin: 0;">여</label>
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
								<input type="text" class="ipt fw-24" title="아이디" id="mber_id" name="mber_id" maxlength="20" disabled>
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
									<input type="password" class="ipt fw-24" title="비밀번호" id="pw" name="pw" maxlength="20">
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
									<span class="blind">* </span>국가
								</span>
							</th>
							<td class="fm">
								<select class="slt fw-24" title="국가" id="reside_country_code2" name="reside_country_code2" onchange="">
									<option value="">대한민국</option>
									<option value="">대한민국</option>
									<option value="">대한민국</option>
									<option value="">대한민국</option>
									<option value="">대한민국</option>
								</select>
							</td>
						</tr>
						<tr>
							<th scope="row">
								<span class="obligatory">
									<span class="blind">* </span>생년월일
								</span>
							</th>
							<td class="fm">
								<select class="slt fw-4" title="년" id="brthdy_yy" name="brthdy_yy" >
									<option value="">선택</option>
								</select>
								<span class="fmTxt-1">년</span>
								<select class="slt fw-4" title="월" id="brthdy_mt" name="brthdy_mt">
									<option value="">선택</option>
								</select>
								<span class="fmTxt-1">월</span>
								<select class="slt fw-4" title="일" id="brthdy_de" name="brthdy_de">
									<option value="">선택</option>
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
								<input type="text" class="ipt fw-5" title="이메일" id="email" name="email" maxlength="30" />
								<span class="fmTxt-3">@</span>
								<input type="text" class="ipt fw-5" title="E-mail 도메인" id="email_domain" name="email_domain" maxlength="30"/>
								<select class="slt fw-6" title="직접입력" onchange="" id="email_domain_sel" name="email_domain_sel"></select>
								<a href="#" class="btnD btn-4 fmBtn" id="btnEmailConfirm" onclick="" disabled="disabled" style="display: none;">중복검사</a>
							</td>
						</tr>
						<tr>
							<th scope="row" class="vT">주소</th>
							<td class="fm">
								<input type="text" class="ipt fw-7" title="우편번호" id="zip1" name="zip1" />
								<a href="#" class="btnD btn-4 fmBtn" onclick="">우편번호검색</a>
								<input type="text" class="ipt fw-8 fmMg-1" title="주소" id="adres1" name="adres1" maxlength="100"/>
								<input type="text" class="ipt fw-8 fmMg-1" title="상세주소" id="adres2" name="adres2" maxlength="50" onkeyup=""/>
							</td>
						</tr>
						<tr>
							<th scope="row" class="vT">정보수신동의</th>
							<td>
								<span class="chkG">
									<span class="chkFm ty-3">
										<input type="checkbox" class="chk" id="recptChkAll" name="">
										<span class="act"></span>
										<label for="recptChkAll" style="margin: 0;"><strong class="fc-1">전체동의</strong></label>
									</span>
									<span class="chkFm">
										<input type="checkbox" class="chk agree" id="email_recptn_yn" name="email_recptn_yn" value="Y"/>
										<span class="act"></span>
										<label for="email_recptn_yn" style="margin: 0;">E-mail</label>
									</span>
									<span class="chkFm">
										<input type="checkbox" class="chk agree" id="sms_recptn_yn" name="sms_recptn_yn" value="Y"/>
										<span class="act"></span>
										<label for="sms_recptn_yn" style="margin: 0;">SMS</label>
									</span>
									<span class="chkFm">
										<input type="checkbox" class="chk agree" id="dm_recptn_yn" name="dm_recptn_yn" value="Y"/>
										<span class="act"></span>
										<label for="dm_recptn_yn" style="margin: 0;">DM</label>
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
			</div>
			<!-- <div class="btnArea-1">
				<a href="#" class="w3-btn w3-red" style="width: 126px !important; padding: 19px 32px; background-color: #e87a92 !important; text-decoration: none;" onclick="">완료</a>
			</div> -->
		</form>
	</div>
</div>
<%@include file="../../include/footer.jsp" %>
</body>
</html>