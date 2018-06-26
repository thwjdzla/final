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
    margin: 0 auto 0;
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
.tb-1 {
    border-top: solid 2px #e87a92;
}
.title-1 {
	color: #333;
    line-height: 1.5;
}
.contBox {
    background: #fff;
    border: solid 1px #eee;
    padding: 42px 70px 70px;
    margin: auto;
    margin-top: 25px;
}
.authorization {
    text-align: center;
    margin: 26px 0;
}

.tb-1 {
    border-top: solid 2px #e87a92;
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

.tb-1 td.fm {
    padding-top: 16px;
    padding-bottom: 16px;
}
.tbData th {
    padding: 13px 22px 12px 22px;
}
.tbData td {
    padding: 14px 20px 14px 20px;
}
.tb-1 td {
    color: #333;
}

.table th, .table td {
	text-align: center;
	vertical-align: middle !important;
}
.btnArea-1 {
    margin-top: 20px;
    min-height: 60px;
    position: relative;
    text-align: center;
}
  </style>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  <script>
  $(function() {
	  if ($("#siteTable tbody tr").length >= 10) {
		  $("#siteadd-btn").prop('disabled', true);
	  }
	  
	  $('#adApplyForm').submit(function(){
			var hasError = false;
			if($('input[name=url]').val().trim() == ''){
				$(":input[name=url]").parents('.form-group').addClass('has-error')
				.find('span').show();
				hasError = true;
			}
			return !hasError;	  
	  })
  })
  </script>
</head>
<body>
<%@ include file="../../include/nav.jsp" %>
<%@ include file="../../include/mypagenav.jsp" %>
<div id="container ct" class="contBg">
	<div class="contWrap">
		<h2 class="pagTit">광고 신청</h2>
		<div class="contBox">
		<form id="adApplyForm" name="adApplyForm" method="post" action="addadApply.do" enctype="multipart/form-data">
			<div class="contBox">
				<h4 class="title-3 fc-1">url 입력</h4>
				<table class="tb-1 tbData" style="margin: 20px auto; width: 100%;">
					<colgroup>
						<col width="175px">
						<col width="*">
					</colgroup>
					<tbody>
						<tr class="form-group">
							<th>url</th>
							<td><input type="text" class="form-control" name="url" />
							<span class="glyphicon glyphicon-warning-sign form-control-feedback" style="display:none"></span></td>
						</tr>

				</table>
			</div>
			<div class="btnArea-1">
				<button id="siteadd-btn" type="submit" class="w3-btn w3-red" style="width: 126px !important; padding: 19px 32px; background-color: #e87a92 !important; text-decoration: none;">등록</button>
			</div>
		</form>		
	</div>
	</div>
</div>
<%@include file="../../include/footer.jsp" %>
</body>
</html>