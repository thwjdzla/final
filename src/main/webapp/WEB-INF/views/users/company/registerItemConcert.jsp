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
.table th, .table td{
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
		<h2 class="pagTit">등록된 CONCERT OPTION 목록</h2>
		<div class="pagTitSub" style="text-align: center; margin-bottom: 25px;">
		</div>
			<div class="contBox">
				<table class="table" id="tb-2">
				<colgroup>
					<col width="17%">
					<col width="*%">
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
						<th>날짜</th>
						<th>상품명</th>
						<th>가격</th>
						<th>재고</th>
						<th>상태</th>
						<th></th>
					</tr>
				</thead>
				<tbody>
				<c:choose>
					<c:when test="${empty concertItems}">
						<tr>
							<td colspan="9" class="text-center" style="padding: 30px;">등록된 상품이 없습니다.</td>
						</tr>
					</c:when>
					<c:otherwise>
						<c:if test="${not empty concertItems }">
							<c:forEach var="concertItem" items="${concertItems }">
								<c:if test="${concertItem.ciStatus != 'DELETE' }">
								<tr>
									<td><img class="img-thumbnail" src="../resources/image/${concertItem.cciImg }" style="width: 200px; height: 120px;"></td>
									<td id="modifyccName-${concertItem.ciNo }">${concertItem.ccName }</td>
									<%-- <td>${concertItem.cpType eq 'C' ? '콘서트' : '' }</td> --%>
									<td id="modifyciDate-${concertItem.ciNo }">${concertItem.ciDate }</td>
									<td id="modifyciName-${concertItem.ciNo }">${concertItem.ciName }</td>
									<td><fmt:formatNumber value="${concertItem.ciPrice }"/> 원</td>
									<td>${concertItem.ciQty }</td>
									<td><label class="label label-${concertItem.ciStatus eq '매진' ? 'danger' : 'default'}" style="font-size: 14px !important;">${concertItem.ciStatus }</label></td>
									<td>
										<a href="#" id="modify-${concertItem.ciNo }" data-toggle='modal' data-target='#updateModal' class="btn btn-warning" style="width: 54px; height: 32px; text-decoration: none; margin-bottom: 3px; font-size: 14px;">수정</a>
										<a href="delConcertItem.do?no=${concertItem.ciNo }&cpNo=${param.no}" class="btn btn-danger" style="width: 54px; height: 32px; text-decoration: none; margin-bottom: 2px; font-size: 14px;">삭제</a>
									</td>
								</tr>
								</c:if>
							</c:forEach>
						</c:if>
					</c:otherwise>
				</c:choose>
					<tr>
						<td colspan="8">
							<button class="w3-btn w3-red pull-right" data-toggle="collapse" data-target="#addform" style="border: 1px solid transparent; border-radius: 4px; width: 54px !important; height: 32px !important; padding: 6px 12px; background-color: #e87a92 !important; border-color: #e87a92; text-decoration: none; margin-bottom: 2px; margin-right: 28px; font-size: 14px;">추가</button>
						</td>
					</tr>
				</tbody>
			</table>
			<div class="btnArea-1">
				<a href="../board/registeredList.do" class="w3-btn w3-red" style="width: 126px !important; padding: 19px 32px; background-color: #e87a92 !important; text-decoration: none;">목록</a>
			</div>
			
		<div id="addform" class="collapse">
			<form id="concertItemForm" name="concertItemForm" method="post" action="addConcertItem.do" enctype="multipart/form-data">
			<input name="cpNo" type="hidden" value="${param.no }">		
			<input name="ccNo" type="hidden" value="${param.ccNo }">		
			<h4 class="title-3 fc-1">콘서트 옵션</h4>
				<table class="tb-1 tbData" style="margin: 20px auto; width: 100%;">
					<colgroup>
						<col width="175px">
						<col width="130px">
						<col width="120px">
						<col width="130px">
						<col width="120px">
						<col width="140px">
						<col width="120px">
					</colgroup>
					<tbody>
						<tr>
							<th scope="row">
								<span class="obligatory">
									<span class="blind"></span>날짜
								</span>
							</th>
							<td class="fm" colspan="3">
								시작일: <input type="date" class="ipt fw-24" title="날짜" id="ciDate" name="startDate" maxlength="20" style="vertical-align: middle;">
							</td>
							<td class="fm" colspan="3">
								종료일: <input type="date" class="ipt fw-24" title="날짜" id="ciDate" name="endDate" maxlength="20" style="vertical-align: middle;">
							</td>
						</tr>
						
						<tr>
							<th scope="row">
								<span class="obligatory">
									<span class="blind"></span>VIP 옵션
								</span>
							</th>
							<td class="fm">
								가격:
							</td>
							<td class="fm">
								<input name="price" type="number" style="width:120px">		
							</td>
							<td class="fm">
								수량:
							</td>
							<td class="fm">
								<input name="qty" type="number" style="width:120px">	
							</td>
							<td class="fm">
								이미지:
							</td>
							<td class="fm">
								<input type="file" title="좌석이미지" id="ciImg" name="img">	
							</td>
						</tr>
						<tr>
							<th scope="row">
								<span class="obligatory">
									<span class="blind"></span>R 옵션
								</span>
							</th>
							<td class="fm">
								가격:
							</td>
							<td class="fm">
								<input name="price" type="number" style="width:120px">		
							</td>
							<td class="fm">
								수량:
							</td>
							<td class="fm">
								<input name="qty" type="number" style="width:120px">	
							</td>
							<td class="fm">
								이미지:
							</td>
							<td class="fm">
								<input type="file" title="좌석이미지" id="ciImg" name="img">	
							</td>
						</tr>
						<tr>
							<th scope="row">
								<span class="obligatory">
									<span class="blind"></span>S 옵션
								</span>
							</th>
							<td class="fm">
								가격:
							</td>
							<td class="fm">
								<input name="price" type="number" style="width:120px">		
							</td>
							<td class="fm">
								수량:
							</td>
							<td class="fm">
								<input name="qty" type="number" style="width:120px">	
							</td>
							<td class="fm">
								이미지:
							</td>
							<td class="fm">
								<input type="file" title="좌석이미지" id="ciImg" name="img">	
							</td>
						</tr>
						 
					</tbody>
				</table>
				<div class="btnArea-1">
					<button type="submit" class="w3-btn w3-red" style="width: 126px !important; padding: 19px 32px; background-color: #e87a92 !important; text-decoration: none;">등록</button>
				</div>
			</form>
			</div>
		</div>
	</div>
		<div class="modal fade" id="updateModal" tabindex="-1" role="dialog"
			aria-labelledby="updateModalLabel" aria-hidden="true">
			<div class="modal-dialog" role="document">
				<div class="modal-content">
					<div class="modal-header">
						<h5 class="modal-title" id="weatherModalLabel"></h5>
						<button type="button" class="close" data-dismiss="modal"
							aria-label="Close">
							<span aria-hidden="true">&times;</span>
						</button>
					</div>
					<div class="modal-body">
						<form id="updateConcertItemForm" name="updateConcertItemForm" method="post"
							action="updateConcertItem.do" enctype="multipart/form-data">
							<input name="cpNo" type="hidden" value="${param.no }">
							<input name="ciNo" id="setNo" type="hidden" value="">
							<h4 class="fc-1" style="margin: 0px !importanat; font-size: 18px; font-weight: bold;">콘서트 옵션 수정</h4>
							<table class="tb-1 tbData"
								style="margin: 20px auto; width: 100%;">
								<colgroup>
									<col width="175px">
									<col width="*">
								</colgroup>
								<tbody>
									<tr>
										<th scope="row"><span class="obligatory"> <span
												class="blind"></span>콘서트명
										</span></th>
										<td class="fm">
											<input type="text" id="ccName1" name="ccName" style="height: 35px; padding: 0 8px; width: 240px;" disabled="disabled">
										</td>
									</tr>
									<tr>
										<th scope="row">
											<span class="obligatory"><span class="blind"></span>날짜</span>
										</th>
										<td class="fm">
											<input type="text" class="ipt fw-24" title="날짜" id="ciDate1" name="ciDate" maxlength="20" style="vertical-align: middle;" disabled="disabled">
										</td>
									</tr>
									<tr>
										<th scope="row"><span class="obligatory"> <span
												class="blind"></span>좌석명
										</span></th>
										<td class="fm"><span class="radG fmMgL"> <span
												class="radFm"> <input type="radio" class="rad"
													id="seatcode1" name="ciName" value="VIP석" disabled="disabled">
													<span class="act"></span> <label for="seatA"
													style="margin: 0;">VIP석</label>
											</span> <span class="radFm"> <input type="radio" class="rad"
													id="seatcode2" name="ciName" value="R석" disabled="disabled"> <span
													class="act"></span> <label for="seatB" style="margin: 0;">R석</label>
											</span> <span class="radFm"> <input type="radio" class="rad"
													id="seatcode3" name="ciName" value="S석" disabled="disabled"> <span
													class="act"></span> <label for="seatC" style="margin: 0;">S석</label>
											</span>
										</span></td>
									</tr>
									<tr>
										<th scope="row"><span class="obligatory"> <span
												class="blind"></span>가격
										</span></th>
										<td class="fm"><input type="number" class="ipt fw-24"
											title="가격" id="ciPrice" name="ciPrice" maxlength="20">
											원</td>
									</tr>
									<tr>
										<th scope="row"><span class="obligatory"> <span
												class="blind"></span>좌석수량
										</span></th>
										<td class="fm"><input type="number" class="ipt fw-24"
											title="좌석수량" id="ciQty" name="ciQty" maxlength="20">
											개</td>
									</tr>
									<tr>
										<th scope="row"><span class="obligatory"> <span
												class="blind"></span>좌석 이미지
										</span></th>
										<td class="fm"><input type="file" title="좌석이미지"
											id="ciImg" name="ciImg"></td>
									</tr>
								</tbody>
							</table>
							<div class="btnArea-1">
								<button type="submit" class="w3-btn w3-red"
									style="width: 126px !important; padding: 19px 32px; background-color: #e87a92 !important; text-decoration: none;">등록</button>
							</div>
						</form>
					</div>
					<div class="modal-footer">
						<button type="button" class="btn"
							style="margin: 2px; background-color: pink; color: white"
							data-dismiss="modal">닫기</button>
					</div>
				</div>
			</div>
		</div>
	</div>
<%@include file="../../include/footer.jsp" %>
</body>
<script type="text/javascript">
$(function() {
	$("#concertItemForm").submit(function(event) {
		//var ccNo = $("#ccNo").val();

		//if(ccNo == '') {
		//	alert("콘서트명을 선택하세요.");
		//	return false;
		//}
		return true;
	})
	
	$("#tb-2").on('click', '[id^=modify-]', function() {
		
		var no = $(this).attr('id').replace('modify-', '');
		
		$("#setNo").val(no);
		
		
		var ccName = $("#modifyccName-"+no).text();
		$("#ccName1").val(ccName);
		
		var ciDate = $("#modifyciDate-"+no).text();
		$("#ciDate1").val(ciDate);
		
		var ciName = $("#modifyciName-"+no).text();
		
		if (ciName == $("#seatcode1").val()) {
			
			console.log($("#seatcode1").val());
			$("#seatcode1").prop("checked", true);
		}
		
		if (ciName == $("#seatcode2").val()) {
			
			$("#seatcode2").prop("checked", true);
		}
		
		if (ciName == $("#seatcode2").val()) {
			
			$("#seatcode2").prop("checked", true);
		}
	});
	
})
</script>
</html>