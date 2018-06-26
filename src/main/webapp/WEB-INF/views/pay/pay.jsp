<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
  <style type="text/css">
  	body * {
  		box-sizing:inherit;
  		margin: 0px;
  	}
  	input::-webkit-outer-spin-button,
	input::-webkit-inner-spin-button {
    	/* display: none; <- Crashes Chrome on hover */
    	-webkit-appearance: none;
   	 	margin: 0; /* <-- Apparently some margin are still there even though it's hidden */
	}
  	.user-info, .pay-info{
  		background-color: #e87a92;
  		border: solid 0px;
  		border-bottom-width: 1px;
  		border-top-width: 1px;
  		height: 50px;
  	}
  	.user-info p, .pay-info p {
  		text-align: center;
  		font-size: 20px;
  		margin: 8px 0 5px 0;
  	}
  	#phone input{
  		width: 15%;
  	}
  	#gong {
  		height: 100px;
  	}
  	#user-form-info {
  		margin: 0px;
  	}
  	#user-form-info label {
  		width: 100px;
  	}
  	#user-form-info .form-group {
  		margin-top: 10px;
  	}
  	#point-input {
  		border: solid 0;
  		border-bottom-width: 1.5px;
  	}
  	#point-input>p>strong{
  		padding: 10px;
  		font-size: 20px;
  	}
  	#point-input input.pull-right{
  		width: 250px;
  	}
  	#point-input.pull-right{
  		height: 30px;
  	}
  	#point-input p{
  		padding-top: 20px;
  	}
  	#pay-info {
  		padding: 10px;
  		border: solid 0;
  		border-bottom-width: 1.5px;
  	}
  	#pay-info>div>p {
  		color: #848484;
  		font-size: 15px;
  	}
  	#pay-info>div>p:first-child{
  		color: #2E2E2E;
  		font-size: 20px;
  	}
  	#pay>div:first-child {
  		border: solid 0px;
  		border-bottom-width: 1px;
  		background-color: #e799a3;
  	}
  	#pay>div:first-child>p {
  		position: relative;
  		text-align: center;
  		font-size: 20px;
  		margin: 5px 0 8px 0;
  	}
  	#pay a {
  		font-size: 20px;
  		font-weight: bolder;
  		border: solid 2px;
  	}
  	#item-info>div>div {
  		padding-left: 0px;
  	}
  	#item-info>div {
  		border: solid 0;
  		border-bottom-width: 1px;
  		padding: 0px;
  		margin: 15px 15px 0px 15px;
  	}
  	#item-info>div>.col-sm-9>p:last-child {
  		margin-bottom: 0px;
  	}
  	.check_box {
   		display:none;
	}
	.check_box + label {
		margin-top: 5px;
		margin-bottom: 0px;
	}
	.check_box + label>span{
	    background:url("resources/image/unchecked-checkbox.png") left center no-repeat;
	    background-size:100%;
	    height: 19px;
	    width: 19px;
	    vertical-align:middle;
	    margin:-2px 10px 0 0;
	    display:inline-block;
	    padding: 0 0 0 0px;
	}
	
	.check_box:checked + label>span{
	    background:url("resources/image/checked-checkbox.png") left center no-repeat;
	    display:inline-block;
	    vertical-align:middle;
	    background-size:100%;
	}
	#agree>div {
		border: solid 0;
		border-bottom-width: 0.1px; 
	}
	#agree>div>p>span {
		margin-top: 6px;
		padding: 0px;
	}
	.col-sm-9>p {
		margin: 0px;
	}
  </style>
  <title>Party Mix</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/numeral.js/2.0.6/numeral.min.js"></script>
