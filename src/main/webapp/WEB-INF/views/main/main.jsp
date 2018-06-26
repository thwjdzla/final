<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
  <title>Party Mix</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
  <link href='https://fonts.googleapis.com/css?family=Carter One' rel='stylesheet'>
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  <script src="https://canvasjs.com/assets/script/canvasjs.min.js"></script>
  <link href="https://fonts.googleapis.com/css?family=Lobster" rel="stylesheet">
  <style type="text/css">
  a:hover{
   text-decoration:none;
   color: #edadba;
  }
  #hiimg:hover{
  	opacity: 0.7;
  }
  </style>
  <script type="text/javascript">
$(function() {
	showproductlist('hotel');
	
	$.ajax({
		url:"top10.do",
		dataType:'json',
		success:function(result) {
			
			var datas = [];
			$.each(result, function(index, item){
				var rank = new Object();
				rank.label = item.packageName;
				rank.y = item.count;
				datas.push(rank);
			});    
			CanvasJS.addColorSet("pinkShades",
		         [//colorSet Array
		        	 "#e26c85",
		             "#e87a92",
		             "#e7a1b0",
		             "#edadba",
		             "#eda3d1",
		             "#e778a1",
		             "#ed8baf",
		             "#e894b3",
		             "#d89eb3",
		             "#e8b0c4"
		         ]);
			var chart = new CanvasJS.Chart("chartContainer", {
				colorSet: "pinkShades",
				axisY: {
					title:"예약량"
				},
				data:[
					{
						type: "column",
						name: "인기순위",
						showInLegend: true,
						legendText: "예약량",
						dataPoints:datas
					}
				]
			});
			
			chart.render();
		}
		
	});
	
	$('.search').mouseover(function() {
		if($(this).attr('id') == "hotelsearch"){
			$('#searchkeyword').val('호텔명을 검색하세요');
		}
		if($(this).attr('id') == "concertsearch"){
			$('#searchkeyword').val('콘서트명을 검색하세요')
		}
		if($(this).attr('id') == "resortsearch"){
			$('#searchkeyword').val('리조트명을 검색하세요');
		}
	})
	
})

