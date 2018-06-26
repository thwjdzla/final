<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html lang="ko">
<head>
  <title></title>
  <style type="text/css">
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
    padding: 42px 32px 32px;
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
.chw-3.line {
    border-bottom: solid 2px #604d40;
    padding-bottom: 13px;
}
.chw-3 + .chw-5 {
    margin: 14px 0 12px;
}
.sh-3 {
    height: 180px;
    background: #f5f5f5;
}
.sh-3 + .chw-5 {
    border-top: solid 1px #e5e5e5;
    margin: 20px 0 12px;
    padding-top: 15px;
}
.scroll {
    overflow-x: hidden;
    overflow-y: scroll;
    border: solid 1px #aaa;
    padding: 10px 8px;
    font-size: 14px;
    box-sizing: border-box;
}
.btnArea-1 {
    margin-top: 20px;
    min-height: 60px;
    position: relative;
    text-align: center;
}
.w3-btn w3-red {
    min-width: 126px;
    height: 60px;
    line-height: 58px;
    font-size: 15px;
    padding: 0 32px;
    font-weight: bold;
}
.agrCont, .agrCont table {
    font-size: 13px;
}
.fc-1 {
    color: #e87a92 !important;
}
.cHead .chwTit {
    float: left;
    margin: 0;
}
.title-3 {
    font-size: 18px;
    font-weight: bold;
    margin: 51px 0 13px;
    color: #000;
}
.title-5 {
    font-size: 14px;
    margin: 30px 0 6px;
    color: #111;
    font-weight: bold;
}
.agrCont, .agrCont table {
    font-size: 13px !important;
}
.agrTit-1, .agrTxt, .agrList-3 {
	color: #666 !important;
	line-height: 1.6 !important;
	font-size: 13px !important;
}
li {
	list-style: none;
}
.agrList-3 > li {
    text-indent: -1.1em;
    margin-left: 1.1em;
}
ul {
	padding: 0;
}
.tb-3 {
    border-top: solid 1px #ccc;
    margin: 10px 0 10px;
}
.tb-3 tbody td {
    padding: 14px 10px 12px 10px;
    border-left: solid 1px #eee;
    border-bottom: solid 1px #eee;
}
.tb-3 tbody th {
    border-left: none;
}
.tb-3 th {
    background: #fafafa;
    font-weight: normal;
    padding: 13px 10px 7px 10px;
    color: #000;
    border-left: solid 1px #eee;
    border-bottom: solid 1px #eee;
    text-align: center;
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
</head>
<body>
<%@ include file="../../include/nav.jsp" %>
<div id="container ct" class="contBg">
	<div class="contWrap">
		<h2 class="pagTit">PARTY MIX</h2>
		<div class="pagTitSub" style="text-align: center; margin-bottom: 25px;">
			회원으로 가입하시면 파티믹스에서 제공하는 포인트 적립 및 다양한 할인 혜택을 받으실 수 있습니다.
		</div>
		<div class="w3-container" style="padding: 0;">
			<ul class="nav nav-pills nav-justified" role="tablist">
				<li>STEP1. 본인확인</li>
				<li class="active">STEP2. 약관동의</li>
				<li>STEP3. 개인정보 입력</li>
				<li>STEP4. 가입 완료</li>
			</ul>
		</div>
		<form id="insertForm" name="insertForm" method="post" action="joinform.do">
			<div class="contBox">
				<div class="cHead chw-3 first line" style="padding-bottom: 35px;">
					<h4 class="title-3 fc-1 chwTit">회원가입 약간동의 여부</h4>
					<span class="fR chwChk pull-right">
						<input type="checkbox" class="chk" id="checkAll" name="checkAll" value="Y" onchange="checkAll">
						<span class="act"></span>
						<label for="certChakAll">전체동의</label>
					</span>
				</div>
				<div class="cHead chw-5" style="margin-bottom: 50px;">
					<h4 class="title-5 chwTit">온라인 회원가입약간</h4>
					<span class="fR chwChk pull-right">
						<input type="checkbox" class="chk" id="checkAgree1" name="checkAgree1" value="Y" onclick="">
						<span class="act"></span>
						<label for="certChkAgree1">동의(필수)</label>
					</span>
				</div>
				<div class="scroll sh-3">
					<div class="agrCont">
						<h4 class="agrTit-1">제 1조 (목적)</h4>
						<div class="agrTxt">
							본 약관은 파티믹스 호텔 그룹이 PARTYMIX 카드 회원에게 제공하는 서비스를 위한 가입 조건, 제반 권리, 의무 및 관련 절차에 관한 기본적인 사항을 규정하는데 그 목적이 있습니다.
						</div>
						<h4 class="agrTit-1">제 2조 (정의)</h4>
						<ul class="agrList-3">
							<li>① "파티믹스 호텔 그룹"(이하 "호텔"이라 함)은 국내에서 운영되는 파티믹스 호텔을 말합니다. </li>
							<li>② "PARTYMIX 카드 회원"(이하 "회원"이라 함)은 본 약관을 승인하고, 호텔에 PARTYMIX  카드의 발급을 신청하여 호텔로부터 카드를 발급 받고, PARTYMIX 카드의 유효 기간이 남아 있는 고객을 말합니다.</li>
							<li>③ "PARTYMIX 카드"(이하 "PARTYMIX 카드"라 함)는 회원이 PARTYMIX 서비스를 정상적으로 이용 할 수 있도록 호텔에서 승인한 멤버십 카드를 말합니다.</li>
							<li>④ "PARTYMIX 서비스"(이하 "서비스"라 함)는 호텔에서 회원을 위해 제공하는 할인 및 포인트 적립 등 일체의 혜택 등을 총칭하여 말합니다. </li>
							<li>⑤ "PARTYMIX 이용처”(이하 “이용처”라 함)는 웹사이트 및 인쇄물에 명시되어 있는 PARTYMIX 카드를 이용할 수 있는 호텔을 말합니다. </li>
							<li>⑥ "PARTYMIX 약관"(이하 "약관"이라 함)은 호텔에서 회원을 위한 서비스를 제공하기 위해 정의되며, 호텔은 원활한 운영을 위해 별도의 운영 세칙을 둘 수 있습니다. </li>
							<li>⑦ "포인트"란 회원이 호텔에서 상품 구매를 할 경우 호텔에서 고지한 적립률에 따라 부여되는 마일리지를 말하며, 그 가치는 호텔에서 정의하며, 약관 및 운영 세칙의 개정에 따라 변경될 수 있습니다. </li>
							<li>⑧ "누적 포인트"란 회원이 호텔에서 제공하는 상품 구매를 할 경우 호텔에서 고지한 적립률에 따라 누적된 총 포인트를 말합니다. </li>
							<li>⑨ "가용 포인트"란 호텔에서 고지한 적립률에 따라 적립 되어진 포인트 중 이미 사용한 포인트를 제외한 나머지 포인트로 회원이 호텔에서 상품 구매 등으로 사용할 수 있는 포인트를 말합니다.</li>
							<li>⑩ "아이디(ID)"라 함은 회원의 식별과 서비스 이용을 위하여 회원권에 명시된 회사가 승인하는 문자와 숫자의 조합을 말합니다.</li>
							<li>⑪ "비밀 번호"는 회원이 부여 받은 아이디(ID)와 일치된 회원임을 회원 자신의 비밀을 보호하기 위하여 회원이 정한 문자와 숫자의 조합입니다.</li>
						</ul>
						<h4 class="agrTit-1">제 3조 (약관의 효력 및 개정)</h4>
						<ul class="agrList-3">
							<li>① 본 약관은 신규 가입 시나 재가입시 본 약관을 회원에게 공지하거나, 서면, E-mail 및 기타의 방법으로 회원에게 통지함으로써 효력이 발생합니다. </li>
							<li>② 호텔은 사전 협의 또는 통보 없이 본 약관의 내용을 변경할 수 있으며, 변경된 약관은 본 조 제①항과 같은 방법으로 공지 또는 통지함으로써 효력이 발생합니다.</li>
							<li>③ 호텔은 PARTYMIX 카드 운영에 관련된 별도의 운영 세칙을 두며, 이는 호텔의 영업 상황에 따라 변경될 수 있습니다. 변경된 운영 세칙은 본 조 제①항과 같은 방법으로 공지 또는 통지함으로써 효력이 발생합니다.</li>
						</ul>
						<h4 class="agrTit-1">제 4조 회원의 가입 및 멤버십 카드의 발급 등</h4>
						<ul class="agrList-3">
							<li>① 본 서비스를 이용하고자 하는 고객은 호텔에서 정한 가입 신청서를 작성, 개인정보 취급 방침에 동의한 후, 회원 가입을 신청하여야 합니다.</li>
							<li>② 호텔은 회원 가입 신청이 있는 경우 자체 기준에 따른 심사를 거친 뒤 기준을 만족하는 개인 고객에게 PARTYMIX 카드를 발급하여 드립니다. </li>
							<li>③ 고객 1인에게 PARTYMIX 카드 발급은 1개로 제한되며, 2인 이상이 PARTYMIX 카드를 공유하거나 결합할 수 없습니다. </li>
							<li>④ 법인, 협회, 단체 또는 호텔이 정한 범주에 포함되는 개인은 회원으로 가입할 수 없습니다.</li>
							<li>⑤ 만 19세 미만인 미성년자는 회원으로 가입할 수 없습니다. </li>
							<li>⑥ 가입 신청서에 기재하는 모든 정보는 모두 실제 정보인 것으로 간주됩니다. 실명이나 실제 정보를 입력하지 않은 회원은 법적인 보호를 받을 수 없으며 서비스의 제한을 받을 수 있습니다. </li>
							<li>⑦ ID와 비밀번호에 관한 관리책임은 회원에게 있고, 회원은 자신의 ID 및 비밀번호를 제3자에게 이용하게 해서는 안되며, 자신의 ID 및 비밀번호를 도난 당하거나 제3자가 사용하고 있음을 인지한 경우에는 바로 호텔에 통보하고 호텔의 안내가 있는 경우에는 그에 따라야 합니다. </li>
							<li>⑧ 회원은 본 서비스에서 정한 약관 및 운영 세칙을 준수 해야 합니다. </li>
							<li>⑨ 회원으로서의 자격과 회원 카드의 유효 기간은 없습니다. 그러나 최근 2년간 실적이 없을 경우 포인트 월별 차감으로 인해 잔여 포인트는 모두 소멸됩니다.</li>
						</ul>
						<h4 class="agrTit-1">제 5조 회원 탈퇴 및 자격 상실</h4>
						<ul class="agrList-3">
							<li>① 회원은 언제든지 서면, E-mail, 전화, 기타 당사가 정하는 방법으로 회원 탈퇴를 요청 할 수 있으며, 호텔은 회원의 요청에 따라 조속히 회원 탈퇴에 필요한 제반 절차를 수행합니다.</li>
							<li>② 호텔은 다음 각 호의 사유에 해당할 경우 회원 자격을 정지 또는 상실 시킬 수 있습니다. 이때 적립된 모든 포인트는 소멸되며, 해당 회원의 계정은 사용중지 됩니다. 단, 제3호의 경우에는 별도의 통보 없이 자격이 상실됩니다. 
								<ul class="argList-1">
									<li>1. 가입 신청서에 허위의 내용을 기재한 경우 </li>
									<li>2. 본 약관 및 운영 세칙에서 정한 포인트 적립 및 포인트 사용과 관련하여 서비스를 부정한 방법이나 부정한 목적으로 이용한 경우 </li>
									<li>3. 회원이 사망한 경우 </li>
									<li>4. 회원이 호텔 이용 및 서비스, 포인트와 관련하여 해당 법률을 악용 또는 위반한 경우</li>
									<li>5. 타 회원의 서비스 이용을 방해하거나 그 정보를 도용하는 등 거래질서를 위협하는 경우 </li>
									<li>6. 회원이 본 약관에 규정된 회원의 의무를 위반한 경우</li>
									<li>7. 회원이 호텔의 정상적인 운영을 방해한 경우 </li>
								</ul>
							</li>
							<li>③ 제②항의 사유로 자격이 상실된 회원은 제②항의 각 호의 사유가 자신의 고의 또는 과실에 기한 것이 아님을 소명할 수 있습니다. 이 경우 호텔은 회원의 소명 내용을 심사하여 회원의 주장이 타당하다고 판단하는 경우 회원으로 하여금 정상적인 서비스를 이용할 수 있도록 합니다. </li>
							<li>④ 제①항에 의한 회원 탈퇴 또는 제②항에 의한 회원 자격 상실이 확정되는 시점은 아래의 각 호와 같습니다.
								<ul class="argList-1">
									<li>1. 회원 탈퇴 요청일 또는 회원 자격 상실 통보일에 회원 탈퇴 또는 자격 상실이 확정됩니다.</li>
									<li>2. 사망으로 인한 자격 상실의 경우에는 회원 사망일에 자격상실이 확정됩니다.</li>
								</ul>
							</li>
						</ul>
						<h4 class="agrTit-1">제 6조 포인트 적립 및 사용</h4>
						<ul class="agrList-3">
							<li>① 호텔에서 지정하는 방법에 따라 적립 대상 상품을 구입하고 그에 따른 대금을 결제한 회원은 호텔에서 약정하여 고지한 파티믹스 적립 규정에 따라 포인트를 부여 받게 됩니다.</li>
							<li>② PARTYMIX 카드의 포인트는 세금 및 그 외 호텔에서 정한 비용을 제외하고, 누적이 가능하다고 정한 사용금액에 대해 적립해주며, 적립된 포인트는 과세 대상이므로 필요한 정보 공개 및 세금 납부의 의무는 회원 각자의 책임입니다.</li>
							<li>③ 회원은 포인트가 부여될 매출발생일로부터 30일 이내에 호텔에 매출 증빙 서류를 제출하여 포인트 수정을 요청할 수 있으며, 호텔은 회원의 요청이 정당하다고 인정될 경우 4주 이내에 포인트를 수정합니다.</li>
							<li>④ 호텔은 회원이 적립한 포인트가 부정 적립한 포인트로 판단되는 경우 회원에게 서면통지나 E-mail 통지 후 포인트 수정이 가능합니다.</li>
							<li>⑤ 제①항에 의해 적립된 누적 포인트는 포인트 발생일 익일에 가용 포인트로 전환되며, 가용 포인트는 호텔에서 정한 사용 가능한 최저 포인트 이상 적립 되었을 경우에 사용 가능합니다.</li>
							<li>⑥ 제⑤항에 의해 사용 가능한 가용 포인트를 보유한 회원은 호텔에서 정한 절차에 따라 사전 지정한 사용처에서 상품 구매에 따른 대금의 일부 또는 전부를 가용 포인트로 결제할 수 있습니다. 지정한 사용처와 잔여 포인트에 대한 사용 규정은 운영 세칙에 명시되며, 이는 호텔의 결정에 따라 변경 가능합니다.</li>
							<li>⑦ 회원이 상품 구매 대금을 결제 시 PARTYMIX 카드와 기타의 할인 카드를 제시하고, 이중 포인트 누적 또는 이중 할인 요구를 했을 때 호텔은 이를 거부할 수 있습니다. 단, 호텔에서 반드시 사전 고지한 유료 멤버십 카드나 제휴된 신용 카드인 경우에는 구매 대금에 대해 선 할인 후 포인트 적립이 됩니다. 이에 대한 사항은 운영 세칙에 명시하며, 변경 가능합니다.</li>
							<li>⑧ 포인트의 유효 기간은 포인트 적립 월로부터 만 2년간 유효하며, 첫 적립 월부터 2년 후, 선입선출 방식에 의해 포인트가 매월 말일 24:00 소멸됩니다. 소멸된 포인트에 대해서는 어떤 경우에도 복구할 수 없습니다.</li>
							<li>⑨ 적립된 포인트는 현금으로 지급될 수 없습니다.</li>
						</ul>
						<h4 class="agrTit-1">제 7조 멤버십 카드의 이용 및 관리</h4>
						<ul class="agrList-3">
							<li>① 회원이 구매대금에 대하여 포인트 결제를 원할 경우에는 멤버십 카드를 제시하여야 합니다. </li>
							<li>② 회원이 서비스를 이용하고자 멤버십 카드를 제시할 경우 호텔은 회원에게 본인확인을 위한 신분증 제시를 요청할 수 있습니다. 이 경우 회원은 호텔의 요청을 준수하여야 정상적인 서비스를 제공받을 수 있습니다. </li>
							<li>③ 멤버십 카드는 회원 본인이 직접 사용하여야 하며, 호텔의 사전동의 없이 타인에게 대여, 사용 위임하거나, 양도 또는 담보의 목적으로 제공할 수 없습니다.</li>
							<li>④ 전항의 규정에도 불구하고, 회원이 호텔의 사전 동의 없이 멤버십 카드를 타인에게 대여, 사용 위임, 양도 또는 담보의 목적으로 제공함으로써 발생한 손해와 타인이 멤버십 카드를 사용할 수 있음을 알았거나 쉽게 알 수 있었음에도 불구하고 이를 방치함으로써 발생한 손해에 대하여는 호텔은 어떠한 책임도 지지 않습니다.</li>
							<li>⑤ 멤버십 카드는 회원 스스로의 책임 하에 관리하여야 하며, 회원의 고의 또는 과실로 멤버십 카드가 훼손, 분실, 도난 되는 등의 사고가 발생한 경우 당해 회원은 즉시 그 사실을 호텔에 통지하여야 합니다. </li>
							<li>⑥ 회원으로부터 전항에 따른 통지를 받은 경우 호텔은 즉시 사고 등록 및 당해 멤버십 카드의 사용을 중지하는 등 필요한 제반 조치를 취합니다. 단, 호텔은 당해 회원이 전항에 따른 통지를 한 시점 이전에 발생한 손해에 대하여는 어떠한 책임도 지지 않습니다.</li>
						</ul>
						<h4 class="agrTit-1">제 8조 회원의 권리</h4>
						<div class="argTxt">
							회원은 각종 혜택 및 포인트를 호텔로 문의하여 알 권리가 있으며, 호텔은 적절하다고 판단되는 방법에 의해 프로그램의 변경사항에 대한 내용과 정보 및 점수 등을 회원에게 통지할 수 있고, 우편에 의한 통지의 경우 분실 또는 지연되거나 회원이 정보를 제공하지 않음으로 인한 회원의 불이익에 대해서는 호텔에 그 책임이 없습니다
						</div>
						<h4 class="agrTit-1">제 9조 회원 탈퇴 및 포인트 처리</h4>
						<ul class="agrList-3">
							<li>① 본 약관 제5조 제①항에 정해진 방법으로 회원 탈퇴 시에는 회원 탈퇴 요청일까지 적립된 포인트 사용이 불가하며, 탈퇴 요청일로부터 90일 이내에 재가입하지 않을 경우 자동으로 소멸됩니다.</li>
							<li>② 본 약관 제5조 제②항에 따라 회원 자격이 상실된 경우, 자격 상실일까지 적립된 포인트는 자동으로 소멸됩니다.</li>
						</ul>
						<h4 class="agrTit-1">제 10조 서비스의 변경 및 중지</h4>
						<ul class="agrList-3">
							<li>① 호텔은 서비스 이용 조건에 대한 변경, 수정 또는 새로운 조건을 도입할 상당한 이유가 있는 경우 이용 조건의 변경, 수정 또는 새로운 조건의 도입을 회원에게 통보한 후 그 효력을 발생시킬 수 있는 권리를 가집니다.</li>
							<li>② 호텔은 호텔의 자유재량으로 결정하는 서비스 종료일까지 서비스를 제공하며, 호텔의 사정에 의해 서비스를 중지할 경우에는 회원에게 90일 전에 서면이나 인터넷 고지 또는 E-mail로 통지하여 PARTYMIX 카드 서비스를 종료할 수 있습니다.</li>
							<li>③ PARTYMIX 카드 서비스 종료일 이후 회원은 호텔에서 포인트 적립 혜택을 받지 못하며, 기 적립된 포인트는 호텔에서 별도 지정한 날까지 사용하여야 하며, 별도의 지정한 날까지 사용하지 않은 포인트는 자동 소멸됩니다.</li>
						</ul>
						<h4 class="agrTit-1">제 11조 약관 등의 개정</h4>
						<ul class="agrList-3">
							<li>① 호텔은 회원 서비스의 원활한 운영을 위하여 필요하다고 인정된 경우 이용약관 및 운영 세칙을 개정할 수 있으며 그 효력은 본 계약 하에 있는 전 회원에게 미칩니다.</li>
							<li>② 개정된 약관은 적용하고자 하는 날로부터 30일 전에 서면통지 또는 인터넷 고지, E-mail을 통하여 회원에게 고지하며, 개정된 약관은 공표된 적용일로부터 유효합니다.</li>
							<li>③ 운영 세칙은 호텔의 결정에 따라 변경 가능하며, 변경된 사항은 인터넷 고지 또는 E-mail을 통해 회원에게 고지하며, 변경사항은 고지 즉시 유효합니다.</li>
						</ul>
						<h4 class="agrTit-1">제12조 개인정보 보호</h4>
						<ul class="agrList-3">
							<li>① 호텔은 관계법령이 정하는 바에 따라 이용자 등록정보를 포함한 이용자의 개인정보를 보호하기 위해 관계법령과 호텔이 정한 개인정보 보호정책을 준수합니다. 이와 별도로 호텔은 이용자의 귀책사유로 인해 노출된 정보에 대해서는 일체의 책임을 지지 않습니다. </li>
							<li>② 호텔은 회원의 개인정보를 보호하기 위해 별도의 개인정보 활용에 관한 운영 세칙을 둘 수 있습니다. </li>
							<li>③ 호텔은 회원 서비스의 최적화, 서비스 활성화를 통한 고객 지향적인 마케팅 수행 등 회원이 동의한 개인정보 수집, 제공 및 활용 동의서에 기재된 목적 범위 내에서만 수집된 개인정보를 활용합니다.</li>
							<li>④ 호텔은 수집된 개인정보의 취급 및 관리 등의 업무를 스스로 수행함을 원칙으로 하나, 필요한 경우 위 업무의 일부 또는 전부를 호텔이 선정한 회사에 위탁할 수 있습니다. </li>
							<li>⑤ 회원은 호텔에 제공한 개인정보와 관련하여 변경사항이 있는 경우에는 지체 없이 호텔에 그 변경사실을 통지하여야 하며, 이를 태만히 함으로써 발생한 일체의 손해에 대하여 호텔은 어떠한 책임도 지지 않습니다.</li>
						</ul>
						<h4 class="agrTit-1">제 13조 저작권 및 약관 등 위반시의 책임</h4>
						<ul class="agrList-3">
							<li>① 본 약관 및 운영 세칙에서 정한 사항을 위반함으로써 발생하는 모든 책임은 위반한 자가 부담하며, 이로 인하여 상대방에게 손해를 입힌 경우에는 배상하여야 합니다.</li>
							<li>② 호텔의 웹사이트인 www.ambatel.com 내 저작물에 대한 저작권 및 기타 지적재산권은 호텔에 귀속되며, 회원은 호텔을 이용함으로써 얻은 정보를 호텔의 사전 승낙 없이 복제, 송신, 출판, 배포, 방송 기타 방법에 의하여 영리목적으로 이용하거나 제3자에게 이용하게 하여서는 안됩니다.</li>
						</ul>
						<h4 class="agrTit-1">제 14조 약관의 해석 및 관할법원</h4>
						<ul class="agrList-3">
							<li>① 회원은 멤버십 서비스가 호텔을 이용하는 고객들을 위한 배려차원에서 시행되는 것이고, 멤버십 포인트의 제공이 무상으로 이루어지는 점 등을 고려하여 약관의 해석 및 적용에 있어서 호텔의 입장이 충분히 반영되어야 함에 동의합니다. ② 본 약관과 관련된 분쟁은 서울중앙지방법원을 관할 법원으로 합니다.</li>
						</ul>
						<h4 class="agrTit-1">[부칙]</h4>
						<ul class="agrList-3">
							<li>* 본 운영 약관은 PARTYMIX CLUB과 온라인 회원 혜택 및 그에 따른 약관을 통합하여 2017년 9월 13일에 최종 개정 되었습니다.</li>
							<li>* 본 운영 약관은 호텔의 결정에 따라 변경 가능합니다.</li>
						</ul>
						<ul class="agrList-1">
							<li style="color: #666 !important;">회원약관 변경공고일자 : 2017년 9월 13일</li>
							<li style="color: #666 !important;">회원약관 시행일자 : 2017년 9월 13일</li>
						</ul>
					</div>
				</div>
				<div class="cHead chw-5" style="margin-bottom: 50px;">
					<h4 class="title-5 chwTit">개인정보 수집항목 및 이용 동의</h4>
					<span class="fR chwChk pull-right">
						<span class="chkFm ty-3">
							<input type="checkbox" class="chk" id="checkAgree2" name="checkAgree2" value="Y">
							<span class="act"></span>
							<label for="certChkAgree2">동의(필수)</label>
						</span>
					</span>
				</div>
				<div class="scroll sh-3">
					<div class="agrCont">
						<h4 class="agrTit-1">[개인정보 수집항목 및 이용 목적]</h4>
						<div class="argTxt" style="color: #666 !important;">
							파티믹스 호텔 그룹의 '개인정보취급방침' 에 따른 고객의 개인정보 수집, 이용, 취급 위탁 및 제3자 제공 등에 대한 고객동의는 '가입신청서' 등에 첨부된 '개인정보의 수집, 이용 동의서' 에 기재된 세부 내용을 숙지하시고 동의서에 서명하시거나 회원관리팀의 전화 상담 경우에는 상담원의 안내에 따라 파티믹스 호텔 그룹의 홈페이지 (https://www.partymix.com)에 게시된 '개인정보취급방침' 을 숙지하신 후 전화상으로 본인이 동의 의사를 표명하는 방법, 우편 또는 모사전송을 통해 이용자가 동의내용에 서명, 날인 후 제출하는 방법 등 관련 법령이 정하는 동의방법 중 하나를 선택하실 수 있습니다.
						</div>
						<table class="tb-3">
							<caption>개인정보 수집항목 및 이용 목적</caption>
							<colgroup>
								<col width="11%">
								<col width="8%">
								<col width="27%">
								<col width="27%">
								<col width="14%">
								<col width="*%">
							</colgroup>
							<thead>
								<tr>
									<th scope="col">구분</th>
									<th scope="col" colspan="2">수집항목</th>
									<th scope="col">이용목적</th>
									<th scope="col">보유 기간</th>
									<th scope="col">수집 방법</th>
								</tr>
							</thead>
							<tbody>
								<tr>
									<th rowspan="2" scope="row">온라인 멤버십</th>
									<td class="aC">필수</td>
									<td>연락처정보 : 주소, 전화번호, 휴대폰번호, E-mail<br>기타정보 : 이름, 생년월일</td>
									<td rowspan="2">연락처정보(E-mail,전화번호,주소 등) : 서비스이행을 위한 연락 및 안내, 고지사항 전달, 불만처리 등의 의사소통 등<br>기타정보(성별, 기념일 등) : 고객 맞춤 서비스를 제공하기 위한 자료로서 이용</td>
									<td rowspan="2" class="aC">탈퇴 시<br>까지<br>보유</td>
									<td rowspan="2">홈페이지</td>
								</tr>
								<tr>
									<td class="aC">선택</td>
									<td>기타정보 : FAX, 결혼기념일, 직업, 파티믹스포인트카드번호, 파티믹스카드번호, 선호시설</td>
								</tr>
								<tr>
									<th rowspan="2" scope="row">온라인 예약 회원</th>
									<td class="aC">필수</td>
									<td>연락처정보 : 전화번호, 휴대폰번호, E-mail (예약자와 투숙객이 상이할 경우 양측 모두 수집) 금융정보 : 카드번호, 카드유효기간<br>기타정보 : 성별, 예약자</td>
									<td rowspan="2">금융정보(신용카드번호 등) : 객실 예약 보증<br>연락처정보(E-mail,전화번호,주소 등) : 서비스이행을 위한 연락 및 안내, 고지사항전달, 불만처리 등의 의사소통 경로 등<br>기타정보(성별, 투숙객성향 등) : 고객 맞춤 서비스를 제공하기 위한 자료로서 이용</td>
									<td rowspan="2">홈페이지</td>
								</tr>
								<tr>
									<td class="aC">선택</td>
									<td>연락처정보 : 예약자 팩스, 투숙객 주소, 투숙객 회사전화<br>기타정보 : 투숙객 회사이름, 흡연여부, 방문목적, 투숙기간, 인원</td>
								</tr>
								<tr>
									<th rowspan="2" scope="row">고객의 소리</th>
									<td class="aC">필수</td>
									<td>연락처정보 : E-mail<br>기타정보 : 이름</td>
									<td rowspan="2">연락처정보(E-mail,전화번호 등) : 서비스이행을 위한 연락 및 안내, 고지사항전달, 불만처리 등의 의사소통 경로 등<br>기타정보(이름 등) : 고객 맞춤 서비스를 제공하기 위한 자료로서 이용</td>
									<td rowspan="2">홈페이지</td>
								</tr>
								<tr>
									<td class="aC">선택</td>
									<td>연락처정보 : 전화번호, 휴대폰번호</td>
								</tr>
							</tbody>
						</table>
					</div>
				</div>
				<div class="cHead chw-5" style="margin-bottom: 50px;">
					<h4 class="title-5 chwTit">서비스 이용을 위한 위탁업체 정보 제공에 대한 동의</h4>
					<span class="fR chwChk pull-right">
						<span class="chkFm ty-3">
							<input type="checkbox" class="chk" id="checkAgree3" name="checkAgree3" value="Y">
							<span class="act"></span>
							<label for="certChkAgree3">동의(필수)</label>
						</span>
					</span>
				</div>
				<div class="scroll sh-3">
					<div class="agrCont">
						<h4 class="agrTit-1">[서비스 이용을 위한 위탁업체 정보제공에 대한 동의] </h4>
						<div class="agrTxt">
							파티믹스 호텔 그룹은 고객에게 필수적인 서비스를 제공하고 고객의 편의를 도모하기 위하여 아래와 같이 개인정보의 취급을 위탁하고 있습니다. 개인정보의 취급위탁시 위탁업무 계약서 등을 통하여 개인정보보호 관련 법규의 준수, 개인정보에 관한 비밀유지, 제3자 제공에 대한 금지, 사고시의 책임부담, 위탁기간, 처리 종료 후의 개인정보의 반환 또는 파기 의무 등을 규정하고 이를 준수하도록 관리하고 있습니다.
						</div>
						<table class="tb-3">
							<caption>서비스 이용을 위한 위탁업체 정보제공에 대한 동의</caption>
							<colgroup>
								<col width="40%">
								<col width="*">
								<col width="22%">
							</colgroup>
							<thead>
								<tr>
									<th scope="col">위탁 목적</th>
									<th scope="col">제공 정보</th>
									<th scope="col">위탁업체</th>
								</tr>
							</thead>
							<tbody>
								<tr>
									<th scope="row">PARTYMIX PLUS CLUB<br>회원 가입 권유 및 회원 관리</th>
									<td>Website 회원 : 이름, 전화번호<br>Ambatel 회원 : 이름, 전화번호<br>A plus 회원 : 회원 정보 일체</td>
									<td>(주)인피니티컨설팅</td>
								</tr>
								<tr>
									<th scope="row">PARTYMIX 포인트 대행</th>
									<td>포인트카드번호</td>
									<td>한국정보통신(주)</td>
								</tr>
								<tr>
									<th scope="row">시스템 운영 및 유지보수</th>
									<td>회원 관련 정보 일체</td>
									<td>HP</td>
								</tr>
								<tr>
									<th scope="row">가입/예약 메일 발송, SMS 고객의 소리 답변</th>
									<td>이름, 이메일, 휴대폰 번호, 컨텐츠</td>
									<td>㈜휴머스온</td>
								</tr>
								<tr>
									<th scope="row">실명확인</th>
									<td>이름, 주민등록번호</td>
									<td>㈜한국신용평가정보</td>
								</tr>
								<tr>
									<th scope="row">모바일 멤버십 회원 가입을 위한 핸드폰 번호 확인 및 인증, 모바일 멤버십 회원 DB의 관리 및 SMS서비스</th>
									<td>이름, 핸드폰 번호, 성별, 생년월일</td>
									<td>SK플래닛㈜</td>
								</tr>
								<tr>
									<th scope="row">모바일 멤버십 회원 DB의 관리 및 운영</th>
									<td>이름, 핸드폰 번호, 성별, 생년월일</td>
									<td>㈜엠콤</td>
								</tr>
							</tbody>
						</table>
						<ul class="agrList-2">
							<li style="color: #666 !important;">이용기간 : 회원 탈퇴 시까지</li>
							<li style="color: #666 !important;">보유기간 : 회원 탈퇴 시까지</li>
						</ul>
					</div>
				</div>
				<div class="btnArea-1">
					<button type="submit" class="w3-btn w3-red" style="width: 126px !important; padding: 19px 32px; text-decoration: none; background-color: #e87a92 !important;" onclick="">확인</button>
				</div>
			</div>
		</form>
	</div>
</div>
<%@include file="../../include/footer.jsp" %>
</body>
<script type="text/javascript">
$(function() {
	$("#insertForm").submit(function(event) {
		var checkAgree1 = $(':checkbox[name=checkAgree1]').prop('checked');
		var checkAgree2 = $(':checkbox[name=checkAgree2]').prop('checked');
		var checkAgree3 = $(':checkbox[name=checkAgree3]').prop('checked');
		
		if(checkAgree1 == false) {
			alert("온라인 회원가입약간에 동의해주세요.")
			return false;
		}
		if(checkAgree2 == false) {
			alert("개인정보 수집항목 및 이용에 동의해주세요.")
			return false;
		}
		if(checkAgree3 == false) {
			alert("서비스 이용을 위한 위탁업체 정보 제공에 동의해주세요.")
			return false;
		}
		
		return true;
	})
	
	$("#checkAll").change(function(checkAll) {
		var checkAll = $(this).prop('checked');
		$(':checkbox[name^=checkAgree]').prop("checked", checkAll);
	})
})
</script>
</html>