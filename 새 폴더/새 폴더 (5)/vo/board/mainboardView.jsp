<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel='stylesheet' href='https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css'>
<link rel='stylesheet' href='https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.11.2/css/all.css'>
<!-- partial -->
<script src='https://code.jquery.com/jquery-3.4.1.slim.min.js'></script>
<script src='https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js'></script>
<script src='https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js'></script>
<script src='https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.3.4/owl.carousel.js'></script>

<link rel="stylesheet" href="/resources/css/mypage/like.css">
<link rel="stylesheet" href="/resources/css/mainboard/star.css">

</head>

<body>
<div class="s-wrapper">
		<%@include file="/WEB-INF/views/common/header.jsp" %>	



<div class="container">       
<div class="container">
	<div class="row mb-4">
		<div class="col-md-2">
      <a href="#"><img src="" class="img-thumbnail p-0 border-0" /></a>
    	</div>
		<div class="col-md-6">
			<div class="input-group input-group-lg">
				<input type="text" id="" name="" class="form-control" placeholder="상품을 검색해보세요" />
				<select class="form-control form-control-lg rounded-0">
					<option>최신순</option>
					<option>낮은 가격순</option>
					<option>높은 가격순</option>
				</select>
				<div class="input-group-append">
					<button class="btn btn-outline-secondary" type="button"><i class="fas fa-search"></i></button>
				</div>
			</div>
		</div>
		<div class="col-md-1">
			<button class="btn btn-outline-secondary btn-block btn-lg" type="button">
				<i class="fas fa-sync-alt"></i>
			</button>
		</div>
	</div>
	
		<div class="row mb-5">
		<div class="col-md-12">
			<nav class="navbar navbar-expand-lg navbar-light bg-light">
				<button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
					<span class="navbar-toggler-icon"></span>
				</button>
				<div class="collapse navbar-collapse" id="navbarSupportedContent">
					<ul class="navbar-nav mr-auto">
						<li class="nav-item active">
							<a class="nav-link" href="#">생활용품</a>
						</li>
						<li class="nav-item">
							<a class="nav-link" href="#">뷰티</a>
						</li>
						<li class="nav-item">
							<a class="nav-link" href="#">헬스/건강식품</a>
						</li>
						<li class="nav-item">
							<a class="nav-link" href="#">주방용품</a>
						</li>
						<li class="nav-item">
							<a class="nav-link" href="#">식품</a>
						</li>
						<li class="nav-item">
							<a class="nav-link" href="#">완구, 취미</a>
						</li>
						<li class="nav-item">
							<a class="nav-link" href="#">문구, 오피스</a>
						</li>
						<li class="nav-item">
							<a class="nav-link" href="#">반려동물</a>
						</li>
					</ul>
				</div>
			</nav>
		</div>
	</div>
	
	<div class="row mb-5">
		<div class="col-md-8">
			<div class="row">
				


				<div class="col-md-12 mb-4">
					<img alt="" class="img-thumbnail p-0 border-0" src="https://media.istockphoto.com/photos/ginger-cat-sitting-on-floor-in-living-room-and-looking-at-camera-pet-picture-id1149347768" />
				</div>
				<div class="col-md-3 mb-4">
					<img alt="" class="img-thumbnail p-0 border-0" src="https://media.istockphoto.com/photos/ginger-cat-sitting-on-floor-in-living-room-and-looking-at-camera-pet-picture-id1149347768" />
				</div>
			</div>
		</div>
		<div class="col-md-4">
			<div class="card">
				<div class="card-body">
					<h1 class="title">${pp.productName }</h1>
					<p class="m-0">
						<div class="star">
							<div class="star-rating js-star-rating">
							  <input class="star-rating__input" type="radio" name="rating" value="1"><i class="star-rating__star"></i>
							  <input class="star-rating__input" type="radio" name="rating" value="2"><i class="star-rating__star"></i>
							  <input class="star-rating__input" type="radio" name="rating" value="3"><i class="star-rating__star"></i>
							  <input class="star-rating__input" type="radio" name="rating" value="4"><i class="star-rating__star"></i>
							  <input class="star-rating__input" type="radio" name="rating" value="5"><i class="star-rating__star"></i>
							  <div class="current-rating current-rating--${pp.starClass } js-current-rating"><i class="star-rating__star">AAA</i>
							  </div>
							</div>
													</div>
													<span class="review-count goods_detail">(1222)</span>
												</p>

					<ul class="list-group list-group-flush mb-4">
						<li class="list-group-item pl-0 pr-0 pt-2 pb-2">Brand: ${pp.tradeName }<a href="#"></a></li>
						<li class="list-group-item pl-0 pr-0 pt-2 pb-2">제조국 : ${pp.origin }</li>
						<li class="list-group-item pl-0 pr-0 pt-2 pb-2">제조일자 : ${pp.manufactureDate }</li>
						<li class="list-group-item pl-0 pr-0 pt-2 pb-2">재고 : ${pp.stock }</li>
						<!--

							<li class="list-group-item pl-0 pr-0 pt-2 pb-2">Price in reward points: 400</li>
						-->
						<li class="list-group-item pl-0 pr-0">
						
						<c:if test="${not empty pp.discountedPrice }">
							<p class="m-0 h2"><span class="mainboard-view-price">${pp.discountedPrice }원</span><small><s class="original_price">${pp.price }원</s></small></p>
							<p class="m-0 text-muted">${pp.dRate } %</p>
						</c:if>
						
						<c:if test="${empty pp.discountedPrice }">
						<p class="m-0 h2"><span class="mainboard-view-price">${pp.price }원</span></p>
						</c:if>
						
						</li>
						<!--

							<li class="list-group-item pl-0 pr-0 pt-2 pb-2">Market Price: $1.134,82</li>
							<li class="list-group-item pl-0 pr-0 pt-2 pb-2">List Price: $1.256,82</li>
							<li class="list-group-item pl-0 pr-0 pt-2 pb-2">Cost Price: $1.487,82</li>
							<li class="list-group-item pl-0 pr-0 pt-2 pb-2">Wholesale Price: $1.721,82</li>
						-->
					</ul>
					<div class="input-group input-group-lg mb-4">
						<input type="number" class="form-control text-center" placeholder="Quantity" id="" name="" value="1" min="1" max="${pp.limit}" />
						<div class="input-group-append">
							<span class="input-group-text">수량</span>
						</div>
					</div>
					<div>
						<div class="likeButton-div-wrap">
							<span class="likeButton">♥</psn>
						</div>
						<button class="cart_btn-pos top_btn">장바구니 담기</button>
	
					</div>
				</div>
			</div>
		</div>

		<div class="col-md-12 mt-4">
			<ul class="nav nav-tabs justify-content-center" id="myTab" role="tablist">
				<li class="nav-item">
					<a class="nav-link lead active" role="tab" data-toggle="tab" href="#tabDescription">상품 상세</a>
				</li>
				<li class="nav-item">
					<a class="nav-link lead" role="tab" data-toggle="tab" href="#tabReview">상품후기</a>
				</li>
				<li class="nav-item">
					<a class="nav-link lead" role="tab" data-toggle="tab" href="#tabQnA">Q&A</a>
				</li>
				<li class="nav-item">
					<a class="nav-link lead" role="tab" data-toggle="tab" href="#tapShippingReturn">배송/환불 안내</a>
				</li>
				<li class="nav-item">
					<a class="nav-link lead" role="tab" data-toggle="tab" href="#tapSellerInfo">판매자 정보</a>
				</li>
			</ul>
			<div class="tab-content" id="myTabContent">
				<div class="tab-pane pt-4 active" role="tabpanel" id="tabDescription">
					<p>${p.productDetail }</p>
				</div>
				<div class="tab-pane pt-4" role="tabpanel" id="tapShippingReturn">
					<table class="table table-bordered">
						<thead>
							<tr>
								<td colspan="2"><strong>배송정보</strong></td>
							</tr>
						</thead>
						<tbody>
							<tr>
								<td>배송방법</td>
								<td>${pp.shippingMethod }</td>
							</tr>
							<tr>
								<td>배송사</td>
								<td>${pp.shippingCompany }</td>
							</tr>
							<tr>
								<td>배송비</td>
								<td>${pp.shippingFee }원</td>
							</tr>
							<tr>
								<td>배송기간</td>
								<td>${pp.shippingPeriod }일</td>
							</tr>
						</tbody>
						<thead>
							<tr>
								<td colspan="2"><strong>환불 정책</strong></td>
							</tr>
						</thead>
						<tbody>
							<tr>
								<td>환불 비용</td>
								<td>${pp.returnShipping}원</td>
							</tr>
							<tr>
								<td>환불 신청 기간</td>
								<td>${pp.returnLength}일내</td>
							</tr>
							<tr>
								<td>환불 제한 기준</td>
								<td>${pp.policyContent}</td>
							</tr>
						</tbody>
					</table>
				</div>

				<div class="tab-pane pt-4" role="tabpanel" id="tapSellerInfo">
					<table class="table table-bordered">
						<thead>
							<tr>
								<td colspan="2"><strong>판매자 상세 정보</strong></td>
							</tr>
						</thead>
						<tbody>
							<tr>
								<td>상호</td>
								<td>${pp.tradeName}</td>
							</tr>
							<tr>
								<td>대표자</td>
								<td>${pp.representative}</td>
							</tr>
							<tr>
								<td>사업장 소매지</td>
								<td>${pp.businessLoc}</td>
							</tr>
							<tr>
								<td>판매처 전화번호</td>
								<td>${pp.contact}</td>
							</tr>
							<tr>
								<td>판매처 이메일</td>
								<td>${pp.email}</td>
							</tr>
						</tbody>
						<thead>
							<tr>
								<td colspan="2"><strong>해당 상품 관련 연락처</strong></td>
							</tr>
						</thead>
						<tbody>
							<tr>
								<td>a/s 책임자 번호</td>
								<td>${pp.managerContact}</td>
							</tr>
							<tr>
								<td>소비자 상담 관련 번호</td>
								<td>${pp.ccContact}</td>
							</tr>
						</tbody>
					</table>
				</div>
				<div class="tab-pane pt-4" role="tabpanel" id="tabQnA">					
					<div class="card">
						<div class="card-header">상품관련 Q&A를 볼 수 있습니다. </div>
						<div class="card-body">
							<table class="table table-bordered">
								<tbody>
									<tr>
										<td colspan="2">
											<strong>(**덕) 왜 배송비 공짜라면서 자꾸 붙는건데요 왜 배송비 공짜라면서 자꾸 붙는건데요 왜 배송비 공짜라면서 자꾸 붙는건데요</strong>
										</td>
									</tr>
									<tr>
										<td colspan="2">
											<p>Libero sit ut sit ut in consequuntur, sed recusandae esse; qui eum alias fuga ratione ut reiciendis commodi et laboriosam? Earum eveniet et neque est alias commodi voluptatem veniam est. Ad aut sit excepturi unde laudantium voluptatem reiciendis nostrum eos. Molestiae omnis consectetur, culpa in sed aliquam porro quas asperiores.</p>
											<p class="m-0">18/03/2013</p>
										</td>
									</tr>
									<tr>
										<td colspan="2">
											<strong>답변완료</strong>
										</td>
									</tr>
									<tr>
										<td colspan="2">
											<p>그럴수도 있지 너무 그러지 맙시다 그럴수도 있지 너무 그러지 맙시다 그럴수도 있지 너무 그러지 맙시다그럴수도 있지 너무 그러지 맙시다그럴수도 있지 너무 그러지 맙시다그럴수도 있지 너무 그러지 맙시다 그럴수도 있지 너무 그러지 맙시다그럴수도 있지 너무 그러지 맙시다 </p>
											<p class="m-0">18/03/2013</p>
										</td>
									</tr>

								</tbody>
							</table>
						</div>
					</div>
				</div>
				<div class="tab-pane pt-4" role="tabpanel" id="tabReview">
					
					<div class="card">
						<div class="card-header">상품관련 후기를 볼 수 있습니다. </div>
						<div class="card-body">
							<table class="table table-bordered">
								<tbody>
									<tr>
										<td colspan="2">
											<strong>장변덕 </strong>
										</td>
									</tr>
									<tr>
										<td colspan="2">
											<p>상품 개별로임 </p>
			<div class="row">

				<div class="col-md-3 mb-4">
					<img alt="" class="img-thumbnail p-0 border-0" src="https://images.unsplash.com/photo-1568702846914-96b305d2aaeb?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1950&q=80" />
				</div>
				<div class="col-md-3 mb-4">
					<img alt="" class="img-thumbnail p-0 border-0" src="https://images.unsplash.com/photo-1568702846914-96b305d2aaeb?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1950&q=80" />
				</div>
				<div class="col-md-3 mb-4">
					<img alt="" class="img-thumbnail p-0 border-0" src="https://images.unsplash.com/photo-1568702846914-96b305d2aaeb?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1950&q=80" />
				</div>
				<div class="col-md-3 mb-4">
					<img alt="" class="img-thumbnail p-0 border-0" src="https://images.unsplash.com/photo-1568702846914-96b305d2aaeb?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1950&q=80" />
				</div>
