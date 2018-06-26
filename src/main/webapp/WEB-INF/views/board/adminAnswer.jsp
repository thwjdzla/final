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
.tbData tbody th:first-child {
    border-left: none;
}
.tbData th {
    padding: 13px 22px 12px 22px;
    text-align: center;
}
.tb-1 td.fm {
    padding-top: 16px;
    padding-bottom: 16px;
}
.tbData td {
    padding: 14px 20px 14px 20px;
}
.tb-1 td {
    color: #333;
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
    margin-top: 0;
    margin-bottom: 17px;
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
		<!-- <h2 class="pagTit">나의 문의 현황</h2> -->
		<div class="pagTitSub1" style="height: 250px; margin-bottom: 10px;">
			<div class="text-block">
				<h4>최고의 순간을 PARTYMIX 호텔에서 함께 하실 수 있도록</h4>
	    		<h4>귀 기울여 감동 서비스로 보답해드리겠습니다.</h4>
			</div>
		</div>
		<div class="contBox">
			<c:choose>
				<c:when test="${LOGIN_USER.type == 'A' }">
				<form id="addAdminAnswerForm" name="addAdminAnswerForm" method="post" action="addAdminAnser.do" enctype="multipart/form-data">
					<input type="hidden" name="questionNo" value="${adminQuestion.no }">
						<div class="cHead chw-3 first">
							<h4 class="title-3 fc-1 chwTit">고객 문의</h4>
						</div>
						
						<table class="tb-1 tbData" style="margin: 35px auto; width: 100%;">
							<colgroup>
								<col width="175px">
								<col width="*">
								<col width="210px">
								<col width="200px">
							</colgroup>
							<tbody>
								<tr>
									<th></th>
									<th>제목</th>
									<th>작성일</th>
									<th>상태</th>
								</tr>
								<c:if test="${empty adminQuestion }">
									<td colspan="4" class="text-center" style="padding: 70px;">등록된 문의가 없습니다.</td>
								</c:if>
								<c:if test="${not empty adminQuestion }">
									<tr>
										<td style="text-align: center; font-weight: bold; background: #fafafa;">${adminQuestion.type == 'U' ? '고객문의' : '업체문의' }</td>
										<td>${adminQuestion.title }</td>
										<td><fmt:formatDate value="${adminQuestion.createDate }" pattern="yyyy.MM.dd HH:mm:ss"/></td>
										<td style="text-align: center;">
											<c:if test="${adminQuestion.status == '미답변' }">
												<span class="qstatus" style="background-color: Gray !important;border-color: #e87a92;padding: 8px 40px;color: #fff;font-size: 14px;border-radius: 0.25em;">${adminQuestion.status }</span>
											</c:if>
											<c:if test="${adminQuestion.status == '답변완료' }">
												<span class="qstatus" style="background-color: #e87a92 !important;border-color: #e87a92;padding: 8px 40px;color: #fff;font-size: 14px;border-radius: 0.25em;">${adminQuestion.status }</span>
											</c:if>
								  		</td>
								  	</tr>
									<tr>
										<td style="text-align: center; font-weight: bold; background: #fafafa;">내용</td>
										<td colspan="3">${adminQuestion.contentsWithBr }</td>
								  	</tr>
								</c:if>	
							</tbody>
						</table>
						
						<div class="cHead chw-3 first">
							<h4 class="title-3 fc-1 chwTit">문의 답변</h4>
						</div>
						
						<table class="tb-1 tbData" style="margin: 35px auto; width: 100%;">
							<c:if test="${empty adminAnswer }">
								<colgroup>
									<col width="175px">
									<col width="*">
									<col width="160px">
								</colgroup>
								<tbody>
									<tr>
										<td colspan="3" class="text-center" style="padding: 70px;">등록된 답변이 없습니다.</td>
									</tr>
									<tr>
										<td style="text-align: center; font-weight: bold; background: #fafafa;">답변</td>
										<td style="padding-right: 0;">
											<textarea name="contents" rows="7" cols="76" placeholder="답변을 등록해 주세요." style="padding-right: 0px;"></textarea>
										</td>
										<td style="text-align: left; padding-left: 0;">
											<button type="submit" class="qstatus" style="background-color: #e87a92 !important; border-color: #e87a92; padding: 75px 31px; color: #fff; font-size: 14px; border-radius: 0.25em;">답변등록</button>
								  		</td>
									</tr>
								</tbody>
							</c:if>
							<c:if test="${not empty adminAnswer }">
								<colgroup>
									<col width="175px">
									<col width="*">
									<col width="210px">
									<col width="410px">
								</colgroup>
								<tbody>
									<tr>
										<td rowspan="2" style="text-align: center; font-weight: bold; background: #fafafa;">답변</td>
										<td>PARTYMIX</td>
										<td style="text-align: center; font-weight: bold; background: #fafafa;">작성일</td>
										<td><fmt:formatDate value="${adminAnswer.createDate }" pattern="yyyy.MM.dd HH:mm:ss"/></td>
								  	</tr>
								  	<tr>
										<td colspan="3">${adminAnswer.contentsWithBr }</td>
							  		</tr>
								</tbody>
							</c:if>	
						</table>
					</form>
				</c:when>
				<c:when test="${LOGIN_USER.type == 'U' }">
						<div class="cHead chw-3 first">
							<h4 class="title-3 fc-1 chwTit">나의 문의</h4>
						</div>
						
						<table class="tb-1 tbData" style="margin: 35px auto; width: 100%;">
							<colgroup>
								<col width="175px">
								<col width="*">
								<col width="210px">
								<col width="200px">
							</colgroup>
							<tbody>
								<tr>
									<th></th>
									<th>제목</th>
									<th>작성일</th>
									<th>상태</th>
								</tr>
								<c:if test="${empty adminQuestion }">
									<td colspan="4" class="text-center" style="padding: 70px;">등록된 문의가 없습니다.</td>
								</c:if>
								<c:if test="${not empty adminQuestion }">
								  	<tr>
										<td rowspan="2"" style="text-align: center; font-weight: bold; background: #fafafa;">내용</td>
										<td>${adminQuestion.title }</td>
										<td><fmt:formatDate value="${adminQuestion.createDate }" pattern="yyyy.MM.dd HH:mm:ss"/></td>
										<td style="text-align: center;">
											<c:if test="${adminQuestion.status == '미답변' }">
												<span class="qstatus" style="background-color: Gray !important;border-color: #e87a92;padding: 8px 40px;color: #fff;font-size: 14px;border-radius: 0.25em;">${adminQuestion.status }</span>
											</c:if>
											<c:if test="${adminQuestion.status == '답변완료' }">
												<span class="qstatus" style="background-color: #e87a92 !important;border-color: #e87a92;padding: 8px 40px;color: #fff;font-size: 14px;border-radius: 0.25em;">${adminQuestion.status }</span>
											</c:if>
								  		</td>
								  	</tr>
									<tr>
										<td colspan="3">${adminQuestion.contentsWithBr }</td>
								  	</tr>
								</c:if>	
							</tbody>
						</table>
						
						<div class="cHead chw-3 first">
							<h4 class="title-3 fc-1 chwTit">문의 답변</h4>
						</div>
						
						<table class="tb-1 tbData" style="margin: 35px auto; width: 100%;">
							<c:if test="${empty adminAnswer }">
								<colgroup>
									<col width="175px">
									<col width="*">
									<col width="160px">
								</colgroup>
								<tbody>
									<tr>
										<td colspan="3" class="text-center" style="padding: 70px;">등록된 답변이 없습니다.</td>
									</tr>
								</tbody>
							</c:if>
							<c:if test="${not empty adminAnswer }">
								<colgroup>
									<col width="175px">
									<col width="*">
									<col width="210px">
									<col width="410px">
								</colgroup>
								<tbody>
									<tr>
										<td rowspan="2" style="text-align: center; font-weight: bold; background: #fafafa;">답변</td>
										<td>PARTYMIX</td>
										<td style="text-align: center; font-weight: bold; background: #fafafa;">작성일</td>
										<td><fmt:formatDate value="${adminAnswer.createDate }" pattern="yyyy.MM.dd HH:mm:ss"/></td>
								  	</tr>
								  	<tr>
										<td colspan="3">${adminAnswer.contentsWithBr }</td>
							  		</tr>
								</tbody>
							</c:if>	
						</table>
				</c:when>
				<c:when test="${LOGIN_USER.type == 'C' }">
						<div class="cHead chw-3 first">
							<h4 class="title-3 fc-1 chwTit">나의 문의</h4>
						</div>
						
						<table class="tb-1 tbData" style="margin: 35px auto; width: 100%;">
							<colgroup>
								<col width="175px">
								<col width="*">
								<col width="210px">
								<col width="200px">
							</colgroup>
							<tbody>
								<tr>
									<th></th>
									<th>제목</th>
									<th>작성일</th>
									<th>상태</th>
								</tr>
								<c:if test="${empty adminQuestion }">
									<td colspan="4" class="text-center" style="padding: 70px;">등록된 문의가 없습니다.</td>
								</c:if>
								<c:if test="${not empty adminQuestion }">
								  	<tr>
										<td rowspan="2"" style="text-align: center; font-weight: bold; background: #fafafa;">내용</td>
										<td>${adminQuestion.title }</td>
										<td><fmt:formatDate value="${adminQuestion.createDate }" pattern="yyyy.MM.dd HH:mm:ss"/></td>
										<td style="text-align: center;">
											<c:if test="${adminQuestion.status == '미답변' }">
												<span class="qstatus" style="background-color: Gray !important;border-color: #e87a92;padding: 8px 40px;color: #fff;font-size: 14px;border-radius: 0.25em;">${adminQuestion.status }</span>
											</c:if>
											<c:if test="${adminQuestion.status == '답변완료' }">
												<span class="qstatus" style="background-color: #e87a92 !important;border-color: #e87a92;padding: 8px 40px;color: #fff;font-size: 14px;border-radius: 0.25em;">${adminQuestion.status }</span>
											</c:if>
								  		</td>
								  	</tr>
									<tr>
										<td colspan="3">${adminQuestion.contentsWithBr }</td>
								  	</tr>
								</c:if>	
							</tbody>
						</table>
						
						<div class="cHead chw-3 first">
							<h4 class="title-3 fc-1 chwTit">문의 답변</h4>
						</div>
						
						<table class="tb-1 tbData" style="margin: 35px auto; width: 100%;">
							<c:if test="${empty adminAnswer }">
								<colgroup>
									<col width="175px">
									<col width="*">
									<col width="160px">
								</colgroup>
								<tbody>
									<tr>
										<td colspan="3" class="text-center" style="padding: 70px;">등록된 답변이 없습니다.</td>
									</tr>
								</tbody>
							</c:if>
							<c:if test="${not empty adminAnswer }">
								<colgroup>
									<col width="175px">
									<col width="*">
									<col width="210px">
									<col width="410px">
								</colgroup>
								<tbody>
									<tr>
										<td rowspan="2" style="text-align: center; font-weight: bold; background: #fafafa;">답변</td>
										<td>PARTYMIX</td>
										<td style="text-align: center; font-weight: bold; background: #fafafa;">작성일</td>
										<td><fmt:formatDate value="${adminAnswer.createDate }" pattern="yyyy.MM.dd HH:mm:ss"/></td>
								  	</tr>
								  	<tr>
										<td colspan="3">${adminAnswer.contentsWithBr }</td>
							  		</tr>
								</tbody>
							</c:if>	
						</table>
				</c:when>
			</c:choose>
		</div>
		<div class="btnArea-1">
			<a href="../board/myQnA.do" class="w3-btn w3-red" style="width: 126px !important; padding: 19px 32px; background-color: #e87a92 !important; text-decoration: none;">목록</a>
		</div>
	</div>
</div>
<%@include file="../include/footer.jsp" %>
</body>
</html>