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
</head>
<body>
<%@ include file="../../include/nav.jsp" %>
<%@ include file="../../include/mypagenav.jsp" %>
<div id="container ct" class="contBg" style="font-family: '맑은 고딕';">
	<div class="contWrap">
		<h2 class="pagTit">Mix Up 광고 등록</h2>
		<div class="pagTitSub" style="text-align: center; margin-bottom: 25px;">
			광고 등록은 호텔 업체만 가능하며 호텔을 제외한 다른 업체에게 신청을 받습니다.
		</div>
		<div class="w3-container" style="padding: 0;">
			<ul class="nav nav-pills nav-justified" role="tablist">
				<li class="active">정보 입력</li>
			</ul>
		</div>
		<form id="addmixup" name="addmixup" method="post" action="addmixup.do" enctype="multipart/form-data">
			<div class="contBox">
				<div class="cHead chw-3 first">
					<h4 class="title-3 fc-1 chwTit">기본정보</h4>
				</div>
				<table class="tb-1 tbData" style="margin: 35px auto; width: 100%;" id="pf-table">
					<colgroup>
						<col width="175px">
						<col width="*">
					</colgroup>
					<tbody>
						<tr>
							<th scope="row">
								<span class="obligatory">
									<span class="blind">* </span>업체 대표자
								</span>
							</th>
							<td class="fm">
								<input type="hidden" id="get-userNo" name="userNo" value="${LOGIN_USER.no }"/>
								<input type="hidden" name="userId" value="${LOGIN_USER.id }"/>
								<input type="hidden" id="get-type" name="add-type" value="H"/>
								<input type="text" class="ipt fw-24" id="user_name" name="userName" value="${LOGIN_USER.name }" readonly>
							</td>
						</tr>
						<tr>
							<th scope="row">
								<span class="obligatory">
									<span class="blind">* </span>패키지명
								</span>
							</th>
							<td class="fm">
								<input type="text" class="ipt fw-24" id="title" name="title" maxlength="100">
							</td>
						</tr>
						<tr>
							<th scope="row">
								<span class="obligatory">
									<span class="blind">* </span>패키지 내용
								</span>
							</th>
							<td class="fm">
								<textarea rows="5" cols="50" id="content" name="content" maxlength="1000"></textarea>
							</td>
						</tr>
						<tr>
							<th scope="row">
								<span class="obligatory">
									<span class="blind">* </span>아이템
								</span>
							</th>
							<td class="fm">
							<select class="form-control" name="userItem" id="user-item"></select>
							</td>
						</tr>
						<tr>
							<th scope="row">
								<span class="obligatory">
									<span class="blind">* </span>할인률
								</span>
							</th>
							<td class="fm">
								<input type="number" class="ipt fw-3" id="item-rate" name="packageRate" min="1" max="100"/>%
							</td>
						</tr>
						<tr>
							<th scope="row">
								<span class="obligatory">
									<span class="blind">* </span>판매 수량
								</span>
							</th>
							<td class="fm">
								<input type="number" class="ipt fw-3" id="item-count" name="packageCount" min="1" max="10000"/>개
							</td>
						</tr>
						<tr>
							<th scope="row">
								<span class="obligatory">
									<span class="blind">* </span>위약금
								</span>
							</th>
							<td class="fm">
								<input type="number" class="ipt fw-24" id="item-dfboc" name="dfboc" min="0" max="100000000"/>원
							</td>
						</tr>
						<tr>
							<th scope="row">
								<span class="obligatory">
									<span class="blind">* </span>믹스업 기간
								</span>
							</th>
							<td>
								<input type="date" class="ipt fw-24" id="start_date" name="startDate"> ~ <input type="date" class="ipt fw-24" id="end_date" name="endDate">
							</td>
						</tr>
					</tbody>
				</table>
			</div>
			<div class="btnArea-1">
				<button type="submit" class="w3-btn w3-red" style="width: 126px !important; padding: 19px 32px; background-color: #e87a92 !important; text-decoration: none;">신청</button>
				<a href="packagelist.do" class="w3-btn w3-red" style="width: 126px !important; padding: 19px 32px; background-color: #e87a92 !important; text-decoration: none;">목록</a>
			</div>
		</form>
	</div>
</div>
<%@include file="../../include/footer.jsp" %>
</body>
<script type="text/javascript">
$(function() {
	var type = $("#get-type").val();
	var no = $("#get-userNo").val();
	$("#user-item").empty();
	
	$.ajax({
		type:'GET',
		url:'../ajax/getItemAll.do?no='+no+'&type2='+type,
		dataType:'json',
		success: function(items) {
			var row = "";
			row += "<option value=''>상품을 선택하세요.</option>";
			if(items.length == 0) {
				row = "<option>없음</option>";
				$("#user-item").append(row);
			} else {
				$.each(items, function(index, item) {
					row += "<option value='"+item.no+"'>등록품 : "+item.name+" / 기존가 : "+item.priceFmt+"원 / 업체명 : "+item.companyName+" / 타입 : "+item.type+"</option>";
				});
				$("#user-item").append(row);
			}
		}
	});
	
	$("#addmixup").submit(function(event) {
		var userName = $("#user_name").val().trim();
		var title = $("#title").val().trim();
		var content = $("#content").val().trim();
		var userItem = $("#user-item").val().trim();
		var itemRate = $("#item-rate").val().trim();
		var itemCount = $("#item-count").val().trim();
		var itemDfboc = $("#item-dfboc").val().trim();
		var startDate = $("#start_date").val().trim();
		var endDate = $("#end_date").val().trim();
		
		if(!userName) {
			alert("대표자를 입력해주세요.");
			return false;
		}
		if(!title) {
			alert("패키지 상품명을 입력해주세요.");
			return false;
		}
		if(!content) {
			alert("패키지 상품의 내용을 입력해주세요.");
			return false;
		}
		if(!userItem) {
			alert("패키지화 할 상품을 선택해주세요.")
			return false;
		}
		if(!itemRate) {
			alert("상품의 할인율을 입력해주세요.")
			return false;
		}
		if(!itemCount) {
			alert("패키지의 판매 개수를 입력해주세요.")
			return false;
		}
		if(!itemDfboc) {
			alert("계약 해제 시 위약금을 입력해주세요.")
			return false;
		}
		if(!startDate) {
			alert("시작 날짜를 입력해주세요.")
			return false;
		}
		if(!endDate) {
			alert("종료 날짜를 입력해주세요.")
			return false;
		}
		
		return true;
	})
})
</script>
<%@include file="../../include/footer.jsp" %>
</html>