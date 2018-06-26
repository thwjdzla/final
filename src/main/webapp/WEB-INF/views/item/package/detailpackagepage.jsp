<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
  <title>Party Mix</title>
  <style type="text/css">
  	#carousel-example-generic {
  		width: 600px;
  		height: 400px;
  	}
  	.carousel-inner>div>img {
  		height: 400px !important;
  		width: auto;
  		margin-left:auto;
   	 	margin-right:auto;
  	}
  	.carousel-inner>div {
  		text-align: center;
  	}
  	#plus-icon>img {
  		width: 50px;
  		height: auto;
  		margin-top: 40px;
  	}
  </style>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<link rel="stylesheet" type="text/css" href="../resources/datepicker/css/bootstrap-datepicker3.css" />
<script type="text/javascript" src="../resources/datepicker/js/bootstrap-datepicker.js"></script>
<script type="text/javascript" src="../resources/datepicker/locale/bootstrap-datepicker.ko.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/numeral.js/2.0.6/numeral.min.js"></script>
  <script>
  $(function(){

	$("#date-danger").hide();
	$("#room-date").hide();
	$("#deadline-text").hide();
	$("#package-danger").hide();
	
	$("#reserve-btn").addClass('disabled');
	var date = "";

	if('${packageform.startDate }' < "${today}"){
		date = "${today}";
	}
	else{
		date ='${packageform.startDate }';
	} 
	
	if('${packageform.endDate }' < "${today}")
		$("#package-danger").show();
	
	$('#date').datepicker({
		format: "yyyy년 mm월 dd일",
		language: "ko",
		startDate: date,
		endDate: '${packageform.endDate }'
	});
	
	$.ajax({
		type:'post',
		url:"getPackageReserve.do",
		dataType:'text',
		data:{no:'${packageform.no }'},
		success: function(result) {
			console.log(result);
			if(result == "false"){
				$("#package-danger").show();
			}
		}
	})
    $("#start-date").click(function() {
		if ($("#start-date").val()) {
			$("#start-date").val('');
			$("#end-date").val('');
		}
	});
	
	$("#end-date").click(function() {
		if ($("#end-date").val()) {
			$("#end-date").val('');
		}
	});
	
	$("#end-date").off('click').on('click', function() {
		$("#end-date").off('change').on('change', function() {
			$.ajax({
				type:'POST',
				url:'../ajax/dif.do',
				dataType:'text',
				data:{firstDate: $("#start-date").val(), secondDate: $("#end-date").val()},
				success:function(result){
					$(".f-date").text("숙박: " + $("#start-date").val());
					$(".s-date").text($("#end-date").val());
					$(".dif-date").text(result + "박");
					var price = '${packageform.hotelItem.price}';
					var totalPrice = parseInt(result) * parseInt(price);
					$(".room-total-price").text(numeral(totalPrice).format('0,0') + "원");
					if($("#concertPrice").val() != null){
						$(".o-date").text('${packageform.concertItem.ccitDate}'+",");
						$(".optionName").text("["+'${packageform.concert.ccName}'+"]");
						$(".optionItemName").text('${packageform.concertItem.name}');
						$(".optionPrice").text(numeral(parseInt($("#concertPrice").val())).format('0,0') + "원");
						totalPrice += parseInt($("#concertPrice").val());
					}
					if($("#resortPrice").val() != null){
						$(".o-date").text('${packageform.resortItem.type}'+",");
						$(".optionName").text("["+'${packageform.resort.name}'+"]");
						$(".optionItemName").text('${packageform.resortItem.name}');
						$(".optionPrice").text(numeral(parseInt($("#resortPrice").val())).format('0,0') + "원");
						totalPrice += parseInt($("#resortPrice").val());
					}
					var rate = parseInt('${packageform.rate}');
					$(".rate").text(rate);
					
					$(".total-price").text(numeral(totalPrice).format('0,0') + "원");
					$(".discount-price").text(""+numeral(totalPrice * (1 - (rate/100))).format('0,0') + "원");
				}
			});
			$.ajax({
				type:'POST',
				url:'../ajax/reserveItemAdd.do',
				dataType:'text',
				data:{
					no: '${packageform.hotelItem.no}',
					type: 'H',
					checkIn: $("#start-date").val(),
					checkOut: $("#end-date").val()
				},
				async : false,
				success:function(result){
					if(result == "false"){
	    				$("#reserve-deadline").val('false');
	    				$("#deadline-text").show(2000);
	    				$("#reserve-btn").addClass('disabled');
	    			}
	    			else{
						$("#reserve-deadline").val('true');
						$("#reserve-btn").removeClass('disabled');
	    				$("#deadline-text").hide(2000);
	    			}
				}
			});
			
			if (!($("#end-date").val() > $("#start-date").val())) {
				$("#date-danger").show();
				return;
			} else {
				$("#date-danger").hide();
			}
			
			$("#room-date").show();
			$("#start-input").val($("#start-date").val());
			$("#end-input").val($("#end-date").val());
		});
	});
	
	$("#reserve-btn").click(function() {
		$("#refund-modal").modal();
	});
  });
  </script>
