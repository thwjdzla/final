<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<title>Party Mix</title>
<style type="text/css">
	body * {
		margin: 0px;
		padding: 0px;
	}
	input::-webkit-outer-spin-button,
	input::-webkit-inner-spin-button {
    	/* display: none; <- Crashes Chrome on hover */
    	-webkit-appearance: none;
   	 	margin: 0; /* <-- Apparently some margin are still there even though it's hidden */
	}
	div.col-sm-5 {
		padding: 0px !important;
	}
	.gong {
		margin-top: 100px;
	}
	#date-box {
		border: solid 1px;
		background-color: #e87a92;
		height: auto;
		padding-top: 8px;	
	}
	#another-room>div.row {
		margin: 0px 0px 10px 2.5px;
		border: solid 0px;
		border-bottom-width: 1px;
		height: 120px;
		
	}
	#carousel a {
		height: 300px;
	}
	#left-info>div {
		margin-right: 15px;
	}
	.item>img {
		width: 100%;
		height: 300px !important;
	}
	#guidance {
		font-size: 20px;
		color: red;
	}
</style>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<link rel="stylesheet" type="text/css" href="resources/datepicker/css/bootstrap-datepicker3.css" />
<script type="text/javascript" src="resources/datepicker/js/bootstrap-datepicker.js"></script>
<script type="text/javascript" src="resources/datepicker/locale/bootstrap-datepicker.ko.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/numeral.js/2.0.6/numeral.min.js"></script>
</head>
<body>
<%@ include file="../include/nav.jsp" %>
<div class="container">
	<div class="row gong">
		
	</div>
	<div class="row">
		<div class="col-sm-5" style="margin-left: 80px; position: static;">
			<div id="left-info" style="position: static; top: 0px;">
				<div class="row" style="width: 100%; height: 300px;" id="carousel">
					<c:if test="${info.itemType  eq 'C'}">
						<img src="resources/image/${info.items[0].img }" width="100%" height="100%" alt="...">
					</c:if>
					<c:if test="${info.itemType eq 'H' || info.itemType eq 'R'}">
						<div id="carousel-example-generic" class="carousel slide" data-ride="carousel">
							<ol class="carousel-indicators">
							<c:if test="${info.itemType eq 'H'}">
								<c:forEach items="${info.items }" varStatus="lenght">
									<li data-target="#carousel-example-generic" data-slide-to="${lenght.index }"></li>
								</c:forEach>
								</ol>
								<div class="carousel-inner" role="listbox">
									<c:forEach items="${info.items }" var="item" >
									<div class="item">
										<img src="resources/image/${item.img }" width="100%" height="100%" alt="...">
										<input type="hidden" value="${item.no }" name="no"/>
										<input type="hidden" value="${item.name }" name="room-name"/>
										<input type="hidden" value="${item.type }" name="room-type"/>
										<input type="hidden" value="${item.price }" name="room-price"/>
										<input type="hidden" value="${item.options }" name="room-options"/>
									</div>
									</c:forEach>
								</div>
							</c:if>
							<c:if test="${info.itemType eq 'R'}">
								<c:forEach items="${info.items }" varStatus="lenght">
									<li data-target="#carousel-example-generic" data-slide-to="${lenght.index }"></li>
								</c:forEach>
								</ol>
								<div class="carousel-inner" role="listbox">
									<c:forEach items="${info.items }" var="item" >
									<div class="item">
										<img src="resources/image/${item.img }" width="100%" height="100%" alt="...">
										<input type="hidden" value="${item.no }" name="no"/>
										<input type="hidden" value="${item.name }" name="room-name"/>
										<input type="hidden" value="${item.price }" name="room-price"/>
										<input type="hidden" value="${item.qty }" name="item-count"/>
										<input type="hidden" value="${item.options }" name="room-options"/>
									</div>
									</c:forEach>
								</div>
							</c:if>
							<a class="left carousel-control" href="#carousel-example-generic" role="button" data-slide="prev">
								<span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
								<span class="sr-only">Previous</span>
							</a>
							<a class="right carousel-control" href="#carousel-example-generic" role="button" data-slide="next">
								<span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
								<span class="sr-only">Next</span>
							</a>
						</div>
					</c:if>
				</div>
				<div class="row" style="text-align: left;">
				<c:if test="${info.itemType eq 'H'}">
					<h1><p class="room-name"></p></h1>
					<div>
						<p>${info.cpName }</p>
					</div>
					<div>
						<button class="btn btn-block btn-primary pull-right" style="width: 100%;" id="stop-btn">선택하기</button>
					</div>
				</c:if>
				<c:if test="${info.itemType eq 'R' || info.itemType  eq 'C'}">
					<h4><p>${info.cpName }</p></h4>
					<h3><p id="crName"></p></h3>
				</c:if>
				</div>
				<div style="text-align: center; height: 70px; background-color: #6E6E6E;" class="row">
					<a style="font-size: 20px; font-weight: 600; text-decoration: none; cursor: pointer; 
						width: 100%; height: 70px; padding-top: 20px; color: white;"
						class="btn" id="reserve-btn">
						예약하기
					</a>
				</div>
			</div>
		</div>
		<div class="col-sm-5" style="margin-left: 30px; text-align: center;" id="right-info">
			<div class="alert alert-danger" style="margin: 0px;" id="date-danger">
			  <strong>잠깐!</strong> 체크아웃 날짜가 체크인 날짜보다 이후인지 확인하세요.
			</div>
			
			<div id="date-box">
				<c:if test="${info.itemType eq 'H'}">
					<div class="input-daterange" id="date" style="margin-bottom: 15px;">
					    <input type="text" class="input-small" name="start" id="start-date" value="체크인"/>
					    <span id="check-out">
						    <span class="add-on" style="font-size: 20px; margin: 0 5px 0 5px;">~</span>
						    <input type="text" class="input-small" name="end" id="end-date" value="체크아웃"/>
					    </span>
					</div>
				</c:if>
				<c:if test="${info.itemType eq 'R'}">
					<div style="margin-bottom: 15px;">
						<input type="text" name="crDate" id="cr-date" value="티켓 일자 선택"
						style="text-align: center; height: 20px; width: 290px;" class="input-small"/>
						<span id="ticket-count">
							<span class="add-on" style="font-size: 20px; margin: 0 5px 0 5px;">&</span>
							<select style="text-align: center; height: 20px;" class="input-small" id="ticket">
							<option selected disabled hidden>선택해 주세요</option>
							<c:forEach varStatus="i" begin="1" end="20">
								<option>${i.count}장</option>
							</c:forEach>
							</select>
						</span>
					</div>
				</c:if>
				<c:if test="${info.itemType eq 'C'}">
					<div style="margin-bottom: 15px;">
						<input type="text" name="crDate" id="cr-date" value="티켓 일자 선택"
						style="text-align: center; height: 20px; width: 250px;" class="input-small"/>
						<span id="ticket-grade">
							<span class="add-on" style="font-size: 20px; margin: 0 5px 0 5px;">&</span>
							<select style="text-align: center; height: 20px;" class="input-small" id="grade">
								<option>S석</option>
								<option>R석</option>
								<option>VIP석</option>
							</select>
						</span>
						<span id="ticket-count">
							<span class="add-on" style="font-size: 20px; margin: 0 5px 0 5px;">&</span>
							<select style="text-align: center; height: 20px;" class="input-small" id="ticket">
							<option selected disabled hidden>선택해 주세요</option>
							<c:forEach varStatus="i" begin="1" end="20">
								<option>${i.count}장</option>
							</c:forEach>
							</select>
						</span>
					</div>
				</c:if>
			</div>
		    <p style="text-align: left; font-size: 15px; border: solid 0px; border-bottom-width: 3px; border-top-width: 2px;">
		    	<span id="guidance"></span>
		    </p>
		    <div style="text-align: left; border: solid 0px; border-bottom-width: 1px;">
		    	<h2>상세설명</h2>
		    	<h3>예약 정보 및 가격</h3>
		    	<div id="room-date">
					<p>
						<span style="color: red;" id="deadline-text">예약마감&nbsp;&nbsp;&nbsp;</span>
						<span class="f-date"></span>,&nbsp; 
						<span class="dif-date"></span>&nbsp;
						<strong><span class="room-total-price"></span></strong>
					</p>
		    	</div>
		    	<c:if test="${info.itemType eq 'H'}">
					<p>※ 취소수수료 안내</p>
					<p>- 입실 7일전 - 100% 환불</p>
					<p>- 입실 6일전 - 90% 환불</p>
					<p>- 입실 5일전 - 85% 환불</p>
					<p>- 입실 4일전 - 80% 환불</p>
					<p>- 입실 3일전 - 70% 환불</p>
					<p>- 입실 2일전 - 50% 환불</p>
					<p>- 입실 1일전 - 30% 환불</p>
					<p>- 입실일 - 환불 불가</p>
				</c:if>
				<c:if test="${info.itemType eq 'C' || info.itemType eq 'R'}">
					<p>※ 취소수수료 안내</p>
					<p>- 1일전 - 10% 환불</p>
					<p>- 당일 - 환불 불가</p>
				</c:if>
		    </div>
		    <div style="text-align: left; border: solid 0px; border-bottom-width: 1px;">
		    	<c:if test="${info.itemType eq 'H'}">
			    	<h3>객실 정보</h3>
					<p>- 객실옵션 : <br/><span id="room-options"></span></p>
					<p style="color: red;">(최대 입실인원 초과시 입실이 거부될수 있습니다.)</p>
				</c:if>
				<c:if test="${info.itemType eq 'R'}">
			    	<h3>티켓 정보</h3>
					<p>- 티켓 종류 : <br/>
						<c:forEach items="${info.items }" var="ticket">
							&nbsp;&nbsp;&nbsp;
							<span>${ticket.name } :</span>&nbsp;<span><fmt:formatNumber value="${ticket.price }"/>원</span><br/>
						</c:forEach>
					</p>
				</c:if>
				<c:if test="${info.itemType eq 'C'}">
			    	<h3>티켓 정보</h3>
					<p>- 티켓 종류 : <br/>
					<c:set var="flag" value ="true"/>
						<c:forEach items="${info.items }" var="ticket" varStatus="status">
							<c:if test="${flag eq true}">
								&nbsp;&nbsp;&nbsp;
								<span>${ticket.name } :</span>&nbsp;<span><fmt:formatNumber value="${ticket.price }"/>원</span><br/>
							<c:if test="${status.count eq 3 }">
								<c:set var="flag" value="false"/>
							</c:if>
							</c:if>
						</c:forEach>
					</p>
				</c:if>
		    </div>
		    <div id="refund-modal" class="modal fade" role="dialog" >
				<div class="modal-dialog">
					<div class="modal-content">
						<div class="modal-header">
							<button type="button" class="close" data-dismiss="modal">&times;</button>
		        			<h4 class="modal-title">옵션 선택</h4>
						</div>
						<form id="reserve-form" method="post" action="pay.do">
						<div class="modal-body" style="text-align: left;">
	        				<p>
	        					<div style="font-size: 25px;">
		        					<span>[${info.cpName }]</span>
		        					<span class="room-name"></span>
	        					</div>
	        					<div style="font-size: 16px;">
	        					<c:if test="${info.itemType eq 'H'}">
		        					<span class="f-date"></span>~
		        					<span class="s-date"></span>,&nbsp;
		        					<span class="dif-date"></span>,&nbsp;
	        						<strong style="bottom: 0px; right: 0px;"><span class="room-total-price"></span></strong>
	        					</c:if>
	        					<c:if test="${info.itemType eq 'C' || info.itemType eq 'R'}">
		        					<span class="f-date"></span>,&nbsp;
		        					<span class="qty"></span>,&nbsp;
	        						<strong style="bottom: 0px; right: 0px;"><span class="room-total-price"></span></strong>
	        					</c:if>
	        					</div>
	        				</p>
		        			<input type="hidden" id="cp-name" name="cpName" value="${info.cpName }"/>
		        			<input type="hidden" id="room-no" name="no" />
		        			<input type="hidden" id="item-type" name="type" value="${info.itemType }"/>
		        			<input type="hidden" id="start-input" name="checkIn" />
		        			<input type="hidden" id="end-input" name="checkOut" />
		        			<input type="hidden" id="cr-form" name="cr"  />
		        			<input type="hidden" id="ticket-form" name="qty" value="1"/>
		        			<input type="hidden" id="ticket-price" name="ticketPrice"/>
		        			<input type="hidden" id="package-no" name="packageNo"/>
		        			<c:if test="${info.cEndDate gt 0 }">
			        			<input type="hidden" id="c-end-date" name="cEndDate"  value="${info.cEndDate }"/>
		        			</c:if>
						</div>
						<div class="modal-footer">	
							<div style="margin: 0px; text-align: left;">
								<div>
									<c:if test="${info.itemType eq 'H'}">
										<p>-최대 입실인원 초과시 입실이 거부될수 있습니다.</p>
									</c:if>
									<c:if test="${info.itemType eq 'C' || info.itemType eq 'R'}">
										<p>-제한 연령에 해당하지 않을경우 입장이 거부될수 있습니다.</p>
									</c:if>
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
	</div>