</head>
<body>
<%@ include file="../include/nav.jsp" %>
<div class="container">
	<div class="row" id="gong">
		
	</div>
	<div class="row">
		<div class="col-sm-5" style="margin-left: 80px;">
			<div class="row user-info">
				<p>구매자 정보</p>
			</div>
			<div class="row">
				<form class="form-inline well" id="user-form-info">
					<div class="form-group">
						<label>* 이름</label>
						<input type="text" name="name" class="form-control" style="width: 323px" 
						value="${user.name }" />
					</div>
					<div class="form-group" id="phone">
						<label>* 휴대폰</label>
						<input name="phone1"
						    oninput="javascript: if (this.value.length > this.maxLength) this.value = this.value.slice(0, this.maxLength);"
						    type = "number"
						    maxlength = "4" class="form-control"
						    value="${payInfo.userPhone[0] }"
						 /> -
						<input name="phone2"
						    oninput="javascript: if (this.value.length > this.maxLength) this.value = this.value.slice(0, this.maxLength);"
						    type = "number"
						    maxlength = "4" class="form-control"
						    value="${payInfo.userPhone[1] }"
						 /> -
						<input name="phone3"
						    oninput="javascript: if (this.value.length > this.maxLength) this.value = this.value.slice(0, this.maxLength);"
						    type = "number"
						    maxlength = "4" class="form-control"
						    value="${payInfo.userPhone[2] }"
						 />
					</div>
					<div>
						<p style="text-indent: 105px; margin: 0px;"> ※ 휴대폰 번호로 구매정보가 발송됩니다.</p>
					</div>
					<div class="form-group">
						<label>* 이메일</label>
						<input type="email" name="email" class="form-control" style="width: 323px"
						value="${user.email }"/>
					</div>
					<div class="form-group">
						<label>요청사항</label>
						<textarea rows="5" cols="35" class="form-control" style="resize: none;" id="request"></textarea>
					</div>
				</form>
			</div>
			<div class="row user-info">
				<p>상품 정보 확인</p>
			</div>
			<div class="row" id="item-info">
			<c:set var="sumPrice" value="0" />
			<c:set var="packageNums" value="0" />
			<c:forEach var="product" items="${products }">
				<div class="row" style="padding: 10px;">
					<div class="col-sm-3">
						<img src="resources/image/${product.item.img }" width="100" height="100">
					</div>
					<div class="col-sm-9">
						<p>
							${product.itemCp } | ${product.item.name }
						</p>
						<p>
						<c:if test="${product.difDay > 0}">
							${product.checkIn }&nbsp;
							<span id="dif-date">(${product.difDay }박)</span>
						</c:if>
						<c:if test="${product.difDay eq 0}">
							<c:if test="${product.type eq 'C' }">
							${product.checkIn }&nbsp;
							</c:if>
							<span id="qty">(${qty }장)</span>
						</c:if>
						</p>
						<p>
						<c:choose>
							<c:when test="${product.difDay gt 0 }">	
								<fmt:formatNumber value="${product.item.price * product.difDay }"/>원
								<c:set var="sumPrice" value="${sumPrice + (product.item.price * product.difDay)}" />
							</c:when>
							<c:otherwise>
								<fmt:formatNumber value="${product.item.price }"/>원
								<c:set var="sumPrice" value="${sumPrice + product.item.price }" />
							</c:otherwise>
						</c:choose>
						</p>
					</div>
				</div>
				<c:set var="packageNums" value="${product.packageNo }" />
			</c:forEach>
			</div>
		</div>
		<div class="col-sm-5" style="margin-left: 30px;">
			<div class="row pay-info">
				<p>결제 내용</p>
			</div>
			<div class="row" id="point-input">
				<p>
					<strong>포인트 사용</strong>
					<button class="pull-right">적용</button>
					<input type="number" id="point" class="pull-right" style="text-align: right;">
				</p>
				<p style="padding-top: 5px; padding-left: 10px;">
					<span style="padding-bottom: 5px;">현재 포인트 
						<strong id="total-point"><fmt:formatNumber value="${user.totalPoint }"/></strong>P 사용 가능합니다.
					</span>
					<c:if test="${user.totalPoint gt 0}">
						<span style="height: 20px"><input type="checkbox" id="point-all-use"></span>
						<span> 전체 사용</span>
					</c:if>
				</p>
				<div class="alert alert-danger" style="margin: 0px;" id="point-danger">
				  <strong>잠깐!</strong> 보유하신 포인트보다 많이 적으셨습니다.
				</div>
			</div>
			<div class="row" id="pay-info">
				<div style="border: solid 0; border-bottom-width: 0.5px;">
					<p>
						<strong>총 상품 금액</strong>
						<span class="pull-right">
							<fmt:formatNumber value="${sumPrice }" />원
						</span>
					</p>
					<fmt:formatNumber var="formatSale" value="${sumPrice * membership.rate / 100}" pattern="#"/>
					<c:set var="sale" value="${formatSale }" />
					<p>멤버쉽 할인 금액<span class="pull-right">-<fmt:formatNumber value="${sale }"/> 원</span></p>
				</div>
				<div style="border: solid 0; border-bottom-width: 0.5px; padding-top: 10px;">
					<p>
						<strong>상품 구매 가격</strong>
						<span class="pull-right"><fmt:formatNumber value="${sumPrice - sale }"/>원</span>
					</p>
					<c:choose>
						<c:when test="${!payInfo.reserveHistory }">
						<c:set var="firstSale" value="${sumPrice/10 }"/>
							<p>
								첫 주문 할인<span class="pull-right">-<fmt:formatNumber value="${firstSale }"/>원</span>
							</p>
						</c:when>
					</c:choose>
					<c:if test="${user.totalPoint gt 0}">
					<c:set var="point" value="0" />	
						<p>포인트 할인
							<span class="pull-right" id="pointSale">0원</span>
						</p>
					</c:if>
				</div>
				<div style="padding-top: 20px">
					<p>
						<strong>총 결제 금액</strong>
						<span class="pull-right" id="total-price"><fmt:formatNumber value="${sumPrice - sale - firstSale }"/>원</span>
					</p>
				</div>
			</div>
			<div class="row" style="padding: 10px 10px 0px 10px;" id="agree">
				<div>
					<p>
						<input type="checkbox" id="agree1" class="check_box" name="agree-check">
						<label for="agree1"><span></span>취소 수수료 및 이용 약관 동의</label>
						<span class="pull-right">
							<img src="resources/image/down.png" width="19px" height="19px"/>
						<span>
					</p>
				</div>
				<div>
					<p>
						<input type="checkbox" id="agree2" class="check_box" name="agree-check">
						<label for="agree2"><span></span>개인정보 수집 및 이용 동의</label>
						<span class="pull-right">
							<img src="resources/image/down.png" width="19px" height="19px"/>
						<span>
					</p>
				</div>
				<div>
					<p>
						<input type="checkbox" id="agree3" class="check_box" name="agree-check">
						<label for="agree3"><span></span>개인정보 제공 동의</label>
						<span class="pull-right">
							<img src="resources/image/down.png" width="19px" height="19px"/>
						<span>
					</p>
				</div>
				<div style="border: none;">
					<p>
						<input type="checkbox" id="agree4" class="check_box">
						<label for="agree4"><span></span>약관 모두 동의</label>
					</p>
				</div>
			</div>
			<div class="row" id="pay">
				<div class="row">
					<p>결제</p>
				</div>
				<div class="row" style="margin: 10px 0 10px 0;">
					<input type="radio" id="pay-way1" name="radio" checked/><label for="pay-way1">신용 카드</label>
					<input type="radio" id="pay-way2" name="radio"/><label for="pay-way2">계좌 이체</label>
				</div>
				<div>
					<form id="reserve-form" action="pay-final.do">
						<input type="hidden" name="userNo" value="${user.no }"/>
						<input type="hidden" name="usePoint" />
						<input type="hidden" name="price" />
						<input type="hidden" name="request" />
						<input type="hidden" name="packageNums" value="${packageNums }"/>
						<input type="hidden" name="qty" value="${qty }"/>
					</form>
					<p><button class="btn btn-default btn-lg" style="width: 100%;" id="reserve-btn">결제하기</button></p>
				</div>
			</div>
		</div>
	</div>
