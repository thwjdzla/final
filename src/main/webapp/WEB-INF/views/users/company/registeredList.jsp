<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html lang="ko">
<head>
  <title>Party Mix</title>
  <style type="text/css">
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
    padding: 42px 32px 32px;
    margin: auto;
    margin-top: 25px;
}
.authorization {
    text-align: center;
    margin: 26px 0;
}
.memberBenefit {
    padding: 32px 59px;
    margin: 32px 0 0;
    background: #f3f1f0;
    border: 1px solid #e6e0df;
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
.table th, .table td{
	text-align: center;
	vertical-align: middle !important;
}
.btnArea-1 {
    margin-top: 20px;
    min-height: 60px;
    position: relative;
    text-align: center;
}
.table {
	border-collapse: separate !important;
}
.table>thead>tr>th {
    border-bottom: 1px solid #ddd !important;
}
.btn-danger {
	background-color: #cccccc !improtant;
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
<div id="container ct" class="contBg">
	<div class="contWrap" style="font-family: '맑은 고딕';">
		<h2 class="pagTit">내가 등록한 현황</h2>
		<div class="pagTitSub" style="text-align: center; margin-bottom: 25px;">
		</div>
		<div class="contBox">
			<table class="table">
				<colgroup>
					<col width="20%">
					<col width="25%">
					<col width="10%">
					<col width="*%">
					<col width="7%">
					<col width="18%">
				</colgroup>
				<thead>
					<tr style="background-color: #edadba;">
						<th>이미지</th>
						<th>업체명</th>
						<th>구분</th>
						<th>상품명</th>
						<th>상태</th>
						<th></th>
					</tr>
				</thead>
				<tbody>
				<c:choose>
					<c:when test="${empty concerts and empty hotels and empty resorts }">
						<tr>
							<td colspan="6" class="text-center" style="padding: 30px;">등록된 상품이 없습니다.</td>
						</tr>
					</c:when>
					<c:otherwise>
						<c:if test="${not empty concerts }">
							<c:forEach var="concert" items="${concerts }">
								<tr>
									<td><img class="img-thumbnail" src="../resources/image/${concert.ccImg }" style="width: 215px; height: 250px;"></td>
									<td>${concert.cpName }</td>
									<td>${concert.cpType eq 'C' ? '콘서트' : '' }</td>
									<td>${concert.ccName }</td>
									<td>
										<c:choose>
											<c:when test="${concert.cpStatus eq 'Y' }">
												승인
											</c:when>
											<c:when test="${concert.cpStatus eq 'N' }">
												미승인
											</c:when>
											<c:otherwise>
												정지
											</c:otherwise>
										</c:choose>
									</td>
									<td>
										<a href="../intro/modify.do?no=${concert.cpNo }&type=${concert.cpType }" class="w3-btn w3-red" style="border: 1px solid transparent; border-radius: 4px; width: 82px !important; height: 33px !important; padding: 6px 12px; background-color: #e7a1b0 !important; border-color: #e7a1b0; text-decoration: none; margin-top: 2px; font-size: 14px;">업체수정</a>
										<a href="../item/registerItemConcert.do?no=${concert.cpNo }&ccNo=${concert.ccNo}" class="w3-btn w3-red" style="border: 1px solid transparent; border-radius: 4px; width: 82px !important; height: 33px !important; padding: 6px 12px; background-color: #e799a3 !important; border-color: #e799a3; text-decoration: none; margin-top: 2px; font-size: 14px;">상품관리</a>
										<a href="../item/registerSite.do?no=${concert.cpNo }" class="w3-btn w3-red" style="border: 1px solid transparent; border-radius: 4px; width: 82px !important; height: 33px !important; padding: 6px 12px; background-color: #e87a92 !important; border-color: #e87a92; text-decoration: none; margin-top: 2px; font-size: 14px;">주변정보</a>
										<a href="../company-reserve-list.do?no=${concert.cpNo }&type=${concert.cpType }" class="w3-btn w3-red" style="border: 1px solid transparent; border-radius: 4px; width: 82px !important; height: 33px !important; padding: 6px 12px; background-color: #e87a92 !important; border-color: #e87a92; text-decoration: none; margin-top: 2px; font-size: 14px;">예약관리</a>
									</td>
								</tr>
							</c:forEach>
						</c:if>
						<c:if test="${not empty hotels }">
							<c:forEach var="hotel" items="${hotels }">
								<tr>
									<td><img class="img-thumbnail" src="../resources/image/${hotel.img }" style="width: 215px; height: 140px;"></td>
									<td>${hotel.cpName }</td>
									<td>${hotel.cpType eq 'H' ? '호텔' : '' }</td>
									<td>${hotel.name }</td>
									<td>
										<c:choose>
											<c:when test="${hotel.cpStatus eq 'Y' }">
												승인
											</c:when>
											<c:when test="${hotel.cpStatus eq 'N' }">
												미승인
											</c:when>
											<c:otherwise>
												정지
											</c:otherwise>
										</c:choose>
									</td>
									<td>
										<a href="../intro/modify.do?no=${hotel.cpNo }&type=${hotel.cpType }" class="w3-btn w3-red" style="border: 1px solid transparent; border-radius: 4px; width: 82px !important; height: 33px !important; padding: 6px 12px; background-color: #e7a1b0 !important; border-color: #e7a1b0; text-decoration: none; margin-top: 2px; font-size: 14px;">업체수정</a>
										<a href="../item/registerItemHotel.do?no=${hotel.cpNo }&htNo=${hotel.no}" class="w3-btn w3-red" style="border: 1px solid transparent; border-radius: 4px; width: 82px !important; height: 33px !important; padding: 6px 12px; background-color: #e799a3 !important; border-color: #e799a3; text-decoration: none; margin-top: 2px; font-size: 14px;">상품관리</a>
										<a href="../item/registerSite.do?no=${hotel.cpNo }" class="w3-btn w3-red" style="border: 1px solid transparent; border-radius: 4px; width: 82px !important; height: 33px !important; padding: 6px 12px; background-color: #e87a92 !important; border-color: #e87a92; text-decoration: none; margin-top: 2px; font-size: 14px;">주변정보</a>
										<a href="../company-reserve-list.do?no=${hotel.cpNo }&type=${hotel.cpType }" class="w3-btn w3-red" style="border: 1px solid transparent; border-radius: 4px; width: 82px !important; height: 33px !important; padding: 6px 12px; background-color: #e87a92 !important; border-color: #e87a92; text-decoration: none; margin-top: 2px; font-size: 14px;">예약관리</a>
									</td>
								</tr>
							</c:forEach>
						</c:if>
						<c:if test="${not empty resorts }">
							<c:forEach var="resort" items="${resorts }">
								<tr>
									<td><img class="img-thumbnail" src="../resources/image/${resort.img }" style="width: 215px; height: 140px;"></td>
									<td>${resort.cpName }</td>
									<td>${resort.cpType eq 'R' ? '리조트' : '' }</td>
									<td>${resort.name }</td>
									<td>
										<c:choose>
											<c:when test="${resort.cpStatus eq 'Y' }">
												승인
											</c:when>
											<c:when test="${resort.cpStatus eq 'N' }">
												미승인
											</c:when>
											<c:otherwise>
												정지
											</c:otherwise>
										</c:choose>
									</td>
									<td>
										<a href="../intro/modify.do?no=${resort.cpNo }&type=${resort.cpType }" class="w3-btn w3-red" style="border: 1px solid transparent; border-radius: 4px; width: 82px !important; height: 33px !important; padding: 6px 12px; background-color: #e7a1b0 !important; border-color: #e7a1b0; text-decoration: none; margin-top: 2px; font-size: 14px;">업체수정</a>
										<a href="../item/registerItemResort.do?no=${resort.cpNo }&rsNo=${resort.no}"class="w3-btn w3-red" style="border: 1px solid transparent; border-radius: 4px; width: 82px !important; height: 33px !important; padding: 6px 12px; background-color: #e799a3 !important; border-color: #e799a3; text-decoration: none; margin-top: 2px; font-size: 14px;">상품관리</a>
										<a href="../item/registerSite.do?no=${resort.cpNo }" class="w3-btn w3-red" style="border: 1px solid transparent; border-radius: 4px; width: 82px !important; height: 33px !important; padding: 6px 12px; background-color: #e87a92 !important; border-color: #e87a92; text-decoration: none; margin-top: 2px; font-size: 14px;">주변정보</a>
										<a href="../company-reserve-list.do?no=${resort.cpNo }&type=${resort.cpType }" class="w3-btn w3-red" style="border: 1px solid transparent; border-radius: 4px; width: 82px !important; height: 33px !important; padding: 6px 12px; background-color: #e87a92 !important; border-color: #e87a92; text-decoration: none; margin-top: 2px; font-size: 14px;">예약관리</a>
									</td>
								</tr>
							</c:forEach>
						</c:if>
					</c:otherwise>
				</c:choose>
				
				</tbody>
			</table>
		</div>
		<div class="btnArea-1">
			<a href="../intro/selectform.do"><button class="w3-btn w3-red" style="width: 170px !important; padding: 19px 32px; background-color: #e87a92 !important; text-decoration: none; margin-right: 3px;">신규 업체 등록</button></a>
		</div>
		
	</div>
</div>
<%@include file="../../include/footer.jsp" %>
</body>
<script type="text/javascript">
$(function () {
})
</script>
</html>