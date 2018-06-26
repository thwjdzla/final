<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<link href="https://fonts.googleapis.com/css?family=Lobster" rel="stylesheet">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
<script>
$(function() {
	$('#scrolltop').click(function() {
		$("html, body").animate({scrollTop:0},'slow');
		return false;
	});

})
</script>

<style>
	.navbar-brand {
		font-family: 'Lobster', cursive;
		font-size: 34px;
		color:#d36179;
	}
	.navbar-brand:hover {
		color:#edadba;
	}
	
	.nav>li>a:hover, .nav>li>ul>li>a:hover { 
    	background-color:#f7d4dc;
	}
	.nav .open>a, .nav .open>a:focus, .nav .open>a:hover { 
    	background-color:#f7d4dc;
	}
	.a {
		text-decoration: none;
	}
</style>

<nav class="navbar" style="z-index:3; background-color:white; position:fixed; width:100%">
	<div class="container">
		<div class="navbar-header">
			<a href="/final/home.do"  class="navbar-brand" href="#">PartyMix</a>
		</div>
		<ul class="nav navbar-nav navbar-right">			
			<li style="background-color:#e26c85; width:110px" class="dropdown"><a style="padding-left:0; padding-right: 0; color:white; text-align:center" href="#" class="dropdown-toggle"
				data-toggle="dropdown" role="button" aria-haspopup="true"
				aria-expanded="false"><i class="glyphicon glyphicon-search" style="color: white; margin-right: 5px;"></i>검색</a>
				<ul class="dropdown-menu">
					<li><a href="/final/getHotels.do" style="color:#e778a1">호텔</a></li>
					<li><a href="/final/getconcert.do" style="color:#e778a1">콘서트</a></li>
					<li><a href="/final/getresort.do" style="color:#e778a1">리조트</a></li>
					<li><a href="/final/getpackage.do" style="color:#e778a1">패키지</a></li>
				</ul>
			</li>
			<li style="background-color:#e87a92; width:110px"><a href="/final/board/FAQ.do" style="padding-left:0; padding-right: 0; color:white; text-align:center"><i class="glyphicon glyphicon-earphone" style="color: white; margin-right: 5px;"></i>문의</a></li>
			<c:choose>
			<c:when test="${empty LOGIN_USER }">
				<li style="background-color:#e799a3; width:110px"><a href="/final/user/login.do" style="padding-left:0; padding-right: 0; color:white; text-align:center"><i class="glyphicon glyphicon-log-in" style="color: white; margin-right: 5px;"></i>로그인</a></li>
				<li style="background-color:#edadba; width:110px"><a href="/final/user/joinconfirm.do" style="padding-left:0; padding-right: 0; color:white; text-align:center"><i class="glyphicon glyphicon-heart" style="color: white; margin-right: 5px;"></i>회원가입</a></li>
			</c:when>
			<c:when test="${not empty LOGIN_USER }">
				<li style="background-color:#e799a3; width:110px"><a href="/final/user/logout.do" style="padding-left:0; padding-right: 0; color:white; text-align:center"><i class="glyphicon glyphicon-log-out" style="color: white; margin-right: 5px;"></i>로그아웃</a></li>
				<li style="background-color:#edadba; width:110px"><a style="padding-left:0; padding-right:0; color:white; text-align:center" href="/final/mypageMenu.do"><i class="glyphicon glyphicon-wrench" style="color: white; margin-right: 5px;"></i>마이페이지</a>
			</c:when>
			</c:choose>
		</ul>
	</div>
</nav>
<div style="z-index:3; right:2px;top:50px; position:fixed">
<ul class="nav navbar-right">
	<c:choose>
			<c:when test="${empty LOGIN_USER }">
				<li style="background-color: #e7a1b0; margin-top: 5px"><a href="/final/user/login.do"><span style="color: white" class="glyphicon glyphicon-log-in"></span></a></li>
			</c:when>
			<c:otherwise>
				<c:choose>
					<c:when test="${'U' eq LOGIN_USER.type }">
						<li style="background-color:#e26c85; margin-top:5px"><a href="/final/reservelist.do?no=${LOGIN_USER.no }"><span style="color:white" class="glyphicon glyphicon-shopping-cart"></span></a></li>
					</c:when>
					<c:when test="${'C' eq LOGIN_USER.type }">
						<li style="background-color:#e26c85; margin-top:5px"><a href="/final/board/registeredList.do"><span style="color:white" class="glyphicon glyphicon-th-list"></span></a></li>
					</c:when>
					<c:when test="${'A' eq LOGIN_USER.type }">
						<li style="background-color:#e26c85; margin-top:5px"><a href="/final/admin/companyadmin.do"><span style="color:white" class="glyphicon glyphicon-th-list"></span></a></li>
					</c:when>
				</c:choose>
				<li style="background-color:#e87a92; margin-top:5px"><a href="/final/board/myQnA.do"><span style="color:white" class="glyphicon glyphicon-earphone"></span></a></li>
				<li style="background-color:#e799a3; margin-top:5px"><a href="/final/myinfo.do?no=${LOGIN_USER.no }"><span style="color:white" class="glyphicon glyphicon-cog"></span></a></li>
				<li style="background-color: #edadba; margin-top: 5px"><a href="/final/user/logout.do"><span style="color: white" class="glyphicon glyphicon-log-out"></span></a></li>
			</c:otherwise>
	</c:choose>
	</ul>
</div>
<div id="scrolltop" style="z-index:4; left:5px; bottom:50px; position:fixed; width:50px; height:50px; text-align:center; align:center; background-color:#e26c85;color:white">
^<br/>top
</div>
<div style="position:static;margin-bottom:33px; height:20px;"></div>