function showproductlist(product){
	if(product == 'hotel'){
		$.ajax({
			type:'GET',
			url:"findrecenthotel.do",
			dataType:'json',
			success:function(result){
				$('#productlist').html('');
				var row="";
				$.each(result, function(index, item){
					row += "<div class='col-sm-4'><a href='detail.do?no="+item.cpNo+"'><div style='width:380px; height:500px; border-radius: 10px; border: 1px solid #aaa5a7'>";
					row += "<img src='resources/image/"+item.img+"' width=360 height=220 style='margin:10px; border-radius: 10px;' id='hiimg' /><br/>";
					row += "<div style='width:300px; padding:10px; margin:auto'>";
					row += "<span style='color:#edadba'><small>"+item.address+"</small></span><br/>";
					row += "<h4 style='color:#e26c85'><strong>"+item.name+"</strong></h4><br/>";
					if(item.contents.length > 120){
						row += "<span style='color:gray'>"+item.contents.substring(0,108)+"</span></div></div></a></div>";
					}
					else{
						row += "<span style='color:gray'>"+item.contents+"</span></div></div></a></div>";
					}
						
				})
				$('#productlist').append(row);
			}
		})
	}
	if(product == 'resort'){	
		$.ajax({
			type:'GET',
			url:"findrecentresort.do",
			dataType:'json',
			success:function(result){
				$('#productlist').html('');
				var row="";
				$.each(result, function(index, item){
					row += "<div class='col-sm-4'><a href='detail.do?no="+item.cpNo+"'><div style='width:380px; height:500px; border: 1px solid #aaa5a7'>";
					row += "<img src='resources/image/"+item.img+"' width=360 height=220 style='margin:10px' /><br/>";
					row += "<div style='width:300px; padding:10px; margin:auto'>";
					row += "<span style='color:#edadba'><small>"+item.address+"</small></span><br/>";
					row += "<h4 style='color:#e26c85'><strong>"+item.name+"</strong></h4><br/>";
					row += "<span style='color:gray'>"+item.content+"</span></div></div></a></div>";
						
				})
				$('#productlist').append(row);
			}
		})
	}
	if(product == 'concert'){
		$.ajax({
			type:'GET',
			url:"findrecentconcert.do",
			dataType:'json',
			success:function(result){
				$('#productlist').html('');
				var row="";
				$.each(result, function(index, item){
					row += "<div class='col-sm-4'><a href='detail.do?no="+item.cpNo+"'><div style='width:380px; height:500px; border: 1px solid #aaa5a7'>";
					row += "<img src='resources/image/"+item.img+"' width=360 height=220 style='margin:10px' /><br/>";
					row += "<div style='width:300px; padding:10px; margin:auto'>";
					row += "<span style='color:#edadba'><small>"+item.ccAddress+"</small></span><br/>";
					row += "<h4 style='color:#e26c85'><strong>"+item.ccName+"</strong></h4><br/>";
					row += "<span style='color:gray'>"+item.ccContents+"</span></div></div></a></div>";
						
				})
				$('#productlist').append(row);
			}
		})
	}
}
</script>
<style>
	#whitebox > div {
		margin-top:60px;
	}	
	#grad1 {
    height: 100px;
    background: #e26c85; /* For browsers that do not support gradients */
    background: linear-gradient(to bottom right, #e26c85, #edadba); /* Standard syntax (must be last) */
    margin-left: -25%;
    margin-right: -25%;
    color: white;
    font-weight: 700;
    text-align: center;
    vertical-align: middle;
    font-family: 'Alfa Slab One';
}
</style>
</head>
<body>
<%@include file="../include/nav.jsp" %>
<div class="container" style="width: 100%;">
	<div class="row" style="width:100%; height:100%; position:fixed; z-index:1; margin-top: 0 !important;">
			<div class="w3-content w3-section" style="width:100%; height:100%; max-width: 100% !important; max-height: 100% !important;">
				<img class="mySlides" src="resources/image/main1.jpg" style="width:100%; height:100%">
				<img class="mySlides" src="resources/image/main3.jpg" style="width:100%; height:100%">
				<img class="mySlides" src="resources/image/main4.jpg" style="width:100%; height:100%">
				<img class="mySlides" src="resources/image/main5.jpg" style="width:100%; height:100%">
				<img class="mySlides" src="resources/image/main6.jpg" style="width:100%; height:100%">
				<img class="mySlides" src="resources/image/main7.jpg" style="width:100%; height:100%">
				<img class="mySlides" src="resources/image/main8.jpg" style="width:100%; height:100%">
				<img class="mySlides" src="resources/image/main9.jpg" style="width:100%; height:100%">
				<img class="mySlides" src="resources/image/main10.jpg" style="width:100%; height:100%">
				<img class="mySlides" src="resources/image/main11.jpg" style="width:100%; height:100%">
				<img class="mySlides" src="resources/image/main12.jpg" style="width:100%; height:100%">
			</div>
			<script>
			  var myIndex = 0;
			  carousel();

			  function carousel() {
			      var i;
			      var x = document.getElementsByClassName("mySlides");
			      for (i = 0; i < x.length; i++) {
			         x[i].style.display = "none";  
			      }
			      myIndex++;
			      if (myIndex > x.length) {myIndex = 1}    
			      x[myIndex-1].style.opacity = "0.9";    
			      x[myIndex-1].style.display = "block";  
			      setTimeout(carousel, 3000); // Change image every 2 seconds
			  }
			</script>
	</div>
	
	<div class="row" style="color:#d36179; text-align:center; top:287px; position:relative; z-index:2">
		<!-- <div style="opacity:0.6; background-color:white; margin:auto; width:370px; height:270px"> --> 
		<div> 
		</div>
		<div style="padding-top: 20px; padding-bottom:20px; top:60px; margin: auto; opacity:0.6; background-color:white;">
			<h1 style="font-family: 'Lobster', cursive; opacity:1">PartyMix</h1>
			<p><span class="search" id="hotelsearch"><a href="/final/getHotels.do">HOTEL</a></span> / <span class="search" id="concertsearch"><a href="/final/getconcert.do">CONCERT</a></span> / <span class="search" id="resortsearch"><a href="/final/getresort.do">RESORT</a></span></p>
			<!-- <div>
				<form class="form-inline" method="get" action="/silverstar/bookstore/search.jsp" >
					<div class="form-group"style="opacity:0.6">
						<input type="text" id="searchkeyword" name="keyword" class="form-control" style="text-align:center; color:#d36179" value="호텔명을 검색하세요"/>
					</div>
				</form>
			</div> -->
		</div>
	</div>
	<div style="width: 100%; margin: auto;">
		<div class="modal fade" id="exampleModal" tabindex="-1" role="dialog"
			aria-labelledby="exampleModalLabel" aria-hidden="true">
			<div class="modal-dialog" role="document">
				<div class="modal-content">
					<div class="modal-header">
						<h5 class="modal-title" id="exampleModalLabel"style="color:#e799a3">판매량 통계
						<button type="button" class="close" data-dismiss="modal"
							aria-label="Close">
							<span aria-hidden="true">&times;</span>
						</button></h5>
					</div>
					<div class="modal-body" style="height: 430px;">
						<div id="chartContainer" style="margin-left: 20px; height: 100%; width: 100%;"></div>
					</div>
					<div class="modal-footer">
						<button type="button" class="btn btn-secondary"
							data-dismiss="modal" style="background-color:#e799a3; color:white">닫기</button>
					</div>
				</div>
			</div>
		</div>
	<div id="whitebox" class="row" style="background-color:white; top:764px; position:relative; z-index:2; padding-left: 15%; padding-right: 15%;">
		<div class="row">
			<div id="grad1" style="padding-top: 5px; margin-bottom:30px;">
				<h1 style="font-weight: 700 !important;"><strong>Special Offers</strong></h1>
				<p>다양한 구성의 패키지로 특별한 쉼을 선사합니다</p>
			</div>
			<div class="row" style="text-align:center; height:600px">
			<c:forEach var="item" items="${packageList}">
				<div class="col-sm-3" style="margin-top:20px">
					<div style="height:300px;">		
						<a href="package/package.do?no=${item.no }">
							<img src="resources/image/${item.hotel.img }" id="hiimg" width=265 height=170 style="border-radius: 10px;"/>
						</a><br/>
						<div style="width:265px; margin:auto; padding-top:13px; text-align:left">
							<label style="border-bottom:1px solid #000; font-family: '맑은 고딕'; font-weight: bold;">${item.name}</label><br/>
							<span style="font-size:14px; font-family: '맑은 고딕';">${item.hotel.addressDetail}</span><br/><small style="color:gray">${item.startDate} ~ ${item.endDate}</small>
						</div>
					</div>
				</div>
				
			</c:forEach>
			</div>
		</div>	
		
		<div id="grad1" style="padding-top: 5px; margin-bottom:30px;">
			<h1 style="font-weight: 700 !important;"><strong>Event & Promotion</strong></h1>
			<p>풍성한 혜택과 특별한 가치를 경험해 보십시오.</p>
		</div>
		<div class="row">
			<a href="${advertisementTop.link}"><img id="hiimg" src="resources/image/${advertisementTop.image}" width="100%" height="350px"></a>
		</div>
		<div class="row">
			<div style="text-align:right">
				<p style="color:gray; font-family: '맑은 고딕';"><span onmouseover="showproductlist('hotel')">Hotel</span> / <span onmouseover="showproductlist('resort')">Resort</span> / <span onmouseover="showproductlist('concert')">Concert</span></p>
			</div>
			<div class="row" id="productlist" style="text-align:center; font-family: '맑은 고딕';">
			</div>
		</div>
		<div class="row">
			<div class="col-sm-6" style="padding:0px">
				<a href="${advertisementLeft.link}"><img id="hiimg" src="resources/image/${advertisementLeft.image}" width="100%" height="260px"></a>
			</div>
			<div class="col-sm-6" style="padding:0px">
				<a href="${advertisementRight.link}"><img id="hiimg" src="resources/image/${advertisementRight.image}" width="100%" height="260px"></a>
			</div>
		</div>
		<div class="row" style="margin-bottom:27px">
			<div class="col-sm-6" style="background-color:#e26c85; height:50px; padding:12px; font-family: '맑은 고딕';"><a style="color:white" data-toggle="modal" data-target="#exampleModal"> 통계 보기  <span class="glyphicon glyphicon-circle-arrow-right"></span> Right</a></div>
			<div class="col-sm-6" style="background-color:#e799a3; height:50px; padding:12px; font-family: '맑은 고딕';"><a href="https://www.facebook.com/ambatel" style="color:white" >공식 페이스북 가기  <span class="glyphicon glyphicon-circle-arrow-right"></span> Right</a></div>
		</div>
	</div>
	</div>
</div>
<div style="height: 200px;"></div>
<div style="position:absolute; width:100%; top:3370px; z-index:3">
	<%@include file="../include/footer.jsp" %>
</div>
</body>
</html>