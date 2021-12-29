
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%@include file="/WEB-INF/views/zipcoock/mypage/common/header.jsp"%>



	<table class="tg tg2">
		<thead>
			<tr>
				<th class="tg-0pky"></th>
				<th class="tg-0pky"></th>
				<th class="tg-0pky"></th>
			</tr>
		</thead>
		<tbody>
			<tr>
				<td class="tg-0pky title"><div class="myinfo-td">이름</div></td>
				<td class="tg-0pky"><input class="input myinfo-input"
					type="text" placeholder="장변덕" /></td>
				<td class="tg-0pky"></td>
			</tr>
			<tr>
				<td class="tg-0pky title"><div class="myinfo-td">아이디</div></td>
				<td class="tg-0pky"><input class="input myinfo-input"
					type="text" placeholder="byunduckiscute" /></td>
				<td class="tg-0pky"></td>
			</tr>
			<tr>
				<td class="tg-0lax title"><div class="myinfo-td">전화번호</div></td>
				<td class="tg-0lax"><input class="input myinfo-input"
					type="text" placeholder="010-7777-8767" /></td>
				<td class="tg-0lax"></td>
			</tr>
			<tr>
				<td class="tg-0pky"></td>
				<td class="tg-0pky" rowspan="2">
					<div class="btn-div">
						<button class="buy_btn myinfo-update-btn">수정하기</button>				
					</div>
					<div class="btn-div">
						<button class="cart_btn myinfo-update-btn">탈퇴하기</button>
					</div>
					
				</td>
				<td class="tg-0pky"></td>
			</tr>
			<tr>
				<td class="tg-0pky"></td>
				<td class="tg-0pky"></td>
			</tr>
		</tbody>
	</table>





	<%@include file="/WEB-INF/views/zipcoock/mypage/common/footer.jsp"%>
	
</body>
<link rel="stylesheet" href="/resources/css/mypage/myInfoPw.css">
<script>
	$("#mypage-title").html("내 정보 관리");
	$("#mypage-form").remove();
	$(".pagination").remove();
	$(".myinfo-td ").css("width","150px")
</script>
<style>
.btn-div {
	width: 45%;
	display: inline-block;
}

.btn-div:first-child>.myinfo-update-btn {
	margin-right: 15px;
}


.btn-div:last-child>.myinfo-update-btn {
	margin-left: 15px;
}

</style>
</html>