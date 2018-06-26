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
  <style type="text/css">
  	.nav-pills>li.active>a, .nav-pills>li.active>a:focus, .nav-pills>li.active>a:hover {
    background-color: #e87a92;
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
</head>
<body style="background-color: #eeeeee;">
<%@ include file="../../include/nav.jsp" %>
<%@ include file="../../include/mypagenav.jsp" %>
	<div class="container" style="font-family: '맑은 고딕'; width: 1216px !important;">
		<div class="pagTitSub1" style="height: 250px; margin-bottom: 10px; margin-top: 50px;">
			<div class="text-block">
				<h4>최고의 순간을 PARTYMIX 호텔에서 함께 하실 수 있도록</h4>
	    		<h4>귀 기울여 감동 서비스로 보답해드리겠습니다.</h4>
			</div>
		</div>
		<ul class="nav nav-pills nav-justified">
		  <li class="active" style="font-weight: bold; background-color: white;"><a href="companyadmin.do">모든 업체 리스트</a></li>
		  <li><a href="sbcompany.do" style="color: #e87a92 !important; font-weight: bold; background-color: white;">신청 업체 리스트</a></li>
		  <li><a href="sccompany.do" style="color: #e87a92 !important; font-weight: bold; background-color: white;">등록된 업체 리스트</a></li>
		</ul>
		<div style="height: 25px;"></div>
		<table class="table" id="page-table" style="background-color: white; text-align: center;">
			<colgroup>
				<col width="15%" />
				<col width="15%" />
				<col width="25%" />
				<col width="15%" />
				<col width="15%" />
				<col width="15%" />
			</colgroup>
			<thead>
				<tr style="color: #e778a1; text-align: center !important;">
					<th style="text-align: center !important;">업체번호</th>
					<th style="text-align: center !important;">아이디</th>
					<th style="text-align: center !important;">업체명</th>
					<th style="text-align: center !important;">타입</th>
					<th style="text-align: center !important;">상태</th>
					<th style="text-align: center !important;">정보</th>
				</tr>
			</thead>
			<tbody>
			</tbody>
		</table>
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
	</div>
<script type="text/javascript">
$(function() {
	
	var pagecount = 0;
	
	$.ajax({
		type : "GET",
		url : "../ajax/pageCompanyAdmin.do",
		dataType : "json",
		data : {
			count : pagecount
		},
		success : function(results) {
			$('#page-table tbody').html('');
			$.each(results, function(index, company) {
				var row;
				row += "<tr>"
					row += "<td>"+company.cpNo+"</td>"
					row += "<td>"+company.userId+"</td>"
					row += "<td>"+company.cpName+"</td>"
					if (company.cpType == 'H') {
						row += "<td>호텔</td>"
					} else if (company.cpType == 'C') {
						row += "<td>콘서트</td>"
					} else {
						row += "<td>리조트</td>"
					}
					if (company.cpStatus == 'Y') {
						row += "<td>승인</td>"
					} else if (company.cpStatus == 'F') {
						row += "<td>정지</td>"
					} else {
						row += "<td>미승인</td>"
					}
					row += "<td><a href='/final/detail.do?no="+company.cpNo+"'><button class='btn btn-default btn-xs'>상세</button></a></td>"
				row += "</tr>"
				
				$("#page-table tbody").append(row);
			})
		}
	});
	
	$('#pn-nav ul').on('click','li a', function() {
		var count = $(this).attr('id').replace('page-count-', '');
		pagecount = count - 1;
		$('#pn-nav ul li a').attr('style', 'color:#e799a3; background-color:white');
		$(this).attr('style', 'color:white; background-color:#e799a3');
		
		$.ajax({
			type : "GET",
			url : "../ajax/pageCompanyAdmin.do",
			dataType : "json",
			data : {
				count : pagecount
			},
			success : function(results) {
				$('#page-table tbody').html('');
				$.each(results, function(index, company) {
					var row;
					row += "<tr>"
						row += "<td>"+company.cpNo+"</td>"
						row += "<td>"+company.userId+"</td>"
						row += "<td>"+company.cpName+"</td>"
						if (company.cpType == 'H') {
							row += "<td>호텔</td>"
						} else if (company.cpType == 'C') {
							row += "<td>콘서트</td>"
						} else {
							row += "<td>리조트</td>"
						}
						if (company.cpStatus == 'Y') {
							row += "<td>승인</td>"
						} else if (company.cpStatus == 'F') {
							row += "<td>정지</td>"
						} else {
							row += "<td>미승인</td>"
						}
						row += "<td><a href='/final/detail.do?no="+company.cpNo+"'><button class='btn btn-default btn-xs'>상세</button></a></td>"
					row += "</tr>"
					
					$("#page-table tbody").append(row);
				})
			}
		});
	});
})
</script>
<%@include file="../../include/footer.jsp" %>
</body>
</html>