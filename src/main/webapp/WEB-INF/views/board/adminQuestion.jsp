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
    padding: 0;
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
.nav-pills>li.active>a, .nav-pills>li.active>a:focus, .nav-pills>li.active>a:hover {
	background-color: #e87a92 !important;
	padding: 0;
}
.title-2 {
    font-size: 22px;
    color: #111;
    margin: 53px 0 11px;
    font-weight: bold;
    letter-spacing: -0.01em;
    line-height: 1.2;
}
.tbTitle {
    display: block;
    margin: 0 0 13px;
    font-size: 14px;
    line-height: 1.6;
    color: #666;
    letter-spacing: -0.025em;
    word-break: keep-all;
    word-wrap: break-word;
}
.tb-1 {
    border-top: solid 2px #e778a1;
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
.fw-1 {
    width: 130px;
}
.fw-2 {
    width: 160px;
}
.fw-3 {
    width: 70px;
}
.fw-32 {
    width: 560px;
}
.fw-25 {
    width: 280px;
}
.tbData tbody th:first-child {
    border-left: none;
}
.tbData th {
    padding: 13px 22px 12px 22px;
}
.tb-1 td.fm {
    padding-top: 16px;
    padding-bottom: 16px;
}
.tbData td {
    padding: 14px 20px 14px 20px;
}
.tb-1 td {
    color: #333;
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
.fh-2 {
    height: 220px;
}
.fw-full {
    width: 100%;
}
textarea {
    overflow: auto;
    vertical-align: top;
    padding: 8px;
    box-sizing: border-box;
    border: solid 1px #aaa;
}
.filebox .upload-name {
    display: inline-block;
    width: 560px;
    vertical-align: middle;
    border: solid 1px #aaa;
    background: #fff;
    box-sizing: border-box;
    padding: 0 40px 0 8px;
    margin-right: 3px;
    height: 36px;
    line-height: 34px;
    color: #000;
    -webkit-appearance: none;
    -moz-appearance: none;
    appearance: none;
}
.fm .btnD {
    margin-right: 1px;
}
.filebox label {
    cursor: pointer;
}
.btnD {
    min-width: 82px;
    height: 36px;
    line-height: 34px;
    font-size: 14px;
    padding: 0 14px;
    font-weight: 100;
}
.btn-4 {
    background: #eee;
    border: solid 1px #ddd;
    color: #333;
}
.fmTxt-3 {
    display: inline-block;
    margin: 0 2px;
    text-align: center;
    vertical-align: middle;
    color: #666;
    font-size: 16px;
}
.fmTxt-4 {
    display: block;
    margin-top: 6px;
    color: #666;
}
.tb-1.single {
    border-top: solid 1px #e5e5e5;
}
.cmg-4 {
    margin-top: 40px !important;
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
.chw-5 {
    margin: 30px 0 6px;
}
.cHead .chwTit {
    float: left;
    margin: 0;
}
.title-5 {
    font-size: 14px;
    margin: 30px 0 6px;
    color: #111;
    font-weight: bold;
}
.fR {
    float: right !important;
}
.chkFm, .radFm {
    position: relative;
}
.sh-2 {
    height: 145px;
}
.scroll {
    overflow-x: hidden;
    overflow-y: scroll;
    border: solid 1px #aaa;
    padding: 10px 8px;
    font-size: 14px;
    box-sizing: border-box;
}
.scroll li, .scroll ul {
	list-style: none;
}
.agrCont, .agrCont table {
    font-size: 13px !important;
    color: #666;
}
.agrTit-1:first-child {
    margin: 0 0 8px;
}
.agrTit-1 {
    margin: 23px 0 8px;
}
.agrList-1 {
    margin: 10px 0;
}
.agrList-1 > li {
    text-indent: -1.5em;
    margin-left: 1.5em;
}
.btnArea-1 {
    margin-top: 20px;
    min-height: 60px;
    position: relative;
    text-align: center;
}
.contWrap {
    width: 1216px;
    margin: 32px auto 0;
    padding-top: 50px;
}
.contBg {
    min-width: 1260px;
    padding-top: 0;
    padding-bottom: 100px;
    background: #eeeeee;
}
.pagTit {
    font-size: 32px;
    padding: 0 0 10px;
    color: #e87a92;
    line-height: 1.1;
    text-align: center;
    font-weight: bold;
}
.contBox {
    background: #fff;
    border: solid 1px #eee;
    padding: 42px 70px 70px;
    margin: auto;
    margin-top: 25px;
}
.title-1 {
	color: #333;
    line-height: 1.5;
}
.title-3 {
    font-size: 18px;
    font-weight: bold;
    color: #000;
}
.fc-1 {
    color: #e87a92 !important;
}
.cHead .chwTit {
    float: left;
    margin: 0 !important;
}
.fR {
    float: right !important;
}
.obligatory {
    padding-left: 10px;
    font-size: 14px;
    color: #666;
}
.fmMgL {
    margin-left: 15px;
}
input[type="radio"], input[type="checkbox"] {
    vertical-align: middle;
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
<%@ include file="../include/nav.jsp" %>
<%@ include file="../include/mypagenav.jsp" %>
<div id="container ct" class="contBg" style="font-family: '맑은 고딕';">
	<div class="contWrap">
		<!-- <h2 class="pagTit">PARTY MIX</h2>
		<div class="pagTitSub" style="text-align: center; margin-bottom: 25px;">
			최고의 순간을 파티믹스 호텔에서 함께 하실 수 있도록 귀 기울여 감동 서비스로 보답해드리겠습니다.
		</div> -->
		<div class="pagTitSub1" style="height: 250px; margin-bottom: 10px;">
			<div class="text-block">
				<h4>최고의 순간을 PARTYMIX 호텔에서 함께 하실 수 있도록</h4>
	    		<h4>귀 기울여 감동 서비스로 보답해드리겠습니다.</h4>
			</div>
		</div>
		<div class="w3-container" style="padding: 0;">
			<ul class="nav nav-pills nav-justified" role="tablist">
				<li style="padding: 0 !important;"><a href="question.do" style="padding: 10px 15px !important; color: #e87a92 !important;">업체문의</a></li>
				<li class="active" style="padding: 0 !important;"><a href="adminQuestion.do" style="padding: 10px 15px !important;">관리자문의</a></li>
				<li style="padding: 0 !important;"><a href="FAQ.do" style="padding: 10px 15px !important; color: #e87a92 !important;">FAQ</a></li>
			</ul>
		</div>
		<form id="submintAdminQuestionForm" name="submintAdminQuestionForm" method="post" action="submintAdminQuestion.do" enctype="multipart/form-data">
			<div class="contBox">
			<div class="cHead chw-3 first">
				<h4 class="title-3 fc-1 chwTit">관리자문의</h4>
				<span class="fR chwTxt">
						<span class="obligatory">
							<!--<span class="blind">* </span> 문의 완료 시 접수 확인 이메일이 전송되며 보다 정확한 확인을 위하여 연락 가능한 연락처를 정확히 입력해주시기 바랍니다. -->
						</span>
				</span>
			</div>
				<table class="tb-1 tbData" style="margin: 35px auto; width: 100%;">
					<colgroup>
						<col width="175px">
						<col width="*">
						<col width="175px">
						<col width="*">
					</colgroup>
					<tbody>
						<tr>
							<th scope="row">구분</th>
							<td class="fm" colspan="3">
								<span class="radG fmMgL">
									<span class="radFm">
										<input type="radio" class="rad" id="type1" name="type" value="C" checked="checked">
										<span class="act"></span>
										<label for="type1" style="margin: 0;">업체</label>
									</span>
									<span class="radFm">
										<input type="radio" class="rad" id="type2" name="type" value="U">
										<span class="act"></span>
										<label for="type2" style="margin: 0;">고객</label>
									</span>
								</span>
							</td>
						</tr>
						<tr>
							<th scope="row">제목</th>
							<td class="fm" colspan="3">
								<input type="text" class="ipt" id="title" name="title" title="제목" maxlength="200" placeholder="제목을 입력해 주세요." style="width: 858px;">
							</td>
						</tr>
						<!-- 
						<tr>
							<th scope="row">호텔</th>
							<td class="fm">
								<select class="slt fw-25" id="hotel_code" name="hotel_code" title="호텔">
									<option value="">선택하세요.</option>
									<option value="">a호텔</option>
									<option value="">b호텔</option>
									<option value="">c호텔</option>
								</select>
							</td>
							<th scope="row">유형</th>
							<td class="fm">
								<select class="slt fw-25" id="contactus_type" name="contactus_type" title="유형">
									<option value="">선택하세요.</option>
									<option value="1">객실</option>
									<option value="2">다이닝</option>
									<option value="3">웨딩</option>
									<option value="4">미팅</option>
									<option value="5">편의시설</option>
									<option value="6">기타</option>
								</select>
							</td>
						</tr>
						 -->
						<tr>
							<th scope="row">내용</th>
							<td class="fm" colspan="3">
								<textarea class="fw-full fh-2" title="내용을 입력해 주세요." placeholder="내용을 입력해 주세요." id="contents" name="contents" maxlength="4000"></textarea>
							</td>
						</tr>
						<tr>
							<th scope="row">첨부파일</th>
							<td class="fm" colspan="3">
								<div class="filebox">
									<input type="file" title="이미지" id="img" name="upfile">
								</div>
								<span class="fmTxt-4" style="font-size: 12px;">파일 확장자가 jpg, gif, pdf인 파일만 등록하실 수 있습니다. 파일 업로드 시 용량은 10MB를 넘을 수 없습니다.</span>
							</td>
						</tr>
					</tbody>
				</table>
				<!-- 
				<table class="tb-1 tbData single cmg-4" style="width: 100%;">
					<colgroup>
						<col width="175px">
						<col width="*">
						<col width="175px">
						<col width="*">
					</colgroup>
					<tbody>
						<tr>
							<th scope="row">이름</th>
							<td class="fm">
								<input type="text" class="ipt fw-1" placeholder="성" title="성" name="nm_last" id="nm_last" maxlength="2">
								<input type="text" class="ipt fw-2" placeholder="이름" title="이름" name="nm_first" id="nm_first" maxlength="5">
							</td>
							<th scope="row">연락처</th>
							<td class="fm">
								<select class="slt fw-3" title="연락처 앞자리" id="telno1" name="telno1" style="padding-right: 10px;">
									<option value="010">010</option>
									<option value="011">011</option>
									<option value="016">016</option>
									<option value="017">017</option>
									<option value="018">018</option>
									<option value="019">019</option>
								</select>
								<span class="fmTxt-3">-</span>
								<input type="text" class="ipt fw-3" title="연락처 중간자리" id="telno2" name="telno2" maxlength="4"> 
								<span class="fmTxt-3">-</span>
								<input type="text" class="ipt fw-3" title="연락처 끝자리" id="telno3" name="telno3" maxlength="4"> 
							</td>
						</tr>
						<tr>
							<th scope="row">이메일</th>
							<td colspan="3" class="fm">
								<input type="text" class="ipt fw-5" title="E-mail 주소" id="email" name="email" maxlength="30">
								<span class="fmTxt-3">@</span>
								<input type="text" class="ipt fw-5" title="E-mail 도메인" id="email_domain" name="email_domain" maxlength="30">
								<select class="slt fw-6" title="직접입력" onchange="" id="email_domain_sel" name="email_domain_sel">
									<option value="1">직접입력</option>
									<option value="gmail.com">gmail.com</option>
									<option value="hanmail.net">hanmail.net</option>
									<option value="naver.com">naver.com</option>
									<option value="nate.com">nate.com</option>
									<option value="hotmail.com">hotmail.com</option>
									<option value="zum.com">zum.com</option>
									<option value="yahoo.com">yahoo.com</option>
								</select>
								<span class="chkFm fmMgL">
									<input type="checkbox" class="chk" id="email_recptn_yn" name="email_recptn_yn" value="Y" style="margin-left: 15px;">
									<span class="act"></span>
									<label for="email_recptn_yn" style="padding-left: 5px;">수신동의</label>
								</span>
							</td>
						</tr>
					</tbody>
				</table>
				 -->
				<div class="cHead chw-5" style="margin-bottom: 75px; margin-top: 0 !important;">
					<h4 class="title-5 chwTit">개인정보 수집항목 및 이용 동의</h4>
					<span class="fR chwChk">
						<span class="chkFm"><input type="checkbox" class="chk" id="checkyn" name="checkyn" value="Y" style="margin-top: 0px; margin-bottom: 4px;"/><span class="act"></span><label for="check_yn" style="font-size:12px; padding-left: 5px;">동의(필수)</label></span>
					</span>
				</div>
				<div class="scroll sh-2" style="margin-top: 60px;">
					<div class="agrCont">
						<h5 class="agrTit-1" style="font-size: 13px !important;">1. 개인 정보 수집 항목</h5>
						<p class="txtCont">성명, 연락처, 이메일</p>
	
						<h5 class="agrTit-1" style="font-size: 13px !important;">2. 개인 정보 수집 목적</h5>
						<p class="txtCont">서비스 이용에 따른 본인 식별, 고지사항 전달, 불만사항의 의사소통 경로확보 및 기타 원활한 양질의 서비스 제공을 위함</p>
	
						<h5 class="agrTit-1" style="font-size: 13px !important;">3. 개인 정보의 보유, 이용기간</h5>
						<p class="txtCont">원칙적으로 개인정보의 수집목적 또는 제공받은 목적이 달성되면 지체 없이 파기합니다. <br>다만, 전자상거래 등에서의 소비자보호에 관한 법률 등 관계 법률에 의해 보존할 필요가 있는 경우에는 아래의 법률에 의해 일정기간 보존합니다.</p>
						<ul class="agrList-1">
							<li>가. 계약 또는 청약철회 등에 관한 기록
								<ul class="agrList-2">
									<li>보존 이유: 전자상거래 등에서의 소비자보호에 관한 법률</li>
									<li>보존 기간: 5년</li>
								</ul>
							</li>
							<li>나. 대금결제 및 재화 등의 공급에 관한 기록
								<ul class="agrList-2">
									<li>보존 이유: 전자상거래 등에서의 소비자보호에 관한 법률</li>
									<li>보존 기간: 5년</li>
								</ul>
							</li>
							<li>다. 소비자의 불만 또는 분쟁처리에 관한 기록
								<ul class="agrList-2">
									<li>보존 이유: 전자상거래 등에서의 소비자보호에 관한 법률</li>
									<li>보존 기간: 3년</li>
								</ul>
							</li>
						</ul>
						<h5 class="agrTit-1" style="font-size: 13px !important;">4. 동의를 거부할 권리 및 동의를 거부할 경우의 불이익</h5>
						<p class="txtCont">개인정보의 제공에 관한 동의는 원활한 고객상담 및 서비스제공을 위함이고 거부할 경우 상담접수가 되지 않을 수 있습니다</p>
					</div>
				</div>
				<div class="btnArea-1" style="margin-bottom: 100px;">
					<button class="w3-btn w3-red" style="width: 126px !important; padding: 19px 32px; text-decoration: none; background-color: #e778a1 !important;" onclick="">확인</button>
					<a href="myQnA.do" class="w3-btn w3-white w3-border" style="width: 126px !important; padding: 19px 32px; text-decoration: none; border-color: #e778a1 !important; color: #e778a1 !important;" onclick="">취소</a>
				</div>
			</div>
		</form>
	</div>
</div>
<%@include file="../include/footer.jsp" %>
</body>
<script type="text/javascript">
$(function() {
	$("#submintAdminQuestionForm").submit(function(event) {
		var title = $("#title").val().trim();
		var contents = $("#contents").val().trim();
		var checkyn = $(':checkbox[name=checkyn]').prop('checked');
		
		if(!title) {
			alert("제목을 입력하세요.");
			return false;
		}
		if(!contents) {
			alert("내용을 입력하세요.");
			return false;
		}
		if(checkyn == false) {
			alert("개인정보 수집항목 및 이용에 동의해주세요.")
			return false;
		}
		
		return true;
	})
})
</script>
</html>