</div>
<%@include file="../include/footer.jsp" %>
</body>
  <script type="text/javascript">
	$(function() {
		var agree = true;
		
		$("#point-danger").hide();
		
		$("#agree4").on("change", function() {
			if ($(this).is(":checked")) {
				$('input:checkbox[name="agree-check"]').each(function() {
					this.checked = true;
				});
			} else {
				$('input:checkbox[name="agree-check"]').each(function() {
					this.checked = false;
				});
			}
		});
		
		$("#point, #point-input>p>button").prop("disabled", function() {
			var userPoint = $("#point-input>p>span>strong").text();
			if (userPoint == 0) {
				$("#pointSale").hide();
				return true;
			}
		});
		
		$("#point-input>p>button").on("click", function() {
			var usePoint = $("#point").val();
			var text = $(this).text();
			if (usePoint > 0 && text === "적용") {
				var formatPoint = numeral(usePoint).format('0,0');
				var totalPrice = numeral($("#total-price").text()).value();
				$("#pointSale").text("-" + formatPoint + "원");
				$("#total-price").text(numeral(totalPrice - usePoint).format('0,0') + "원");
				$(this).text("변경");
				$("#point").prop("disabled", true);
			}
			if (text === "변경") {
				var totalPrice = numeral($("#total-price").text()).value();
				$(this).text("적용");
				$("#point").prop("disabled", false)
				$("#pointSale").text("0원");
				$("#total-price").text(numeral(parseInt(totalPrice) + parseInt(usePoint)).format('0,0') + "원");
				$("#point").val("");
				if ($("#point-all-use").is(':checked')) {
					$("#point-all-use").prop('checked', false);
				}
			}
		});
		
		$("#point").on('keyup', function() {
			var totalPoint = numeral($("#total-point").text()).value();
			var usePoint = $("#point").val();
			if ($(this).val() > totalPoint) {
				$("#point-danger").show();
				$("#point-input>p>button").prop("disabled", true);
				$("#reserve-btn").prop("disabled", true);
			} else if ($(this).val() <= totalPoint) {
				$("#point-danger").hide();
				$("#point-input>p>button").prop("disabled", false);
				$("#reserve-btn").prop("disabled", false);
			}
		});
		
		$("#point-all-use").on('click', function() {
			if ($(this).is(":checked")) {
				var totalPoint = numeral($("#total-point").text()).value();
				$("#point").val(totalPoint);
			} else {
				$("#point").val("");
			}
		});
		
		$("#reserve-btn").on('click', function() {
			$('input:checkbox[name="agree-check"]').each(function() {
				if (!this.checked) {
					alert("약관에 모두 동의해야만 결제가 가능합니다.");
					agree = false;
					return false;
				} else {
					agree = true;
				}
			});
			if (agree) {
				var price = $("#total-price").text().replace("원",'');
				price = numeral(price).value();
				$("#reserve-form>input[name='price']").val(price);
				if ($("#point-input>p>button").text() == "변경") {
					$("#reserve-form>input[name='usePoint']").val($("#point").val());
				} else {
					$("#reserve-form>input[name='usePoint']").val(0);
				}
				$("#reserve-form>input[name='request']").val($("#request").val());
				$("#reserve-form").submit();
			}
		});
	})
  </script>
</html>