<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="/resources/css/common/default2.css">
<link rel="stylesheet" href="/resources/css/common/default.css">
<link rel="stylesheet" href="/resources/css/common/font.css">
<link rel="stylesheet" href="/resources/css/sellerMyPage/leftmenu.css">
<link rel="stylesheet" href="/resources/css/sellerMyPage/sellermypage.css">
</head>
<body>
	<%@include file="/WEB-INF/views/common/header.jsp"%>
	<div class="container">

		<div class="seller-mypagewarp">
			<div class="menu-left">
				<h4>
					MY PAGE<br>
				</h4>
				<ul class="left-menu" style="float: left;">
					<li><a class="leftmenu" href="sellerMypage.do">주문/배송</a></li>
					<li><a class="leftmenu" href="productMgr.do">상품 관리</a></li>
					<li><a class="leftmenu" href="sellerQNA.do">고객 관리</a></li>
					<li><a class="leftmenu" href="#">판매 통계</a></li>
					<li><a class="leftmenu" href="sellerInfo.do">판매자정보</a></li>
				</ul>
			</div>
			<div class="mypage-context">
				<div class="c-right">
					<div id="title">
						<h2>상품 조회</h2>
						<div class="productTotal">
							<img src="#" width="50px" height="50px"> 
							<span>판매중인 상품 </span><span> [9]</span><button style="float:right; margin-top:20px;">상품등록</button>
						</div>
						<div>
							<table class="table total-table">
								<tr>
									<th id="check"><input type="checkbox" id="checkAll"></th>
									<th>상품이미지</th>
									<th>상품명</th>
									<th>가격</th>
									<th>관리</th>
								</tr>
								<tr class="totalInfo">
									<td><input type="checkbox" class="checkProduct"
										name="checkId" value=${p.productId }></td>
									<td><a
										href="/productView?id=${p.productId }&seller=${p.productSeller }&reqPage=1"><img
											src="/upload/product/${p.productImage }" width="100px"
											height="100px"></a></td>
									<td><a
										href="/productView?id=${p.productId }&seller=${p.productSeller }&reqPage=1"
										style="color: black">상품명</a></td>
									<td class="priceTd">79,000원</td>
									
									<td>

										<button class="btn updateBtn">상품수정</button> <br>
									<br>
										<button class="btn inventory" value=${p.productId }
											data-toggle="modal" data-target="#myModal">재고확인</button>
									</td>
								</tr>

							</table>



							<button class="btn selectDelBtn">선택삭제</button>

						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<%@include file="/WEB-INF/views/common/footer.jsp"%>
</body>
</html>