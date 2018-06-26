<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<title>Party Mix</title>
<style type="text/css">
	.panel-heading {
		background-color: #d36179;
	}
	/* #gongback {
		height: 150px;
	} */
	.table {
		border: solid;
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
</head>
<body>
<%@ include file="../include/nav.jsp" %>
<%@ include file="../include/mypagenav.jsp" %>
<div class="container">
	<div id="gongback"></div>
	<div class="piimg">
		<img src="../final/resources/image/point.jpg" style="position: absolute;">
		<div style="font-size: 20px; width: 100%;">
			<div class="row">
				<div class="panel panel-defaul pull-right" style="position: relative; margin-top: 150px; width: 800px;">
					<div class="panel-heading" style="color: white; font-weight: bold;">${userName }님의 총 적립 포인트</div>
					<div class="panel-body">
						<strong class="pull-right"><fmt:formatNumber value="${totalPoint }"/>P</strong>
					</div>
				</div>
			</div>
		</div>
	</div>
	<div style="margin-top: 30px;">
		<div class="row" style="height: 633px; width: 100%;">
			<table class="table">
				<colgroup>
					<col width="25%"/>
					<col width="*"/>
					<col width="18%"/>
					<col width="18%"/>
				</colgroup>
				<thead>
					<tr style="background-color: #edadba;">
						<th>일자</th>
						<th>내용</th>
						<th>사용 포인트</th>
						<th>적립 포인트</th>
					</tr>
				</thead>
				<tbody id="point-list">
					<tr style="text-align: center; font-size: 30px;">
						<td colspan="4">
							<div class="pagTitSub1" style="height: 650px; width: 1072px; text-align:center; margin:auto;">
								<div class="text-block">
									<h4 style="font-size: 50px !important;">포인트 내역이 없습니다.</h4>
								</div>
							</div>
						</td>
					</tr>
				</tbody>
			</table>
			<nav aria-label="Page navigation example" style="text-align: center;">
				<ul class="pagination">
			  	</ul>
			</nav>
		</div>
	</div>
	<input type="hidden" name="" value=""/>
</div>
<%@include file="../include/footer.jsp" %>
</body>
<script type="text/javascript">
	$(function() {
		var data = {};
		data["status"] = '결제';
		data["userNo"] = ${userNo};
		data["min"] = 1;
		data["max"] = 10;
		var reserveCount = ${reserveCount};
		var maxP = Math.ceil(reserveCount / 10);
		var currentPage = 1;
		var minPage = 1;
		var maxPage;
		var startPage;
		var page = "";
		minAndMax();
		createPageBtn();
		paging(data);
		
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
			data["min"] = (parseInt($(this).text()) * 10) - 9;
			data["max"] = parseInt($(this).text()) * 10;
			$(this).parents("li").addClass('active');
			paging(data);
			minAndMax();
		});
		
		function paging(data) {
			$.ajax({
				contentType:"application/json;charset=UTF-8",
				type:'POST',
				url:'ajax/userPointList.do',
				dataType:'json',
				data:JSON.stringify(data),
				success:function(pointList){
					row = "";
					if (pointList.length) {
						$.each(pointList, function(index, point) {
							row += '<tr>';
							row += '<td>' + point.reserveDate + '</td>';
							row += '<td>' + point.packageName + '</td>';
							row += '<td>' + point.usePoint + 'P</td>';
							row += '<td>' + point.stackPoint + 'P</td>';
							row += '</tr>';
						});
					} else {
						row += '<tr style="text-align: center; font-size: 30px;">';
						row += '<td colspan="4"><div class="pagTitSub1"><div class="text-block"><h4 style="font-size: 50px !important; width:550px;">포인트 내역이 없습니다.</h4></div></div></td>';
						row += '</tr>';
					}
					$("#point-list").empty();
					$("#point-list").append(row);
				}
			});
		}
	})
</script>
</html>