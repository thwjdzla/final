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
    /* letter-spacing: -0.01em; */
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
		<input type="hidden" id="userType" value="${LOGIN_USER.type }">
		<c:choose>
		<c:when test="${LOGIN_USER.type == 'U' }">
		<!-- <h2 class="pagTit">나의 문의 현황</h2> -->
		<div class="pagTitSub1" style="height: 250px; margin-bottom: 10px;">
			<div class="text-block">
				<h4>최고의 순간을 PARTYMIX 호텔에서 함께 하실 수 있도록</h4>
	    		<h4>귀 기울여 감동 서비스로 보답해드리겠습니다.</h4>
			</div>
		</div>
			<div class="contBox">
				<div class="cHead chw-3 first">
					<h4 class="title-3 fc-1 chwTit">관리자 문의 내역</h4>
				</div>
				
				<table id="tb-3" class="tb-1 tbData" style="margin: 35px auto; width: 100%;">
					<colgroup>
						<col width="175px">
						<col width="*">
						<col width="210px">
						<col width="200px">
					</colgroup>
					<tbody>
						<tr>
							<th>분류</th>
							<th>제목</th>
							<th>작성일</th>
							<th>상태</th>
						</tr>
							<%-- <c:if test="${empty allAdminQuestionList }">
								<td colspan="4" class="text-center" style="padding: 30px;">등록된 문의가 없습니다.</td>
							</c:if>
							<c:if test="${not empty allAdminQuestionList }">
								<c:forEach var="allAdminQuestion" items="${allAdminQuestionList }">
									<tr>
										<td style="text-align: center; font-weight: bold; background: #fafafa;">관리자문의</td>
										<td><a href="adminAnswer.do?aNo=${allAdminQuestion.no }">${allAdminQuestion.title }</a></td>
										<td><fmt:formatDate value="${allAdminQuestion.createDate }" pattern="yyyy.MM.dd HH:mm:ss"/></td>
										<td style="text-align: center;">
											<c:if test="${allAdminQuestion.status == '미답변' }">
												<span class="qstatus" style="background-color: Gray !important; border-color: #e87a92; padding: 8px 32px; color: #fff; font-size: 14px; border-radius: 0.25em;">${allAdminQuestion.status }</span>
											</c:if>
											<c:if test="${allAdminQuestion.status == '답변완료' }">
												<span class="qstatus" style="background-color: #e87a92 !important; border-color: #e87a92; padding: 8px 25px; color: #fff; font-size: 14px; border-radius: 0.25em;">${allAdminQuestion.status }</span>
											</c:if>
								  		</td>
								  	</tr>
								</c:forEach>
							</c:if> --%>
					</tbody>
				</table>
				<nav id="pn-nav3" style="text-align: center">
					<ul class="pagination">
						<c:forEach var="count" begin="1" end="${page2}">
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
				
				
				<div class="cHead chw-3 first">
					<h4 class="title-3 fc-1 chwTit">업체 문의 내역</h4>
				</div>
			
				<table id="tb-1" class="tb-1 tbData" style="margin: 35px auto; width: 100%;">
					<colgroup>
						<col width="175px">
						<col width="*">
						<col width="210px">
						<col width="200px">
					</colgroup>
					<tbody>
						<tr>
							<th>분류</th>
							<th>제목</th>
							<th>작성일</th>
							<th>상태</th>
						</tr>
							<%-- <c:if test="${empty questionList }">
								<td colspan="4" class="text-center" style="padding: 30px;">등록된 문의가 없습니다.</td>
							</c:if>
							<c:if test="${not empty questionList }">
								<c:forEach var="question" items="${questionList }">
									<tr>
										<td style="text-align: center; font-weight: bold; background: #fafafa;">${question.cpName }</td>
										<td><a href="companyAnswer.do?no=${question.no }">${question.title }</a></td>
										<td><fmt:formatDate value="${question.createDate }" pattern="yyyy.MM.dd HH:mm:ss"/></td>
										<td style="text-align: center;">
											<c:if test="${question.status == '미답변' }">
												<span class="qstatus" style="background-color: Gray !important; border-color: #e87a92; padding: 8px 32px; color: #fff; font-size: 14px; border-radius: 0.25em;">${question.status }</span>
											</c:if>
											<c:if test="${question.status == '답변완료' }">
												<span class="qstatus" style="background-color: #e87a92 !important; border-color: #e87a92; padding: 8px 25px; color: #fff; font-size: 14px; border-radius: 0.25em;">${question.status }</span>
											</c:if>
								  		</td>
								  	</tr>
								</c:forEach>
							</c:if> --%>
					</tbody>
				</table>
				<nav id="pn-nav1" style="text-align: center">
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
			<div class="btnArea-1">
				<a href="../board/question.do" class="w3-btn w3-red" style="width: 126px !important; padding: 19px 32px; background-color: #e87a92 !important; text-decoration: none;">문의작성</a>
			</div>
		</c:when>
		<c:when test="${LOGIN_USER.type == 'C' }">
		<div class="pagTitSub1" style="height: 250px; margin-bottom: 10px;">
			<div class="text-block">
				<h4>최고의 순간을 PARTYMIX 호텔에서 함께 하실 수 있도록</h4>
	    		<h4>귀 기울여 감동 서비스로 보답해드리겠습니다.</h4>
			</div>
		</div>
			<div class="contBox">
				<div class="cHead chw-3 first">
					<h4 class="title-3 fc-1 chwTit">나의 문의 내역</h4>
				</div>
				
				<table id="tb-4" class="tb-1 tbData" style="margin: 35px auto; width: 100%;">
					<colgroup>
						<col width="175px">
						<col width="*">
						<col width="210px">
						<col width="200px">
					</colgroup>
					<tbody>
						<tr>
							<th>분류</th>
							<th>제목</th>
							<th>작성일</th>
							<th>상태</th>
						</tr>
							<%-- <c:if test="${empty allAdminQuestionList }">
								<td colspan="4" class="text-center" style="padding: 30px;">등록된 문의가 없습니다.</td>
							</c:if>
							<c:if test="${not empty allAdminQuestionList }">
								<c:forEach var="allAdminQuestion" items="${allAdminQuestionList }">
									<tr>
										<td style="text-align: center; font-weight: bold; background: #fafafa;">관리자문의</td>
										<td><a href="adminAnswer.do?aNo=${allAdminQuestion.no }">${allAdminQuestion.title }</a></td>
										<td><fmt:formatDate value="${allAdminQuestion.createDate }" pattern="yyyy.MM.dd HH:mm:ss"/></td>
										<td style="text-align: center;">
											<c:if test="${allAdminQuestion.status == '미답변' }">
												<span class="qstatus" style="background-color: Gray !important; border-color: #e87a92; padding: 8px 32px; color: #fff; font-size: 14px; border-radius: 0.25em;">${allAdminQuestion.status }</span>
											</c:if>
											<c:if test="${allAdminQuestion.status == '답변완료' }">
												<span class="qstatus" style="background-color: #e87a92 !important; border-color: #e87a92; padding: 8px 25px; color: #fff; font-size: 14px; border-radius: 0.25em;">${allAdminQuestion.status }</span>
											</c:if>
								  		</td>
								  	</tr>
								</c:forEach>
							</c:if> --%>
					</tbody>
				</table>
				<nav id="pn-nav4" style="text-align: center">
					<ul class="pagination">
						<c:forEach var="count" begin="1" end="${page2}">
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
				
				<div class="cHead chw-3 first">
					<h4 class="title-3 fc-1 chwTit">고객 문의 내역</h4>
				</div>
			
				<table class="tb-1 tbData" id="tb-2" style="margin: 35px auto; width: 100%;">
					<colgroup>
						<col width="175px">
						<col width="*">
						<col width="210px">
						<col width="200px">
					</colgroup>
					<tbody>
						<tr>
							<th>분류</th>
							<th>제목</th>
							<th>작성일</th>
							<th>상태</th>
						</tr>
							<%-- <c:if test="${empty questionList }">
								<td colspan="4" class="text-center" style="padding: 30px;">등록된 문의가 없습니다.</td>
							</c:if>
							<c:if test="${not empty questionList }">
								<c:forEach var="question" items="${questionList }">
									<tr>
										<td style="text-align: center; font-weight: bold; background: #fafafa;">${question.cpName }</td>
										<td><a href="companyAnswer.do?no=${question.no }">${question.title }</a></td>
										<td><fmt:formatDate value="${question.createDate }" pattern="yyyy.MM.dd HH:mm:ss"/></td>
										<td style="text-align: center;">
											<c:if test="${question.status == '미답변' }">
												<span class="qstatus" style="background-color: Gray; border-color: #e87a92; padding: 8px 25px; color: #fff; font-size: 14px; border-radius: 0.25em;">${question.status == '미답변' ? '답변대기' : '답변완료' }</span>
											</c:if>
											<c:if test="${question.status == '답변완료' }">
												<span class="qstatus" style="background-color: #e87a92; border-color: #e87a92; padding: 8px 25px; color: #fff; font-size: 14px; border-radius: 0.25em;">${question.status == '미답변' ? '답변대기' : '답변완료' }</span>
											</c:if>
								  		</td>
								  	</tr>
								</c:forEach>
							</c:if> --%>
					</tbody>
				</table>
				<nav id="pn-nav2" style="text-align: center">
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
			<div class="btnArea-1">
				<a href="../board/question.do" class="w3-btn w3-red" style="width: 126px !important; padding: 19px 32px; background-color: #e87a92 !important; text-decoration: none;">문의작성</a>
			</div>
		</c:when>
		<c:when test="${LOGIN_USER.type == 'A' }">
		<div class="pagTitSub1" style="height: 250px; margin-bottom: 10px;">
			<div class="text-block">
				<h4>최고의 순간을 PARTYMIX 호텔에서 함께 하실 수 있도록</h4>
	    		<h4>귀 기울여 감동 서비스로 보답해드리겠습니다.</h4>
			</div>
		</div>
			<div class="contBox">
				<div class="cHead chw-3 first">
					<h4 class="title-3 fc-1 chwTit">고객 문의 내역</h4>
				</div>
				
				<table id="tb-5" class="tb-1 tbData" style="margin: 35px auto; width: 100%;">
					<colgroup>
						<col width="175px">
						<col width="*">
						<col width="210px">
						<col width="200px">
					</colgroup>
					<tbody>
						<tr>
							<th>분류</th>
							<th>제목</th>
							<th>작성일</th>
							<th>상태</th>
						</tr>
							<%-- <c:if test="${empty allAdminQuestionList }">
								<td colspan="4" class="text-center" style="padding: 30px;">등록된 문의가 없습니다.</td>
							</c:if>
							<c:if test="${not empty allAdminQuestionList }">
								<c:forEach var="allAdminQuestion" items="${allAdminQuestionList }">
									<c:if test="${allAdminQuestion.type == 'U' }">
										<tr>
											<td style="text-align: center; font-weight: bold; background: #fafafa;">${allAdminQuestion.type == 'U' ? '고객문의' : '업체문의' }</td>
											<td><a href="adminAnswer.do?aNo=${allAdminQuestion.no }">${allAdminQuestion.title }</a></td>
											<td><fmt:formatDate value="${allAdminQuestion.createDate }" pattern="yyyy.MM.dd HH:mm:ss"/></td>
											<td style="text-align: center;">
												<c:if test="${allAdminQuestion.status == '미답변' }">
													<span class="qstatus" style="background-color: Gray !important; border-color: #e87a92; padding: 8px 25px; color: #fff; font-size: 14px; border-radius: 0.25em;">${allAdminQuestion.status  == '미답변' ? '답변대기' : '답변완료' }</span>
												</c:if>
												<c:if test="${allAdminQuestion.status == '답변완료' }">
													<span class="qstatus" style="background-color: #e87a92 !important; border-color: #e87a92; padding: 8px 25px; color: #fff; font-size: 14px; border-radius: 0.25em;">${allAdminQuestion.status  == '미답변' ? '답변대기' : '답변완료' }</span>
												</c:if>
									  		</td>
									  	</tr>
									</c:if>
								</c:forEach>
							</c:if> --%>
					</tbody>
				</table>
				<nav id="pn-nav5" style="text-align: center">
					<ul class="pagination">
						<c:forEach var="count" begin="1" end="${page4}">
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
				
				<div class="cHead chw-3 first">
					<h4 class="title-3 fc-1 chwTit">업체 문의 내역</h4>
				</div>
				
				<table id="tb-6" class="tb-1 tbData" style="margin: 35px auto; width: 100%;">
					<colgroup>
						<col width="175px">
						<col width="*">
						<col width="210px">
						<col width="200px">
					</colgroup>
					<tbody>
						<tr>
							<th>분류</th>
							<th>제목</th>
							<th>작성일</th>
							<th>상태</th>
						</tr>
							<%-- <c:if test="${empty allAdminQuestionList }">
								<td colspan="4" class="text-center" style="padding: 30px;">등록된 문의가 없습니다.</td>
							</c:if>
							<c:if test="${not empty allAdminQuestionList }">
								<c:forEach var="allAdminQuestion" items="${allAdminQuestionList }">
									<c:if test="${allAdminQuestion.type == 'C' }">
										<tr>
											<td style="text-align: center; font-weight: bold; background: #fafafa;">${allAdminQuestion.type == 'U' ? '고객문의' : '업체문의' }</td>
											<td><a href="adminAnswer.do?aNo=${allAdminQuestion.no }">${allAdminQuestion.title }</a></td>
											<td><fmt:formatDate value="${allAdminQuestion.createDate }" pattern="yyyy.MM.dd HH:mm:ss"/></td>
											<td style="text-align: center;">
												<c:if test="${allAdminQuestion.status == '미답변' }">
													<span class="qstatus" style="background-color: Gray !important; border-color: #e87a92; padding: 8px 25px; color: #fff; font-size: 14px; border-radius: 0.25em;">${allAdminQuestion.status  == '미답변' ? '답변대기' : '답변완료' }</span>
												</c:if>
												<c:if test="${allAdminQuestion.status == '답변완료' }">
													<span class="qstatus" style="background-color: #e87a92 !important; border-color: #e87a92; padding: 8px 25px; color: #fff; font-size: 14px; border-radius: 0.25em;">${allAdminQuestion.status  == '미답변' ? '답변대기' : '답변완료' }</span>
												</c:if>
									  		</td>
									  	</tr>
									</c:if>
								</c:forEach>
							</c:if> --%>
					</tbody>
				</table>
				<nav id="pn-nav6" style="text-align: center">
					<ul class="pagination">
						<c:forEach var="count" begin="1" end="${page3}">
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
				
				<%-- <div class="cHead chw-3 first">
					<h4 class="title-3 fc-1 chwTit">업체 문의 내역</h4>
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
							<th>분류</th>
							<th>제목</th>
							<th>작성일</th>
							<th>상태</th>
						</tr>
							<c:if test="${empty questionList }">
								<td colspan="4" class="text-center" style="padding: 30px;">등록된 문의가 없습니다.</td>
							</c:if>
							<c:if test="${not empty questionList }">
								<c:forEach var="question" items="${questionList }">
									<tr>
										<td style="text-align: center; font-weight: bold; background: #fafafa;">${question.cpName }</td>
										<td><a href="companyAnswer.do?no=${question.no }">${question.title }</a></td>
										<td><fmt:formatDate value="${question.createDate }" pattern="yyyy.MM.dd HH:mm:ss"/></td>
										<td style="text-align: center;">
											<span class="qstatus" style="background-color: #e87a92 !important; border-color: #e87a92; padding: 8px 25px; color: #fff; font-size: 14px; border-radius: 0.25em;">${question.status }</span>
								  		</td>
								  	</tr>
								</c:forEach>
							</c:if>
					</tbody>
				</table> --%>
			</div>
			<div class="btnArea-1">
				<a href="../board/question.do" class="w3-btn w3-red" style="width: 126px !important; padding: 19px 32px; background-color: #e87a92 !important; text-decoration: none;">문의작성</a>
			</div>
		</c:when>
	</c:choose>
	</div>