</head>
<body>
<%@include file="../../include/nav.jsp" %>
<div class="container" style="font-family: '맑은 고딕';">
	<div class="row">
		<table class="table">
			<thead>
				<tr>
					<th><h3>${packageform.name }</h3></th>
				</tr>
			</thead>
			<tbody>
				<tr><td>${packageform.startDate } - ${packageform.endDate }</td></tr>
				<tr>
					<td>
						<div id="carousel-example-generic" class="carousel slide" data-ride="carousel">
							<ol class="carousel-indicators">
								<li data-target="#carousel-example-generic" data-slide-to="0" class="active"></li>
								<li data-target="#carousel-example-generic" data-slide-to="1"></li>
							</ol>
							<div class="carousel-inner" role="listbox">
								<div class="item active">
									<img class='img-thumbnail' src="../resources/image/${packageform.hotel.img}" style="width:100%; height:100%" alt="...">
									<div class="carousel-caption">
										...
									</div>
								</div>
								<div class="item">
									<img class='img-thumbnail' src="../resources/image/${packageform.hotelItem.img}" alt="...">
									<div class="carousel-caption">
									...
									</div>
								</div>
							</div>
								
							<a class="left carousel-control" href="#carousel-example-generic" role="button" data-slide="prev">
								<span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
								<span class="sr-only">Previous</span>
							</a>
							<a class="right carousel-control" href="#carousel-example-generic" role="button" data-slide="next">
								<span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
								<span class="sr-only">Next</span>
							</a>
						</div>
					</td>
					<td>
						<div class="row" style="padding: 10px;">
							<div class="col-sm-5" style="padding: 10px;">
								<a href="../detail.do?no=${packageform.hotel.cpNo }"><img class='img-thumbnail' src="../resources/image/${packageform.hotelItem.img}" width="150" height="150"></a>
							</div>
							<div class="col-sm-6"  style="padding: 10px;">
								<p>${packageform.hotel.name}|${packageform.hotelItem.name}</p>
								<p>${packageform.hotelItem.price} 원</p>
								<p>인원수 : ${packageform.hotelItem.count}</p>
								<p>연락처 : ${packageform.hotel.tel}</p>
							</div>
						</div>
						<div class="row" style="padding: 10px;">
							<c:if test="${not empty packageform.concert}">
							<input type="hidden" value="${packageform.concertItem.price}" id="concertPrice">
							<div class="col-sm-5" style="padding: 10px;">
								<a href="../detail.do?no=${packageform.concert.cpNo }"><img class='img-thumbnail' src="../resources/image/${packageform.concert.ccImg}" width="150" height="150"></a>
							</div>
							<div class="col-sm-6" style="padding: 10px;">
								<p>${packageform.concert.ccName} | ${packageform.concertItem.name}</p>
								<p>${packageform.concertItem.price} 원</p>
								<p>${packageform.concertItem.ccitDate}</p>
								<p>연락처 : ${packageform.concert.ccTel}</p>
							</div>
							</c:if>
						</div>
						<div class="row" style="padding: 10px;">
							<c:if test="${not empty packageform.resort}">
							<input type="hidden" value="${packageform.resortItem.price}" id="resortPrice">
							<div class="col-sm-5" style="padding: 10px;">
								<a href="../detail.do?no=${packageform.resort.cpNo }"><img class='img-thumbnail' src="../resources/image/${packageform.resort.img}" width="150" height="150"></a>
							</div>
							<div class="col-sm-6" style="padding: 10px;">
								<p>${packageform.resort.name} | ${packageform.resortItem.name}</p>
								<p>${packageform.resortItem.price} 원</p>
								<p>${packageform.resortItem.type}</p>
								<p>연락처 : ${packageform.resort.tel}</p>
							</div>
							</c:if>
						</div>
					</td>
				</tr>
			</tbody>
		</table>
	</div>
	<hr>
		<div class="row">
			<div class="alert alert-danger" style="margin: 0px;" id="package-danger">
			  <strong>매진</strong> 해당 패키지는 수량을 소진했습니다.
			</div>
			<div class="alert alert-danger" style="margin: 0px;" id="date-danger">
			  <strong>잠깐!</strong> 체크아웃 날짜가 체크인 날짜보다 이후인지 확인하세요.
			</div>
		</div>
		<div class="row" style="margin-bottom:50px">
			<h3>예약 정보 및 가격<a class="btn" style="font-size: 20px; background-color:#e778a1; margin-left:15px; margin-bottom:5px; text-decoration: none; cursor: pointer; width: 120px; height: 40px; padding: auto; color: white;"
					class="btn" id="reserve-btn"> 예약하기 </a></h3>
		    	<div id="room-date">
					<p>
						<span style="color: red;" id="deadline-text">예약마감&nbsp;&nbsp;&nbsp;</span>
						<span class="f-date"></span>,&nbsp; 
						<span class="dif-date"></span>&nbsp;
						<strong><span class="room-total-price"></span> + <span class="optionPrice"></span>(<span class="rate"></span>% 할인)</strong>
						
					</p>
		    	</div>
				<div id="date-box">
				<div class="input-daterange" id="date" style="margin-bottom: 15px;">
					<input type="text" class="input-small" name="start" id="start-date" value="체크인"/>
						<span class="add-on" style="font-size: 20px; margin: 0 5px 0 5px;">~</span>
					<input type="text" class="input-small" name="end" id="end-date" value="체크아웃"/>
				</div>
				</div>
		</div>
			    <div id="refund-modal" class="modal fade" role="dialog" >
				<div class="modal-dialog">
					<div class="modal-content">
						<div class="modal-header">
							<button type="button" class="close" data-dismiss="modal">&times;</button>
		        			<h4 class="modal-title">옵션 선택</h4>
						</div>
						<form id="reserve-form" method="post" action="../pay.do">
						<div class="modal-body" style="text-align: left;">
	        				<p>
	        					<div style="font-size: 25px;">
		        					<span>[${packageform.hotel.name}]</span>
		        					<span>${packageform.hotelItem.name}</span>
		        					<span>[${packageform.hotelItem.type}]</span>
		        					<br/>
									<c:if test="${not empty packageform.concert}">
		        					<span class="optionName">[${packageform.concert.ccName}]</span>
		        					<span class="optionItemName">${packageform.concertItem.name}</span>
		        					</c:if>				
									<c:if test="${not empty packageform.resort}">
		        					<span>[${packageform.resort.name}]</span>
		        					<span>${packageform.resortItem.name}</span>
		        					</c:if>
	        					</div>
	        					<div style="font-size: 16px;">
	        					<span class="f-date"></span>~
	        					<span class="s-date"></span>,&nbsp;
	        					<span class="dif-date"></span>,&nbsp;
	        					<strong style="bottom: 0px; right: 0px;"><span class="room-total-price"></span></strong>
	        					<br/>
	        					<span class="o-date"></span>
	        					<strong style="bottom: 0px; right: 0px;"><span class="optionPrice"></span></strong>
	        					<br/>
	        					<strong style="bottom: 0px; right: 0px;">총액: <s><span class="total-price"></span></s></strong>
	        					<span>&nbsp;&nbsp;>>&nbsp;&nbsp;</span>
	        					<strong style="bottom: 0px; right: 0px; color:red"><span class="discount-price"></span></strong>	
	        					</div>
	        					
	        				</p>
		        			<input type="hidden" id="cp-name" name="cpName" value="${packageform.hotel.name}"/>
		        			<input type="hidden" id="room-no" name="no" value="${packageform.hotelItem.no}" />
		        			<input type="hidden" id="item-type" name="type" value="P"/>
		        			<input type="hidden" id="start-input" name="checkIn" />
		        			<input type="hidden" id="end-input" name="checkOut" />
		        			<input type="hidden" id="package-no" name="packageNo" value="${packageform.no}"/>
		        			<input type="hidden" name="qty" value="1"/>
		        			<input type="hidden" name="rate" value="${packageform.rate }"/>
						</div>
						<div class="modal-footer">	
							<div style="margin: 0px; text-align: left;">
								<div>
									<p>-최대 입실인원 초과시 입실이 거부될수 있습니다.</p>
									<p>-제한 연령에 해당하지 않을경우 입장이 거부될수 있습니다.</p>
								</div>
								<div>
				      				<input type="submit" class="btn btn-primary" id="btn-reserce-todo" value="구매하기"
				      				style="width: 98%;"/>
								</div>
							</div>
		      			</div>
	        			</form>
					</div>
				</div>
			</div>
	<input type="hidden" id="reserve-deadline">
</div>
<%@include file="../../include/footer.jsp" %>
</body>
</html>