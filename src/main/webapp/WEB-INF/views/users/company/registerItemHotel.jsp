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
    margin: 0 0 13px;
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
/* .collapse {
    background: #fff;
    border: solid 1px #eee;
    padding: 42px 70px 70px;
    margin: auto;
    margin-top: 25px;
} */

.title-3 {
    font-size: 18px;
    font-weight: bold;
    margin: 51px 0 13px;
    color: #000;
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
		<h2 class="pagTit">등록된 Hotel OPTION 목록</h2>
		<div class="pagTitSub" style="text-align: center; margin-bottom: 25px;">
		</div>
			<div class="contBox">
				<table class="table" id="hotelOptionList">
				<colgroup>
					<col width="17%">
					<col width="20%">
					<%-- <col width="5%"> --%>
					<col width="12%">
					<col width="5%">
					<col width="12%">
					<%-- <col width="10%"> --%>
					<col width="7%">
					<%-- <col width="7%"> --%>
					<col width="*">
					<col width="7%">
				</colgroup>
				<thead>
					<tr style="background-color: #edadba;">
						<th>이미지</th>
						<th>업체명</th>
						<!-- <th>구분</th> -->
						<th>상품명</th>
						<th>타입</th>
						<th>가격</th>
						<!-- <th>잔여객실</th> -->
						<th>총 객실</th>
						<!-- <th>상태</th> -->
						<th>보유서비스</th>
						<th></th>
					</tr>
				</thead>
				<tbody style="font-size: 13px;">
				<c:choose>
					<c:when test="${empty hotelItems}">
						<tr>
							<td colspan="9" class="text-center" style="padding: 30px;">등록된 상품이 없습니다.</td>
						</tr>
					</c:when>
					<c:otherwise>
						<c:if test="${not empty hotelItems}">
							<c:forEach var="hotelItem" items="${hotelItems }">
								<c:if test="${hotelItem.hiStatus != 'DELETE' }">
								<tr class="hiList">
									<td><img class="img-thumbnail" src="../resources/image/${hotelItem.hhiImg }" style="width: 200px; height: 120px;"></td>
									<td>${hotelItem.htName }</td>
									<%-- <td>${hotelItem.cpType eq 'H' ? '호텔' : '' }</td> --%>
									<td>${hotelItem.hiName }</td>
									<td>${hotelItem.hiType }</td>
									<td><fmt:formatNumber value="${hotelItem.hiPrice }"/> 원</td>
									<%-- <td>${hotelItem.hiCount }</td> --%>
									<td>${hotelItem.hiQty } 개</td>
									<%-- <td>${hotelItem.hiStatus }</td> --%>
									<td>	
										<input type="hidden" name="optionList" id="optionList-${hotelItem.hiNo }" value="${hotelItem.hiNo }">
									</td>
									<td>
										<button class="btn btn-warning" id="modifyhiNo-${hotelItem.hiNo }" data-toggle="collapse" data-target="#modifyform" style="width: 54px; height: 32px; text-decoration: none; margin-bottom: 3px; font-size: 14px;">수정</button>
										<a href="delHotelItem.do?no=${hotelItem.hiNo }&cpNo=${param.no}" class="btn btn-danger" style="width: 54px; height: 32px; text-decoration: none; margin-bottom: 2px; font-size: 14px;">삭제</a>
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
			<form id="hotelItemForm" name="hotelItemForm" method="post" action="addHotelItem.do" enctype="multipart/form-data">
				<input name="cpNo" type="hidden" value="${param.no }">
				<h4 class="title-3 fc-1">호텔 옵션 추가</h4>
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
								
								<input type="hidden" name="htNo" value="${param.htNo }">
								<select id="hiName" name="hiName" style="height: 35px; padding: 0 8px; width: 240px;">
									<option value="">선택하세요.</option>
									<c:forEach var="hotelName" items="${hotelNames }">
									<option value="${hotelName.name }">${hotelName.name }</option>
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
								<select id="hiType" name="hiType" style="height: 35px; padding: 0 8px; width: 240px;">
									<option value="">선택하세요.</option>
									<c:forEach var="hotelType" items="${hotelTypes }">
									<option value="${hotelType.type }">${hotelType.type }</option>
									</c:forEach>
								</select>
							</td>
						</tr>
						<tr>
							<th scope="row">
								<span class="obligatory">
									<span class="blind"></span>가격
								</span>
							</th>
							<td class="fm">
								<input type="number" class="ipt fw-24" title="옵션가격" id="hiPrice" name="hiPrice" maxlength="20"> 원
							</td>
						</tr>
						<tr>
							<th scope="row">
								<span class="obligatory">
									<span class="blind"></span>잔여 객실
								</span>
							</th>
							<td class="fm">
								<input type="number" class="ipt fw-24" title="옵션수량" id="hiCount" name="hiCount" maxlength="20"> 개
							</td>
						</tr>
						<tr>
							<th scope="row">
								<span class="obligatory">
									<span class="blind"></span>총 객실
								</span>
							</th>
							<td class="fm">
								<input type="number" class="ipt fw-24" title="객실" id="hiQty" name="hiQty" maxlength="20"> 개
							</td>
						</tr>
						<tr>
							<th scope="row">
								<span class="obligatory">
									<span class="blind"></span>이미지
								</span>
							</th>
							<td class="fm">
								<input type="file" title="옵션이미지" id="resort_item_img" name="hiImg">
							</td>
						</tr>
						<tr>
							<th scope="row">
								<span class="obligatory">
									<span class="blind"></span>보유서비스
								</span>
							</th>
							<td class="fm">
								<span class="chkG">
									<span class="chkFm ty-3">
										<input type="checkbox" class="chk agree" id="garage" name="options" value="주차장">
										<span class="act"></span>
										<label for="garage" style="margin: 0;">주차장</label>
									</span>
									<span class="chkFm">
										<input type="checkbox" class="chk agree" id="restaurant" name="options" value="레스토랑"/>
										<span class="act"></span>
										<label for="restaurant" style="margin: 0;">레스토랑</label>
									</span>
									<span class="chkFm">
										<input type="checkbox" class="chk agree" id="pool" name="options" value="수영장"/>
										<span class="act"></span>
										<label for="pool" style="margin: 0;">수영장</label>
									</span>
									<span class="chkFm">
										<input type="checkbox" class="chk agree" id="singingroom" name="options" value="노래방"/>
										<span class="act"></span>
										<label for="singingroom" style="margin: 0;">노래방</label>
									</span>
									<span class="chkFm">
										<input type="checkbox" class="chk agree" id="snackbar" name="options" value="스낵바"/>
										<span class="act"></span>
										<label for="snackbar" style="margin: 0;">스낵바</label>
									</span>
									<span class="chkFm">
										<input type="checkbox" class="chk agree" id="tv" name="options" value="평면TV"/>
										<span class="act"></span>
										<label for="tv" style="margin: 0;">평면TV</label>
									</span>
									<span class="chkFm">
										<input type="checkbox" class="chk agree" id="airconditioner" name="options" value="에어컨"/>
										<span class="act"></span>
										<label for="airconditioner" style="margin: 0;">에어컨</label>
									</span>
									<span class="chkFm">
										<input type="checkbox" class="chk agree" id="airconditioner" name="options" value="헬스장"/>
										<span class="act"></span>
										<label for="fitness" style="margin: 0;">헬스장</label>
									</span>
								</span>
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
			<form id="hotelItemForm" name="hotelItemForm" method="post" action="updateHotelItem.do" enctype="multipart/form-data">
				<h4 class="title-3 fc-1">호텔 옵션 수정</h4>
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
								<input type="hidden" id="modifyhiNo2" name="hiNo">
								<c:forEach var="hotelItem" items="${hotelItems }">
								<input type="hidden" name="htNo" value="${hotelItem.htNo }">
								<input type="hidden" name="cpNo" value="${param.no }">
								</c:forEach>
								<select id="hiName" name="hiName" style="height: 35px; padding: 0 8px; width: 240px;">
									<option value="">선택하세요.</option>
									<c:forEach var="hotelName" items="${hotelNames }">
									<option value="${hotelName.name }">${hotelName.name }</option>
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
								<select id="hiType" name="hiType" style="height: 35px; padding: 0 8px; width: 240px;">
									<option value="">선택하세요.</option>
									<c:forEach var="hotelType" items="${hotelTypes }">
									<option value="${hotelType.type }">${hotelType.type }</option>
									</c:forEach>
								</select>
							</td>
						</tr>
						<tr>
							<th scope="row">
								<span class="obligatory">
									<span class="blind"></span>가격
								</span>
							</th>
							<td class="fm">
								<input type="number" class="ipt fw-24" title="옵션가격" id="hiPrice" name="hiPrice" maxlength="20"> 원
							</td>
						</tr>
						<tr>
							<th scope="row">
								<span class="obligatory">
									<span class="blind"></span>잔여 객실
								</span>
							</th>
							<td class="fm">
								<input type="number" class="ipt fw-24" title="옵션수량" id="hiCount" name="hiCount" maxlength="20"> 개
							</td>
						</tr>
						<tr>
							<th scope="row">
								<span class="obligatory">
									<span class="blind"></span>총 객실
								</span>
							</th>
							<td class="fm">
								<input type="number" class="ipt fw-24" title="객실" id="hiQty" name="hiQty" maxlength="20"> 개
							</td>
						</tr>
						<tr>
							<th scope="row">
								<span class="obligatory">
									<span class="blind"></span>이미지
								</span>
							</th>
							<td class="fm">
								<input type="file" title="옵션이미지" id="resort_item_img" name="hiImg">
							</td>
						</tr>
						<tr>
							<th scope="row">
								<span class="obligatory">
									<span class="blind"></span>보유서비스
								</span>
							</th>
							<td class="fm">
								<span class="chkG">
									<span class="chkFm ty-3">
										<input type="checkbox" class="chk agree" id="garage" name="options" value="주차장">
										<span class="act"></span>
										<label for="garage" style="margin: 0;">주차장</label>
									</span>
									<span class="chkFm">
										<input type="checkbox" class="chk agree" id="restaurant" name="options" value="레스토랑"/>
										<span class="act"></span>
										<label for="restaurant" style="margin: 0;">레스토랑</label>
									</span>
									<span class="chkFm">
										<input type="checkbox" class="chk agree" id="pool" name="options" value="수영장"/>
										<span class="act"></span>
										<label for="pool" style="margin: 0;">수영장</label>
									</span>
									<span class="chkFm">
										<input type="checkbox" class="chk agree" id="singingroom" name="options" value="노래방"/>
										<span class="act"></span>
										<label for="singingroom" style="margin: 0;">노래방</label>
									</span>
									<span class="chkFm">
										<input type="checkbox" class="chk agree" id="snackbar" name="options" value="스낵바"/>
										<span class="act"></span>
										<label for="snackbar" style="margin: 0;">스낵바</label>
									</span>
									<span class="chkFm">
										<input type="checkbox" class="chk agree" id="tv" name="options" value="평면TV"/>
										<span class="act"></span>
										<label for="tv" style="margin: 0;">평면TV</label>
									</span>
									<span class="chkFm">
										<input type="checkbox" class="chk agree" id="airconditioner" name="options" value="에어컨"/>
										<span class="act"></span>
										<label for="airconditioner" style="margin: 0;">에어컨</label>
									</span>
									<span class="chkFm">
										<input type="checkbox" class="chk agree" id="airconditioner" name="options" value="헬스장"/>
										<span class="act"></span>
										<label for="fitness" style="margin: 0;">헬스장</label>
									</span>
								</span>
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
	$("#hotelItemForm").submit(function(event) {
		var hiName = $("#hiName").val();
		var hiType = $("#hiType").val();
		var hiPrice = $("#hiPrice").val().trim();
		var hiCount = $("#hiCount").val().trim();
		var hiQty = $("#hiQty").val().trim();
		
		if(hiName == '') {
			alert("옵션명을 선택하세요.");
			return false;
		}
		if(hiType == '') {
			alert("타입을 선택하세요.");
			return false;
		}
		if(!hiPrice) {
			alert("가격을 입력하세요.");
			return false;
		}
		if(!hiCount) {
			alert("잔여 객실 수량을 입력하세요.");
			return false;
		}
		if(!hiQty) {
			alert("총 객실 수량을 입력하세요.");
			return false;
		}
		return true;
	});
	
	
	$("input[name^='optionList']").each(function(index, el) {
		var no = $(el).val();

		$.ajax({
			type: 'GET',
			url: '../ajax/optionList.do?oNo='+no,
			dataType: 'json',
			success: function(options) {
				var row = "";
				
				$.each(options, function(index, option) {
					row += "<label class='label label-default' style='font-size: 13px !important; line-height: 2 !important;'>"+option.name+"</label> ";
					if (index%3 == 2) {
						row += "<br>"
					}
				});
				$("#optionList-" + no).after(row);
			}
		}); 
	});
	
	$('[id^=modifyhiNo-]').click(function() {
		var hiNo = $(this).attr('id').replace('modifyhiNo-', '');
		
		$("#modifyhiNo2").val(hiNo); 
		
	});
	
})
</script>
</html>