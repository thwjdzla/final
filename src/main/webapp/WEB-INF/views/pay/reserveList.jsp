<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
  <title>Party Mix</title>
  <style type="text/css">
  	input[name=refund-price] {
  		font-size: 20px;
  		font-weight: bolder;
  	}
  	.table tr:last-child th{
  		padding-top: 20px;
  		padding-bottom: 20px;
  	}
  	.table tr td:last-child{
  		border: solid 0;
  		border-bottom-width: 1px;
  		border-color: #E6E6E6;
  	}
  	.table tr:last-child{
  		border: solid 0;
  		border-bottom-width: 1px;
  		border-color: #E6E6E6;
  	}
  	.pagTitSub1 {
    position: relative;
    font-family: Arial;
    background-image: url("../final/resources/image/bubble1.gif");
    height: 524px; width: 1072px; text-align:center; margin:auto;
}
.text-block {
    position: absolute;
    color: white;
    padding-left: 20px;
    padding-right: 20px;
    top: 33%;
    left: 50%;
    transform: translate(-50%, -50%);
    text-align : center;
}
  </style>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/numeral.js/2.0.6/numeral.min.js"></script>
</head>
<body>
<%@include file="../include/nav.jsp" %>
<%@ include file="../include/mypagenav.jsp" %>
<div class="container" style="min-height:600px">	
		<table class="table">
		<colgroup>
			<col width="10%">
			<col width="*%">
			<col width="20%">
			<col width="10%">
			<col width="10%">
		</colgroup>
		<thead>
			<tr>
				<th colspan="3" style="color:#d36179">
					<h1>예약 내역</h1>
				</th>
				<th colspan="2" style="color:#d36179; padding-right: 0px;">
					<p>
						<span class="pull-right">
							<select id="paging-select">
								<option>전체 보기</option>
								<option>결제 내역 </option>
								<option>환불 요청 내역</option>
								<option>환불 내역 </option>
							</select>
						</span>
					</p>
				</th>
			</tr>
			<tr>
				<th>예약번호</th>
				<th>상품내역</th>
				<th>예약날짜</th>
				<th>결제여부</th>
				<th></th>
			</tr>
		</thead>
		<tbody id="ajax-table">
		</tbody>
	</table>
	<nav aria-label="Page navigation example" style="text-align: center;">
		<ul class="pagination">
	  	</ul>
	</nav>
	<input type="hidden" name="userNo" value="${userNo}" id="user-no"/>
