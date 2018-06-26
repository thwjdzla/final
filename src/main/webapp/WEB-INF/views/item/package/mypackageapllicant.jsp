<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
  <title>Party Mix</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
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
			<li class="active" style="font-weight: bold;"><a href="mypa.do">내가 등록한 목록</a></li>
			<li><a href="mypr.do" style="color: #e87a92 !important; font-weight: bold;">내가 신청한 목록</a></li>
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
	</div>
</body>
<script type="text/javascript">
$(function() {
	
	var pagecount = 0;
	
	$.ajax({
		type : "GET",
		url : "../ajax/packageApplicant.do",
		dataType : "json",
		data : {
			count : pagecount
		},
		success : function(results) {
			var row = "";
			
			if (results.length == 0) {
				$('#pa-table tbody').html('');
				row += "<tr><td colspan='6' style='text-align:center;'><div class='pagTitSub1' style='height: 650px; width: 1072px; text-align:center; margin:auto;'><div class='text-block'><h4 style='font-size: 50px !important;'>등록 내역이 없습니다.</h4></div></div></td></tr>";
				$("#pa-table tbody").append(row);
			} else {
				$.each(results, function(index, pa) {
					$('#pa-table tbody').html('');
					
					row += "<tr>"
						row += "<td>"+pa.no+"</td>"
						row += "<td>"+pa.title+"</td>"
						row += "<td>"+pa.userId+"</td>"
						row += "<td>"+pa.fmtCreateDate+"</td>"
						if(pa.status == 'Y') {
							row += "<td>가능</td>"
							row += "<td><button data-toggle='collapse' data-target='#package-data' class='btn btn-default btn-xs advanced-btn' name='thisOn-"+pa.no+"' id='thisNo-"+pa.no+"' >상세</button></td>"
						} else if (pa.status == 'C') {
							row += "<td>불가능</td>"
							row += "<td><button type='button'class='btn btn-warning btn-xs' disabled>취소됨</button></td>"
						} else if (pa.status == 'F') {
							row += "<td>불가능</td>"
							row += "<td><button type='button'class='btn btn-danger btn-xs' disabled>계약파기</button></td>"
						} else {
							row += "<td>완료</td>"
							row += "<td><button data-toggle='collapse' data-target='#package-data' class='btn btn-warning btn-xs advanced-btn' name='thisOn-"+pa.no+"' id='thisNo-"+pa.no+"' >계약중</button></td>"
						}
					row += "</tr>"
					row += "<tr id='pa-detail-"+pa.no+"' class='advanced'>"
						row += "<td colspan='6'></td>"
					row += "</tr>"
					
					$("#pa-table tbody").append(row);
					$(".advanced").hide();
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
			url : "../ajax/packageApplicant.do",
			dataType : "json",
			data : {
				count : pagecount
			},
			success : function(results) {
				var row = "";
				
				if (results.length == 0) {
					$('#pa-table tbody').html('');
					row += "<tr><td colspan='6' style='text-align:center;'>등록 내역이 없습니다.</td></tr>";
					$("#pa-table tbody").append(row);
				} else {
					$.each(results, function(index, pa) {
						$('#pa-table tbody').html('');
						
						row += "<tr>"
							row += "<td>"+pa.no+"</td>"
							row += "<td>"+pa.title+"</td>"
							row += "<td>"+pa.userId+"</td>"
							row += "<td>"+pa.fmtCreateDate+"</td>"
							if(pa.status == 'Y') {
								row += "<td>가능</td>"
								row += "<td><button data-toggle='collapse' data-target='#package-data' class='btn btn-default btn-xs advanced-btn' name='thisOn-"+pa.no+"' id='thisNo-"+pa.no+"' >상세</button></td>"
							} else if (pa.status == 'C') {
								row += "<td>불가능</td>"
								row += "<td><button type='button'class='btn btn-warning btn-xs' disabled>취소됨</button></td>"
							} else if (pa.status == 'F') {
								row += "<td>불가능</td>"
								row += "<td><button type='button'class='btn btn-danger btn-xs' disabled>계약파기</button></td>"
							} else {
								row += "<td>완료</td>"
								row += "<td><button data-toggle='collapse' data-target='#package-data' class='btn btn-warning btn-xs advanced-btn' name='thisOn-"+pa.no+"' id='thisNo-"+pa.no+"' >계약중</button></td>"
							}
						row += "</tr>"
						row += "<tr id='pa-detail-"+pa.no+"' class='advanced'>"
							row += "<td colspan='6'></td>"
						row += "</tr>"
						
						$("#pa-table tbody").append(row);
						$(".advanced").hide();
					})
				}
			}
		});
	});
	
	function getItem(itemNo, type, prNo) {
		$.ajax({
			type:'GET',
			url:'../ajax/getItem.do?ino='+itemNo+'&type='+type,
			dataType:'json',
			success:function(item) {
				var itemName = "신청 상품: "+item.name+"  /  ";
				var itemPrice = "상품 가격: "+item.priceFmt+" 원  /  ";
				var itemImg = "<img class='img-thumbnail' src='../resources/image/"+item.img+"' style='margin-bottom:10px; width:300px; height:300px;' />";
				$("#item-row-name"+prNo).append(itemName);
				$("#item-row-img"+prNo).append(itemImg);
				$("#item-row-price"+prNo).append(itemPrice);
			}
		});
	}
	
	$("#pa-table").on('click', '.advanced-btn', function() {
		
		var thisName = $(this).attr('name');
		var no = $(this).attr('id').replace('thisNo-', '');
		$("#pa-detail-"+no).find('td').empty();
		
		if(thisName === 'thisOn-'+no) {
		
			$(this).attr('name', 'thisOff-'+no);
			$("#pa-detail-"+no).show();
			
			$.ajax({
				type:'GET',
				url:'../ajax/pabypr.do?no='+no,
				dataType:'json',
				success:function(prs) {
					
					var oneRow = false;
					
					$.each(prs, function(index, pr) {
						if (pr.status == "N") {
							oneRow = true;
						}
					})
					
					if(prs.length == 0) {
						var row = "";
						row += "<div colspan='6' style='text-align:center;'>아직 신청자가 없습니다.</div>"
						$("#pa-detail-"+no).find('td').append(row);
						
					} else if (!oneRow) {
						$.each(prs, function(index, pr) {
							
							if (pr.status == "Y") {
								var hotelItemNo = pr.hotelItemNo;
								var concertItemNo = pr.concertItemNo;
								var resortItemNo = pr.resortItemNo;
								var itemNo = "";
								var type = "";
								
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
								
								getItem(itemNo, type, pr.no);
								var row = "";
								row += "<div style='margin-top:10px; margin-bottom:10px; margin-left:10px; border-bottom: 1px solid #ddd;'>";
								row += "<span id='item-row-img"+pr.no+"' style='margin-right:30px;'></span>";
								row += "<span id='item-row-name"+pr.no+"'></span>";
								row += "<span id='item-row-price"+pr.no+"'></span>";
								row += "<span>신청자: "+pr.userId+"  /  </span>";
								row += "<span style='margin-right:30px;'>신청일: "+pr.fmtCreateDate+"</span>";
								row += "<a href='contract.do?no="+pr.no+"'><button class='btn btn-primary btn-xs'>계약</button></a></div>";
								
								$("#pa-detail-"+no).find('td').append(row);
							}
						});
					} else {
						$.each(prs, function(index, pr) {
							
							if (pr.status == "N") {
								var hotelItemNo = pr.hotelItemNo;
								var concertItemNo = pr.concertItemNo;
								var resortItemNo = pr.resortItemNo;
								var itemNo = "";
								var type = "";
								
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
								
								getItem(itemNo, type, pr.no);
								var row = "";
								row += "<div style='margin-top:10px; margin-bottom:10px; margin-left:10px; border-bottom: 1px solid #ddd;'>";
								row += "<span id='item-row-img"+pr.no+"' style='margin-right:30px;'></span>";
								row += "<span id='item-row-name"+pr.no+"'></span>";
								row += "<span id='item-row-price"+pr.no+"'></span>";
								row += "<span>신청자: "+pr.userId+"  /  </span>";
								row += "<span style='margin-right:30px;'>신청일: "+pr.fmtCreateDate+"</span>";
								row += "<a href='canclePackageByPrNo.do?no="+pr.no+"'><button class='btn btn-danger btn-xs'>파기</button></a></div>";
								
								$("#pa-detail-"+no).find('td').append(row);
							}
						});
					}
				}
			})
		} else {
			$(this).attr('name', 'thisOn-'+no);
			$("#pa-detail-"+no).hide();
		}
	})
})
</script>
<%@include file="../../include/footer.jsp" %>
</html>