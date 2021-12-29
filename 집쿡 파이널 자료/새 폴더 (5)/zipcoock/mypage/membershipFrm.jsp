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



	<table class="membership-info">
		<tr>
			<td class="receipt-wrap">
				<div class="receipt">
					<h2 class="merchant-name">변덕님의 한달간 절약한 금액</h2>
					<div class="grid-data">
						<div class="item-title">집쿠욱 직구 상품</div>
						<div class="item-price">99999999원</div>
						<div class="item-description subtle">(개당 3,000원 할인)</div>

						<div class="item-title">집쿠욱 직구 무료 배송</div>
						<div class="item-price">99999999원</div>
						<div class="item-description subtle">(개당 3,000원 할인)</div>

						<div class="item-title">30일 무료 반품</div>
						<div class="item-price">99999999원</div>
						<div class="item-description subtle">(개당 5,000원 할인)</div>
					</div>
					<div class="grid-data calculations">
						<!-- 
					    <div class="calc-title">Subtotal</div>
					    <div class="calc-amount">$9.78</div>
					    
					    <div class="calc-title">Tax</div>
					    <div class="calc-amount">$0.83</div>
					   -->

						<div class="calc-title total">한달 간 누적 절약 금액</div>
						<div class="calc-amount total">9999999999</div>
					</div>
					<div class="footer subtle">다음 결제 예정일은 2021년 12월 17일 입니다.</div>
				</div>
			</td>
		</tr>
	</table>


	<%@include file="/WEB-INF/views/zipcoock/mypage/common/footer.jsp"%>
</body>
<link rel="stylesheet" href="/resources/css/mypage/receipt.css">
<script>
	$("#mypage-title").html("집쿠욱 멤버십 관리");
	$("#mypage-form").remove();
	$(".pagination").remove();
</script>
<style>
.membership-info {
	width: 800px;
	height: 500px;
	border-bottom:1px solid #EAEBED;
	border-top:1px solid #EAEBED;
}
</style>
</html>