</div>
<%@include file="../include/footer.jsp" %>
</body>
<script type="text/javascript">
	$(function() {
		var isExist = true;
		var data = {};
		var reserveCount = ${reserveCount};
		var maxP = Math.ceil(reserveCount / 10);
		var currentPage = 1;
		var minPage = 1;
		var maxPage;
		var startPage;
		var page = "";
		minAndMax();
		createPageBtn();
		start();
		
		function minAndMax() {
			if (maxP > 5 && currentPage > 2) {
				minPage = currentPage - 2;
				maxPage = currentPage + 2;
			}
			if (maxP <= 5 && currentPage < 4) {
				minPage = 1;
				maxPage = maxP;
			}
			if (maxP > 5 && currentPage + 2 > maxP) {
				minPage = maxP - 5;
				maxPage = maxP;
			}
		}
		
		function createPageBtn() {
			page = "";
			$(".pagination").empty();
			for (startPage = minPage; startPage <= maxPage; startPage++) {
				page += '<li class="page-item"><a class="page-link" href="#">'+startPage+'</a></li>'
			}
			$(".pagination").append(page);
		}
		
		$(".pagination li:first-child").addClass('active');
		$(".pagination").on('click', '.page-link', function() {
			currentPage = $(this).text();
			$(".page-item").removeClass('active');
			data["userNo"] = $("#user-no").val();
			data["status"] = $("#paging-select").val();
			data["min"] = (parseInt($(this).text()) * 10) - 9;
			data["max"] = parseInt($(this).text()) * 10;
			$(this).parents("li").addClass('active');
			paging(data);
			minAndMax();
		});
		
		$("input[name='refund-price']").each(function() {
			return $(this).val(numeral($(this).val()).format('0,0') + "원");
		});
		
		$("#refund-btn").click(function() {
			$("#refund-modal").modal({backdrop: 'static', keyboard: false});
		});
		$('#ajax-table').on('shown.bs.modal','[id^="refund-modal"]', function() {
			var reserveNo = $(this).attr('id').replace("refund-modal", "");
			var $reason = $(this).find("textarea[name='reason']");
			$("#ajax-table").on('click', '#btn-refund-todo'+reserveNo, function() {
				$('#refund-form'+reserveNo).find("input[name=reason]").val($reason.val());
				$('#refund-form'+reserveNo).find("input[name=userNo]").val($("#user-no").val());
				$('#refund-form'+reserveNo).submit();
			})
		});
		
		$("#ajax-table").on('click', '.warn', function() {
			if (isExist) {
				$(".warning-contents").show();
				isExist = !isExist
			} else {
				$(".warning-contents").hide();
				isExist = !isExist
			}
		});
		
		$("#paging-select").on('change', function() {
			start();
		});
		
		function start() {
			data["userNo"] = $("#user-no").val();
			data["status"] = $("#paging-select").val();
			data["min"] = 1;
			data["max"] = 10;
			newPage(data);
			paging(data);
		}
		
		function paging(data) {
			$.ajax({
				contentType:"application/json;charset=UTF-8",
				type:'POST',
				url:'ajax/userReserveList.do',
				dataType:'json',
				data:JSON.stringify(data),
				success:function(reserves){
					row = '<tr>';
					if (reserves.length) {
						$.each(reserves, function(index, reserve) {
							row += '<td>' + reserve.reserveNo + '</td>';
							if (reserve.checkIn == reserve.checkOut && reserve.item == null) {
								row += '<td><a style="color:#d36179" data-toggle="modal" data-target="#reserve-modal' 
										+ reserve.reserveNo + '">' + reserve.packageName + '</a>';
							} else if (reserve.checkIn == reserve.checkOut) {
								row += '<td><a style="color:#d36179" data-toggle="modal" data-target="#reserve-modal' 
									+ reserve.reserveNo + '">[' + reserve.item.name + '] ' + reserve.packageName + '</a>';
							} else {
								row += '<td><a style="color:#d36179" data-toggle="modal" data-target="#reserve-modal' 
									+ reserve.reserveNo + '">[' + reserve.item.name + '] ' + reserve.packageName + '</a>';
							}
							row += '<div id="reserve-modal' + reserve.reserveNo + '" class="modal fade" role="dialog">';
							row += '<div class="modal-dialog">';
							row += '<div class="modal-content">';
							row += '<div class="modal-header">';
							row += '<button type="button" class="close" data-dismiss="modal">&times;</button>';
							row += '<h4  style="color:#d36179" class="modal-title">예약 상세</h4>';
							row += '</div>';
							row += '<div class="modal-body">';
							row += '<table class="table">';
							row += '<thead>';
							row += '<tr>';
							row += '<th>상품명</th>';
							if (reserve.checkIn == reserve.checkOut && reserve.item == null) {
								row += '<td>' + reserve.packageName + ',&nbsp;' + reserve.count + '장</td>';
							} else if (reserve.checkIn == reserve.checkOut) {
								row += '<td>[' + reserve.item.name + '] ' + reserve.packageName + ',&nbsp;' + reserve.count + '장</td>';
							} else {
								row += '<td>[' + reserve.item.name + '] ' + reserve.packageName + ',&nbsp;' + reserve.count + '박</td>';
							}
							row += '</tr>';
							row += '<tr>';
							row += '<th>예약 날짜</th>';
							row += '<td>시작: ' + reserve.checkIn + ' ~ 종료: ' + reserve.checkOut + '</td>';
							row += '</tr>';
							row += '<tr>';
							row += '<th>결제</th>';
							row += '<td>가격 :' + numeral(reserve.price).format('0,0') + '원 (' + reserve.status + ')</td>';
							row += '</tr>';
							row += '<tr>';
							if (reserve.item != null) {
								if (reserve.item.phone != null) {
									row += '<th>연락처</th>';
									row += '<td>';
									row += 'PHONE : ' + reserve.item.phone + '<br/>';
									row += 'TELL : ' + reserve.item.tel;
									row += '</td>';
								}
							}
							row += '</tr>';
							row += '</thead>';
							row += '</table>';
							row += '</div>';
							row += '<div class="modal-footer">';
							row += '<button type="button" class="btn btn-default" data-dismiss="modal">돌아가기</button>';
							row += '</div>';
							row += '</div>';
							row += '</div>';
							row += '</div>';
							row += '</td>';
							row += '<td>' + reserve.checkIn + ' ~ ' + reserve.checkOut + '</td>';
							row += '<td>' + reserve.status + '</td>';
							row += '<td>';
							if (reserve.difDay && reserve.status == "결제") {
								row += '<div class="row">';
								row += '<button id="refund-btn" class="btn btn-danger btn-xs" data-toggle="modal" data-target="#refund-modal' 
										+ reserve.reserveNo + '">환불</button>';
								row += '</div>';
							}
							row += '<div id="refund-modal' + reserve.reserveNo + '" class="modal fade" role="dialog">';
							row += '<div class="modal-dialog">';
							row += '<div class="modal-content">';
							row += '<div class="modal-header">';
							row += '<button type="button" class="close" data-dismiss="modal">&times;</button>';
							row += '<h4 style="color:#d36179" class="modal-title">예약 취소</h4>';
							row += '</div>';
							row += '<div class="modal-body">';
							row += '<form>';
							row += '<p class="form-group">';
							row += '<span>예약 상품 정보</span>';
							row += '</p>';
							row += '<div class="form-group refund-detail">';
							row += '<label>번호</label> <input type="text" value="' 
									+ reserve.reserveNo + '" class="form-control" name="no" readonly/>';
							row += '</div>';
							row += '<div class="form-group refund-detail">';
							row += '<label>상품 이름</label> <input type="text" class="form-control" name="name" value="'
							 		+ reserve.packageName + '" readonly />';
							row += '</div>';
							row += '<div class="form-group refund-detail">';
							row += '<label>예약 일자</label> <input type="date" value="' 
									+ reserve.reserveDate + '" class="form-control"';
							row += 'name="date" readonly />';
							row += '</div>';
							row += '<div class="form-group">';
							row += '<label>취소 사유</label>';
							row += '<textarea rows="3" class="form-control" name="reason"';
							row += 'style="resize: none;"></textarea>';
							row += '</div>';
							row += '<div class="form-group refund-detail">';
							row += '<label style="width: 100%; color: red;">환불 금액';
							row += '<span class="pull-right warn" style="cursor: pointer;">주의사항!</span>';
							if (reserve.checkIn == reserve.checkOut) {
								row += '<div style="text-align: center;" class="warning-contents">';
								row += '<p>※ 취소수수료 안내</p>';
								row += '<p>- 7일전 - 100% 환불</p>';
								row += '<p>- 1일전 - 90% 환불</p>';
								row += '<p>- 당일 - 환불 불가</p>';
								row += '</div>';
							}
							if (reserve.checkIn != reserve.checkOut) {
								row += '<div style="text-align: center;" class="warning-contents">';
								row += '<p>※ 취소수수료 안내</p>';
								row += '<p>- 입실 7일전 - 100% 환불</p>';
								row += '<p>- 입실 6일전 - 90% 환불</p>';
								row += '<p>- 입실 5일전 - 85% 환불</p>';
								row += '<p>- 입실 4일전 - 80% 환불</p>';
								row += '<p>- 입실 3일전 - 70% 환불</p>';
								row += '<p>- 입실 2일전 - 50% 환불</p>';
								row += '<p>- 입실 1일전 - 30% 환불</p>';
								row += '<p>- 입실일 - 환불 불가</p>';
								row += '</div>';
							}
							row += '</label> <input type="text" class="form-control" name="refund-price" readonly value="' 
									+ numeral(reserve.refundPrice).format('0,0') + '원" style="text-align: right"/>';
							row += '</div>';
							row += '</form>';
							row += '</div>';
							row += '<div class="modal-footer">';
							row += '<button class="btn" style="background-color:#d36179; color:white" id="btn-refund-todo' 
									+ reserve.reserveNo + '">예약';
							row += '취소 하기</button>';
							row += '<button type="button" class="btn btn-default" data-dismiss="modal">돌아가기</button>';
							row += '<form id="refund-form' + reserve.reserveNo + '" action="user-refund.do">';
							row += '<input type="hidden" name="userNo" value=""/>';
							row += '<input type="hidden" name="reserveNo" value="' + reserve.reserveNo + '"/>';
							row += '<input type="hidden" name="packageNo" value="' + reserve.packageNo + '"/>';
							row += '<input type="hidden" name="refundPrice" value="' + reserve.refundPrice +'"/>';
							row += '<input type="hidden" name="reason" value=""/>';
							row += '</form>';
							row += '</div>';
							row += '</div>';
							row += '</div>';
							row += '</div>';
							row += '</td>';
							row += '</tr>';
						});
					} else {
						row += '<tr style="text-align: center; font-size: 40px;">';
						row += '<td colspan="5"><div class="pagTitSub1"><div class="text-block"><h4 style="font-size: 50px !important; width:550px;">내역이 없습니다.</h4></div></div></td>';
						row += '</tr>';
					}
					$("#ajax-table").empty();
					$("#ajax-table").append(row);
					$(".warning-contents").hide();
				}
			});
		}
		function newPage(data) {
			$.ajax({
				contentType:"application/json;charset=UTF-8",
				type:'POST',
				url:'ajax/userReserveListCount.do',
				dataType:'text',
				data:JSON.stringify(data),
				success:function(count){
					reserveCount = parseInt(count);
					maxP = Math.ceil(reserveCount / 10);
					currentPage = 1;
					minAndMax();
					createPageBtn();
					$(".page-item").removeClass('active');
					$(".pagination li:first-child").addClass('active');
				}
			});
		}
	})
</script>
</html>