</div>

											<p class="m-0">18/03/2013</p>
										</td>
									</tr>
									<tr>
										<td colspan="2">
											<strong>장변덕님의 별점 : </strong>
<div class="star-rating js-star-rating mainboard-review-star-rating">
  <input class="star-rating__input" type="radio" name="rating" value="1"><i class="star-rating__star"></i>
  <input class="star-rating__input" type="radio" name="rating" value="2"><i class="star-rating__star"></i>
  <input class="star-rating__input" type="radio" name="rating" value="3"><i class="star-rating__star"></i>
  <input class="star-rating__input" type="radio" name="rating" value="4"><i class="star-rating__star"></i>
  <input class="star-rating__input" type="radio" name="rating" value="5"><i class="star-rating__star"></i>
  <div class="current-rating current-rating--5 js-current-rating"><i class="star-rating__star">AAA</i>
  </div>
</div>

										</td>
									</tr>
								</tbody>
							</table>
						</div>
					</div>
				</div>



			</div>
		</div>
	</div>
	<div class="row"></div>
	<div class="row"></div>
	<div class="row"></div>
	<div class="row"></div>
	<div class="row"></div>
	<div class="row"></div>
	<div class="row"></div>
	<div class="row"></div>
	<div class="row mb-5">
		<div class="col-md-12">
			<div class="card">
				<div class="card-body">
					<div class="row">
						<div class="col-md-3">
							<i class="float-left mr-3 fa-3x fas fa-shipping-fast"></i>
							<p class="h5">안전/스피드 배송 <br/><small class="text-muted">안전하고 빠른 배송</small></p>
						</div>
						<div class="col-md-3">
							<i class="float-left mr-3 fa-3x fas fa-thumbs-up"></i>
							<p class="h5">소비자 보호<br/><small class="text-muted">품질검증부터 배송까지 확인합니다.</small></p>
						</div>
						<div class="col-md-3">
							<i class="float-left mr-3 fa-3x fas fa-umbrella"></i>
							<p class="h5">안전 결제<br/><small class="text-muted">소비자의 개인정보를 안전하게 보호합니다.</small></p>
						</div>
						<div class="col-md-3">
							<i class="float-left mr-3 fa-3x fas fa-life-ring"></i>
							<p class="h5">24/7 서비스<br/><small class="text-muted">24/7 쉼없이 운영됩니다.</small></p>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<div class="row mb-5">
		<div class="col-md-12">
	
		</div>
	</div>
