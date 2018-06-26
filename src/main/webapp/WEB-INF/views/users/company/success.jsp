<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html lang="ko">
<head>
  <title>Party Mix</title>
<style type="text/css">
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
.tbBtmBtn li {
	color: #666;
}
.contBox > .title-6.first {
    margin-top: 16px;
}
.title-6 {
    font-size: 20px;
    margin: 30px 0 6px;
    color: #333;
    line-height: 1.5;
}
.joinCard {
    overflow: hidden;
    text-align: center;
    margin-top: 36px;
}
/*
.joinCard .cardImg {
    display: inline-block;
    width: 339px;
    height: 212px;
    vertical-align: top;
    margin: 0 11px;
}*/
.joinCard .cardInfo {
    display: inline-block;
    width: 339px;
    height: 212px;
    padding: 0 23px 0;
    box-sizing: border-box;
    vertical-align: top;
    margin: 0 11px;
}
.joinCard .cardInfo .cardNum {
    padding-top: 106px;
    color: #111;
}
.joinCard .cardInfo .cardState {
    overflow: hidden;
    display: block;
    margin-top: 44px;
}
.fL {
    float: left !important;
}
.fR {
    float: right !important;
}
.joinCard .cardInfo .cardState em {
    padding-right: 7px;
    color: #e87a92;
}
.btnArea-3 {
    margin-top: 32px;
    text-align: center;
}
em, address {
    font-style: normal;
}
.mobileGuide {
    min-height: 160px;
    border: solid 1px #eee;
    border-width: 1px 0;
    padding-left: 195px;
    margin-top: 52px;
}
.mobileGuide .mobileTit {
    font-size: 20px;
    color: #333;
    margin: 36px 0 13px;
    line-height: 1.4;
}
.btnMobile {
    display: inline-block;
    text-align: center;
    width: 160px;
    height: 48px;
    line-height: 47px;
    font-size: 14px;
    border: solid 1px #666;
    color: #333;
    box-sizing: border-box;
    vertical-align: middle;
    color: #000;
    margin: 0 1px;
}
.tbBtmBtn {
    margin-top: 14px;
    min-height: 48px;
    position: relative;
}
.tbBtmBtn .btnR {
    top: 2px;
}
.btnR {
    position: absolute;
    right: 0;
    top: 0;
}
.btn-2 {
    background: #fff;
    border: solid 1px #ccc;
    color: #333;
}
.btnF {
    height: 48px;
    line-height: 46px;
    font-size: 14px;
    padding: 15px 20px 15px 20px;
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
</head>
<body>
<%@ include file="../../include/nav.jsp" %>
<div id="container ct" class="contBg">
	<div class="contWrap">
		<h2 class="pagTit">PARTY MIX 업체 등록</h2>
		<div class="pagTitSub" style="text-align: center; margin-bottom: 25px;">
			신청이 완료되었습니다.
			<br>업체 운영 서비스는 관리자의 승인 후 이용 가능합니다.
		</div>
		<div class="w3-container" style="padding: 0;">
			<ul class="nav nav-pills nav-justified" role="tablist">
				<li>STEP1. 업체선택</li>
				<li>STEP2. 업체정보 입력</li>
				<li class="active">STEP3. 신청 완료</li>
			</ul>
		</div>
		<div class="contBox">
			<h3 class="title-6 aC first">조금만 기다려주세요!<br>${LOGIN_USER.name } 님의 신청을 빠른 시일 내에 처리하겠습니다.</h3>
			<div class="w3-container" style="padding: 0; margin-top: 30px;">
			<ul class="nav nav-pills nav-justified" role="tablist">
				<li class="contBox">
					<h3 class="title-1 fs-16 aC">
						<span style="color: #e87a92 !important; font-weight: bold;">마이페이지</span><br><br>이 곳에서 신청 내역을 확인 하실 수 있습니다.<br>　
					</h3>
					<div class="authorization">
						<a href="/final/mypageMenu.do" class="em-icon" onclick=""><img src="../resources/image/mypageicon.gif" style="width: 200px; height: 170px;"/><br><span class="w3-btn w3-red" style="background-color: #e87a92 !important;">My Page</span></a>
					</div>
				</li>
				<li class="contBox">
					<h3 class="title-1 fs-16 aC">
						<span style="color: #e87a92 !important; font-weight: bold;">믹스 업</span><br><br>다른 업체와 협약을 맺고<br>패키지 상품을 등록해보세요.
					</h3>
					<div class="authorization">
						<a href="/final/package/packagelist.do" class="em-icon" onclick=""><img src="../resources/image/mixupicon.gif" style="width: 200px; height: 170px;"/><br><span class="w3-btn w3-red" style="background-color: #e87a92 !important;">Mix Up</span></a>
					</div>
				</li>
			</ul>
		</div>
			<div class="tbBtmBtn">
				<ul class="list-2" style="padding-left: 20px;">
					<li style="font-size: 14px;">믹스업에 대한 자세한 사항은 마이페이지에서 확인 가능합니다.</li>
					<li style="font-size: 14px;">파티믹스 문의 : 02) 2278-4100 / aap@ambatel.com</li>
				</ul>
				<span class="btnR">
					<a href="#" class="btnF btn-2" style="text-decoration: none;">문의하기</a>
				</span>
			</div>
		</div>
	</div>
</div>
<%@include file="../../include/footer.jsp" %>
</body>
</html>