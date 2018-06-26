<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

  
<!DOCTYPE html>
<html lang="ko">
<head>
  <title>Party Mix</title>
    <script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=08a77f3d63de90f03ca60a81348aab7d&libraries=services"></script>
  <script type="text/javascript2" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=08a77f3d63de90f03ca60a81348aab7d"></script>
  <script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=08a77f3d63de90f03ca60a81348aab7d"></script>
  <script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=08a77f3d63de90f03ca60a81348aab7d&libraries=geocoder"></script>
  
  <style type="text/css">
a {
    text-decoration: none;
}
.contBg {
    min-width: 1260px;
    padding-top: 0;
    padding-bottom: 150px;
    background: #eeeeee;
}
.contWrap {
    width: 1216px;
    margin: 64px auto 0;
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
    padding: 42px 70px 70px;
    margin: auto;
    margin-top: 25px;
}
.authorization {
    text-align: center;
    margin: 26px 0;
}
.memberBenefit {
    padding: 32px 32px;
    margin: 32px auto 0;
    background: #f3f1f0;
    border: 1px solid #e6e0df;
    width: 1000px;
}
.tb {
    border-top: solid 1px #aa9b96;
    margin: 10px 0 10px;
    font-size: 13px;
    width: 934px;
}
.tb thead tr:last-child th {
    border-bottom: 0;
}
.tb thead th {
    background: #aa9b96;
    color: #fff;
}
.tb th {
    background: #e8e4e3;
    padding: 8px 10px 9px 10px;
    color: #333;
    border-bottom: solid 1px #ded4d2;
    text-align: center;
}
.tb th+td {
    border-left: 1px solid #ded4d2;
}
.tb td {
    padding: 8px 10px 9px 10px;
    color: #333;
    border-bottom: solid 1px #e7dedc;
    text-align: center;
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
.fc-1 {
    color: #e87a92 !important;
}
.title-3 {
    font-size: 18px;
    font-weight: bold;
    margin: 51px 0 13px;
    color: #000;
}
.tb-1 {
    border-top: solid 2px #e87a92;
}
.cHead .chwTit {
    float: left;
    margin: 0;
}
.fR {
    float: right !important;
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
.obligatory {
    padding-left: 10px;
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
.vT {
    vertical-align: top;
}
.tb-1 td {
    color: #333;
}
.fw-1 {
    width: 130px;
}
.fw-2 {
    width: 160px;
}
.fw-3 {
    width: 90px;
}
.fw-4 {
    width: 90px;
}
.fw-5 {
    width: 175px;
}
.fw-6 {
    width: 240px;
}
.fw-7 {
    width: 205px;
}
.fw-8 {
    width: 630px;
}
.fmMgL {
    margin-left: 15px;
}
.fmMg-1 {
    display: block;
    margin-top: 10px;
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
.radG .radFm:first-child, .chkG .chkFm:first-child {
    margin-left: 0;
}
.chk:not(old), .rad:not(old) {
    width: 16px;
    height: 16px;
    padding: 0;
    left: 0;
    top: 50%;
    z-index: 10;
    box-sizing: border-box;
    width: 16px;
    height: 16px;
    margin: -5px 3px 0 0;
}
.chkFm label, .radFm label {
    display: inline-block;
    padding-right: 21px;
    vertical-align: middle;
}
input[type="radio"], input[type="checkbox"] {
    vertical-align: middle;
}
.fm .btnD {
    margin-right: 1px;
}
.fmBtn {
    margin-left: 2px;
}
.btnD {
    min-width: 82px;
    height: 36px;
    line-height: 34px;
    font-size: 14px;
    padding: 0 14px;
}
.btn-4 {
    background: #eee;
    border: solid 1px #ddd;
    color: #333;
}
.btnA, .btnB, .btnC, .btnD, .btnE, .btnG, .btnH, .btnF, .btnShare {
    box-sizing: border-box;
    vertical-align: middle;
    display: inline-block;
    text-align: center;
}
.btnArea-1 {
    margin-top: 20px;
    min-height: 60px;
    position: relative;
    text-align: center;
}
.fmTxt-2 {
    display: inline-block;
    margin: 0 0 0 7px;
    vertical-align: middle;
    color: #666;
}
.fmTxt-3 {
    display: inline-block;
    margin: 0 2px;
    text-align: center;
    vertical-align: middle;
    color: #666;
    font-size: 16px;
}
.fmSecurity {
    position: relative;
    display: inline-block;
    box-sizing: border-box;
    padding-right: 72px;
}
.fw-24 {
    width: 240px;
}
.fmSecurity div {
    outline: none;
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
.nav-pills>li.active, .nav-pills>li.active, .nav-pills>li.active {
    color: #fff !important;
    background-color: #e87a92 !important;
    font-weight: bold;
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
  </style>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  <script src="https://ssl.daumcdn.net/dmaps/map_js_init/postcode.v2.js"></script>
  <script>
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

            // 우편번호와 주소 정보를 해당 필드에 넣는다.
            document.getElementById('concertAddress').value = data.zonecode; //5자리 새우편번호 사용
            document.getElementById('detail_address1').value = fullAddr;

            // 커서를 상세주소 필드로 이동한다.
            document.getElementById('detail_address2').focus();
            
            var address_start = $("#detail_address1").val();
     // 주소로 좌표를 검색합니다
     geocoder.addressSearch(address_start, function(result, status) {
     	console.log(address_start);
        // 정상적으로 검색이 완료됐으면
        if (status === daum.maps.services.Status.OK) {

            var coords = new daum.maps.LatLng(result[0].y, result[0].x);

            console.log(result[0].y); /// 위도
            console.log(result[0].x); /// 경도


            $("#order_start_lat").val(result[0].y);  //order_start_lat 필드에 위도 값 저장
            $("#order_start_lon").val(result[0].x);  //order_start_lon 필드에 경도 값 저장

            // 결과값으로 받은 위치를 마커로 표시합니다
            var marker = new daum.maps.Marker({
                map: map,
                position: coords
            });

            // 인포윈도우로 장소에 대한 설명을 표시합니다
            var infowindow = new daum.maps.InfoWindow({
                content: '<div style="width:150px;text-align:center;padding:6px 0;">'+$("#concert_name").val()+'</div>'
            });
            infowindow.open(map, marker);

            // 지도의 중심을 결과값으로 받은 위치로 이동시킵니다
            map.setCenter(coords);
        }
    });
        }
    }).open();
}
  </script>
  <script type="text/javascript">
  $(function() {
	  $("#concertForm").submit(function(event) {
			var concertName = $("#concert_name").val().trim();
			var concertOwner = $("#concert_owner").val().trim();
			var concertContent = $("#concert_content").val().trim();
			var concertAddress = $("#concertAddress").val().trim();
			var detailAddress1 = $("#detail_address1").val().trim();
			var detailAddress2 = $("#detail_address2").val().trim();
			var tel1 = $("#telno1").val().trim();
			var tel2 = $("#telno2").val().trim();
			var tel3 = $("#telno3").val().trim();
			var concertNum1 = $("#concert_num1").val().trim();
			var concertNum2 = $("#concert_num2").val().trim();
			var concertNum3 = $("#concert_num3").val().trim();
			var startDate = $("#start_date").val().trim();
			var endDate = $("#end_date").val().trim();
			
			if(!concertName) {
				alert("업체명을 입력해주세요.");
				return false;
			}
			if(!concertOwner) {
				alert("대표자를 입력해주세요.");
				return false;
			}
			if(!concertContent) {
				alert("소개를 입력해주세요.");
				return false;
			}
			if(!startDate) {
				alert("시작 날짜를 입력해주세요.")
				return false;
			}
			if(!endDate) {
				alert("종료 날짜를 입력해주세요.")
				return false;
			}
			if(!tel1) {
				alert("연락처를 입력해주세요.")
				return false;
			}
			if(!tel2) {
				alert("연락처를 입력해주세요.")
				return false;
			}
			if(!tel3) {
				alert("연락처를 입력해주세요.")
				return false;
			}
			if(!concertNum1) {
				alert("업체 전화번호를 입력해주세요.")
				return false;
			}
			if(!concertNum2) {
				alert("업체 전화번호를 입력해주세요.")
				return false;
			}
			if(!concertNum3) {
				alert("업체 전화번호를 입력해주세요.")
				return false;
			}
			if(!concertAddress) {
				alert("주소를 입력해주세요")
				return false;
			}
			if(!detailAddress1) {
				alert("주소를 입력해주세요")
				return false;
			}
			if(!detailAddress2) {
				alert("주소를 입력해주세요")
				return false;
			}
			
			return true;
		})
  })
  </script>
</head>
<body>
<%@ include file="../../include/nav.jsp" %>
<%@ include file="../../include/mypagenav.jsp" %>
<div id="container ct" class="contBg" style="font-family: '맑은 고딕';">
	<div class="contWrap">
		<h2 class="pagTit">PARTY MIX 업체 등록</h2>
		<div class="pagTitSub" style="text-align: center; margin-bottom: 25px;">
			운영하시는 업체의 기본 정보를 입력해주세요.
		</div>
		<div class="w3-container" style="padding: 0;">
			<ul class="nav nav-pills nav-justified" role="tablist">
				<li>STEP1. 업체선택</li>
				<li class="active">STEP2. 업체정보 입력</li>
				<li>STEP3. 신청 완료</li>
			</ul>
		</div>
		<form id="concertForm" name="concertForm" method="post" action="concertSubmit.do" enctype="multipart/form-data">
		<input type="hidden" id="order_start_lat" name="locationlat">
		<input type="hidden" id="order_start_lon" name="locationlng">
			<div class="contBox">
				<div class="cHead chw-3 first">
					<h4 class="title-3 fc-1 chwTit">기본정보</h4>
				</div>
				<table class="tb-1 tbData" style="margin: 35px auto; width: 100%;">
					<colgroup>
						<col width="175px">
						<col width="*">
					</colgroup>
					<tbody>
						<tr>
							<th scope="row">
								<span class="obligatory">
									<span class="blind">* </span>콘서트명
								</span>
							</th>
							<td class="fm">
								<input type="text" class="ipt fw-24" title="업체명" id="concert_name" name="concertName" maxlength="20">
							</td>
						</tr>
						<tr>
							<th scope="row">
								<span class="obligatory">
									<span class="blind">* </span>업체 대표자
								</span>
							</th>
							<td class="fm">
								<input type="text" class="ipt fw-24" title="이름" id="concert_owner" name="concertOwner" maxlength="20">
							</td>
						</tr>
						<tr>
							<th scope="row">
								<span class="obligatory">
									<span class="blind">* </span>소개
								</span>
							</th>
							<td class="fm">
								<textarea type="text" rows="5" cols="50" title="소개" id="concert_content" name="concertContent" maxlength="1000"></textarea>
							</td>
						</tr>
						<tr>
							<th scope="row">
								<span class="obligatory">
									<span class="blind">* </span>대표 이미지
								</span>
							</th>
							<td class="fm">
								<input type="file" title="대표이미지" id="hotel_img" name="concertImg">
							</td>
						</tr>
						<tr>
							<th scope="row">
								<span class="obligatory">
									<span class="blind">* </span>날짜
								</span>
							</th>
							<td class="fm">
								<input type="date" class="ipt fw-24" placeholder="시작일" title="시작일" id="start_date" name="startDate">
								~
								<input type="date" class="ipt fw-24" placeholder="종료일" title="종료일" id="end_date" name="endDate">
						</tr>
						<tr>
							<th scope="row">
								<span class="obligatory">
									<span class="blind">* </span>연락처
								</span>
							</th>
							<td class="fm">
								<select class="slt fw-3" title="연락처 앞자리" id="telno1" name="telno1">
									<option value="010">010</option>
									<option value="011">011</option>
									<option value="016">016</option>
									<option value="017">017</option>
									<option value="018">018</option>
									<option value="019">019</option>
								</select>
								
								<span class="fmTxt-3">-</span>
								<input type="text" class="ipt fw-3" title="연락처 중간자리" id="telno2" name="telno2" value="" maxlength="4" />
								<span class="fmTxt-3">-</span>
								<input type="text" class="ipt fw-3" title="연락처 끝자리" id="telno3" name="telno3" value="" maxlength="4"/>
							</td>
						</tr>
						<tr>
							<th scope="row">
								<span class="obligatory">
									<span class="blind">* </span>콘서트 연락처
								</span>
							</th>
							<td class="fm">
								<input type="text" class="ipt fw-3" title="전화번호 중간자리" id="concert_num1" name="concertNum1" value="" maxlength="4" />
								<span class="fmTxt-3">-</span>
								<input type="text" class="ipt fw-3" title="전화번호 중간자리" id="concert_num2" name="concertNum2" value="" maxlength="4" />
								<span class="fmTxt-3">-</span>
								<input type="text" class="ipt fw-3" title="전화번호 끝자리" id="concert_num3" name="concertNum3" value="" maxlength="4"/>
							</td>
						</tr>
						<tr>
							<th scope="row">
								<span class="obligatory">
									<span class="blind">* </span>주소
								</span>
							</th>
							<td class="fm">
								<input type="text" class="ipt fw-7" title="우편번호" id="concertAddress" name="concertAddress" />
								<a href="#concertAddress" class="btnD btn-4 fmBtn" onclick="sample6_execDaumPostcode()">우편번호검색</a>
								<input type="text" class="ipt fw-8 fmMg-1" title="주소" id="detail_address1" name="detailAddress1" maxlength="100"/>
								<input type="text" class="ipt fw-8 fmMg-1" title="상세주소" id="detail_address2" name="detailAddress2" maxlength="100"/>
							</td>
						</tr>
						<tr>
							<th scope="row">
								<span class="obligatory">
									<span class="blind">* </span>위치
								</span>
							</th>
							<td>
							<div class="row">
								<div id="map" style="width:100%;height:500px"></div>
							</div>
							<script>
						        var mapContainer = document.getElementById('map'), // 지도를 표시할 div
						            mapOption = {
						                center: new daum.maps.LatLng(33.450701, 126.570667), // 지도의 중심좌표
						                level: 3 // 지도의 확대 레벨
						            };
						
						        // 지도를 생성합니다
						        var map = new daum.maps.Map(mapContainer, mapOption);
						
						        if (navigator.geolocation) {
						            
						            // GeoLocation을 이용해서 접속 위치를 얻어옵니다
						            navigator.geolocation.getCurrentPosition(function(position) {
						                
						                var lat = position.coords.latitude, // 위도
						                    lon = position.coords.longitude; // 경도
						                
						                var locPosition = new daum.maps.LatLng(lat, lon), // 마커가 표시될 위치를 geolocation으로 얻어온 좌표로 생성합니다
						                    message = '<div style="padding:5px;">여기에 계신가요?!</div>'; // 인포윈도우에 표시될 내용입니다
						                
						                // 마커와 인포윈도우를 표시합니다
						                displayMarker(locPosition, message);
						                    
						              });
						            
						        } else { // HTML5의 GeoLocation을 사용할 수 없을때 마커 표시 위치와 인포윈도우 내용을 설정합니다
						            
						            var locPosition = new daum.maps.LatLng(33.450701, 126.570667),    
						                message = 'geolocation을 사용할수 없어요..'
						                
						            displayMarker(locPosition, message);
						        }
						        
						        
						        
						        // 주소-좌표 변환 객체를 생성합니다
						        var geocoder = new daum.maps.services.Geocoder();
						

						 // 지도에 마커와 인포윈도우를 표시하는 함수입니다
					        function displayMarker(locPosition, message) {
					
					        	console.log(locPosition)
					            // 마커를 생성합니다
					            var marker = new daum.maps.Marker({  
					                map: map, 
					                position: locPosition
					            }); 
					
					            var iwContent = message, // 인포윈도우에 표시할 내용
					                iwRemoveable = true;
					
					            // 인포윈도우를 생성합니다
					            var infowindow = new daum.maps.InfoWindow({
					                content : iwContent
					            });
					            // 지도 중심좌표를 접속위치로 변경합니다
					            map.setCenter(locPosition);   
					
					            // 인포윈도우를 마커위에 표시합니다 
					            infowindow.open(map, marker);
					            infowindow.close();
					            
					            
					            // 마커에 마우스오버 이벤트를 등록합니다
					            daum.maps.event.addListener(marker, 'mouseover', function() {
					              // 마커에 마우스오버 이벤트가 발생하면 인포윈도우를 마커위에 표시합니다
					                infowindow.open(map, marker);
					            });
					
					            // 마커에 마우스아웃 이벤트를 등록합니다
					            daum.maps.event.addListener(marker, 'mouseout', function() {
					                // 마커에 마우스아웃 이벤트가 발생하면 인포윈도우를 제거합니다
					                infowindow.close();
					            });
					            
					        }    
						    
						</script>
							</td>
						</tr>
					</tbody>
				</table>
			</div>
			<div class="btnArea-1">
				<a href="selectform.do" class="w3-btn w3-red" style="width: 126px !important; padding: 19px 32px; background-color: #e87a92 !important; text-decoration: none;">이전</a>
				<button type="submit" class="w3-btn w3-red" style="width: 126px !important; padding: 19px 32px; background-color: #e87a92 !important; text-decoration: none;">신청</button>
			</div>
		</form>
	</div>
</div>
<%@include file="../../include/footer.jsp" %>
</body>
</html>