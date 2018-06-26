<%@ page pageEncoding="utf-8" contentType="text/html; charset=UTF-8" %>
<html lang="ko">
<head>
  <title>Party Mix</title>
  <script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=08a77f3d63de90f03ca60a81348aab7d&libraries=services"></script>
  <meta charset="utf-8"><meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script> 
  <script type="text/javascript2" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=08a77f3d63de90f03ca60a81348aab7d"></script>
<script type="text/javascript">
$(function() {   
   $("#search_bar").on('keyup', function() {
      
      if("P" != '${type}'){
         var $tbody = $("#hotel-box").empty();

         $.ajax({
            type:"GET",
            url:"searchByname.do",
            dataType: "json",
            data: {searchkeyword:$("#search_bar").val(),type:'${type}'},
            success: function(searchitems){
               var row = "";
               
               
               $.each(searchitems,function(index, searchitem){
                  console.log(searchitem.cp_no);
                  row += "<a href='detail.do?no="+searchitem.no+"'>";
                  row += "<div class='col-sm-12'  style='padding: 30px 0 30px; border-bottom: 1px solid #e5e5e5; overflow:hidden;'>";
                  row += "<div class='col-sm-6'>";
                  row += "<img src='resources/image/"+searchitem.img+"' width=250 height=150/>";
                  row += "</div>";
                  row += "<div class='col-sm-6'>";
                  row += "<div class='info-box'>";
                  row += "<div class='title-top'>";
                  row += "<strong class='title-text' style='font-size: 20px; color: #e87a92;'>"+searchitem.name+"</strong> </br>";
                  for (var i=1; i<=searchitem.star; i++) {
                     row += '<img src="../final/resources/image/star.jpg" style="width: 20px; height: 20px;">';
                  }
                  row += "</br>";
                  row += "</br>";
                  row += "<strong>"+searchitem.contents+"</strong> </br></br>";
                  $.each(searchitem.items, function(index, item) {
                     row += "<strong>"+item.name+" "+new Number(item.price).toLocaleString()+"</strong> </br>";
                  });
                  row += "</div></div></div></div></a>";
                  
               });
                  $tbody.append(row);
            }
         });
      } else{
         var $tbody = $("#package-box").empty();

         $.ajax({
            type:"GET",
            url:"searchByname.do",
            dataType: "json",
            data: {searchkeyword:$("#search_bar").val(),type:'${type}'},
            success: function(searchitems){
               var row = "";

               $.each(searchitems,function(index, searchitem){
                  if(searchitem.paNo !== null){
                     console.log(searchitem);
                     row += "<a href='package/package.do?no="+searchitem.packageNo+">";
                     row += "<div class='row' style='padding: 30px 0 30px; border-bottom: 1px solid #e5e5e5;-ms-overflow-style: none;'>";
                     row += "<div class='col-sm-8'>";
                     row += "<div class='row'>";
                     row += "<div class='col-sm-4'>";
                     row += "<img src='resources/image/"+searchitem.hotelitem.img+"' style='min-width:200px; max-width:200px; max-height: 100px;'/>";
                     row += "</div>";
                     row += "<div class='col-sm-4'>";
                     if(searchitem.resortitem !== null || searchitem.concertitem !== null){
                        row += "<img src='resources/image/mixupicon.gif'  style='min-width:200px; max-width:200px; max-height: 100px;'/>";
                     }
                     row += "</div>";
                     row += "<div class='col-sm-4'>";
                     if(searchitem.resortitem != null){
                        row += "<img src='resources/image/"+searchitem.resortitem.img+"'  style='min-width:200px; max-width:200px; max-height: 100px;'/>";
                     }
                     
                     if(searchitem.concertitem  != null){
                        row += "<img src='resources/image/"+searchitem.concertitem.ccImg+"' style='min-width:200px; max-width:200px; max-height: 100px;' />";
                     }
                     row += "</div></div></div>";
                     row += "<div class='col-sm-4'>";
                     row += "<div class='info-box'>";
                     row += "<label>"+searchitem.packageName +"</label> </br>";
                     row += "<label class='label label-danger label-lg'>"+searchitem.count +" 개</label>";
                     row += "<label>"+new Date(searchitem.startDate).toLocaleString()+"  ~  "+new Date(searchitem.endDate).toLocaleString()+"</label>";
                     row += "</div></div></div></a>";
                  }
               });
               
               $tbody.html(row);   
            }
         });
      }
   });
});
</script>

  <style>
      #map {
           height:700px;
            width: 700px;
      }
      /* Optional: Makes the sample page fill the window. */
      html, body {
        height: 100%;
        margin: 0;
        padding: 0;
      }
      
  .icon-comm {
    display: inline-block;
    overflow: hidden;
    font-size: 0;
    line-height: 0;
    text-indent: -9999px;
    vertical-align: middle;
    background: url(https://yaimg.yanolja.com/joy/pw/common/icon-comm.svg) no-repeat;
}
  
  .icon-tooltip {
    width: 25px;
    height: 25px;
    background-position: -25px 0;
}

.map-maker-guide span i.maker-hotel {
    background-color: #FE2EC8;
}

.map-maker-guide span i.maker-resort {
    background-color: #20B2AA;
}

.map-maker-guide span i.maker-consert {
    background-color: #7FFF00;
}



.map-maker-guide span i {
    display: inline-block;
    width: 15px;
    height: 15px;
}

.map-maker-guide {


    width: 90%;
    padding: 10px 20px 15px;
}

.map-maker-guide span em {
    font-size: 14px;
    margin-left: 5px;
}
.map-maker-guide span em, .placemap-container .map-maker-guide span i {
    vertical-align: middle;
}

.DateInput input {
    padding: 0;
    cursor: pointer;
}
.DateInput__input {
    opacity: 0;
    position: absolute;
    top: 0;
    left: 0;
    border: 0;
    height: 100%;
    width: 100%;
}


a.active span{
   border-bottom: 3px solid black;
}

.info-box .title-rap .title-text {
    max-height: 60px;
    overflow: hidden;
    display: -webkit-box;
    -webkit-line-clamp: 2;
    text-overflow: ellipsis;
    margin-right: 60px;
    font-size: 28px;
    color: #333;
    vertical-align: middle;
    font-weight: 400;
    letter-spacing: -1px;
}

::-webkit-scrollbar {
display:none;
}

a:hover {
   color: #666;
}
img:hover {
   opacity: 0.7;
}

</style>
</head>
<body>
<%@include file="../include/nav.jsp"%>
<div class="container" style="font-family: '맑은고딕' !important;">

   <div class="row">
      <ul class="nav navbar-nav navbar-center" style="border-bottom:1px solid gray; width:100%" id="menu">
      <c:if test="${type == 'H' }">
         <li style="background-color:white; width:25%"><a href="getHotels.do" class="active" style="color:black; text-align:center"><span>호텔</span></a></li>
      </c:if>
      <c:if test="${type != 'H' }">
         <li style="background-color:white; width:25%"><a href="getHotels.do" style="color:black; text-align:center"><span>호텔</span></a></li>
      </c:if>
      
      <c:if test="${type == 'C' }">
         <li style="background-color:white; width:25%"><a href="getconcert.do" class="active" style="color:black; text-align:center"><span>콘서트</span></a></li>
      </c:if>
      <c:if test="${type != 'C' }">
         <li style="background-color:white; width:25%"><a href="getconcert.do" style="color:black; text-align:center"><span>콘서트</span></a></li>
      </c:if>
      
      <c:if test="${type == 'R' }">
         <li style="background-color:white; width:25%"><a href="getresort.do" class="active" style="color:black; text-align:center"><span>리조트</span></a></li>
      </c:if>
      <c:if test="${type != 'R' }">
         <li style="background-color:white; width:25%"><a href="getresort.do" style="color:black; text-align:center"><span>리조트</span></a></li>
      </c:if>
      
      <c:if test="${type == 'P' }">
         <li style="background-color:white; width:25%"><a href="getpackage.do" class="active" style="color:black; text-align:center"><span>패키지</span></a></li>
      </c:if>
      <c:if test="${type != 'P' }">
         <li style="background-color:white; width:25%"><a href="getpackage.do" style="color:black; text-align:center"><span>패키지</span></a></li>
      </c:if>
         
      </ul>
   </div>
   
   <c:if test="${type != 'P' }">
   
      <div class="row">
         <div class="col-md-6">
             <div class="row" style=" padding: 10px">
                <!-- <span style="padding: 20px"><a href="#" style="text-decoration:none"> 가격대선택 <img src="resources/image/아래화살표.png" width="15px" height="15px"></a></span>-->
                <input id="search_bar" type="text" style="width:85%; height:31px; vertical-align: middle;"/>
                <button id="btn-item-search" style="vertical-align:middle; color:white; border: 1px solid transparent; border-radius: 4px; width: 65px !important; height: 33px !important; background-color: #e7a1b0 !important; border-color: #e7a1b0; text-decoration: none; margin-top: 2px; font-size: 14px;"><img src="https://img1.daumcdn.net/thumb/R720x0.q80/?scode=mtistory&fname=http%3A%2F%2Fcfile1.uf.tistory.com%2Fimage%2F184789024BF171A9B2E06C" style="width:20px; height:20px;">검색</button>
            </div> 
         
            <!-- <div class="row">
               <div class="list-box" style="width:100%">
                  <label style="width:85%;">Best추천</label>
                  <em style="text-align:center;">광고</em>
                  <i class="icon-comm icon-tooltip"></i>
               </div>
            </div> -->
            
            <div class="row" id="hotel-box" style="height:80%; overflow: scroll;">
               <c:forEach var="item" items="${items }">
                  <a href="detail.do?no=${item.cpNo}">
                     <div class="col-sm-12"  style="padding: 30px 0 30px; border-bottom: 1px solid #e5e5e5; overflow:hidden;">
                        <div class="col-sm-6">
                           <c:if test="${type == 'C'}">
                              <img src="resources/image/${item.img}" width=250 height=300/>
                           </c:if>
                           <c:if test="${type != 'C'}">
                              <img src="resources/image/${item.img}" width=250 height=150/>
                           </c:if>
                        </div>
                        <div class="col-sm-6">
                           <div class="info-box">
                              <div class="title-top">
                                 <strong class="title-text" style="font-size: 20px; color: #e87a92;">${item.name}</strong> </br>
                                    <c:if test="${item.star eq '1'}"><img src="../final/resources/image/star.jpg" style="width: 20px; height: 20px;"><!-- <p style="font-size:15px; color: #ffbf00;">★</p> --></c:if>
                                    <c:if test="${item.star eq '2'}"><img src="../final/resources/image/star.jpg" style="width: 20px; height: 20px;"><img src="../final/resources/image/star.jpg" style="width: 20px; height: 20px;"><!-- <p style="font-size:15px; color: #ffbf00;">★★</p> --></c:if>
                                    <c:if test="${item.star eq '3'}"><img src="../final/resources/image/star.jpg" style="width: 20px; height: 20px;"><img src="../final/resources/image/star.jpg" style="width: 20px; height: 20px;"><img src="../final/resources/image/star.jpg" style="width: 20px; height: 20px;"><!-- <p style="font-size:15px; color: #ffbf00;">★★★</p> --></c:if>
                                    <c:if test="${item.star eq '4'}"><img src="../final/resources/image/star.jpg" style="width: 20px; height: 20px;"><img src="../final/resources/image/star.jpg" style="width: 20px; height: 20px;"><img src="../final/resources/image/star.jpg" style="width: 20px; height: 20px;"><img src="../final/resources/image/star.jpg" style="width: 20px; height: 20px;"><!--  <p style="font-size:15px; color: #ffbf00;">★★★★</p> --></c:if>
                                    <c:if test="${item.star eq '5'}"><img src="../final/resources/image/star.jpg" style="width: 20px; height: 20px;"><img src="../final/resources/image/star.jpg" style="width: 20px; height: 20px;"><img src="../final/resources/image/star.jpg" style="width: 20px; height: 20px;"><img src="../final/resources/image/star.jpg" style="width: 20px; height: 20px;"><img src="../final/resources/image/star.jpg" style="width: 20px; height: 20px;"><!-- <p style="font-size:15px; color: #ffbf00;">★★★★★</p> --></c:if>
                                 </br>
                                 </br>
                                 <strong><p style="font-size: 13px; color: black;">${item.contents}</p></strong> </br></br>
                                 <span style="font-size: 14px; color: #666;">
                                 <c:forEach var="priceitem" items="${item.items}">
                                    <strong>${priceitem.name} <fmt:formatNumber>${priceitem.price}</fmt:formatNumber></strong> </br>
                                 </c:forEach>
                                 </span>
                              </div>
                           </div>
                        </div>
                     </div>
                  </a>
               </c:forEach>
            </div>
            
         </div>   
         
         
         
         
         <div class="col-md-6">
            <div class="row">
               <div class="map-maker-guide">
                   <span style="vertical-align: middle; color: #666;"> <i class="quadrange maker-hotel" style="vertical-align: middle;"></i> 호텔 </span>
                   <span style="vertical-align: middle; color: #666;"> <i class="quadrange maker-consert" style="vertical-align: middle;"></i> 콘서트 </span>
                  <span style="vertical-align: middle; color: #666;"> <i class="quadrange maker-resort" style="vertical-align: middle;"></i> 리조트 </span>
               </div>
            </div>
            <div class="row">
               <div id="map" style="width: 100%; height:83%"></div>
            </div>
   
         <script>
            var low_lat;
            var high_lat;
            var low_lon;
            var high_lon;
         
            var map;
      
              // HTML5의 geolocation으로 사용할 수 있는지 확인합니다 
              
      
                  // GeoLocation을 이용해서 접속 위치를 얻어옵니다
                  //navigator.geolocation.getCurrentPosition(function(position) {
      
                      var lat = 37.5727904, // 위도
                          lon = 126.991781; // 경도
                       
                       var mapContainer = document.getElementById('map'), // 지도를 표시할 div 
                      mapOption = { 
                          center: new daum.maps.LatLng(lat, lon), // 지도의 중심좌표
                          level: 3 // 지도의 확대 레벨 
                      }; 
          
                     map = new daum.maps.Map(mapContainer, mapOption); // 지도를 생성합니다
                       
                       low_lat = lat - 1.05;
                       high_lat = lat + 1.05;
                       low_lon = lon - 1.05;
                       high_lon = lon + 1.05;
                       
                       $.ajax({
                       url:"searchMap.do",
                       data:{lowLat:low_lat, highLat:high_lat, lowLon:low_lon, highLon:high_lon},
                       dataType:'json',
                       success:function(all) {
                          $.each(all, function(index, item) {
                             var x,message;
                             if(item.type === "C"){
                                x = new daum.maps.LatLng(item.lag, item.lon), // 마커가 표시될 위치를 geolocation으로 얻어온 좌표로 생성합니다
                                message = '<div style="padding:5px;text-align:center;height:230px">'+item.name+'<img src="resources/image/'+item.img+'" style="width:100px; height:200px;"/></div>';
                             } else {
                                x = new daum.maps.LatLng(item.lag, item.lon), // 마커가 표시될 위치를 geolocation으로 얻어온 좌표로 생성합니다
                                message = '<div style="padding:5px;text-align:center;height:150px">'+item.name+'<img src="resources/image/'+item.img+'" style="width:200px; height:100px;"/></div>'                                
                             }
                                
                                console.log(item.type);
                               displayMarker(x, message, item.type);
                          });
                          
                              displayMarker(new daum.maps.LatLng(lat, lon), '<div style="padding:5px;text-align:center;">현재 위치</div>',"");
                              map.setCenter(new daum.maps.LatLng(lat, lon));   
                       }                       
                    }); 
                       
                    //});
      
            
              
              // 지도에 마커와 인포윈도우를 표시하는 함수입니다
              function displayMarker(loc, message, type) {
                 
                 var imageSrc,imageSize,imageOption;
   
                 if(type === "H"){
                    imageSrc = 'https://cdn.icon-icons.com/icons2/165/PNG/256/mapmarker_marker_outside_pink_23005.png', // 마커이미지의 주소입니다    
                     imageSize = new daum.maps.Size(40, 40); // 마커이미지의 크기입니다
                     //imageOption = {offset: new daum.maps.Point(27, 30)}; // 마커이미지의 옵션입니다. 마커의 좌표와 일치시킬 이미지 안에서의 좌표를 설정합니다.
                 } else if(type === "C"){
                    imageSrc = 'https://cdn.icon-icons.com/icons2/165/PNG/256/mapmarker_marker_outside_chartreuse_23006.png', // 마커이미지의 주소입니다    
                     imageSize = new daum.maps.Size(40, 40); // 마커이미지의 크기입니다
                     //imageOption = {offset: new daum.maps.Point(27, 30)}; // 마커이미지의 옵션입니다. 마커의 좌표와 일치시킬 이미지 안에서의 좌표를 설정합니다.
                 } else if(type === "R"){
                    imageSrc = 'https://cdn.icon-icons.com/icons2/165/PNG/256/mapmarker_marker_outside_azure_23007.png', // 마커이미지의 주소입니다    
                     imageSize = new daum.maps.Size(40, 40); // 마커이미지의 크기입니다
                     //imageOption = {offset: new daum.maps.Point(27, 30)}; // 마커이미지의 옵션입니다. 마커의 좌표와 일치시킬 이미지 안에서의 좌표를 설정합니다.
                 } else{
                    imageSrc = 'https://cdn.icon-icons.com/icons2/603/PNG/512/location_map_directions_geography_gps_icon-icons.com_55988.png', // 마커이미지의 주소입니다    
                     imageSize = new daum.maps.Size(40, 40); // 마커이미지의 크기입니다
                     //imageOption = {offset: new daum.maps.Point(27, 30)}; // 마커이미지의 옵션입니다. 마커의 좌표와 일치시킬 이미지 안에서의 좌표를 설정합니다.
                    
                 }
                     
                     
                 // 마커의 이미지정보를 가지고 있는 마커이미지를 생성합니다
                 var markerImage = new daum.maps.MarkerImage(imageSrc, imageSize, imageOption); 
                     
                 
                  // 마커를 생성합니다
                  var marker = new daum.maps.Marker({  
                      //map: map, 
                      position: loc,
                      image: markerImage // 마커이미지 설정 
                  }); 
                     
                  // 마커가 지도 위에 표시되도록 설정합니다
                  marker.setMap(map);  
               
                  var iwContent = message, // 인포윈도우에 표시할 내용
                      iwRemoveable = true;
      
                  // 인포윈도우를 생성합니다
                  var infowindow = new daum.maps.InfoWindow({
                      content : iwContent
                  });
                  // 지도 중심좌표를 접속위치로 변경합니다
                  //map.setCenter(locPosition);   
      
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
         </div>
      </div>   
      </c:if>
      
      
   <c:if test="${type == 'P' }">
      <div class="row" style=" padding: 10px">
          <!-- <span style="padding: 20px"><a href="#" style="text-decoration:none"> 가격대선택 <img src="resources/image/아래화살표.png" width="15px" height="15px"></a></span> -->
          <input id="search_bar" type="text" style="width:60%; height: 31px; vertical-align: middle;"/>
          <button id="btn-item-search" style="vertical-align:middle; color:white; border: 1px solid transparent; border-radius: 4px; width: 65px !important; height: 33px !important; background-color: #e7a1b0 !important; border-color: #e7a1b0; text-decoration: none; margin-top: 2px; font-size: 14px;"><img src="https://img1.daumcdn.net/thumb/R720x0.q80/?scode=mtistory&fname=http%3A%2F%2Fcfile1.uf.tistory.com%2Fimage%2F184789024BF171A9B2E06C" style="width:20px; height:20px;">검색</button>
      </div>
   
      <div class="row">
         <div class="list-box" style="width:100%">
            <label style="width:85%;">Best추천</label>
         </div>
      </div>
      
      <div class="row" id="package-box" style="height:80%; overflow: scroll;">
         <c:forEach var="item" items="${items }">
            <c:if test="${not empty item.paNo}">
               <a href="package/package.do?no=${item.packageNo}">
                  <div class="row" style="padding: 30px 0 30px; border-bottom: 1px solid #e5e5e5;-ms-overflow-style: none;">
                  
                     <div class="col-sm-8">
                        <div class="row">
                           <div class="col-sm-4">
                              <img src="resources/image/${item.hotelitem.img}" style="min-width:200px; max-width:200px; max-height: 100px; border-radius: 10px; border: 1px solid #ddd;"/>
                           </div>                        
                           <div class="col-sm-4">
                              <c:if test="${not empty item.resortitem.img or not empty item.concertitem.ccImg}">
                                 <img src="resources/image/heart.png" style="min-width:200px; max-width:200px; max-height: 100px;"/>
                              </c:if>   
                           </div>
                           <div class="col-sm-4">
                              <c:if test="${not empty item.resortitem.img }">
                                 <img src="resources/image/${item.resortitem.img}"  style="min-width:200px; max-width:200px; max-height: 100px; border-radius: 10px; border: 1px solid #ddd;"/>
                              </c:if>                        
                              <c:if test="${not empty item.concertitem.ccImg }">
                                 <img src="resources/image/${item.concertitem.ccImg}" style="min-width:200px; max-width:200px; max-height: 100px; border-radius: 10px; border: 1px solid #ddd;" />
                              </c:if>                        
                           </div>
                        </div>
                     </div>
                     <div class="col-sm-4">
                        <div class="info-box">
                           <label style="font-size: 20px; color: #e87a92;">${item.packageName }</label> </br>
                           <label class="label label-danger label-lg" style="font-size: 14px;">${item.count } 개</label>
                           <label style="font-size: 14px; color: #666;"><fmt:formatDate value="${item.startDate }"/>  ~ <fmt:formatDate value="${item.endDate  }"/></label>
                        </div>
                     </div>
                  
                     
                  </div>
               </a>
            </c:if>
         </c:forEach>
      </div>
   </c:if>


</div>

</body>




</html>