</div>
<div class="container">
	<div class="row mb-5">
		<div class="col-md-12 mb-5">
		</div>
		<div class="col-md-2">
		</div>
		<div class="col-md-2">
		</div>
		<div class="col-md-2">
		</div>
		<div class="col-md-2">
		</div>
		<div class="col-md-4">
		</div>
		<div class="col-md-12 mt-5 mb-4">
		</div>
		<div class="col-md-12">
		</div>
		<div class="col-md-12">
		</div>
	</div>
</div>







</div>
<%@include file="/WEB-INF/views/common/footer.jsp" %>

</body>
<style>
	.nav-link{
		margin-left:25px;
		margin-right:25px;
	}
</style>
<script>

$(document).ready(function () {
	$(".likeButton").click(function() {
		$(this).toggleClass("liked");
	});
});
</script>

<style>
/*
.likeButton-div-wrap{
	margin-top:0px;
	margin-left: 5px;
	width:50px;
	height:80px;
}
.likeButton-div-wrap > div{
	height:50px;

}
.cart_btn-pos{
	margin-top: -70px;
	margin-left: 100px;
	width:130px;
}

.container{
	width:900px;
}
.start{
	margin-left:0;
	
}
.star-rating{
	margin-left:0;

}
.star-rating {
	width: 141.5px;
	height: 28px;
}
.review-count{
	font-size:22px;
	display:block;
	margin-top:-30px;
	margin-left:150px;
};
.mainboard-view-price{
	font-size:20px;	
}
.mainboard-review-star-rating{
	width: 91.5px;
	height: 18px;
	display:inline-block;
}
*/
</style>
</html>