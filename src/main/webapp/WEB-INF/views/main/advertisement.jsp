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
  <style type="text/css">
  .contBg {
    min-width: 1260px;
    padding-top: 0;
    padding-bottom: 150px;
    background: #eeeeee;
}
.contWrap {
    width: 616px;
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
.contBox {
    background: #fff;
    border: solid 1px #eee;
    padding: 42px 32px 32px;
    margin: auto;
    margin-top: 25px;
}
.tb-1 {
    border-top: solid 2px #e87a92;
}

  </style>
</head>
<body>
<%@include file="../include/nav.jsp"%>
<%@ include file="../include/mypagenav.jsp" %>
<div id="container ct" class="contBg">
	<div class="contWrap">
	<h2 class="pagTit">광고 등록 </h2>
	<div class="pagTitSub" style="text-align: center; margin-bottom: 25px;"></div>
		<div class="contBox">
			<table class="table" id="siteTable">
				<colgroup>
					<col width="70%">
					<col width="30%">
				</colgroup>
				<thead style="background-color: #edadba;">
					<tr>
						<th>url</th>
						<th></th>
					</tr>
				</thead>
				<tbody>
					<c:forEach var="advertisementApply" items="${advertisementApply}">
						<tr>
							<td>${advertisementApply.url }</td>
							<td>	
								<a href="#" id="registerApply" class="w3-btn w3-red" style="border: 1px solid transparent; border-radius: 4px; width: 82px !important; height: 33px !important; padding: 6px 12px; background-color: #e87a92 !important; color:white;  border-color: #e87a92; text-decoration: none; font-size: 14px;">등록</a>
								<a href="deleteadvertisementApply.do?no=${advertisementApply.no }" class="w3-btn w3-red" style="border: 1px solid transparent; border-radius: 4px; width: 82px !important; height: 33px !important; padding: 6px 12px; background-color: #e87a92 !important; color:white;  border-color: #e87a92; text-decoration: none; font-size: 14px;">삭제</a>
							</td>
						</tr>
					</c:forEach>
				</tbody>
			</table>
		</div>
		
		<div class="contBox">
			<h4 class="title-3 fc-1">광고</h4>
			<form id="advertisementform" class="tb-1 tbData" method="post" style="margin: 20px auto; width: 100%;" action="insertad.do" enctype="multipart/form-data">
			
				<div class="form-group">
					<label class="control-label">이미지</label>
					<input type="file" class="form-control" name="image"/>
					<span class="glyphicon glyphicon-warning-sign form-control-feedback" style="display:none"></span>
				</div>
				<div class="form-group">
					<label class="control-label">링크</label>
					<input type="text" class="form-control" name="link"/>
					<span class="glyphicon glyphicon-warning-sign form-control-feedback" style="display:none"></span>
				</div>
				<div class="form-group">
					<label class="control-label">위치</label>
					<select class="form-control" name="status">
						<option value="top">상단(1170/640)</option>
						<option value="bottom-left">왼쪽 하단(600/250)</option>
						<option value="bottom-right">오른쪽 하단(600/250)</option>
					</select>
				</div>
				<div class="text-right">
					<button class="btn" style="background-color: #e87a92; color:white; text-decoration: none;">등록</button>
				</div>
			</form>
		</div>
	</div>
</div>
<script>
$(function() {
	$('#advertisementform').submit(function(){
		var hasError = false;
		if($('input[name=image]').val().trim() == ''){
			$(":input[name=image]").parents('.form-group').addClass('has-error')
			.find('span').show();
			hasError = true;
		}
		if($('input[name=link]').val().trim() == ''){
			$(":input[name=link]").parents('.form-group').addClass('has-error')
			.find('span').show();
			hasError = true;
		}
		return !hasError;
	})
	
	$("a").on('click', function() {
			console.log("!");
			var url= $(this).parents('tr').children('td:eq(0)').text();
			$('input[name=link]').val(url);
		})
	
})
</script>
<%@include file="../include/footer.jsp" %>
</body>
</html>