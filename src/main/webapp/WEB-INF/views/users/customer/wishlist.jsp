<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
  <title>Party Mix</title>
  <style type="text/css">
  .whimg img {
  	height: 350px; width: 100%; text-align:center; margin:auto;
  }
  </style>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>
<body>
<%@include file="../../include/nav.jsp" %>
<%@include file="../../include/mypagenav.jsp" %>
<div class="container" style="min-height:800px">
	<div class="whimg">
		<img src="../final/resources/image/wishlist.gif">
	</div>
	<table class="table">
		<colgroup>
			<col width="30%">
			<col width="*%">
			<col width="10%">
		</colgroup>
		<thead>
			<tr>
				<!-- <th colspan="3" style="color:#d36179"><h1>WishList</h1></th> -->
			</tr>
			<tr style="background-color: #edadba;">
				<th style="text-align: center;">제목</th>
				<th style="text-align: center;">링크</th>
				<th style="text-align: center;">삭제</th>
			</tr>
		</thead>
		<tbody>
		<c:forEach var="wishlist" items="${wishlist}">
		<tr>
			<td style="text-align: center;">${wishlist.name }</td>
			<td style="padding-left: 20px;"><a href="${wishlist.url }">${wishlist.url }</a></td>
			<td style="text-align: center;"><a class="btn btn-danger btn-xs" href="deletewishlist.do?no=${wishlist.no}">삭제</a></td>
		</tr>
		</c:forEach>
		</tbody>
	</table>
</div>
<%@include file="../../include/footer.jsp" %>
</body>
</html>