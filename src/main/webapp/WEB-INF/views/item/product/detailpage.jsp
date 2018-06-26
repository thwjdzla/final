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
  <script type="text/javascript">
  $(function() { 	    
	  var pagecount = 0;
	  var type = "";
	  
	  avgGrade();
	  
	  $.ajax({
			type:"GET",
			url:"ajax/review.do",
			dataType:"json",
			data:{no: "${param.no}", count: pagecount},
			success:function(result){
				$.each(result, function(index, item){
					appendRow(item);				
				})
			},error:function(){console.log('error');}
	  });
	  
	  if($("#hotelNo").val() != null)
		  type = "H";
	  if($("#concertNo").val() != null)
		  type = "C";
	  if($("#resortNo").val() != null)
		  type = "R";
	  getPackage(type);
	  
	  $('#reviewnav ul').on('click','li a', function() {
		  var count = $(this).attr('id').replace('reviewpage', '');
		  pagecount = count - 1;
		  $('#reviewnav ul li a').attr('style','color:#e799a3; background-color:white');
		  $(this).attr('style','color:white; background-color:#e799a3');
		  $.ajax({
				type:"GET",
				url:"ajax/review.do",
				dataType:"json",
				data:{no: "${param.no}", count: pagecount},
				success:function(result){
					$('#reviewtable tbody').html('');
					$.each(result, function(index, item){
						appendRow(item);				
					})
					avgGrade();
				},error:function(){console.log('error');}
		  });
	  });
  
	  $('#reviewform').submit(function(){
		  $.ajax({
				type:'POST',
				url:'ajax/review.do',
				dataType:'json',
				data:{content: $('#reviewform [name=content]').val(), grade: $('#reviewform [name=grade]').val(), userNo: $('#reviewform [name=userNo]').val() , cpNo: $('#reviewform [name=cpNo]').val()},
				success:function(result){
					$('#reviewtable tbody').html('');
					$.each(result, function(index, item){
						appendRow(item);
						$('#reviewcontent').val('');
						$("#reviewgrade").val(3).prop('selected',true);
					})
					avgGrade();
				},
				error: function() {console.log('error');}
			});  
		  return false;
	  });
	  
	  $("#reviewtable tbody").on('click',"tr td button[id^=reviewdelete]", function() {
		  	var reviewNo = $(this).attr('id').replace('reviewdelete','');
			  $.ajax({
					type:"GET",
					url:"ajax/deletereview.do",
					dataType:"json",
					data:{no: reviewNo, cpNo: $('#reviewform [name=cpNo]').val()},
					success:function(result){
						$('#reviewtable tbody').html('');
						$.each(result, function(index, item){
							appendRow(item);				
						})
						avgGrade();
					},error:function(){console.log('error');}
				});
	  });
	  
	  $('#reviewtable tbody').on('click','tr td button[id^=reviewupdate]', function() {
		  	var $tr = $(this).parents('tr');
		  	var grade = $tr.children('td:eq(1)').text();
		  	var $tr2 = $tr.next();
		  	var content = $tr2.children('td:eq(0)').text();
		  	if(grade == '★')
		  		$('#reviewupdateform [name=grade]').val(1).prop('selected',true);
		  	if(grade == '★★')
		  		$('#reviewupdateform [name=grade]').val(2).prop('selected',true);
		  	if(grade == '★★★')
		  		$('#reviewupdateform [name=grade]').val(3).prop('selected',true);
		  	if(grade == '★★★★')
		  		$('#reviewupdateform [name=grade]').val(4).prop('selected',true);
		  	if(grade == '★★★★★')
		  		$('#reviewupdateform [name=grade]').val(5).prop('selected',true);
		  	$('#reviewupdateform [name=content]').val(content);
		  	
		  	var reviewNo = $(this).attr('id').replace('reviewupdate','');
		  	$('#reviewupdateform [name=reviewNo]').val(reviewNo);
	  })
	  
	   $('#reviewupdatebutton').click(function(){
			console.log('sub');
		  $.ajax({
				type:'POST',
				url:'ajax/updatereview.do',
				dataType:'json',
				data:{no: $('#reviewupdateform [name=reviewNo]').val(),content: $('#reviewupdateform [name=content]').val(), grade: $('#reviewupdateform [name=grade]').val(), userNo: $('#reviewupdateform [name=userNo]').val() , cpNo: $('#reviewupdateform [name=cpNo]').val()},
				success:function(result){
					console.log('succ');
					$('#reviewtable tbody').html('');
					$.each(result, function(index, item){
						appendRow(item);
						$('#reviewcontent').val('');
						$("#reviewgrade").val(3).prop('selected',true);
					})
					avgGrade();
				},
				error: function() {console.log('error');},
				complete:function() {
					$("#exampleModal").modal('hide');
				}
			});  
		  return false;
	  });
	  
	  function appendRow(item){
		    var row = "";
			row += "<tr><td>";
			row += item.name;
			row += "</td><td>";
			if(item.grade == 1)
				row +="★";
			if(item.grade == 2)
				row +="★★";
			if(item.grade == 3)
				row +="★★★";
			if(item.grade == 4)
				row +="★★★★";
			if(item.grade == 5)
				row +="★★★★★";
			row += "</td><td class='text-right'>";
			if(item.userNo == '${LOGIN_USER.no}'){
			row += "<button type='button' class='btn btn-xs' id='reviewupdate"+item.no+"' style='background-color:#e799a3; color:white' data-toggle='modal' data-target='#exampleModal'>수정</button>";
			row += "<button type='button' class='btn btn-xs' id='reviewdelete"+item.no+"' style='background-color:#e799a3; color:white' >삭제</button></td></tr>";
			}
			row += "<tr><td colspan='3'>";
			row += item.content;
			row += "</td></tr>";
			$('#reviewtable tbody').append(row);
	  }
	  
	  function avgGrade(){
		  $.ajax({
			  type:'get',
			  url:'avgGrade.do',
			  dataType:'json',
			  data:{no: "${param.no}"},
			  success:function(result){
					$('#gradeAvg').text("평점:"+result.toFixed(2));
			  },
			  error:function(){
				  
			  }
		  })
	  }
  })
  
  	function wishlist(hotelname){
	  if('${LOGIN_USER}' == ''){
		  alert("로그인 후 사용가능합니다");
	  }
	  else{
  		var name = hotelname;
  		var url = window.location.href;
  		var status = url.indexOf("final");
		var urlsplit = url.substring(status+6);
  		$.ajax({
  			type:"POST",
  			url:"addwishlist.do",
  			dataType:'json',
  			data :{name: hotelname, url: urlsplit, userNo:'${LOGIN_USER.no}'},
  			success :function(){
  			},
  			complete: function() {
  				alert("위시리스트에 추가되었습니다");
  			}
  		});
  		return false;
	  }
  	}
  
	function checkLength(comment) {
	    if (comment.value.length > 40 ) {
	        comment.value = comment.value.substring(0, 40);
	        return false;
	    }
	}

  </script>
  <style>
  
  	#detailinfo {
  	 margin-top:20px;
  	 background-color:white;
  	}
  	
  	#nearby {
  	 overflow:scroll;
  	 margin-top:20px;
  	 height:600px;
  	 width:100%;
  	 display:none;
  	}
  	
  	#package {
  	 overflow:scroll;
  	 margin-top:20px;
  	 height:600px;
  	 width:100%;
  	}
  	  	
  	#review {
  	 margin:10px;
  	}
  	
  	#sidebutton {
  	 margin-top:10px;
  	}
  	  	
  	#map {
  	 margin-top:10px;
  	 height:300px; 
  	 width:100%;
  	}
  </style>
