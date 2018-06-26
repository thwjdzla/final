<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html lang="ko">
<head>
  <title></title>
    <style type="text/css">
.nav-pills>li.active, .nav-pills>li.active, .nav-pills>li.active {
    color: #fff !important;
    background-color: #e87a92 !important;
    font-weight: bold;
    padding: 0;
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
.nav-pills>li.active>a, .nav-pills>li.active>a:focus, .nav-pills>li.active>a:hover {
	background-color: #e87a92 !important;
	padding: 0;
}
.title-2 {
    font-size: 22px;
    color: #111;
    margin: 53px 0 11px;
    font-weight: bold;
    letter-spacing: -0.01em;
    line-height: 1.2;
}
.tbTitle {
    display: block;
    margin: 0 0 13px;
    font-size: 14px;
    line-height: 1.6;
    color: #666;
    letter-spacing: -0.025em;
    word-break: keep-all;
    word-wrap: break-word;
}
.tb-1 {
    border-top: solid 2px #e778a1;
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
.fw-1 {
    width: 130px;
}
.fw-2 {
    width: 160px;
}
.fw-3 {
    width: 70px;
}
.fw-32 {
    width: 560px;
}
.fw-25 {
    width: 280px;
}
.tb-1 tbody th:first-child {
    border-left: none;
}
.tb-1 th {
    padding: 13px 22px 12px 22px;
}
.tb-1 td.fm {
    padding-top: 16px;
    padding-bottom: 16px;
}
.tb-1 td {
    color: #333;
    padding: 14px 20px 14px 20px;
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
.fh-2 {
    height: 220px;
}
.fw-full {
    width: 100%;
}
textarea {
    overflow: auto;
    vertical-align: top;
    padding: 8px;
    box-sizing: border-box;
    border: solid 1px #aaa;
}
.filebox .upload-name {
    display: inline-block;
    width: 560px;
    vertical-align: middle;
    border: solid 1px #aaa;
    background: #fff;
    box-sizing: border-box;
    padding: 0 40px 0 8px;
    margin-right: 3px;
    height: 36px;
    line-height: 34px;
    color: #000;
    -webkit-appearance: none;
    -moz-appearance: none;
    appearance: none;
}
.fm .btnD {
    margin-right: 1px;
}
.filebox label {
    cursor: pointer;
}
.btnD {
    min-width: 82px;
    height: 36px;
    line-height: 34px;
    font-size: 14px;
    padding: 0 14px;
    font-weight: 100;
}
.btn-4 {
    background: #eee;
    border: solid 1px #ddd;
    color: #333;
}
.fmTxt-3 {
    display: inline-block;
    margin: 0 2px;
    text-align: center;
    vertical-align: middle;
    color: #666;
    font-size: 16px;
}
.fmTxt-4 {
    display: block;
    margin-top: 6px;
    color: #666;
}
.tb-1.single {
    border-top: solid 1px #e5e5e5;
}
.cmg-4 {
    margin-top: 40px !important;
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
.chw-5 {
    margin: 30px 0 6px;
}
.cHead .chwTit {
    float: left;
    margin: 0;
}
.title-5 {
    font-size: 14px;
    margin: 30px 0 6px;
    color: #111;
    font-weight: bold;
}
.fR {
    float: right !important;
}
.chkFm, .radFm {
    position: relative;
}
.sh-2 {
    height: 145px;
}
.scroll {
    overflow-x: hidden;
    overflow-y: scroll;
    border: solid 1px #aaa;
    padding: 10px 8px;
    font-size: 14px;
    box-sizing: border-box;
}
.scroll li, .scroll ul {
	list-style: none;
}
.agrCont, .agrCont table {
    font-size: 13px !important;
    color: #666;
}
.agrTit-1:first-child {
    margin: 0 0 8px;
}
.agrTit-1 {
    margin: 23px 0 8px;
}
.agrList-1 {
    margin: 10px 0;
}
.agrList-1 > li {
    text-indent: -1.5em;
    margin-left: 1.5em;
}
.btnArea-1 {
    margin-top: 20px;
    min-height: 60px;
    position: relative;
    text-align: center;
}
.contWrap {
    width: 1216px;
    margin: 32px auto 0;
    padding-top: 50px;
}
.contBg {
    min-width: 1260px;
    padding-top: 0;
    padding-bottom: 100px;
    background: #eeeeee;
}
.pagTit {
    font-size: 32px;
    padding: 0 0 10px;
    color: #e87a92;
    line-height: 1.1;
    text-align: center;
    font-weight: bold;
}
.contBox {
    background: #fff;
    border: solid 1px #eee;
    padding: 42px 70px 70px;
    margin: auto;
    margin-top: 25px;
}
.title-1 {
	color: #333;
    line-height: 1.5;
}
.title-3 {
    font-size: 18px;
    font-weight: bold;
    color: #000;
}
.fc-1 {
    color: #e87a92 !important;
}
.cHead .chwTit {
    float: left;
    margin: 0 !important;
}
.fR {
    float: right !important;
}
.obligatory {
    padding-left: 10px;
    font-size: 14px;
    color: #666;
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
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
  <link href='https://fonts.googleapis.com/css?family=Delius' rel='stylesheet'>
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>
<body>
<%@ include file="../include/nav.jsp" %>
<%@ include file="../include/mypagenav.jsp" %>
<div id="container ct" class="contBg" style="font-family: '맑은 고딕';">
	<div class="contWrap">
		<!-- <h2 class="pagTit">PARTY MIX</h2>
		<div class="pagTitSub" style="text-align: center; margin-bottom: 25px;">
			최고의 순간을 파티믹스 호텔에서 함께 하실 수 있도록 귀 기울여 감동 서비스로 보답해드리겠습니다.
		</div> -->
		<div class="pagTitSub1" style="height: 250px; margin-bottom: 10px;">
			<div class="text-block">
				<h4>최고의 순간을 PARTYMIX 호텔에서 함께 하실 수 있도록</h4>
	    		<h4>귀 기울여 감동 서비스로 보답해드리겠습니다.</h4>
			</div>
		</div>
		<div class="w3-container" style="padding: 0;">
			<ul class="nav nav-pills nav-justified" role="tablist">
				<li style="padding: 0 !important;"><a href="question.do" style="padding: 10px 15px !important; color: #e87a92 !important;">업체문의</a></li>
				<li style="padding: 0 !important;"><a href="adminQuestion.do" id="navAdmin" style="padding: 10px 15px !important; color: #e87a92 !important;">관리자문의</a></li>
				<li class="active" style="padding: 0 !important;"><a href="FAQ.do" style="padding: 10px 15px !important;">FAQ</a></li>
			</ul>
		</div>
		<form id="contactusForm" name="contactusForm" method="post" enctype="multipart/form-data">
			<div class="contBox">
			<input type="hidden" name="a" id="a">
			<input type="hidden" name="b" id="b">
			<input type="hidden" name="c" id="c">
			<div class="cHead chw-3 first">
				<h4 class="title-3 fc-1 chwTit">FAQ</h4>
			</div>
			
			<table id="tb-1" class="tb-1" style="margin: 35px auto; width: 100%;">
					<colgroup>
						<col width="175px">
						<col width="*">
						<col width="200px">
					</colgroup>
					<tbody>
						<%-- <c:if test="${not empty faqs }">
							<c:forEach var="faq" items="${faqs }">
								<tr>
									<td style="text-align: center; font-weight: bold; background: #fafafa;">${faq.type }</td>
									<td>${faq.title }</td>
									<td style="text-align: center;">
										<button type="button" class="btn btn-info" data-toggle="collapse" data-target="#demo${faq.no }" style="background-color: #e87a92 !important; border-color: #e87a92; padding: 8px 25px;">Answer</button>
							  		</td>
							  	</tr>
							  	<tr>
							  		<td colspan="3" style="padding: 0;">
								  		<div id="demo${faq.no }" class="collapse" style="padding: 25px 50px 25px; background-color: #e5e5e5; font-family: 'Inconsolata'">
												<img src="../resources/image/answer2.gif" style="width: 70px; height: 70px; float: left; margin-right: 44px; margin-bottom: 10px;">  <div style="padding-left: 147px;">${faq.contentsWithBr }</div>
								  		</div>
							  		</td>
							  	</tr>
							</c:forEach>
						</c:if> --%>
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
		</form>
	</div>
</div>
<%@include file="../include/footer.jsp" %>
</body>
<script type="text/javascript">
$(function() {
	
	var pagecount = 0;
	
	$.ajax({
		type : "GET",
		url : "../ajax/allFAQList.do",
		dataTye : "json",
		data : {
			count : pagecount
		},
		success : function (results) {
			$('#tb-1 tbody').html('');
			$.each(results, function(index, faq) {
				var row = '';
				row += "<tr>"
				row += "<td style='text-align: center; font-weight: bold; background: #fafafa;'>"+faq.type+"</td>"
				row += "<td>"+faq.title+"</td>"
				row += "<td style='text-align: center;'><button type='button' class='btn btn-info' data-toggle='collapse' data-target='#demo"+faq.no+"' style='background-color: #e87a92 !important; border-color: #e87a92; padding: 8px 25px;'>Answer</button></td>"
				row += "</tr>"
				row += "<tr>"
				row += "<td colspan='3' style='padding: 0;'><div id='demo"+faq.no+"' class='collapse' style='padding: 25px 50px 25px; background-color: #e5e5e5; '><img src='../resources/image/answer2.gif' style='width: 70px; height: 70px; float: left; margin-right: 44px; margin-bottom: 10px;'>  <div style='padding-left: 145px; font-size: 13px !important;'>"+faq.contentsWithBr+"</div></div></td>"
				row += "</tr>"
				
			$('#tb-1 tbody').append(row);
			});
		}
	});
	
	$('#pn-nav ul').on('click','li a', function() {
		var count = $(this).attr('id').replace('page-count-', '');
		pagecount = count - 1;
		$('#pn-nav ul li a').attr('style', 'color:#e799a3; background-color:white');
		$(this).attr('style', 'color:white; background-color:#e799a3');
		
		$.ajax({
			type : "GET",
			url : "../ajax/allFAQList.do",
			dataTye : "json",
			data : {
				count : pagecount
			},
			success : function (results) {
				$('#tb-1 tbody').html('');
				$.each(results, function(index, faq) {
					var row = '';
					row += "<tr>"
					row += "<td style='text-align: center; font-weight: bold; background: #fafafa;'>"+faq.type+"</td>"
					row += "<td>"+faq.title+"</td>"
					row += "<td style='text-align: center;'><button type='button' class='btn btn-info' data-toggle='collapse' data-target='#demo"+faq.no+"' style='background-color: #e87a92 !important; border-color: #e87a92; padding: 8px 25px;'>Answer</button></td>"
					row += "</tr>"
					row += "<tr>"
					row += "<td colspan='3' style='padding: 0;'><div id='demo"+faq.no+"' class='collapse' style='padding: 25px 50px 25px; background-color: #e5e5e5; '><img src='../resources/image/answer2.gif' style='width: 70px; height: 70px; float: left; margin-right: 44px; margin-bottom: 10px;'>  <div style='padding-left: 145px; font-size: 13px !important;'>"+faq.contentsWithBr+"</div></div></td>"
					row += "</tr>"
					
				$('#tb-1 tbody').append(row);
				});
			}
		});
	});
})
</script>
</html>