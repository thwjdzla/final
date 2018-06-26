<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
  <title>Party Mix</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
  <style type="text/css">
  	.nav-pills>li.active>a, .nav-pills>li.active>a:focus, .nav-pills>li.active>a:hover {
    background-color: #e87a92; 
}
.pagTitSub1 {
    position: relative;
    font-family: Arial;
    background-image: url("../resources/image/bubble.gif");
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
.whimg img {
  	height: 350px; width: 100%; text-align:center; margin:auto;
  }
  </style>
</head>
<body>
<%@ include file="../../include/nav.jsp" %>
<%@ include file="../../include/mypagenav.jsp" %>
	<div class="container" style="font-family: '맑은 고딕';">
		<div class="whimg">
			<img src="../resources/image/package.gif">
		</div>
		<ul class="nav nav-pills nav-justified">
			<li><a href="packagelist.do" style="color: #e87a92 !important; font-weight: bold;">믹스업 광고 게시판</a></li>
			<li><a href="mypa.do" style="color: #e87a92 !important; font-weight: bold;">내가 등록한 목록</a></li>
			<li class="active"><a href="mypr.do" style="font-weight: bold;">내가 신청한 목록</a></li>
		</ul>
		<div style="height: 25px;"></div>
		
		<table class="table" id="pa-table">
				<colgroup>
					<col width="10%" />
					<col width="*" />
					<col width="10%" />
					<col width="15%" />
					<col width="7%" />
					<col width="5%" />
				</colgroup>
				<thead>
					<tr style="color: #e778a1">
						<th>번호</th>
						<th>제목</th>
						<th>아이디</th>
						<th>작성일</th>
						<th>믹스업</th>
						<th></th>
					</tr>
				</thead>
				<tbody>
				</tbody>
			</table>
			<a href="addform.do"><button class="btn btn-default pull-right"style="background-color: #e87a92; color: #fff; border-color: #e87a92;">MixUp 신청</button></a>
			<nav id="pn-nav" style="text-align: center">
				<ul class="pagination">
					<c:forEach var="count" begin="1" end="${page}">
						<li>
							<c:choose>
								<c:when test="${count eq (pagecount+1)}">
									<a style="background-color: #e799a3; color: white;" id="page-count-${count }">${count }</a>
								</c:when>
								<c:otherwise>
									<a style="color: #e799a3;" id="page-count-${count }">${count }</a>
								</c:otherwise>
							</c:choose>
						</li>
					</c:forEach>
				</ul>
			</nav>
		
		<div id="pa-modal" class="modal fade" role="dialog">
			<div class="modal-dialog">
				<div class="modal-content">
					<div class="modal-header" style="background-color: #e87a92; color: white; font-weight: bold;">
						<button type="button" class="close" data-dismiss="modal">&times;</button>
						<h4 class="modal-title" id="user-id-form"></h4>
					</div>
					<form class="well" action="cancle.do" method="post" style="background-color: white; text-align: center;">
					<input type="hidden" id="cancle-no" name="cancleNo" value="">
					<input type="hidden" id="cancle-status" name="cancleStatus" value="">
					<input type="hidden" id="user-no" name="user-no" value="${LOGIN_USER.no }">
					<div class="modal-body">
						<table class="table">
							<colgroup>
								<col width="20%">
								<col width="30%">
								<col width="20%">
								<col width="30%">
							</colgroup>
							<tbody id="pa-body">
							</tbody>
						</table>
					</div>
					<div class="modal-footer">
						<button type="submit" class="btn btn-danger">계약취소</button>
						<button type="button" class="btn btn-default" data-dismiss="modal">닫기</button>
					</div>
					</form>
				</div>
			</div>
		</div>
	</div>
</body>
<script type="text/javascript">
$(function() {
	
	var pagecount = 0;
	
	var userNo = $("#user-no").val();
	
	$.ajax({
		type : "GET",
		url : "../ajax/packageReceiver.do",
		dataType : "json",
		data : {
			count : pagecount
		},
		success : function(results) {
			var row = "";
			
			if (results.length == 0) {
				$('#pa-table tbody').html('');
				row += "<tr><td colspan='6'><div class='pagTitSub1' style='height: 650px; width: 1072px; text-align:center; margin:auto;'><div class='text-block'><h4 style='font-size: 50px !important;'>신청 내역이 없습니다.</h4></div></div></td></tr>";
				$("#pa-table tbody").append(row);
			} else {
				$.each(results, function(index, pa) {
					$('#pa-table tbody').html('');
					
					row += "<tr>"
						row += "<td>"+pa.no+"</td>"
						row += "<td>"+pa.title+"</td>"
						row += "<td>"+pa.userId+"</td>"
						row += "<td>"+pa.simpleStartDate+"</td>"
						if (pa.ruNo == userNo && pa.status == 'N') {
							row += "<td>진행중</td>"
							row += "<td><button type='button' data-toggle='modal' data-target='#pa-modal' class='btn btn-primary btn-xs' id='detail-btn-"+pa.no+"'>계약중</button></td>"
						} else if (pa.prStatus == 'C') {
							row += "<td>완료</td>"
							row += "<td><button type='button' class='btn btn-warning btn-xs' disabled>취소</button></td>"
						} else if (pa.status == 'F') {
							row += "<td>완료</td>"
							row += "<td><button type='button' class='btn btn-danger btn-xs' disabled>파기</button></td>"
						} else {
							row += "<td>대기중</td>"
							row += "<td><button type='button' data-toggle='modal' data-target='#pa-modal' class='btn btn-default btn-xs' id='detail-btn-"+pa.no+"'>상세</button></td>"
						}
					row += "</tr>"
					
					$("#pa-table tbody").append(row);
				})
			}
		}
	});
	
	$('#pn-nav ul').on('click','li a', function() {
		var count = $(this).attr('id').replace('page-count-', '');
		pagecount = count - 1;
		$('#pn-nav ul li a').attr('style', 'color:#e799a3; background-color:white');
		$(this).attr('style', 'color:white; background-color:#e799a3');
		
		$.ajax({
			type : "GET",
			url : "../ajax/packageReceiver.do",
			dataType : "json",
			data : {
				count : pagecount
			},
			success : function(results) {
				var row = "";
				
				if (results.length == 0) {
					$('#pa-table tbody').html('');
					row += "<tr><td colspan='6' style='text-align:center;'><div class='pagTitSub1' style='height: 650px; width: 1124px;'><div class='text-block'><h4>신청 내역이 없습니다.</h4></div></div></td></tr>";
					$("#pa-table tbody").append(row);
				} else {
					$.each(results, function(index, pa) {
						$('#pa-table tbody').html('');
						
						row += "<tr>"
							row += "<td>"+pa.no+"</td>"
							row += "<td>"+pa.title+"</td>"
							row += "<td>"+pa.userId+"</td>"
							row += "<td>"+pa.simpleStartDate+"</td>"
							if (pa.ruNo == userNo && pa.status == 'N') {
								row += "<td>진행중</td>"
								row += "<td><button type='button' data-toggle='modal' data-target='#pa-modal' class='btn btn-primary btn-xs' id='detail-btn-"+pa.no+"'>계약중</button></td>"
							} else if (pa.prStatus == 'C') {
								row += "<td>완료</td>"
								row += "<td><button type='button' class='btn btn-warning btn-xs' disabled>취소</button></td>"
							} else if (pa.status == 'F') {
								row += "<td>완료</td>"
								row += "<td><button type='button' class='btn btn-danger btn-xs' disabled>파기</button></td>"
							} else {
								row += "<td>대기중</td>"
								row += "<td><button type='button' data-toggle='modal' data-target='#pa-modal' class='btn btn-default btn-xs' id='detail-btn-"+pa.no+"'>상세</button></td>"
							}
						row += "</tr>"
						
						$("#pa-table tbody").append(row);
					})
				}
			}
		});
	});
	
	$("#pa-table").on('click', '[id^=detail-btn]', function() {
		
		$("#pa-body").empty();
		$("#user-id-form").empty();
		var no = $(this).attr('id').replace('detail-btn-', '');
		$("#pa-no").val(no);
		
		$.ajax({
			type:'GET',
			url:'../ajax/getUserPaNo.do?no='+no,
			dataType:'json',
			success:function(user) {
				var userId = "업체 대표자 : "+user.name;
				$("#user-id-form").append(userId);
			}
		})
		
		function getItem(itemNo, type) {
			$.ajax({
				type:'GET',
				url:'../ajax/getItem.do?ino='+itemNo+'&type='+type,
				dataType:'json',
				success:function(item) {
					var itemName = item.name;
					var itemImg = "<img class='img-thumbnail' src='../resources/image/"+item.img+"' style='width:400px; height:300px;' />";
					var itemPrice = item.priceFmt + " 원";
					console.log(itemImg);
					$("#item-row-name").append(itemName);
					$("#item-row-img").append(itemImg);
					$("#item-row-price").append(itemPrice);
				}
			});
		}
		
		$.ajax({
			type:'GET',
			url:'../ajax/pa.do?no='+ no,
			dataType:'json',
			success:function(pa) {
				var hotelItemNo = pa.hotelItemNo;
				var concertItemNo = pa.concertItemNo;
				var resortItemNo = pa.resortItemNo;
				var itemNo;
				var type;
				
				if(hotelItemNo) {
					itemNo = hotelItemNo;
					type = "H";
				} else if(concertItemNo) {
					itemNo = concertItemNo;
					type = "C";
				} else if(resortItemNo) {
					itemNo = resortItemNo;
					type = "R";
				}
				
				var row = "<tr>";
					row += "<th style='background-color: #f5f5f5;'>시작일</th>";
					row += "<td>"+pa.simpleStartDate+"</td>";
					row += "<th style='background-color: #f5f5f5;'>종료일</th>";
					row += "<td>"+pa.simpleEndDate+"</td>";
				row += "</tr>";
				row += "<tr>";
					row += "<th style='background-color: #f5f5f5;'>판매수량</th>";
					row += "<td>" + pa.packageCountFormat + " 개</td>";
					row += "<th style='background-color: #f5f5f5;'>할인가</th>";
					row += "<td>" + pa.packageRate + " %</td>";
				row += "</tr>";
				row += "<tr>";
					row += "<th style='background-color: #f5f5f5;'>위약금</th>";
					row += "<td>" + pa.dfbocFormat + " 원</td> <td></td><td></td>";
				row += "</tr>";
				row += "<tr>";
					row += "<th style='vertical-align: middle;' style='background-color: #f5f5f5;'>이미지</th>";
					row += "<td colspan='3' id='item-row-img'></td>";
				row += "</tr>";
				row += "<tr>";
					row += "<th style='background-color: #f5f5f5;'>아이템</th>"
					row += "<td id='item-row-name'></td>";
					row += "<th style='background-color: #f5f5f5;'>가격</th>"
					row += "<td id='item-row-price'></td>";
				row += "</tr>";
				row += "<tr>";
					row += "<th style='background-color: #f5f5f5;'>내용</th>";
					row += "<td colspan='3'>" + pa.content + "</td>";
				row += "</tr>";
				
				$("#pa-body").append(row);
				$("#cancle-no").val(pa.no)
				$("#cancle-status").val(pa.status)
					
				getItem(itemNo, type);
			}
		});
	})
});
</script>
<%@include file="../../include/footer.jsp" %>
</html>