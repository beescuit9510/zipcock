<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="/resources/css/common/default2.css">
<link rel="stylesheet" href="/resources/css/mypage/default.css">
<link rel="stylesheet" href="/resources/css/cart/default.css">

<title>Insert title here</title>
</head>
<body>
	<%@include file="/WEB-INF/views/common/header.jsp"%>
	<div class="main_field">
		<div class="main_content">
			<div class="main_content_field">

				<table class="cartFrm-info-table">
					<tr>
						<td>
						
						
						
							<!-- 집쿠욱  -->


							<c:forEach begin="1" end="3">

							<table class="tg cartFrm-table">
								<thead>
									<tr>
										<th colspan="2"><h2 class="seller-brand">집쿠욱 배송 상품</h2></th>
										<th></th>
										<th></th>
										<th>개당 가격</th>
										<th>배송비</th>
									</tr>
								</thead>
								<tbody>

								<!-- forEach -->
									<c:forEach begin="1" end="3">

										<tr class="cartFrm-img-tr">
											<td class="cartFrm-check">
												<div>
													<input type="checkbox" name="selected-product" value="상품번호"
														checked>
												</div>
												<div>
													<button class="top_btn">x</button>
												</div>

											</td>
											<td class="cartFrm-img-td img-container"><div
													class="product-img"></div></td>
											<td class="product-info">

												<div class="cartFrm-product-div">
													<span class="title">아이스컵 밀폐지(소/12cm)</span><span
														class="present_price product-price">내일 (금) 도착 예정</span>
												</div>

											</td>
											<td>
												<div class="cartFrm-quantity">
													<button class="top_btn" type="button">+</button>
													<input type="text" readonly="readonly" value="1" />
													<button class="top_btn" type="button"">-</button>
												</div>
											</td>
											<td>
												<div class="carFrm-price-div">
													<p class="present_price">0,231,230원</p>
												</div>
											</td>
											<td>
												<div class="carFrm-price-div">
													<p class="present_price">0,231,230원</p>
												</div>
											</td>
										</tr>
										
									</c:forEach>
									<!-- forEach end-->

								</tbody>
							</table>
							<!-- 집쿠욱  end-->
							</c:forEach>
							
							
							







						</td>
					</tr>
					<tr>
						<td>
							<div class="carFrm-total-price">
								<p class="title"><span>1000000</span> + <span>10000000</span> = <span class="total-price">2000000</span></p>
								<p class="sub_title">총 가격 + 총 배송비 = 총 결제액</p>
								<button class="buy_btn cartFrm-buy-btn">결재하기</button>
							</div>
						</td>
					</tr>
				</table>


			</div>
			<!-- main_content_field -->
		</div>
		<!-- main content -->
	</div>
	<!-- main field -->
	<%@include file="/WEB-INF/views/common/footer.jsp"%>
</body>
<style>
.total-price{
	font-size:30px;
}
</style>
</html>