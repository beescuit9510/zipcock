<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel='stylesheet' href='https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css'>
<style>
	.eventImage{
		height: 300px;
		background-color: rgba(0, 0, 0, 0.2);
	}
	.main-copy{
		text-align: center;
	}
	.main-copy>img{
		width: 300px;
	}
	.copy{
		font-weight: 600;
		font-size: 20px;
		padding: 20px;
	}
	.main-color{
		color: #9ac6e8;
		font-weight: 900;
		font-size: 25px;
	}
	.sub-container{
		margin-top: 30px;
	}
	.category-img, .category-title{
		text-align: center;
	}
	.category-img img{
		width: 60px;
	}
	.star{
		color: #ffa500;
	}
</style>
</head>
<body>
	<%@include file="/WEB-INF/views/common/deliveryHeader.jsp"%>
	<div class="container">
		<a href="zcdMypage.do">마이페이지</a>
		<div class="eventImage"></div>
		<div class="main-copy">
			<img src="/resources/img/zcdBuyer/sofancoock.png">
			<div class="copy"><span class="main-color">집</span>에서 <span class="main-color">쿠-욱</span><br>
			누르기만 해도 찾아올 음식을 원하신다면,</div>
			<div class="row mb-4">
				<div class="col-md-3">
					<a href="#"><img src="" class="img-thumbnail p-0 border-0"></a>
				</div>
				<div class="col-md-6">
					<form action="zcdFindResult.do" method="post">
						<div class="input-group input-group-lg">
							<input type="text" id="keyword" name="keyword" class="form-control" placeholder="음식을 검색해보세요" />
							<div class="input-group-append">
								<button class="btn btn-outline-secondary" type="submit"><i class="fas fa-search"></i></button>
							</div>
						</div>
					</form>
				</div>
			</div>
		</div>
		<div class="sub-container">
			<h3>집쿡 맛집을 찾고 있다면</h3>
			<div class="store-wrap">
				<div class="row category-img">
				  <div class="col-md-1"><a href="#"><img src="/resources/img/zcdBuyer/icon/dbe.png">1인분</a></div>
				  <div class="col-md-1"><a href="#"><img src="/resources/img/zcdBuyer/icon/bingsu.png">한식</a></div>
				  <div class="col-md-1"><a href="#"><img src="/resources/img/zcdBuyer/icon/dbe.png">분식</a></div>
				  <div class="col-md-1"><a href="#"><img src="/resources/img/zcdBuyer/icon/bingsu.png">카페<br>디저트</a></div>
				  <div class="col-md-1"><a href="#"><img src="/resources/img/zcdBuyer/icon/dbe.png">돈까스<br>회·일식</a></div>
				  <div class="col-md-1"><a href="#"><img src="/resources/img/zcdBuyer/icon/bingsu.png">치킨</a></div>
				  <div class="col-md-1"><a href="#"><img src="/resources/img/zcdBuyer/icon/dbe.png">양식</a></div>
				  <div class="col-md-1"><a href="#"><img src="/resources/img/zcdBuyer/icon/bingsu.png">아시안</a></div>
				  <div class="col-md-1"><a href="#"><img src="/resources/img/zcdBuyer/icon/dbe.png">중국집</a></div>
				  <div class="col-md-1"><a href="#"><img src="/resources/img/zcdBuyer/icon/bingsu.png">족발보쌈</a></div>
				  <div class="col-md-1"><a href="#"><img src="/resources/img/zcdBuyer/icon/dbe.png">야식</a></div>
				  <div class="col-md-1"><a href="#"><img src="/resources/img/zcdBuyer/icon/bingsu.png">브랜드</a></div>				
				</div>
			</div>
		</div>
		<div class="sub-container">
			<h3>오늘 Hot한 음식점</h3>
			<div class="store-wrap">
				<div class="row">
					<div class="col-md-2 mb-4">
						<div class="card">
							<img class="card-img-top" src="https://via.placeholder.com/200x200" alt="" />
							<div class="card-body">
								<p class="h6 goods_name product-name"><small class="text-muted">Apple</small><br>다우니 초고농축섬유유연제aaaaaaaa aaaa aa a aa aaa aaa aaaaaaaaaaaaaaaaaaaaaaaaaaaaaa</p>
								<p class="m-0"><small><span class="star">★</span> 4.5(612) · 18-28분</small></p>
							</div>
						<div class="card-footer p-0"></div>
						</div>
					</div>
					<div class="col-md-2 mb-4">
						<div class="card">
							<img class="card-img-top" src="https://via.placeholder.com/200x200" alt="" />
							<div class="card-body">
								<p class="h6 goods_name product-name"><small class="text-muted">Apple</small><br>다우니 초고농축섬유유연제aaaaaaaa aaaa aa a aa aaa aaa aaaaaaaaaaaaaaaaaaaaaaaaaaaaaa</p>
								<p class="m-0"><small><span class="star">★</span> 4.5(612) · 18-28분</small></p>
							</div>
						<div class="card-footer p-0"></div>
						</div>
					</div>
					<div class="col-md-2 mb-4">
						<div class="card">
							<img class="card-img-top" src="https://via.placeholder.com/200x200" alt="" />
							<div class="card-body">
								<p class="h6 goods_name product-name"><small class="text-muted">Apple</small><br>다우니 초고농축섬유유연제aaaaaaaa aaaa aa a aa aaa aaa aaaaaaaaaaaaaaaaaaaaaaaaaaaaaa</p>
								<p class="m-0"><small><span class="star">★</span> 4.5(612) · 18-28분</small></p>
							</div>
						<div class="card-footer p-0"></div>
						</div>
					</div>
					<div class="col-md-2 mb-4">
						<div class="card">
							<img class="card-img-top" src="https://via.placeholder.com/200x200" alt="" />
							<div class="card-body">
								<p class="h6 goods_name product-name"><small class="text-muted">Apple</small><br>다우니 초고농축섬유유연제aaaaaaaa aaaa aa a aa aaa aaa aaaaaaaaaaaaaaaaaaaaaaaaaaaaaa</p>
								<p class="m-0"><small><span class="star">★</span> 4.5(612) · 18-28분</small></p>
							</div>
						<div class="card-footer p-0"></div>
						</div>
					</div>
					<div class="col-md-2 mb-4">
						<div class="card">
							<img class="card-img-top" src="https://via.placeholder.com/200x200" alt="" />
							<div class="card-body">
								<p class="h6 goods_name product-name"><small class="text-muted">Apple</small><br>다우니 초고농축섬유유연제aaaaaaaa aaaa aa a aa aaa aaa aaaaaaaaaaaaaaaaaaaaaaaaaaaaaa</p>
								<p class="m-0"><small><span class="star">★</span> 4.5(612) · 18-28분</small></p>
							</div>
						<div class="card-footer p-0"></div>
						</div>
					</div>
					<div class="col-md-2 mb-4">
						<div class="card">
							<img class="card-img-top" src="https://via.placeholder.com/200x200" alt="" />
							<div class="card-body">
								<p class="h6 goods_name product-name"><small class="text-muted">Apple</small><br>다우니 초고농축섬유유연제aaaaaaaa aaaa aa a aa aaa aaa aaaaaaaaaaaaaaaaaaaaaaaaaaaaaa</p>
								<p class="m-0"><small><span class="star">★</span> 4.5(612) · 18-28분</small></p>
							</div>
						<div class="card-footer p-0"></div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<div class="sub-container">
			<h3>자주 시킨 음식점</h3>
			<div class="store-wrap">
				<div class="store-wrap">
				<div class="row">
					<div class="col-md-2 mb-4">
						<div class="card">
							<img class="card-img-top" src="https://via.placeholder.com/200x200" alt="" />
							<div class="card-body">
								<p class="h6 goods_name product-name"><small class="text-muted">Apple</small><br>다우니 초고농축섬유유연제aaaaaaaa aaaa aa a aa aaa aaa aaaaaaaaaaaaaaaaaaaaaaaaaaaaaa</p>
								<p class="m-0"><small><span class="star">★</span> 4.5(612) · 18-28분</small></p>
							</div>
						<div class="card-footer p-0"></div>
						</div>
					</div>
					<div class="col-md-2 mb-4">
						<div class="card">
							<img class="card-img-top" src="https://via.placeholder.com/200x200" alt="" />
							<div class="card-body">
								<p class="h6 goods_name product-name"><small class="text-muted">Apple</small><br>다우니 초고농축섬유유연제aaaaaaaa aaaa aa a aa aaa aaa aaaaaaaaaaaaaaaaaaaaaaaaaaaaaa</p>
								<p class="m-0"><small><span class="star">★</span> 4.5(612) · 18-28분</small></p>
							</div>
						<div class="card-footer p-0"></div>
						</div>
					</div>
					<div class="col-md-2 mb-4">
						<div class="card">
							<img class="card-img-top" src="https://via.placeholder.com/200x200" alt="" />
							<div class="card-body">
								<p class="h6 goods_name product-name"><small class="text-muted">Apple</small><br>다우니 초고농축섬유유연제aaaaaaaa aaaa aa a aa aaa aaa aaaaaaaaaaaaaaaaaaaaaaaaaaaaaa</p>
								<p class="m-0"><small><span class="star">★</span> 4.5(612) · 18-28분</small></p>
							</div>
						<div class="card-footer p-0"></div>
						</div>
					</div>
					<div class="col-md-2 mb-4">
						<div class="card">
							<img class="card-img-top" src="https://via.placeholder.com/200x200" alt="" />
							<div class="card-body">
								<p class="h6 goods_name product-name"><small class="text-muted">Apple</small><br>다우니 초고농축섬유유연제aaaaaaaa aaaa aa a aa aaa aaa aaaaaaaaaaaaaaaaaaaaaaaaaaaaaa</p>
								<p class="m-0"><small><span class="star">★</span> 4.5(612) · 18-28분</small></p>
							</div>
						<div class="card-footer p-0"></div>
						</div>
					</div>
					<div class="col-md-2 mb-4">
						<div class="card">
							<img class="card-img-top" src="https://via.placeholder.com/200x200" alt="" />
							<div class="card-body">
								<p class="h6 goods_name product-name"><small class="text-muted">Apple</small><br>다우니 초고농축섬유유연제aaaaaaaa aaaa aa a aa aaa aaa aaaaaaaaaaaaaaaaaaaaaaaaaaaaaa</p>
								<p class="m-0"><small><span class="star">★</span> 4.5(612) · 18-28분</small></p>
							</div>
						<div class="card-footer p-0"></div>
						</div>
					</div>
					<div class="col-md-2 mb-4">
						<div class="card">
							<img class="card-img-top" src="https://via.placeholder.com/200x200" alt="" />
							<div class="card-body">
								<p class="h6 goods_name product-name"><small class="text-muted">Apple</small><br>다우니 초고농축섬유유연제aaaaaaaa aaaa aa a aa aaa aaa aaaaaaaaaaaaaaaaaaaaaaaaaaaaaa</p>
								<p class="m-0"><small><span class="star">★</span> 4.5(612) · 18-28분</small></p>
							</div>
						<div class="card-footer p-0"></div>
						</div>
					</div>
				</div>
			</div>
			</div>
		</div>
		<div class="sub-container">
			<h3>New Face 음식점</h3>
			<div class="store-wrap">
				<div class="store-wrap">
				<div class="row">
					<div class="col-md-2 mb-4">
						<div class="card">
							<img class="card-img-top" src="https://via.placeholder.com/200x200" alt="" />
							<div class="card-body">
								<p class="h6 goods_name product-name"><small class="text-muted">Apple</small><br>다우니 초고농축섬유유연제aaaaaaaa aaaa aa a aa aaa aaa aaaaaaaaaaaaaaaaaaaaaaaaaaaaaa</p>
								<p class="m-0"><small><span class="star">★</span> 4.5(612) · 18-28분</small></p>
							</div>
						<div class="card-footer p-0"></div>
						</div>
					</div>
					<div class="col-md-2 mb-4">
						<div class="card">
							<img class="card-img-top" src="https://via.placeholder.com/200x200" alt="" />
							<div class="card-body">
								<p class="h6 goods_name product-name"><small class="text-muted">Apple</small><br>다우니 초고농축섬유유연제aaaaaaaa aaaa aa a aa aaa aaa aaaaaaaaaaaaaaaaaaaaaaaaaaaaaa</p>
								<p class="m-0"><small><span class="star">★</span> 4.5(612) · 18-28분</small></p>
							</div>
						<div class="card-footer p-0"></div>
						</div>
					</div>
					<div class="col-md-2 mb-4">
						<div class="card">
							<img class="card-img-top" src="https://via.placeholder.com/200x200" alt="" />
							<div class="card-body">
								<p class="h6 goods_name product-name"><small class="text-muted">Apple</small><br>다우니 초고농축섬유유연제aaaaaaaa aaaa aa a aa aaa aaa aaaaaaaaaaaaaaaaaaaaaaaaaaaaaa</p>
								<p class="m-0"><small><span class="star">★</span> 4.5(612) · 18-28분</small></p>
							</div>
						<div class="card-footer p-0"></div>
						</div>
					</div>
					<div class="col-md-2 mb-4">
						<div class="card">
							<img class="card-img-top" src="https://via.placeholder.com/200x200" alt="" />
							<div class="card-body">
								<p class="h6 goods_name product-name"><small class="text-muted">Apple</small><br>다우니 초고농축섬유유연제aaaaaaaa aaaa aa a aa aaa aaa aaaaaaaaaaaaaaaaaaaaaaaaaaaaaa</p>
								<p class="m-0"><small><span class="star">★</span> 4.5(612) · 18-28분</small></p>
							</div>
						<div class="card-footer p-0"></div>
						</div>
					</div>
					<div class="col-md-2 mb-4">
						<div class="card">
							<img class="card-img-top" src="https://via.placeholder.com/200x200" alt="" />
							<div class="card-body">
								<p class="h6 goods_name product-name"><small class="text-muted">Apple</small><br>다우니 초고농축섬유유연제aaaaaaaa aaaa aa a aa aaa aaa aaaaaaaaaaaaaaaaaaaaaaaaaaaaaa</p>
								<p class="m-0"><small><span class="star">★</span> 4.5(612) · 18-28분</small></p>
							</div>
						<div class="card-footer p-0"></div>
						</div>
					</div>
					<div class="col-md-2 mb-4">
						<div class="card">
							<img class="card-img-top" src="https://via.placeholder.com/200x200" alt="" />
							<div class="card-body">
								<p class="h6 goods_name product-name"><small class="text-muted">Apple</small><br>다우니 초고농축섬유유연제aaaaaaaa aaaa aa a aa aaa aaa aaaaaaaaaaaaaaaaaaaaaaaaaaaaaa</p>
								<p class="m-0"><small><span class="star">★</span> 4.5(612) · 18-28분</small></p>
							</div>
						<div class="card-footer p-0"></div>
						</div>
					</div>
				</div>
			</div>
			</div>
		</div>
	</div>
	<%@include file="/WEB-INF/views/common/footer.jsp"%>
</body>
</html>