</div>
<div class="row gong">
		
</div>
<%@include file="../include/footer.jsp" %>
</body>
<script type="text/javascript">
	$(function() {
		var delta = 50;
		var handle = null;
		var cStart = true;
		var crStartDate;
		var crEndDate;
		var end = ${info.cEndDate };
		var start = ${info.cStartDate };
		if (start == 0) {
			crStartDate = "+" + start + "d";
		} else {
			start = start * -1;
			crStartDate = "+" + start + "d";
		}
		if (end == 0) {
			crEndDate = "+1m";
		} else {
			crEndDate = "+" + ${info.cEndDate } + "d";
		}
		
		$("#carousel-example-generic>ol>li:first-child").addClass("active");
		$("#carousel-example-generic>div>div:first-child").addClass("active");
		
		getCarouselInfo();
		
		$("#date-danger").hide();
		$("#room-date").hide();
		$("#deadline-text").hide();
		
		$("#reserve-btn").addClass('disabled');
		if ($("#item-type").val() != 'H') {
			$("#reserve-btn").text("예매하기");
		}
		
		$('#date').datepicker({
			format: "yyyy년 mm월 dd일",
			language: "ko",
			startDate: "0d",
			endDate: "+1m"
		});
		
		$("#cr-date").datepicker({
			format: "yyyy년 mm월 dd일",
			language: "ko",
			startDate: crStartDate,
			endDate: crEndDate
		});
		
		$("#check-out").hide();
		$("#start-date").click(function() {
			if ($("#start-date").val() != "체크인") {
				$("#start-date").val('');
			}
			$('.carousel').carousel('pause');
		});
		
		$("#start-date").on('change', function() {
			if ($("#start-date").val() != "체크인" && $("#start-date").val()) {
				$("#check-out").show();
				$("#guidance").text("※ 체크아웃 날짜를 선택해 주세요");
			}
		});
		
		$("#end-date").click(function() {
			if ($("#end-date").val()) {
				$("#end-date").val('');
			}
		});
		
		$(window).scroll(function(event){
			if ($(document).scrollTop() > delta) {
				$("#left-info").css('position', 'fixed');
				$("#left-info").css('width', '487.5');
				$("#left-info").css('margin-top', '50px');
			} else if ($(document).scrollTop() <= delta) {
				$("#left-info").css('position', 'static');
				$("#left-info").css('width', '100%');
				$("#left-info").css('margin-top', '0px');
			}
		});
		
		$("#end-date").off('click').on('click', function() {
			$("#end-date").off('change').on('change', function() {
				$("#guidance").text("※ 예약하기 버튼을 클릭해주세요.");
				$.ajax({
					type:'POST',
					url:'ajax/dif.do',
					dataType:'text',
					data:{firstDate: $("#start-date").val(), secondDate: $("#end-date").val()},
					success:function(result){
						$(".f-date").text("숙박: " + $("#start-date").val());
						$(".s-date").text($("#end-date").val());
						$(".dif-date").text(result + "박");
						$("#carousel-example-generic>div>div").each(function() {
							if ($(this).attr('class') === "item active") {
								var price = $(this).find('input[name="room-price"]').val();
								var totalPrice = parseInt(result) * parseInt(price);
								$(".room-total-price").text(numeral(totalPrice).format('0,0') + "원");
								
							}
						});
					}
				});
				$.ajax({
					type:'POST',
					url:'ajax/reserveItemAdd.do',
					dataType:'text',
					data:{
						no: $("#room-no").val(),
						type: $("#item-type").val(),
						checkIn: $("#start-date").val(),
						checkOut: $("#end-date").val()
					},
					async : false,
					success:function(result){
						if(result == "false"){
		    				$("#reserve-deadline").val('false');
		    				$("#deadline-text").show(2000);
		    			}
		    			else{
							$("#reserve-deadline").val('true');
							$("#package-no").val(result);
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
				if ($("#reserve-deadline").val() == "false") {
					$("#reserve-btn").text('예약마감');
					$("#deadline-text").hide();
				} else {
					$("#reserve-btn").removeClass('disabled');
					$("#reserve-btn").text("예약하기");
				}
				$("#start-input").val($("#start-date").val());
				$("#end-input").val($("#end-date").val());
			});
		});
		
		$("#ticket-count").hide();
		$("#cr-date").on('click', function() {
			$('.carousel').carousel('pause');
		});
		
		$("#cr-date").on('change', function() {
			if ($("#cr-date").val() != "티켓 일자 선택" && $("#cr-date").val()) {
				$("#ticket-count").show();
				$("#guidance").text("※ 티켓 갯수를 선택해 주세요.");
				if ($("#item-type").val() == "C") {
					$("#guidance").text("※ 티켓 좌석등급을 선택해 주세요.");
					$("#ticket-grade").on('change', function() {
						searchConcertItem();
					});
				}
			}
		});
		
		$("#ticket").on("change", function() {
			if ($("#cr-date").val() != "티켓 일자 선택") {
				$("#guidance").text("※ 예매하기 버튼을 클릭해 주세요.");
				$.ajax({
					type:'POST',
					url:'ajax/reserveItemAdd.do',
					dataType:'text',
					data:{
						no: $("#room-no").val(),
						type: $("#item-type").val(),
						checkIn: $("#cr-date").val(),
						checkOut: $("#cr-date").val(),
						itemQty: $("#ticket").val().replace("장", "")
					},
					async : false,
					success:function(result){
						if(result == "false"){
		    				$("#reserve-deadline").val('false');
		    				$("#deadline-text").show(2000);
		    			}
		    			else{
							$("#reserve-deadline").val('true');
							$("#package-no").val(result);
		    			}
					}
				});
			}
			
			$(".f-date").text($("#cr-date").val());
			$(".qty").text($("#ticket").val());
			
			if ($("#reserve-deadline").val() == "false") {
				$("#reserve-btn").text('예약마감');
				$("#deadline-text").hide();
			} else {
				$("#reserve-btn").removeClass('disabled');
				if ($("#item-type").val() == "C" || $("#item-type").val() == "R") {
					$("#reserve-btn").text("예매하기");
				} else {
					$("#reserve-btn").text("예약하기");
				}
			}
			
			if ($("#item-type").val() == "R") {
				$("#carousel-example-generic>div>div").each(function() {
					if ($(this).attr('class') === "item active") {
						var price = $(this).find('input[name="room-price"]').val();
						var count = $("#ticket").val();
						var totalPrice = parseInt(count) * parseInt(price);
						$(".room-total-price").text(numeral(totalPrice).format('0,0') + "원");
					}
				});
			} else if ($("#item-type").val() == "C") {
				var count = $("#ticket").val();
				var price = $("input[name='ticketPrice']").val();
				var totalPrice = parseInt(count) * parseInt(price);
				$(".room-total-price").text(numeral(totalPrice).format('0,0') + "원");
			}
			
			$("#start-input").val($("#cr-date").val());
			$("#end-input").val($("#cr-date").val());
			$("#ticket-form").val($("#ticket").val().replace("장", ""));
			$("#room-date").show();
			$("span.dif-date").text($("#ticket").val());
		});
		
		$("#carousel-example-generic").on('slid.bs.carousel', function() {
			$("#carousel-example-generic>div>div").each(function() {
				getCarouselInfo();
				$('.carousel').carousel({
					interval: 2500
				
				});
			});
		});
		
		function getCarouselInfo() {
			$("#carousel-example-generic>div>div").each(function() {
				if ($(this).attr('class') === "item active") {
					var itemFullName = $(this).find('input[name="room-name"]').val() 
									+ ' [' + $(this).find('input[name="room-type"]').val() + ']';
					$(".room-name").text(itemFullName);
					var options = $(this).find('input[name="room-options"]').val();
					options = options.replace("[", "");
					options = options.replace("]", "");
					$("#room-options").text(options);
					$("#room-no").val($(this).find('input[name="no"]').val());
					$("#crName").text($(this).find('input[name="room-name"]').val());
					if ($("#item-type").val() == "C") {
						$("#crName").text($("#crName").text() + " " 
								+ $(this).find('input[name="item-date"]').val());
					}
				}
			});
		}
		
		$('.carousel').carousel({
			interval: 2500
			
		});
		
		$('#stop-btn').on('click', function() {
			$('.carousel').carousel('pause');
			if (!cStart) {
				$('.carousel').carousel({
					interval: 2500
				
				});
			}
			cStart = !cStart;
		});
		
		$("#reserve-btn").click(function() {
			$("#refund-modal").modal();
		});
		
		if ($("item-type").val() == "H") {
			$("#guidance").text("※ 체크인 날짜를 선택해 주세요");
		} else {
			$("#guidance").text("※ 날짜를 선택해 주세요");
		}
		
		function searchConcertItem() {
			if ($("#cr-date").val() != "티켓 일자 선택" && $("#cr-date").val()) {
				var data = {};
				data["name"] = $("#grade").val();
				data["ccitDate"] = $("#cr-date").val();
				$.ajax ({
					contentType:"application/json;charset=UTF-8",
					type:'POST',
					url:'ajax/searchConcertItem.do',
					dataType:'JSON',
					data:JSON.stringify(data),
					async : false,
					success:function(concertItem){
						$("#room-no").val(concertItem.no);
						$("#crName").text(concertItem.name + "  " + concertItem.ccitDate);
						$("#guidance").text("※ 티켓 갯수를 선택해 주세요.");
						$("input[name='ticketPrice']").val(concertItem.price);
					}
				});
			}
		}
	})
</script>
</html>