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
				<td class="tg-0pky title"><div class="myinfo-td">현재 비밀번호</div></td>
				<td class="tg-0pky"><input class="input myinfo-input"
					type="password" /></td>
				<td class="tg-0pky"></td>
			</tr>
			<tr>
				<td class="tg-0pky title"><div class="myinfo-td">새 비밀번호</div></td>
				<td class="tg-0pky"><input class="input myinfo-input"
					type="password" /></td>
				<td class="tg-0pky"></td>
			</tr>
			<tr>
				<td class="tg-0lax title"><div class="myinfo-td">비밀번호 확인</div></td>
				<td class="tg-0lax"><input class="input myinfo-input"
					type="password" /></td>
				<td class="tg-0lax"></td>
			</tr>
			<tr>
				<td class="tg-0pky"></td>
				<td class="tg-0pky" rowspan="2"><button
						class="buy_btn myinfo-update-btn">수정하기</button></td>
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
<script>
	$("#mypage-title").html("내  비밀번호 관리");
	$("#mypage-form").remove();
	$(".pagination").remove();
	$(".myinfo-td ").css("width","150px");

</script>
<style>
</style>
</html>