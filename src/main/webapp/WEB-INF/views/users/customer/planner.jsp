<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="ko">
<head>
	<title>Party Mix</title>
	<meta charset="utf-8">
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
	<link rel="stylesheet" type="text/css" href="//cdnjs.cloudflare.com/ajax/libs/fullcalendar/3.3.1/fullcalendar.min.css">
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
	<script type="text/javascript" src="http://momentjs.com/downloads/moment.min.js"></script>
	<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/moment.js/2.18.1/locale/ko.js"></script>
	<script type="text/javascript" src="//cdnjs.cloudflare.com/ajax/libs/fullcalendar/3.3.1/fullcalendar.min.js"></script>	 
	<script type="text/javascript" src="//cdnjs.cloudflare.com/ajax/libs/fullcalendar/3.3.1/locale/ko.js"></script>	 
	<script type="text/javascript">
		$(function() {
			
			// 캘린더를 초기화한다.
			$("#calendar-box").fullCalendar({
				// [events : 일정데이트를 조회하는 콜백함수를 등록한다.]
				// 콜백함수는 캘린더에서 년/월/주가 변경될 때마다 실행된다.
				// 콜백함수는 start와 end는 moment함수다.
				// start와 end는 캘린더의 시작일자와 종료일자 정보를 담고 있다.
				events: function(start, end, timezone, callback) {
					
					var requestUrl = "showreserve.do";
					
					$.ajax({
						url:requestUrl,
						data:{no: '${LOGIN_USER.no}'},
						dataType:"json",
						success:function(data) {
							// data에는 해당 사용자의 일정정보들이 들어있다.
							// data -> [{"id":1,"title":"테스트","start":1490857200000,"end":1490860800000,"description":"테스트"}]
							// 서버로부터 전달받은 데이터의 시작일/종료일이 time값이다.
							
							// 일정들을 하나씩 순회하면서 start값과 end값을 날짜형식으로 변환한다.
							// 1490857200000 -> 2017-03-25 09:00
							$('#reservelist').html('');
							$.each(data, function(index, item) {
								// 타임값을 날짜형식의 문자열로 변환한다.
								item.title = index + ": " + item.packageName;
								item.start = item.checkIn;//item.startDate;//timeToString(item.start);
								item.end = item.checkOut;//item.endDate;//timeToString(item.end);
								var row = "";
								row += "<div style='margin:10px; color:#d36179'><strong>" + index + ". " + item.packageName + "</strong><br/>";
								row += "&nbsp&nbsp&nbsp&nbsp" + item.checkIn + " ~ " + item.checkOut + "</div>";
								$('#reservelist').append(row);
							})
							// 일정정보를 callback함수에 전달하고 callback함수를 실행한다.
							// callback함수를 실행하면 캘린더가 갱신된다.
							callback(data);
						},
						error:function() {
							alert("로그인 후 이용해주세요");
						}
					});
					
				}, eventColor: '#e7a1b0'
			});	
		});
		//C:\project\spring-fullcalendar\src\main\webapp\WEB-INF\views calender.jsp 참고
	</script>	
</head>
<body>
<%@include file="../../include/nav.jsp" %>
<%@include file="../../include/mypagenav.jsp" %>
<div class="container">
	<div class="row" style="margin-top:60px; margin-bottom:60px">
		<div class="col-xs-9">
			<div id="calendar-box" style="color:#e26c85"></div>
		</div>
		<div class="col-xs-3">
			<div style="padding-left:20px">
				<a href="reservelist.do?no=${LOGIN_USER.no }" class="btn" style="background-color:#e7a1b0; color:white">자세히 보기</a>
				<div id="reservelist">
				</div>
			</div>
		</div>
	</div>

</div>
<%@include file="../../include/footer.jsp" %>
</body>
</html>