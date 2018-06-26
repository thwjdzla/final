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
.tbData td input{
    width:220px;
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
  <script src="https://ssl.daumcdn.net/dmaps/map_js_init/postcode.v2.js"></script>
  <script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=08a77f3d63de90f03ca60a81348aab7d&libraries=services"></script>
  <script type="text/javascript2" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=08a77f3d63de90f03ca60a81348aab7d"></script>
  <script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=08a77f3d63de90f03ca60a81348aab7d"></script>
  <script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=08a77f3d63de90f03ca60a81348aab7d&libraries=geocoder"></script>
  <script>
  $(function() {
	  if ($("#siteTable tbody tr").length >= 10) {
		  $("#siteadd-btn").prop('disabled', true);
	  }
	  
	  $('#SiteForm').submit(function(){
			var hasError = false;
			if($('input[name=image]').val().trim() == ''){
				$(":input[name=image]").parents('.form-group').addClass('has-error')
				.find('span').show();
				hasError = true;
			}
			if($('input[name=url]').val().trim() == ''){
				$(":input[name=url]").parents('.form-group').addClass('has-error')
				.find('span').show();
				hasError = true;
			}
			if($('input[name=name]').val().trim() == ''){
				$(":input[name=name]").parents('.form-group').addClass('has-error')
				.find('span').show();
				hasError = true;
			}
			if($('input[name=contents]').val().trim() == ''){
				$(":input[name=contents]").parents('.form-group').addClass('has-error')
				.find('span').show();
				hasError = true;
			}
			if($('input[name=locationLat]').val().trim() == ''){
				$(":input[name=locationLat]").parents('.form-group').addClass('has-error')
				.find('span').show();
				hasError = true;
			}
			if($('input[name=locationLng]').val().trim() == ''){
				$(":input[name=locationLng]").parents('.form-group').addClass('has-error')
				.find('span').show();
				hasError = true;
			}
			return !hasError;	  
	  })
	 
  })
    function sample6_execDaumPostcode() {
          new daum.Postcode({
              oncomplete: function(data) {
                  // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.

                  // 각 주소의 노출 규칙에 따라 주소를 조합한다.
                  // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
                  var fullAddr = ''; // 최종 주소 변수
                  var extraAddr = ''; // 조합형 주소 변수

                  // 사용자가 선택한 주소 타입에 따라 해당 주소 값을 가져온다.
                  if (data.userSelectedType === 'R') { // 사용자가 도로명 주소를 선택했을 경우
                      fullAddr = data.roadAddress;

                  } else { // 사용자가 지번 주소를 선택했을 경우(J)
                      fullAddr = data.jibunAddress;
                  }

                  // 사용자가 선택한 주소가 도로명 타입일때 조합한다.
                  if(data.userSelectedType === 'R'){
                      //법정동명이 있을 경우 추가한다.
                      if(data.bname !== ''){
                          extraAddr += data.bname;
                      }
                      // 건물명이 있을 경우 추가한다.
                      if(data.buildingName !== ''){
                          extraAddr += (extraAddr !== '' ? ', ' + data.buildingName : data.buildingName);
                      }
                      // 조합형주소의 유무에 따라 양쪽에 괄호를 추가하여 최종 주소를 만든다.
                      fullAddr += (extraAddr !== '' ? ' ('+ extraAddr +')' : '');
                  }
                  document.getElementById('detail_address1').value = fullAddr;
		            var address_start = $("#detail_address1").val();
			        // 주소로 좌표를 검색합니다
			        var geocoder = new daum.maps.services.Geocoder();
			        geocoder.addressSearch(address_start, function(result, status) {
			        	console.log(address_start);
		            // 정상적으로 검색이 완료됐으면
		            if (status === daum.maps.services.Status.OK) {
		
		                var coords = new daum.maps.LatLng(result[0].y, result[0].x);
		
		                console.log(result[0].y); /// 위도
		                console.log(result[0].x); /// 경도
		
		
		                $("#locationLat").val(result[0].y);  //order_start_lat 필드에 위도 값 저장
		                $("#locationLng").val(result[0].x);  //order_start_lon 필드에 경도 값 저장
		            }
		        });
              }
          }).open();
      }     
  </script>
</head>
<body>
<%@ include file="../../include/nav.jsp" %>
<%@ include file="../../include/mypagenav.jsp" %>
<div id="container ct" class="contBg">
	<div class="contWrap">
		<h2 class="pagTit">등록한 주변장소 정보</h2>
		<div class="pagTitSub" style="text-align: center; margin-bottom: 25px;">
			10개 이상은 등록할 수 없습니다.
		</div>
		<div class="contBox">
			<table class="table" id="siteTable">
				<colgroup>
					<col width="10%">
					<col width="20%">
					<col width="*%">
					<col width="12%">
					<col width="12%">
					<col width="10%">
				</colgroup>
				<thead style="background-color: #edadba;">
					<tr>
						<th>이름</th>
						<th>이미지</th>
						<th>url</th>
						<th>위도</th>
						<th>경도</th>
						<th></th>
					</tr>
				</thead>
				<tbody>
					<c:forEach var="site" items="${sites }">
						<tr>
							<td>${site.name }</td>
							<td><img src="../resources/image/${site.image }" style="width: 100px; height: 100px;"/></td>
							<td>${site.url }</td>
							<td>${site.locationLat }</td>
							<td>${site.locationLng }</td>
							<td>	
								<a href="deleteSite.do?url=${site.url }&no=${site.cpNo}" class="w3-btn w3-red" style="border: 1px solid transparent; border-radius: 4px; width: 82px !important; height: 33px !important; padding: 6px 12px; background-color: #e87a92 !important; border-color: #e87a92; text-decoration: none; font-size: 14px;">삭제</a>
							</td>
						</tr>
					</c:forEach>
				</tbody>
			</table>
		</div>
		
		<form id="SiteForm" name="SiteForm" method="post" action="addSite.do" enctype="multipart/form-data">
			<div class="contBox">
				<h4 class="title-3 fc-1">주변 장소</h4>
				<input type="hidden" value="${param.no }" name="cpNo">
				<table class="tb-1 tbData" style="margin: 20px auto; width: 100%;">
					<colgroup>
						<col width="175px">
						<col width="*">
					</colgroup>
					<tbody>
						<tr class="form-group">
							<th>장소명</th>
							<td><input type="text" class="form-control" name="name" />
							<span class="glyphicon glyphicon-warning-sign form-control-feedback" style="display:none"></span></td>
						</tr>
						<tr class="form-group">
							<th>이미지</th>
							<td><input type="file" class="form-control" name="image" />
							<span class="glyphicon glyphicon-warning-sign form-control-feedback" style="display:none"></span></td>
						</tr>
						<tr class="form-group">
							<th>url</th>
							<td><input type="text" class="form-control" name="url" />
							<span class="glyphicon glyphicon-warning-sign form-control-feedback" style="display:none"></span></td>
						</tr>
						<tr class="form-group">
							<th>설명</th>
							<td><input type="text" class="form-control" name="contents" />
							<span class="glyphicon glyphicon-warning-sign form-control-feedback" style="display:none"></span></td>
						</tr>
						<tr class="form-group">
							<th>위치검색</th>
							<td>
								<input type="text" class="ipt fw-8 fmMg-1" title="주소" id="detail_address1" name="detailAddress1" maxlength="100"/>
								<a class="btnD btn-4 fmBtn" onclick="sample6_execDaumPostcode()">위치검색</a>
							</td>
						</tr>
						<tr class="form-group">
							<th>위도 </th>
							<td><input type="text" class="form-control" id="locationLat" name="locationLat" />
								<span class="glyphicon glyphicon-warning-sign form-control-feedback" style="display:none"></span></td>
						</tr>
						<tr class="form-group">
							<th>경도</th>
							<td><input type="text" class="form-control" id="locationLng" name="locationLng" />
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
<%@include file="../../include/footer.jsp" %>
</body>
</html>