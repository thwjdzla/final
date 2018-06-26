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
  <link href="https://fonts.googleapis.com/css?family=Lobster" rel="stylesheet">
<style>
	a:hover {
		text-decoration:none;
	} 
	.panel {
		padding-top:45px; 
		text-align:center; 
		width: 240px; 
		height: 240px;
		color: #e7a1b0;
		border: 5px solid #e7a1b0;
	}
	.panel:hover {
		border: 5px solid #d36179;
		color: #d36179;
		background-color: #f7d4dc;
	}
	#menu:hover {
		border: 5px solid #e7a1b0;
		color: #e7a1b0;
		background-color: white;
	}
</style>
</head>

<body>
<%@include file="../../include/nav.jsp" %>
	<div class="container">
	<c:choose>
	<c:when test="${'A' eq LOGIN_USER.type }">
		<div class="row" style="margin-top: 120px; margin-left: 250px">
			<div class="col-sm-4">
				<a href="/final/admin/companyadmin.do">
					<div class="panel">
						<span class="glyphicon glyphicon-th-list"
							style="margin-top: font-weight: 600; font-size: 80px"></span> <br />
						<span style="font-weight: 600; font-size: 30px">업체관리</span>
					</div>
				</a>
			</div>
			<div class="col-sm-3">
				<a href="/final/admin/customerlist.do">
					<div class="panel">
						<span class="glyphicon glyphicon-th-list"
							style="margin-top: font-weight: 600; font-size: 80px"></span> <br />
						<span style="font-weight: 600; font-size: 30px">회원관리</span>
					</div>
				</a>
			</div>
		</div>
		<div class="row" style="margin-left: 250px">
			<div class="col-sm-4">
				<a href="/final/board/myQnA.do">
					<div class="panel">
						<span class="glyphicon glyphicon-th-list"
							style="margin-top: font-weight: 600; font-size: 80px"></span> <br />
						<span style="font-weight: 600; font-size: 30px">문의관리</span>
					</div>
				</a>
			</div>
			<div class="col-sm-3">
				<a href="/final/ad.do">
					<div class="panel">
						<span class="glyphicon glyphicon-th-list"
							style="margin-top: font-weight: 600; font-size: 80px"></span> <br />
						<span style="font-weight: 600; font-size: 30px">광고관리</span>
					</div>
				</a>
			</div>
		</div>
	</c:when>
	<c:when test="${'C' eq LOGIN_USER.type }">
		<div class="row" style="margin-top: 120px; margin-left: 150px">
			<div class="col-sm-3">
				<a href="/final/board/myQnA.do">
					<div class="panel">
						<span class="glyphicon glyphicon-th-list"
							style="margin-top: font-weight: 600; font-size: 80px"></span> <br />
						<span style="font-weight: 600; font-size: 30px">문의내역</span>
					</div>
				</a>
			</div>
			<div class="col-sm-3">
				<a href="/final/board/registeredList.do">
					<div class="panel">
						<span class="glyphicon glyphicon-th-list"
							style="margin-top: font-weight: 600; font-size: 80px"></span> <br />
						<span style="font-weight: 600; font-size: 30px">업체/상품</span>
					</div>
				</a>
			</div>
			<div class="col-sm-3">
				<a href="/final/package/packagelist.do">
					<div class="panel">
						<span class="glyphicon glyphicon-th-list"
							style="margin-top: font-weight: 600; font-size: 80px"></span> <br />
						<span style="font-weight: 600; font-size: 30px">패키지관리</span>
					</div>
				</a>
			</div>
		</div>
		<div class="row" style="margin-left: 150px">
			<div class="col-sm-3">
				<a href="/final/adApplyform.do">
					<div class="panel">
						<span class="glyphicon glyphicon-ok"
							style="margin-top: font-weight: 600; font-size: 80px"></span> <br />
						<span style="font-weight: 600; font-size: 30px">광고신청</span>
					</div>
				</a>
			</div>
			<div class="col-sm-3">
				<a href="/final/myinfo.do">
					<div class="panel">
						<span class="glyphicon glyphicon-cog"
							style="margin-top: font-weight: 600; font-size: 80px"></span> <br />
						<span style="font-weight: 600; font-size: 30px">내정보수정</span>
					</div>
				</a>
			</div>
			<div class="col-sm-3">
					<div class="panel" style="padding-top:70px; vertical-align: middle; background-color: #e7a1b0; color: white;" id="menu">
					<span style="vertical-align:middle; font-family: 'Lobster', cursive; opacity:1; font-size: 50px">PartyMix</span>
					</div>
			</div>
		</div>
	</c:when>
	<c:when test="${'U' eq LOGIN_USER.type }">
		<div class="row" style="margin-top: 120px; margin-left: 150px">
			<div class="col-sm-3">
				<a href="/final/reservelist.do?no=${LOGIN_USER.no }">
					<div class="panel">
						<span class="glyphicon glyphicon-shopping-cart"
							style="margin-top: font-weight: 600; font-size: 80px"></span> <br />
						<span style="font-weight: 600; font-size: 30px">예약내역</span>
					</div>
				</a>
			</div>
			<div class="col-sm-3">
				<a href="/final/pointlist.do">
					<div class="panel">
						<span class="glyphicon glyphicon-th-list"
							style="margin-top: font-weight: 600; font-size: 80px"></span> <br />
						<span style="font-weight: 600; font-size: 30px">포인트내역</span>
					</div>
				</a>
			</div>
			<div class="col-sm-3">
				<a href="/final/board/myQnA.do">
					<div class="panel">
						<span class="glyphicon glyphicon-headphones"
							style="margin-top: font-weight: 600; font-size: 80px"></span> <br />
						<span style="font-weight: 600; font-size: 30px">문의내역</span>
					</div>
				</a>
			</div>
		</div>
		<div class="row" style="margin-left: 150px">
			<div class="col-sm-3">
				<a href="/final/planner.do">
					<div class="panel">
						<span class="glyphicon glyphicon-calendar"
							style="margin-top: font-weight: 600; font-size: 80px"></span> <br />
						<span style="font-weight: 600; font-size: 30px">캘린더</span>
					</div>
				</a>
			</div>
			<div class="col-sm-3">
				<a href="/final/wishlist.do?no=${LOGIN_USER.no }">
					<div class="panel">
						<span class="glyphicon glyphicon-bookmark"
							style="margin-top: font-weight: 600; font-size: 80px"></span> <br />
						<span style="font-weight: 600; font-size: 30px">위시리스트</span>
					</div>
				</a>
			</div>
			<div class="col-sm-3">
				<a href="/final/myinfo.do">
					<div class="panel">
						<span class="glyphicon glyphicon-cog"
							style="margin-top: font-weight: 600; font-size: 80px"></span> <br />
						<span style="font-weight: 600; font-size: 30px">내정보수정</span>
					</div>
				</a>
			</div>
		</div>
	</c:when>	
	</c:choose>
	</div>
</body>
</html>