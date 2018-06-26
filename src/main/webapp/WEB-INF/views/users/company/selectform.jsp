<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html lang="ko">
<head>
  <title>Party Mix</title>
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
    background: #ffcce0;
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
		<h2 class="pagTit">PARTY MIX</h2>
		<div class="pagTitSub" style="text-align: center; margin-bottom: 25px;">
			저희 파티 믹스에서는 업체 카테고리를 3종류로 나누어 서비스하고 있습니다.
			<br>원하시는 업체를 선택하시고 다음 단계를 진행하세요.
		</div>
		<div class="w3-container" style="padding: 0;">
			<ul class="nav nav-pills nav-justified" role="tablist">
				<li class="active">STEP1. 업체선택</li>
				<li>STEP2. 업체정보 입력</li>
				<li>STEP3. 신청 완료</li>
			</ul>
		</div>
		<div class="w3-container" style="padding: 0; margin-top: 30px;">
			<ul class="nav nav-pills nav-justified" role="tablist">
				<li class="contBox">
					<h3 class="title-1 fs-16 aC">
						호텔의 정보를 등록하시려면<br>이 곳을 선택하세요. <br>
						<span style="color: #e87a92 !important;">기본 정보, 호텔의 옵션</span> 등의 정보를 등록합니다.
					</h3>
					<div class="authorization">
						<a href="form.do?type=H" class="em-icon" onclick=""><img src="../resources/image/hotelArt.jpg" style="width: 110px; height: 100px;"/><br><span class="w3-btn w3-red" style="background-color: #e87a92 !important;">Hotel</span></a>
					</div>
				</li>
				<li class="contBox">
					<h3 class="title-1 fs-16 aC">
						콘서트 업체 정보를 등록하시려면<br>이 곳을 선택하세요. <br>
						<span style="color: #e87a92 !important;">콘서트의 유동정보</span>로 인해 매번 신청해야 합니다.
					</h3>
					<div class="authorization">
						<a href="form.do?type=C" class="em-icon" onclick=""><img src="../resources/image/concertArt.jpg" style="width: 110px; height: 100px;"/><br><span class="w3-btn w3-red" style="background-color: #e87a92 !important;">Concert</span></a>
					</div>
				</li>
				<li class="contBox">
					<h3 class="title-1 fs-16 aC">
						리조트의 정보를 등록하시려면<br>이 곳을 선택하세요. <br>
						<span style="color: #e87a92 !important;">기본 정보, 리조트 시설</span> 등의 정보를 등록합니다.
					</h3>
					<div class="authorization">
						<a href="form.do?type=R" class="em-icon" onclick=""><img src="../resources/image/resortArt.jpg" style="width: 110px; height: 100px;"/><br><span class="w3-btn w3-red" style="background-color: #e87a92 !important;">Resort</span></a>
					</div>
				</li>
			</ul>
		</div>
		
	</div>
</div>
<%@include file="../../include/footer.jsp" %>
</body>
</html>