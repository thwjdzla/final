<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<style>
	#mypanel {
		margin-top:20px;
	}	
	.mypage > li:first-child {
		background-color: #e778a1;
		height:37px;
		text-align:center;
		margin-bottom:10px;	
		padding-top:9px;
		margin-top: 0px;
	}
	
	.mypage > li {
		margin-left:-39px;
		width:136px;
		height:30px;
		margin-top: 13px;
	}
	.mypage > li > a > span {
		margin-left: 5px;
		margin-right: 5px;
	}
</style>
<div id="mypanel" style="width:140px; position:fixed; top:100px; margin-left:0px; left:3%">
	<c:choose>
		<c:when test="${'A' eq LOGIN_USER.type }">
			<ul class="mypage" style="list-style: none">
				<li><a href="/final/mypageMenu.do" style="background-color: #e778a1; color:white">마이페이지</a></li>
				<li><a href="/final/admin/companyadmin.do" style="color: #e26c85;"><span class="glyphicon glyphicon-th-list"></span>업체관리</a></li>
				<li><a href="/final/admin/customerlist.do" style="color: #e87a92;"><span class="glyphicon glyphicon-th-list"></span>회원관리</a></li>
				<li><a href="/final/board/myQnA.do" style="color: #e26c85"><span class="glyphicon glyphicon-th-list"></span>문의관리</a></li>
				<li><a href="/final/ad.do" style="color: #e778a1;"><span class="glyphicon glyphicon-th-list"></span>광고관리</a></li>
			</ul>
		</c:when>
		<c:when test="${'C' eq LOGIN_USER.type }">
			<ul class="mypage" style="list-style: none">
				<li><a href="/final/mypageMenu.do" style="background-color: #e778a1; color:white">마이페이지</a></li>
				<li><a href="/final/board/myQnA.do" style="color: #e26c85"><span class="glyphicon glyphicon-th-list"></span>문의내역</a></li>
				<li><a href="/final/board/registeredList.do" style="color: #e87a92"><span class="glyphicon glyphicon-th-list"></span>업체/상품</a></li>
				<li><a href="/final/package/packagelist.do" style="color: #e778a1"><span class="glyphicon glyphicon-th-list"></span>패키지관리</a></li>
				<li><a href="/final/adApplyform.do" style="color: #e87a92"><span class="glyphicon glyphicon-ok"></span>광고신청</a></li>
				<li><a href="/final/myinfo.do" style="color: #e26c85"><span class="glyphicon glyphicon-cog"></span>내정보수정</a></li>
			</ul>
		</c:when>
		<c:when test="${'U' eq LOGIN_USER.type }">
			<ul class="mypage" style="list-style: none">
				<li><a href="/final/mypageMenu.do" style="background-color: #e778a1; color:white">마이페이지</a></li>
				<li><a href="/final/reservelist.do?no=${LOGIN_USER.no }" style="color: #d36179"><span class="glyphicon glyphicon-shopping-cart"></span>예약내역</a></li>
				<li><a href="/final/pointlist.do" style="color: #e778a1"><span class="glyphicon glyphicon-th-list"></span>포인트내역</a></li>
				<li><a href="/final/board/myQnA.do" style="color: #e26c85"><span class="glyphicon glyphicon-headphones"></span>문의내역</a></li>
				<li><a href="/final/planner.do" style="color: #e87a92"><span class="glyphicon glyphicon-calendar"></span>캘린더</a></li>
				<li><a href="/final/wishlist.do?no=${LOGIN_USER.no }" style="color: #e778a1"><span class="glyphicon glyphicon-bookmark"></span>위시리스트</a></li>
				<li><a href="/final/myinfo.do" style="color: #d36179"><span class="glyphicon glyphicon-cog"></span>내정보수정</a></li>
			</ul>
		</c:when>
	</c:choose>
</div>