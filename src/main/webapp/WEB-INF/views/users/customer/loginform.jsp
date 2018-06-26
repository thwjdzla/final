<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html lang="ko">
<head>
  <title></title>
  <style type="text/css">
  .loginRow {
  	background: #fff;
  	border: solid 1px #ddd;
  }
  .loginCol {
  	padding: 40px 48px;
  }
  .ct {
  	background: #eeeeee;
  	width: 1216px;
    margin: 0 auto;
  }
  .contBg {
    min-width: 1260px;
    padding-top: 0;
    padding-bottom: 100px;
    background: #eeeeee;
}
  .btn1 {
  	background-color: #e87a92;
  	
  	border: none;
    color: white;
    padding: 14px 28px;
    font-size: 16px;
    cursor: pointer;
  	}
  .btn1:hover {
  	background-color: #ffb3d1;
  	
  	border: none;
    color: white;
    padding: 14px 28px;
    font-size: 16px;
    cursor: pointer;
  	}
  .loginOpt {
  	border-top: 1px solid #ddd;
  	margin-bottom: 50px;
    padding-top: 31px;
  }
  .loginOpt dt{ 
    font-size: 20px;
    color: #333;
    display: block;
    margin: 0 0 2px;
    padding-top: 3px;
    font-weight: bold;
}
  	
  </style>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <link href='https://fonts.googleapis.com/css?family=Delius Unicase' rel='stylesheet'>
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>
<body>
<%@ include file="../../include/nav.jsp" %>
<div id="container" class="contBg">
	<div class="ct">
		<h2 style="text-align: center; font-size:50px; padding:80px 0 30px; font-weight: bold; color: #e87a92 !important; font-family: 'Delius Unicase';">PARTYMIX</h2>
		<div class="loginRow" style="width: 600px; margin: auto; border-radius: 4px;">
			<c:if test="${param.err eq 'fail' }">
				<div class="alert alert-danger">
					<strong>오류</strong> 아이디 혹은 비밀번호가 올바르지 않습니다.
				</div>
			</c:if>
			<c:if test="${param.err eq 'deny' }">
				<div class="alert alert-danger">
					<strong>오류</strong> 로그인이 필요한 서비스 입니다.
				</div>
			</c:if>
			<form method="post" action="login.do" id="loginform">
				<div class="loginCol">
					<div class="form-group">
						<label for="text">아이디</label>
						<input type="text" class="form-control" id="id" placeholder="아이디를 입력해 주세요." name="id">
					</div>
					<div class="form-group">
						<label for="pwd">비밀번호</label>
						<input type="password" class="form-control" id="pwd" placeholder="비밀번호를 입력해 주세요." name="pwd">
					</div>
					<div class="checkbox">
						<label><input type="checkbox" name="remember">아이디 저장</label>
						<a href="#" class="txtLine pull-right" onclick="" style="color: #666; text-decoration: underline;">아이디 찾기 / 비밀번호 변경</a>
					</div>
					<button type="submit" class="btn1 btn-login pull-right" style="width: 120px;">로그인</button>
				</div>
			</form>
			<form method="post" action="joinconfirm.do">
				<div class="loginCol">
					<dl class="loginOpt">
						<dt>아직 파티믹스 회원이 아니신가요?</dt>
						<dd>
							무료 멤버십 가입 시 5% 포인트 적립과 <br>객실 및 레스토랑 할인 혜택
						</dd>
						<dd class="btnOpt">
							<button type="submit" class="btn1 btn-join pull-right" style="width: 120px; text-decoration: none;">회원가입</button>
						</dd>
					</dl>
				</div>
			</form>
		</div>
	</div>
</div>
<%@include file="../../include/footer.jsp" %>
</body>
<script type="text/javascript">
$(function() {
	$("#loginform").submit(function(event) {
		var id = $("#id").val().trim();
		var pwd = $("#pwd").val().trim();
		
		if(!id) {
			alert("아이디를 입력해 주세요.");
			return false;
		}
		if(!pwd) {
			alert("비밀번호를 입력해 주세요.");
			return false;
		}
		
		return true;
	});
})
</script>
</html>