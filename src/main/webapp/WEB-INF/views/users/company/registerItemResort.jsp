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
.chkG .chkFm:first-child {
    margin-left: 0;
}
.chkFm label {
    display: inline-block;
    padding-right: 21px;
    vertical-align: middle;
}
.table th, .table td {
	text-align: center;
	vertical-align: middle !important;
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
		<h2 class="pagTit">등록된 RESORT OPTION 목록</h2>
		<div class="pagTitSub" style="text-align: center; margin-bottom: 25px;">
		</div>
			<div class="contBox">
				<table class="table">
				<colgroup>
					<col width="17%">
					<col width="*">
					<%-- <col width="7%"> --%>
					<col width="15%">
					<col width="7%">
					<col width="12%">
					<col width="7%">
					<col width="7%">
					<col width="12%">
				</colgroup>
				<thead>
					<tr style="background-color: #edadba;">
						<th>이미지</th>
						<th>업체명</th>
						<!-- <th>구분</th> -->
						<th>옵션명</th>
						<th>타입</th>
						<th>가격</th>
						<th>수량</th>
						<th>상태</th>
						<th></th>
					</tr>
				</thead>
				<tbody>
				<c:choose>
					<c:when test="${empty resortItems}">
						<tr>
							<td colspan="8" class="text-center" style="padding: 30px;">등록된 상품이 없습니다.</td>
						</tr>
					</c:when>
					<c:otherwise>
						<c:if test="${not empty resortItems }">
							<c:forEach var="resortItem" items="${resortItems }">
								<c:if test="${resortItem.riStatus != 'DELETE' }">
								<tr>
									<td><img class="img-thumbnail" src="../resources/image/${resortItem.rriImg }" style="width: 200px; height: 120px;"></td>
									<td>${resortItem.rsName }</td>
									<%-- <td>${resortItem.cpType eq 'R' ? '리조트' : '' }</td> --%>
									<td>${resortItem.riName }</td>
									<td>${resortItem.riType }</td>
									<td><fmt:formatNumber value="${resortItem.riPrice }"/> 원</td>
									<td>${resortItem.riCount }</td>
									<td><label class="label label-${resortItem.riStatus eq '매진' ? 'danger' : 'default'}" style="font-size: 14px !important;">${resortItem.riStatus }</label></td>
									<td>
										<button class="btn btn-warning" id="modifyriNo-${resortItem.riNo }" data-toggle="collapse" data-target="#modifyform" style="width: 54px; height: 32px; text-decoration: none; margin-bottom: 3px; font-size: 14px;">수정</button>
										<a href="delResortItem.do?no=${resortItem.riNo }&cpNo=${param.no}" class="btn btn-danger" style="width: 54px; height: 32px; text-decoration: none; margin-bottom: 2px; font-size: 14px;">삭제</a>
									</td>
								</tr>
								</c:if>
							</c:forEach>
						</c:if>
					</c:otherwise>
				</c:choose>
					<tr>
						<td colspan="7"></td>
						<td>
							<button class="w3-btn w3-red" data-toggle="collapse" data-target="#addform" style="border: 1px solid transparent; border-radius: 4px; width: 54px !important; height: 32px !important; padding: 6px 12px; background-color: #e87a92 !important; border-color: #e87a92; text-decoration: none; margin-bottom: 2px; font-size: 14px;">추가</button>
						</td>
					</tr>
				</tbody>
			</table>
				<div class="btnArea-1">
					<a href="../board/registeredList.do" class="w3-btn w3-red" style="width: 126px !important; padding: 19px 32px; background-color: #e87a92 !important; text-decoration: none;">목록</a>
				</div>
				
			<div id="addform" class="collapse">
				<form id="resortItemForm" name="resortItemForm" method="post" action="addResortItem.do" enctype="multipart/form-data">
				<input name="cpNo" type="hidden" value="${param.no }">
				<h4 class="title-3 fc-1">리조트 옵션</h4>
				<table class="tb-1 tbData" style="margin: 20px auto; width: 100%;">
					<colgroup>
						<col width="175px">
						<col width="*">
					</colgroup>
					<tbody>
						<tr>
							<th scope="row">
								<span class="obligatory">
									<span class="blind"></span>옵션명
								</span>
							</th>
							<td class="fm">
								<input type="hidden" name="rsNo" value="${param.rsNo }">
								<select id="riName" name="riName" style="height: 35px; padding: 0 8px; width: 240px;">
									<option value="">선택하세요.</option>
									<c:forEach var="resortName" items="${resortNames }">
									<option value="${resortName.name }">${resortName.name }</option>
									</c:forEach>
								</select>
							</td>
						</tr>
						<tr>
							<th scope="row">
								<span class="obligatory">
									<span class="blind"></span>타입
								</span>
							</th>
							<td class="fm">
								<span class="radG fmMgL">
									<span class="radFm">
										<input type="radio" class="rad" id="riType1" name="riType" value="성인" checked="checked">
										<span class="act"></span>
										<label for="riType1" style="margin: 0;">성인</label>
									</span>
									<span class="radFm">
										<input type="radio" class="rad" id="riType2" name="riType" value="소아">
										<span class="act"></span>
										<label for="riType2" style="margin: 0;">소아</label>
									</span>
								</span>
							</td>
						</tr>
						<tr>
							<th scope="row">
								<span class="obligatory">
									<span class="blind"></span>가격
								</span>
							</th>
							<td class="fm">
								<input type="number" class="ipt fw-24" title="옵션가격" id="riPrice" name="riPrice" maxlength="20"> 원
							</td>
						</tr>
						<tr>
							<th scope="row">
								<span class="obligatory">
									<span class="blind"></span>수량
								</span>
							</th>
							<td class="fm">
								<input type="number" class="ipt fw-24" title="옵션수량" id="riCount" name="riCount" maxlength="20"> 개
							</td>
						</tr>
						<tr>
							<th scope="row">
								<span class="obligatory">
									<span class="blind"></span>이미지
								</span>
							</th>
							<td class="fm">
								<input type="file" title="옵션이미지" id="resort_item_img" name="riImg">
							</td>
						</tr>
					</tbody>
				</table>
			<div class="btnArea-1">
				<button type="submit" class="w3-btn w3-red" style="width: 126px !important; padding: 19px 32px; background-color: #e87a92 !important; text-decoration: none;">등록</button>
			</div>
			</form>
		</div>
		
		
		
			<div id="modifyform" class="collapse">
				<form id="resortItemForm" name="resortItemForm" method="post" action="updateResortItem.do" enctype="multipart/form-data">
				<input name="cpNo" type="hidden" value="${param.no }">
				<h4 class="title-3 fc-1">리조트 옵션</h4>
				<table class="tb-1 tbData" style="margin: 20px auto; width: 100%;">
					<colgroup>
						<col width="175px">
						<col width="*">
					</colgroup>
					<tbody>
						<tr>
							<th scope="row">
								<span class="obligatory">
									<span class="blind"></span>옵션명
								</span>
							</th>
							<td class="fm">
								<input type="hidden" id="modifyriNo2" name="riNo">
								<c:forEach var="resortItem" items="${resortItems2 }">
								<input type="hidden" name="rsNo" value="${resortItem.rsNo }">
								</c:forEach>
								<select id="riName" name="riName" style="height: 35px; padding: 0 8px; width: 240px;">
									<option value="">선택하세요.</option>
									<c:forEach var="resortName" items="${resortNames }">
									<option value="${resortName.name }">${resortName.name }</option>
									</c:forEach>
								</select>
							</td>
						</tr>
						<tr>
							<th scope="row">
								<span class="obligatory">
									<span class="blind"></span>타입
								</span>
							</th>
							<td class="fm">
								<span class="radG fmMgL">
									<span class="radFm">
										<input type="radio" class="rad" id="riType1" name="riType" value="성인" checked="checked">
										<span class="act"></span>
										<label for="riType1" style="margin: 0;">성인</label>
									</span>
									<span class="radFm">
										<input type="radio" class="rad" id="riType2" name="riType" value="소아">
										<span class="act"></span>
										<label for="riType2" style="margin: 0;">소아</label>
									</span>
								</span>
							</td>
						</tr>
						<tr>
							<th scope="row">
								<span class="obligatory">
									<span class="blind"></span>가격
								</span>
							</th>
							<td class="fm">
								<input type="number" class="ipt fw-24" title="옵션가격" id="riPrice" name="riPrice" maxlength="20"> 원
							</td>
						</tr>
						<tr>
							<th scope="row">
								<span class="obligatory">
									<span class="blind"></span>수량
								</span>
							</th>
							<td class="fm">
								<input type="number" class="ipt fw-24" title="옵션수량" id="riCount" name="riCount" maxlength="20"> 개
							</td>
						</tr>
						<tr>
							<th scope="row">
								<span class="obligatory">
									<span class="blind"></span>이미지
								</span>
							</th>
							<td class="fm">
								<input type="file" title="옵션이미지" id="resort_item_img" name="riImg">
							</td>
						</tr>
					</tbody>
				</table>
			<div class="btnArea-1">
				<button type="submit" class="w3-btn w3-red" style="width: 126px !important; padding: 19px 32px; background-color: #e87a92 !important; text-decoration: none;">수정</button>
			</div>
			</form>
		</div>
	</div>
	</div>
</div>
<%@include file="../../include/footer.jsp" %>
</body>
<script type="text/javascript">
$(function() {
	$("#resortItemForm").submit(function(event) {
		var riName = $("#riName").val();
		var riPrice = $("#riPrice").val().trim();
		var riCount = $("#riCount").val().trim();
		
		if(riName == '') {
			alert("옵션명을 선택하세요.");
			return false;
		}
		if(!riPrice) {
			alert("가격을 입력하세요.");
			return false;
		}
		if(!riCount) {
			alert("수량을 입력하세요.");
			return false;
		}
		return true;
	});
	
	$('[id^=modifyriNo-]').click(function() {
		var riNo = $(this).attr('id').replace('modifyriNo-', '');
		
		$("#modifyriNo2").val(riNo); 
	});
})
</script>
</html>