</head>
<body>
<%@include file="../../include/nav.jsp" %>
	<div class="container">
		<div class="row">
			<div class="col-md-8">
				<div id="detailinfo" class="row">
				<c:choose>
				<c:when test="${not empty hotel }">
					<div class="col-md-8">
					<input type="hidden" id="hotelNo" value="${hotel.no }"/>
					<input type="hidden" id="productNo" value="${hotel.cpNo }"/>
					<input type="hidden" id="locationLat" value="${hotel.locationLat }"/>
					<input type="hidden" id="locationLng" value="${hotel.locationLng }"/>
					<input type="hidden" id="productName" value="${hotel.name}"/>
					<img src="resources/image/${hotel.img}" width="470" height="400"/>
					</div>
					<div class="col-md-4">
					<div style="margin-top:30px;border-bottom:1px solid gray; margin-bottom:10px">
					<p style="border-bottom:1px solid gray;">${hotel.name}<span id="gradeAvg" style="float:right"></span></p>
					<p>등급 :
								<c:if test="${hotel.star eq '1'}">★</c:if>
								<c:if test="${hotel.star eq '2'}">★★</c:if>
								<c:if test="${hotel.star eq '3'}">★★★</c:if>
								<c:if test="${hotel.star eq '4'}">★★★★</c:if>
								<c:if test="${hotel.star eq '5'}">★★★★★</c:if>
					</p>
					<p>주소 : ${hotel.addressDetail}</p>
					<p>등급 : ${hotel.star}</p>
					</div>
					<a href="reserve.do?cpNo=${hotel.cpNo }&cpType=H" class="btn" style="margin:2px; background-color:#e7a1b0; color:white; width:100%">예약 페이지로</a>
					<button class="btn" style="margin:2px; background-color:#edadba; color:white; width:100%" onclick="wishlist('${hotel.name}')">위시리스트 추가</button>
					<button data-toggle='modal' data-target='#weatherModal' class="btn" style="margin:2px; background-color:pink; color:white; width:100%">날씨정보</button>
					</div>
				</c:when>
				<c:when test="${not empty concert }">
					<div class="col-md-8">
					<input type="hidden" id="concert" value="${concert.ccNo }"/>
					<input type="hidden" id="productNo" value="${concert.cpNo }"/>
					<input type="hidden" id="locationLat" value="${concert.ccLocationlat }"/>
					<input type="hidden" id="locationLng" value="${concert.ccLocationlng }"/>
					<input type="hidden" id="productName" value="${concert.ccName}"/>
					<img src="resources/image/${concert.ccImg}" width="470" height="400"/>
					</div>
					<div class="col-md-4">
					<div style="margin-top:30px;border-bottom:1px solid gray; margin-bottom:10px">
					<p style="border-bottom:1px solid gray;">${concert.ccName}<span id="gradeAvg" style="float:right"></span></p></p>
					<p>연락처 : ${concert.ccTel}</p>
					<p>장소 : ${concert.ccDetailAddress}</p>
					<p>날짜 : ${startdate} ~ ${enddate}</p>
					</div>
					<a href="reserve.do?cpNo=${concert.cpNo }&cpType=C" class="btn" style="margin:2px; background-color:#e7a1b0; color:white; width:100%">예약 페이지로</a>
					<button class="btn" style="margin:2px; background-color:#edadba; color:white; width:100%" onclick="wishlist('${concert.ccName}')">위시리스트 추가</button>
					<button data-toggle='modal' data-target='#weatherModal' class="btn" style="margin:2px; background-color:pink; color:white; width:100%">날씨정보</button>
					</div>
				</c:when>
				<c:when test="${not empty resort }">
					<div class="col-md-8">
					<input type="hidden" id="resortNo" value="${resort.no }"/>
					<input type="hidden" id="productNo" value="${resort.cpNo }"/>
					<input type="hidden" id="locationLat" value="${resort.locationLat }"/>
					<input type="hidden" id="locationLng" value="${resort.locationLng }"/>
					<input type="hidden" id="productName" value="${resort.name}"/>
					<img src="resources/image/${resort.img}" width="470" height="400"/>
					</div>
					<div class="col-md-4">
					<div style="margin-top:30px;border-bottom:1px solid gray; margin-bottom:10px">
					<p style="border-bottom:1px solid gray;">${resort.name}<span id="gradeAvg" style="float:right"></span></p></p>	
					<p>주소 : ${resort.addressDetail}</p>
					<p>전화번호 : ${resort.tel}</p>
					<p>핸드폰번호 : ${resort.phone}</p>
					</div>
					<a href="reserve.do?cpNo=${resort.cpNo }&cpType=R" class="btn" style="margin:2px; background-color:#e7a1b0; color:white; width:100%">예약 페이지로</a>
					<button class="btn" style="margin:2px; background-color:#edadba; color:white; width:100%" onclick="wishlist('${resort.name}')">위시리스트 추가</button>
					<button data-toggle='modal' data-target='#weatherModal' class="btn" style="margin:2px; background-color:pink; color:white; width:100%">날씨정보</button>
					</div>
				</c:when>
				</c:choose>
				</div>
				<div class="modal fade" id="weatherModal" tabindex="-1"
					role="dialog" aria-labelledby="weatherModalLabel"
					aria-hidden="true">
					<div class="modal-dialog" role="document">
						<div class="modal-content">
							<div class="modal-header" style="background-color:pink; color:white; border-radius: 7px 7px 0px 0px;">
								<strong>날씨</strong>
								<button type="button" class="close" data-dismiss="modal"
									aria-label="Close">
									<span aria-hidden="true">&times;</span>
								</button>
							</div>
							<div class="modal-body">
								<table class="table" id="weatherTable">
									<thead>
										<tr>
											<th>오늘</th>
											<th>내일</th>
											<th>2일후</th>
											<th>3일후</th>
											<th>4일후</th>
											<th>5일후</th>
											<th>6일후</th>
										</tr>
									</thead>
									<tbody></tbody>
								</table>
							</div>
							<div class="modal-footer">
								<button type="button" class="btn"
									style="margin: 2px; background-color: pink; color: white"
									data-dismiss="modal">닫기</button>
							</div>
						</div>
					</div>
				</div>

				<div id="review" class="row">
					<table class="table" id="reviewtable">
						<colgroup>
							<col width="10%">
							<col width="70%">
							<col width="20%">
						</colgroup>
						<thead>
							<tr>
								<th colspan="3"><c:if test="${not empty LOGIN_USER }">
										<form id="reviewform" method="post" action="ajax/review.do">
											<input type="hidden" value="${LOGIN_USER.no}" name="userNo" />
											<input type="hidden" value="${param.no}" name="cpNo" /> <label>리뷰
												쓰기</label> <span style="float: right"> <select
												id="reviewgrade" name="grade" style="margin-bottom: 7px">
													<option value="1">★</option>
													<option value="2">★★</option>
													<option value="3" selected="selected">★★★</option>
													<option value="4">★★★★</option>
													<option value="5">★★★★★</option>
											</select>
											</span>
											<textarea id="reviewcontent" rows="5" cols="90"  onKeyUp="checkLength(this);" onKeyDown="checkLength(this);"
												name="content"></textarea>
											<div class="text-right">
												<button id="review" class="btn"
													style="margin: 2px; background-color: #e799a3; color: white">등록</button>
											</div>
										</form>
									</c:if></th>
							</tr>
						</thead>
						<tbody>
						</tbody>
					</table>
					<nav id="reviewnav" style="text-align: center">
						<ul class="pagination">
							<c:forEach var="count" begin="1" end="${page}">
								<li><c:choose>
										<c:when test="${count eq (pagecount+1)}">
											<a style="background-color: #e799a3; color: white;"
												id="reviewpage${count }">${count }</a>
										</c:when>
										<c:otherwise>
											<a style="color: #e799a3;" id="reviewpage${count }">${count }</a>
										</c:otherwise>
									</c:choose></li>
							</c:forEach>
						</ul>
					</nav>
					<div class="modal fade" id="exampleModal" tabindex="-1"
						role="dialog" aria-labelledby="exampleModalLabel"
						aria-hidden="true">
						<div class="modal-dialog" role="document">
							<div class="modal-content">
								<div class="modal-header">
									<h5 class="modal-title" id="exampleModalLabel"></h5>
									<button type="button" class="close" data-dismiss="modal"
										aria-label="Close">
										<span aria-hidden="true">&times;</span>
									</button>
								</div>
								<form id="reviewupdateform" method="post"
									action="ajax/updatereview.do">
									<div class="modal-body">
										<input type="hidden" name="reviewNo" /> <input type="hidden"
											value="${LOGIN_USER.no}" name="userNo" /> <input
											type="hidden" value="${param.no}" name="cpNo" /> <label>리뷰
											수정</label> <span style="float: right"> <select
											id="reviewgrade" name="grade" style="margin-bottom: 7px">
												<option value="1">★</option>
												<option value="2">★★</option>
												<option value="3" selected="selected">★★★</option>
												<option value="4">★★★★</option>
												<option value="5">★★★★★</option>
										</select>
										</span>
										<textarea id="reviewcontent" rows="5" cols="77" name="content"></textarea>
									</div>
									<div class="modal-footer">
										<button id="reviewupdatebutton" type="button" class="btn"
											style="margin: 2px; background-color: #e38aae; color: white">수정</button>
										<button type="button" class="btn"
											style="margin: 2px; background-color: pink; color: white"
											data-dismiss="modal">닫기</button>
									</div>
								</form>
							</div>
						</div>
					</div>
				</div>
			</div>
			
			<div class="col-md-4">
				<div id="sidebutton" class="row" style="text-align:center">
					<div class="col-md-6">
						<button class="btn" id="packagebtn" style="background-color:#e799a3; color:white; width:100%">패키지</button>
					</div>
					<div class="col-md-6">
						<button class="btn" id="sitebtn" style="background-color:#edadba; color:white; width:100%">주변 정보</button>
					</div>
				</div>
				<div>
					<div id="map"></div>
					<script>
						var lat = [];
						var lng = [];
						var info = [];
						var locationLat = $('#locationLat').val().trim()-0;
						var locationLng = $('#locationLng').val().trim()-0;
						var productInfo = $('#productName').val().trim();

						lat.push(locationLat);
						lng.push(locationLng);
						info.push(productInfo);
						
						var labels = 'ABCDEFGHIJK';
						
						$('#packagebtn').click(function(){
							$('#package').show();
							$('#nearby').hide();
							productMap();
						})
						$('#sitebtn').click(function(){
							$('#nearby').show();
							$('#package').hide();
							siteMap();
						})
						
						var weather = 'http://api.openweathermap.org/data/2.5/forecast/daily?lat='+locationLat+'&lon='+locationLng+'&APPID=690cde31a87862ca20449d3926b58aba';
						$.ajax({
							dataType : "jsonp",
							url : weather,
							success : function(result) {
								var items = result.list;
								var row = "<tr>";
								$.each(items, function(index, item) {
									row += "<td>" + item.weather[0].main
											+ "</td>";
								});
								row += "</tr>";
								$('#weatherTable tbody').append(row);
							}
						});

						function productMap() {
							lat = [];
							lng = [];

							lat.push(locationLat);
							lng.push(locationLng);

							initMap();
						}
	
						function siteMap() {
							var pno = $('#productNo').val().trim();
							$.ajax({
								type : 'GET',
								url : 'ajax/site.do',
								dataType : 'json',
								data : {no : pno},
								success : function(items) {
									$('#nearby').empty();
									$.each(items,function(index,item) {
										lat.push(item.locationLat - 0);
										lng.push(item.locationLng - 0);
										info.push(item.name);
										var row = "";
										row += "<table class='table' width='100%'><tr><th style='width:160px'><img src='resources/image/"+item.image+"' width='150' height='150' /></th><td><p style='border-bottom:1px solid gray;'><strong>"
												+ labels[(index + 1)% labels.length] + ". "+ item.name
												+ "</strong></p><p><a href='"+item.url+"'>"
												+ item.url
												+ "</a></p><p>"
												+ item.contents
												+ "</p></td></tr></table>";
										$('#nearby').append(row);
									});
									initMap();
								}
							})
						}

						function initMap() {
							var map = new google.maps.Map(document
									.getElementById('map'), {
								zoom : 12,
								center : {
									lat : locationLat,
									lng : locationLng
								}
							});

							for (var i = 0; i < lat.length; i++) {
								var marker = new google.maps.Marker({
									position : {
										lat : lat[i],
										lng : lng[i]
									},
									icon : "resources/image/unchecked-checkbox.png",
									label : labels[i % labels.length]
								});
								var infowindow = new google.maps.InfoWindow({
									content : info[i]
								});
								
								infowindow.open(map, marker);
								marker.setMap(map);
							}
						}
						
						function getPackage(type){
							$.ajax({
								type:"GET",
								url:"ajax/packageList.do",
								data:{no: "${param.no}", type: type},
								success:function(result){
									$("#package").html('');
									$.each(result, function(index, item){
										var row = "";
										row += "<table class='table' width='100%'><tr><td><p style='border-bottom:1px solid gray;'><strong>"
										+ item.packageName
										+ "</strong></p><p><a href='package/package.do?no="+item.packageNo+"'>"
										+ '자세히 보기'
										+ "</a></p><p>할인율: "
										+ item.rate
										+ "%</p></td></tr></table>";
								$('#package').append(row);  
									})
								}
							})
						}
					</script>
					<script
						src="https://developers.google.com/maps/documentation/javascript/examples/markerclusterer/markerclusterer.js"></script>
					<script async defer
						src="https://maps.googleapis.com/maps/api/js?key=AIzaSyAMsfZrOXyjGNLx8rh6MrGJzHJrq9CGtBg&callback=initMap"></script>
					
					<div id="package"></div>
					
					<div id="nearby"></div>
				</div>
			</div>
		</div>
		</div>
</body>
<%@include file="../../include/footer.jsp" %>
</html>