</div>
<%@include file="../include/footer.jsp" %>
</body>
<script type="text/javascript">
$(function() {
	
	var pagecount = 0;
	
	var userType = $('#userType').val();
	
	if (userType == 'U') {
	
		$.ajax({
			type : "GET",
			url : "../ajax/allQuestionList.do",
			dataType : "json",
			data : {
				count : pagecount
				, type : 'U'
			},
			success : function(results) {
				$('#tb-1 tbody').html('');
				
				if (results.length == 0) {
					$('#tb-1 tbody').append("<tr><td colspan='4' class='text-center' style='padding: 30px;'>등록된 문의가 없습니다.</td></tr>");
					return;
				}
				
				$.each(results, function(index, questionForm) {
					
					var row = '';
					
	
					row += "<tr>";
					row += "<td style='text-align: center; font-weight: bold; background: #fafafa;'>"+questionForm.cpName+"</td>";
					row += "<td><a href='companyAnswer.do?no="+questionForm.no+"'>"+questionForm.title+"</a></td>";
					row += "<td>"+questionForm.fmtCreateDate+"</td>";
					row += "<td style='text-align: center;'>";
						
					if (questionForm.status == '미답변') {
						row += "<span class='qstatus' style='background-color: Gray !important; border-color: #e87a92; padding: 8px 32px; color: #fff; font-size: 14px; border-radius: 0.25em;'>"+questionForm.status+"</span>";
					} else if (questionForm.status == '답변완료') {
						row += "<span class='qstatus' style='background-color: #e87a92 !important; border-color: #e87a92; padding: 8px 25px; color: #fff; font-size: 14px; border-radius: 0.25em;'>"+questionForm.status+"</span>";
					}
					row += "</td>";
					row += "</tr>";
					
					$('#tb-1 tbody').append(row);
				});
			}
		});
		
		$('#pn-nav1 ul').on('click','li a', function() {
			var count = $(this).attr('id').replace('page-count-', '');
			pagecount = count - 1;
			$('#pn-nav1 ul li a').attr('style', 'color:#e799a3; background-color:white');
			$(this).attr('style', 'color:white; background-color:#e799a3');
			
			$.ajax({
				type : "GET",
				url : "../ajax/allQuestionList.do",
				dataType : "json",
				data : {
					count : pagecount
					, type : 'U'
				},
				success : function(results) {
					$('#tb-1 tbody').html('');
					
					if (results.length == 0) {
						$('#tb-1 tbody').append("<tr><td colspan='4' class='text-center' style='padding: 30px;'>등록된 문의가 없습니다.</td></tr>");
						return;
					}
					
					$.each(results, function(index, questionForm) {
						
						var row = '';
						
		
						row += "<tr>";
						row += "<td style='text-align: center; font-weight: bold; background: #fafafa;'>"+questionForm.cpName+"</td>";
						row += "<td><a href='companyAnswer.do?no="+questionForm.no+"'>"+questionForm.title+"</a></td>";
						row += "<td>"+questionForm.fmtCreateDate+"</td>";
						row += "<td style='text-align: center;'>";
							
						if (questionForm.status == '미답변') {
							row += "<span class='qstatus' style='background-color: Gray !important; border-color: #e87a92; padding: 8px 32px; color: #fff; font-size: 14px; border-radius: 0.25em;'>"+questionForm.status+"</span>";
						} else if (questionForm.status == '답변완료') {
							row += "<span class='qstatus' style='background-color: #e87a92 !important; border-color: #e87a92; padding: 8px 25px; color: #fff; font-size: 14px; border-radius: 0.25em;'>"+questionForm.status+"</span>";
						}
						row += "</td>";
						row += "</tr>";
						
						$('#tb-1 tbody').append(row);
					});
				}
			});
		});
		
		
		$.ajax({
			type : "GET",
			url : "../ajax/allAdminQuestionList.do",
			dataType : "json",
			data : {
				count : pagecount
				, type : 'U'
			},
			success : function(results) {
				$('#tb-3 tbody').html('');
				
				if (results.length == 0) {
					$('#tb-3 tbody').append("<tr><td colspan='4' class='text-center' style='padding: 30px;'>등록된 문의가 없습니다.</td></tr>");
					return;
				}
				
				$.each(results, function(index, adminQuestion) {
					
					var row = '';
					
					row += "<tr>";
					row += "<td style='text-align: center; font-weight: bold; background: #fafafa;'>관리자문의</td>";
					row += "<td><a href='adminAnswer.do?aNo="+adminQuestion.no+"'>"+adminQuestion.title+"</a></td>";
					row += "<td>"+adminQuestion.fmtCreateDate+"</td>";
					row += "<td style='text-align: center;'>";
						
					if (adminQuestion.status == '미답변') {
						row += "<span class='qstatus' style='background-color: Gray !important; border-color: #e87a92; padding: 8px 32px; color: #fff; font-size: 14px; border-radius: 0.25em;'>미답변</span>";
					} else if (adminQuestion.status == '답변완료') {
						row += "<span class='qstatus' style='background-color: #e87a92 !important; border-color: #e87a92; padding: 8px 25px; color: #fff; font-size: 14px; border-radius: 0.25em;'>답변완료</span>";
					}
					row += "</td>";
					row += "</tr>";
					
					$('#tb-3 tbody').append(row);
					
				});
			}
		});
		
		
		$('#pn-nav3 ul').on('click','li a', function() {
			var count = $(this).attr('id').replace('page-count-', '');
			pagecount = count - 1;
			$('#pn-nav3 ul li a').attr('style', 'color:#e799a3; background-color:white');
			$(this).attr('style', 'color:white; background-color:#e799a3');
			
			$.ajax({
				type : "GET",
				url : "../ajax/allAdminQuestionList.do",
				dataType : "json",
				data : {
					count : pagecount
					, type : 'U'
				},
				success : function(results) {
					$('#tb-3 tbody').html('');
					
					if (results.length == 0) {
						$('#tb-3 tbody').append("<tr><td colspan='4' class='text-center' style='padding: 30px;'>등록된 문의가 없습니다.</td></tr>");
						return;
					}
					
					$.each(results, function(index, adminQuestion) {
						
						var row = '';
						
						row += "<tr>";
						row += "<td style='text-align: center; font-weight: bold; background: #fafafa;'>관리자문의</td>";
						row += "<td><a href='adminAnswer.do?aNo="+adminQuestion.no+"'>"+adminQuestion.title+"</a></td>";
						row += "<td>"+adminQuestion.fmtCreateDate+"</td>";
						row += "<td style='text-align: center;'>";
							
						if (adminQuestion.status == '미답변') {
							row += "<span class='qstatus' style='background-color: Gray !important; border-color: #e87a92; padding: 8px 32px; color: #fff; font-size: 14px; border-radius: 0.25em;'>미답변</span>";
						} else if (adminQuestion.status == '답변완료') {
							row += "<span class='qstatus' style='background-color: #e87a92 !important; border-color: #e87a92; padding: 8px 25px; color: #fff; font-size: 14px; border-radius: 0.25em;'>답변완료</span>";
						}
						row += "</td>";
						row += "</tr>";
						
						$('#tb-3 tbody').append(row);
						
					});
				}
			});
		});
		
		
	}	
	
	
	
	if (userType == 'C') {
		$.ajax({
			type : "GET",
			url : "../ajax/allQuestionList.do",
			dataType : "json",
			data : {
				count : pagecount
				, type : 'C'
			},
			success : function(results) {
				$('#tb-2 tbody').html('');
				
				if (results.length == 0) {
					$('#tb-2 tbody').append("<tr><td colspan='4' class='text-center' style='padding: 30px;'>등록된 문의가 없습니다.</td></tr>");
					return;
				}
				
				$.each(results, function(index, questionForm) {
					
					var row = '';
					
					row += "<tr>";
					row += "<td style='text-align: center; font-weight: bold; background: #fafafa;'>"+questionForm.cpName+"</td>";
					row += "<td><a href='companyAnswer.do?no="+questionForm.no+"'>"+questionForm.title+"</a></td>";
					row += "<td>"+questionForm.fmtCreateDate+"</td>";
					row += "<td style='text-align: center;'>";
						
					if (questionForm.status == '미답변') {
						row += "<span class='qstatus' style='background-color: Gray !important; border-color: #e87a92; padding: 8px 25px; color: #fff; font-size: 14px; border-radius: 0.25em;'>답변대기</span>";
					} else if (questionForm.status == '답변완료') {
						row += "<span class='qstatus' style='background-color: #e87a92 !important; border-color: #e87a92; padding: 8px 25px; color: #fff; font-size: 14px; border-radius: 0.25em;'>답변완료</span>";
					}
					row += "</td>";
					row += "</tr>";
					
					$('#tb-2 tbody').append(row);
				
				});
			}
		});
		
		$('#pn-nav2 ul').on('click','li a', function() {
			var count = $(this).attr('id').replace('page-count-', '');
			pagecount = count - 1;
			$('#pn-nav2 ul li a').attr('style', 'color:#e799a3; background-color:white');
			$(this).attr('style', 'color:white; background-color:#e799a3');
			
			$.ajax({
				type : "GET",
				url : "../ajax/allQuestionList.do",
				dataType : "json",
				data : {
					count : pagecount
					, type : 'C'
				},
				success : function(results) {
					$('#tb-2 tbody').html('');
					
					if (results.length == 0) {
						$('#tb-2 tbody').append("<tr><td colspan='4' class='text-center' style='padding: 30px;'>등록된 문의가 없습니다.</td></tr>");
						return;
					}
					
					$.each(results, function(index, questionForm) {
						
						var row = '';
					
						row += "<tr>";
						row += "<td style='text-align: center; font-weight: bold; background: #fafafa;'>"+questionForm.cpName+"</td>";
						row += "<td><a href='companyAnswer.do?no="+questionForm.no+"'>"+questionForm.title+"</a></td>";
						row += "<td>"+questionForm.fmtCreateDate+"</td>";
						row += "<td style='text-align: center;'>";
							
						if (questionForm.status == '미답변') {
							row += "<span class='qstatus' style='background-color: Gray !important; border-color: #e87a92; padding: 8px 25px; color: #fff; font-size: 14px; border-radius: 0.25em;'>답변대기</span>";
						} else if (questionForm.status == '답변완료') {
							row += "<span class='qstatus' style='background-color: #e87a92 !important; border-color: #e87a92; padding: 8px 25px; color: #fff; font-size: 14px; border-radius: 0.25em;'>답변완료</span>";
						}
						row += "</td>";
						row += "</tr>";
						
						$('#tb-2 tbody').append(row);
					});
				}
			});
			
		});
		
		
		
		
		
		
		
		$.ajax({
			type : "GET",
			url : "../ajax/allAdminQuestionList.do",
			dataType : "json",
			data : {
				count : pagecount
				, type : 'C'
			},
			success : function(results) {
				$('#tb-4 tbody').html('');
				
				if (results.length == 0) {
					$('#tb-4 tbody').append("<tr><td colspan='4' class='text-center' style='padding: 30px;'>등록된 문의가 없습니다.</td></tr>");
					return;
				}
				
				$.each(results, function(index, adminQuestion) {
					console.log(adminQuestion);
					var row = '';
	
					row += "<tr>";
					row += "<td style='text-align: center; font-weight: bold; background: #fafafa;'>관리자문의</td>";
					row += "<td><a href='adminAnswer.do?aNo="+adminQuestion.no+"'>"+adminQuestion.title+"</a></td>";
					row += "<td>"+adminQuestion.fmtCreateDate+"</td>";
					row += "<td style='text-align: center;'>";
						
					if (adminQuestion.status == '미답변') {
						row += "<span class='qstatus' style='background-color: Gray !important; border-color: #e87a92; padding: 8px 32px; color: #fff; font-size: 14px; border-radius: 0.25em;'>미답변</span>";
					} else if (adminQuestion.status == '답변완료') {
						row += "<span class='qstatus' style='background-color: #e87a92 !important; border-color: #e87a92; padding: 8px 25px; color: #fff; font-size: 14px; border-radius: 0.25em;'>답변완료</span>";
					}
					row += "</td>";
					row += "</tr>";
					
					$('#tb-4 tbody').append(row);
				});
			}
		});
		
		$('#pn-nav4 ul').on('click','li a', function() {
			var count = $(this).attr('id').replace('page-count-', '');
			pagecount = count - 1;
			$('#pn-nav4 ul li a').attr('style', 'color:#e799a3; background-color:white');
			$(this).attr('style', 'color:white; background-color:#e799a3');
			
			$.ajax({
				type : "GET",
				url : "../ajax/allAdminQuestionList.do",
				dataType : "json",
				data : {
					count : pagecount
					, type : 'C'
				},
				success : function(results) {
					$('#tb-4 tbody').html('');
					
					if (results.length == 0) {
						$('#tb-4 tbody').append("<tr><td colspan='4' class='text-center' style='padding: 30px;'>등록된 문의가 없습니다.</td></tr>");
						return;
					}
					
					$.each(results, function(index, adminQuestion) {
						var row = '';
		
						row += "<tr>";
						row += "<td style='text-align: center; font-weight: bold; background: #fafafa;'>관리자문의</td>";
						row += "<td><a href='adminAnswer.do?aNo="+adminQuestion.no+"'>"+adminQuestion.title+"</a></td>";
						row += "<td>"+adminQuestion.fmtCreateDate+"</td>";
						row += "<td style='text-align: center;'>";
							
						if (adminQuestion.status == '미답변') {
							row += "<span class='qstatus' style='background-color: Gray !important; border-color: #e87a92; padding: 8px 32px; color: #fff; font-size: 14px; border-radius: 0.25em;'>미답변</span>";
						} else if (adminQuestion.status == '답변완료') {
							row += "<span class='qstatus' style='background-color: #e87a92 !important; border-color: #e87a92; padding: 8px 25px; color: #fff; font-size: 14px; border-radius: 0.25em;'>답변완료</span>";
						}
						row += "</td>";
						row += "</tr>";
						
						$('#tb-4 tbody').append(row);
					});
				}
			});
		});
	}
	
	
	
	
	
	if (userType == 'A') {
		
		$.ajax({
			type : "GET",
			url : "../ajax/companyAdminQuestionList.do",
			dataType : "json",
			data : {
				count : pagecount
			},
			success : function(results) {
				
				console.log(results);
				
				if (results.length == 0) {
					$('#tb-6 tbody').append("<tr><td colspan='4' class='text-center' style='padding: 30px;'>등록된 문의가 없습니다.</td></tr>");
					return;
				}
				
				$.each(results, function(index, adminQuestion) {
					
					var row = '';
					
						row += "<tr>";
						row += "<td style='text-align: center; font-weight: bold; background: #fafafa;'>업체문의</td>";
						row += "<td><a href='adminAnswer.do?aNo="+adminQuestion.no+"'>"+adminQuestion.title+"</a></td>";
						row += "<td>"+adminQuestion.fmtCreateDate+"</td>";
						row += "<td style='text-align: center;'>";
							
						if (adminQuestion.status == '미답변') {
							row += "<span class='qstatus' style='background-color: Gray !important; border-color: #e87a92; padding: 8px 25px; color: #fff; font-size: 14px; border-radius: 0.25em;'>답변대기</span>";
						} else if (adminQuestion.status == '답변완료') {
							row += "<span class='qstatus' style='background-color: #e87a92 !important; border-color: #e87a92; padding: 8px 25px; color: #fff; font-size: 14px; border-radius: 0.25em;'>답변완료</span>";
						}
						row += "</td>";
						row += "</tr>";
					
						
						$('#tb-6 tbody').append(row);
						
				});
			}
		});
		
		
		$('#pn-nav6 ul').on('click','li a', function() {
			var count = $(this).attr('id').replace('page-count-', '');
			pagecount = count - 1;
			$('#pn-nav6 ul li a').attr('style', 'color:#e799a3; background-color:white');
			$(this).attr('style', 'color:white; background-color:#e799a3');
			
			$.ajax({
				type : "GET",
				url : "../ajax/companyAdminQuestionList.do",
				dataType : "json",
				data : {
					count : pagecount
				},
				success : function(results) {
					
					console.log(results);
					
					if (results.length == 0) {
						$('#tb-6 tbody').append("<tr><td colspan='4' class='text-center' style='padding: 30px;'>등록된 문의가 없습니다.</td></tr>");
						return;
					}
					
					$.each(results, function(index, adminQuestion) {
						
						var row = '';
						
							row += "<tr>";
							row += "<td style='text-align: center; font-weight: bold; background: #fafafa;'>업체문의</td>";
							row += "<td><a href='adminAnswer.do?aNo="+adminQuestion.no+"'>"+adminQuestion.title+"</a></td>";
							row += "<td>"+adminQuestion.fmtCreateDate+"</td>";
							row += "<td style='text-align: center;'>";
								
							if (adminQuestion.status == '미답변') {
								row += "<span class='qstatus' style='background-color: Gray !important; border-color: #e87a92; padding: 8px 25px; color: #fff; font-size: 14px; border-radius: 0.25em;'>답변대기</span>";
							} else if (adminQuestion.status == '답변완료') {
								row += "<span class='qstatus' style='background-color: #e87a92 !important; border-color: #e87a92; padding: 8px 25px; color: #fff; font-size: 14px; border-radius: 0.25em;'>답변완료</span>";
							}
							row += "</td>";
							row += "</tr>";
						
							
							$('#tb-6 tbody').append(row);
							
					});
				}
			});
		});
		
		
		
		$.ajax({
			type : "GET",
			url : "../ajax/userAdminQuestionList.do",
			dataType : "json",
			data : {
				count : pagecount
				, type : 'A'
			},
			success : function(results) {
				$('#tb-5 tbody').html('');
				
				if (results.length == 0) {
					$('#tb-6 tbody').append("<tr><td colspan='4' class='text-center' style='padding: 30px;'>등록된 문의가 없습니다.</td></tr>");
					return;
				}
				
				$.each(results, function(index, adminQuestion) {
					
					var row = '';
						
					row += "<tr>";
					row += "<td style='text-align: center; font-weight: bold; background: #fafafa;'>고객문의</td>";
					row += "<td><a href='adminAnswer.do?aNo="+adminQuestion.no+"'>"+adminQuestion.title+"</a></td>";
					row += "<td>"+adminQuestion.fmtCreateDate+"</td>";
					row += "<td style='text-align: center;'>";
						
					if (adminQuestion.status == '미답변') {
						row += "<span class='qstatus' style='background-color: Gray !important; border-color: #e87a92; padding: 8px 25px; color: #fff; font-size: 14px; border-radius: 0.25em;'>답변대기</span>";
					} else if (adminQuestion.status == '답변완료') {
						row += "<span class='qstatus' style='background-color: #e87a92 !important; border-color: #e87a92; padding: 8px 25px; color: #fff; font-size: 14px; border-radius: 0.25em;'>답변완료</span>";
					}
					row += "</td>";
					row += "</tr>";
					
					$('#tb-5 tbody').append(row);
					
				});
			}
		});
		
		$('#pn-nav5 ul').on('click','li a', function() {
			var count = $(this).attr('id').replace('page-count-', '');
			pagecount = count - 1;
			$('#pn-nav5 ul li a').attr('style', 'color:#e799a3; background-color:white');
			$(this).attr('style', 'color:white; background-color:#e799a3');
			
			$.ajax({
				type : "GET",
				url : "../ajax/userAdminQuestionList.do",
				dataType : "json",
				data : {
					count : pagecount
					, type : 'A'
				},
				success : function(results) {
					$('#tb-5 tbody').html('');
					
					if (results.length == 0) {
						$('#tb-6 tbody').append("<tr><td colspan='4' class='text-center' style='padding: 30px;'>등록된 문의가 없습니다.</td></tr>");
						return;
					}
					
					$.each(results, function(index, adminQuestion) {
						
						var row = '';
							
						row += "<tr>";
						row += "<td style='text-align: center; font-weight: bold; background: #fafafa;'>고객문의</td>";
						row += "<td><a href='adminAnswer.do?aNo="+adminQuestion.no+"'>"+adminQuestion.title+"</a></td>";
						row += "<td>"+adminQuestion.fmtCreateDate+"</td>";
						row += "<td style='text-align: center;'>";
							
						if (adminQuestion.status == '미답변') {
							row += "<span class='qstatus' style='background-color: Gray !important; border-color: #e87a92; padding: 8px 25px; color: #fff; font-size: 14px; border-radius: 0.25em;'>답변대기</span>";
						} else if (adminQuestion.status == '답변완료') {
							row += "<span class='qstatus' style='background-color: #e87a92 !important; border-color: #e87a92; padding: 8px 25px; color: #fff; font-size: 14px; border-radius: 0.25em;'>답변완료</span>";
						}
						row += "</td>";
						row += "</tr>";
						
						$('#tb-5 tbody').append(row);
						
					});
				}
			});
		});
	}
	
})
</script>
</html>