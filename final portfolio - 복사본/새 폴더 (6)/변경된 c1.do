
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel='stylesheet' href='https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css'>
<link rel='stylesheet' href='https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.11.2/css/all.css'>
<!-- partial -->
<!-- partial -->
<script src='https://code.jquery.com/jquery-3.4.1.slim.min.js'></script>
<script src='https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js'></script>
<script src='https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js'></script>
<script src='https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.3.4/owl.carousel.js'></script>

<link rel="stylesheet" href="/resources/css/mainboard/staticStar.css">
</head>
<body>
<div class="s-wrapper">
		

<script src="https://use.fontawesome.com/releases/v5.2.0/js/all.js"></script>
<link rel="stylesheet" href="/resources/css/common/default2.css">
<link rel="stylesheet" href="/resources/css/common/default.css">
<link rel="stylesheet" href="/resources/css/common/font.css">
        <header class="header">
         <div class="header-top">  
         	<div class = "header-top-content">
         		<ul>
         			<li><a href = "/call_MainPage.do">집쿠욱 메인</a></li>    
         			<li><a href = "/zcdMain.do">집쿠욱 배달 메인</a></li> 
         		</ul>
	         	<ul>
  					
								
									
								
						 
							<li><div class = "memberName">[user6_fix]님 환영 합니다.</div></li>
						 						
					
	         	</ul>          	
         	</div> 
         </div>
         <div class = "header-main">
         	<div class = "header-main-content">
         		<ul class = "header-first">
         			<li><a href = "/mainboard.do">전체상품</a></li>
         			<li><a href = "/mainboard.do?b=전체%20상품&c=식품">집쿠욱 식품</a></li>
         			<li><a href = "/mainboard.do?b=전체%20상품&c=생활용품">집쿠욱 생활</a></li>
         			<li><a href = "/mainboard.do?b=전체%20상품&c=뷰티">집쿠욱 뷰티</a></li>
         		</ul>
         		<div>
         			<div>
         				<img style ="height : 50px;" src="/resources/img/common/logo_00.png" class="sc-eWnToP fEDxD">			
         			</div>
         		</div>
         		
         		
					
					
						<ul class = "header-last">		
		         			<li><a href = "/zipsellerMypage.do"><i class="fas fa-bookmark"></i>  마이 페이지</a></li>		         			
		         			<li><a href = "/logout.do"><i class="fas fa-sign-in-alt"></i>  로그아웃</a></li>   
		         		</ul>
					
				
         		
         	</div>
         </div>         
        </header>
        
        <!-- <li><a href = "/"><i class="fas fa-book-reader"></i>  고객 센터</a></li> -->
	

<div class="container-fluid position-relative" style="z-index: 99999;">
	<div class="row">
		<div class="col-md-12 shadow-sm">
			<div class="container">
				<div class="row mb-4"></div>
				<div class="row mb-4">
					<div class="col-md-2">
				</div>
					<div class="col-md-6">
						<div class="input-group input-group-lg">
							<input type="text" id="keyword" class="form-control" placeholder="전체에서 검색" value=""/>
							<select id="searchBy" class="form-control form-control-lg rounded-0">								
							
								<option value="상품"  selected = "selected" >상품</option>
							
								<option value="상호" >상호</option>
							
							</select>							
							<div class="input-group-append">
								<button id="link" class="btn btn-outline-secondary" type="button">
									<i class="fas fa-search"></i>
								</button>
							</div>
						</div>
					</div>
					<div class="col-md-1">
						<button id="reset" class="btn btn-outline-secondary btn-block btn-lg" type="button">
							<i class="fas fa-sync-alt"></i>
						</button>
					</div>
					<div class="col-md-1"></div>
					<div class="col-md-2"></div>
				</div>
				<div class="row">
					<div class="col-md-12"></div>
				</div>
			</div>
		</div>
	</div>
</div>
<div class="container-fluid mb-3">
	<div class="row">
		<div class="col-md-12 bg-light border-bottom pt-5 pb-5">
			<div class="container">
				<div class="row">
					<div class="col-md-12">
						<h2>전체</h2>
						<!-- 
						<ol class="breadcrumb p-0 m-0 bg-transparent">
							<li class="breadcrumb-item"><a href="#">전체 상품</a></li>
							<li class="breadcrumb-item"><a href="#">전체</a></li>
							
						</ol>
						 -->
					</div>
				</div>
			</div>
		</div>
	</div>
</div>















<div class="container">
	<div class="row mb-5">
		<div class="col-md-3">
			<div class="card mb-4">
				<div class="card-header">카테고리</div>
				<div class="list-group list-group-flush">
				
				
					<a href="/mainboard.do?b=전체 상품&c=식품" 
						class="list-group-item list-group-item-action 
						">
						식품 (30)</a>
				
					<a href="/mainboard.do?b=전체 상품&c=반려동물" 
						class="list-group-item list-group-item-action 
						">
						반려동물 (0)</a>
				
					<a href="/mainboard.do?b=전체 상품&c=문구/오피스" 
						class="list-group-item list-group-item-action 
						">
						문구/오피스 (0)</a>
				
					<a href="/mainboard.do?b=전체 상품&c=생활용품" 
						class="list-group-item list-group-item-action 
						">
						생활용품 (6)</a>
				
					<a href="/mainboard.do?b=전체 상품&c=뷰티" 
						class="list-group-item list-group-item-action 
						">
						뷰티 (71)</a>
				
					<a href="/mainboard.do?b=전체 상품&c=전체" 
						class="list-group-item list-group-item-action 
						active">
						전체 (116)</a>
				
					<a href="/mainboard.do?b=전체 상품&c=헬스/건강식품" 
						class="list-group-item list-group-item-action 
						">
						헬스/건강식품 (8)</a>
				
					<a href="/mainboard.do?b=전체 상품&c=주방용품" 
						class="list-group-item list-group-item-action 
						">
						주방용품 (1)</a>
				
					<a href="/mainboard.do?b=전체 상품&c=완구/취미" 
						class="list-group-item list-group-item-action 
						">
						완구/취미 (0)</a>
				
				
				
				
				
				</div>
			</div>


			<div class="card">
				<div class="card-header">검색하기</div>
				<div class="card-body p-1">

					<div class="card border-0 b-3">
						<div class="card-header p-2 bg-white" data-toggle="collapse" data-target="#collapseExample4" aria-expanded="false">
							<p class="m-0 h6">가격</p>
						</div>
						<div class="card-body p collapse show" id="collapseExample4">
							<div class="form-row">
								<div class="form-group col-md-6">
									<label>Min</label>
									<input id="min" oninput="setMin()" class="form-control" placeholder="0" type="number" min="0" max="9999999">
								</div>
								<div class="form-group text-right col-md-6">
									<label>Max</label>
									<input id="max" oninput="setMax()" class="form-control" placeholder="9999999" type="number" min="0" max="9999999">
								</div>
							</div>
						</div>
					</div>
				</div>
				<div class="card-footer">
					<button id="price-btn" type="button" class="btn btn-block btn-primary">검색</button>
				</div>
			</div>
		</div>
		<div class="col-md-9">
			<div class="card">
				<div class="card-header">
					<div class="row">
						<div class="col-md-4">
							<div class="input-group">
								<div class="input-group-prepend">
									<span class="input-group-text">정렬:</span>
								</div>
								<select class="selectBox form-control" id="orderBy">
								
									<option value="최신순" selected = "selected">최신순</option>
								
									<option value="가나다순" >가나다순</option>
								
									<option value="가나다역순" >가나다역순</option>
								
									<option value="높은가격순" >높은가격순</option>
								
									<option value="낮은가격순" >낮은가격순</option>
								
									<option value="오래된 순" >오래된 순</option>
								
									<option value="인기순" >인기순</option>
								
								</select>
							</div>
						</div>
						<div class="col-md-4">
							<div class="input-group">
								<div class="input-group-prepend">
									<span class="input-group-text">별점:</span>
								</div>
								<select class="selectBox form-control" id="star" name="">
								
									<option value="모든 별점" selected = "selected">모든 별점</option>
								
									<option value="4점 이상" >4점 이상</option>
								
									<option value="3점 이상" >3점 이상</option>
								
									<option value="2점 이상" >2점 이상</option>
								
									<option value="1점 이상" >1점 이상</option>
								
								</select>
							</div>
						</div>
						<div class="col-md-3">
							<div class="input-group">
								<div class="input-group-prepend">
									<span class="input-group-text">상품 보기:</span>
								</div>
								<select class="selectBox form-control" id="show" name="">
								
									<option value="6" selected = "selected">6</option>
								
									<option value="9" >9</option>
								
									<option value="12" >12</option>
								
									<option value="15" >15</option>
								
									<option value="18" >18</option>
								
									<option value="21" >21</option>
								
								</select>
							</div>
						</div>
					</div>
				</div>
				<div class="card-body">
	<div class="row">
	
		
		<div class="col-md-4 mb-4">
			<div class="card">
						
				
				
				<a href="/mainboardView.do?memberNo=0&productNo=267"><img class="card-img-top" src="/resources/img/common/choice/choice_img03.jpg" alt="" /></a>
				
<!--  
		<img class="card-img-top" src=다운로드.png alt="" />
-->		
				<div class="card-body">
					
					
					<a href="/mainboardView.do?memberNo=0&productNo=267"><p class="h6 goods_name product-name"><small class="text-muted">테스트</small></br>비트코인</p></a>
					
					<div class="m-0">
						<div class="star-rating js-star-rating">
							<input class="star-rating__input" type="radio" name="rating" value="1"><i class="star-rating__star"></i>
							<input class="star-rating__input" type="radio" name="rating" value="2"><i class="star-rating__star"></i>
							<input class="star-rating__input" type="radio" name="rating" value="3"><i class="star-rating__star"></i>
							<input class="star-rating__input" type="radio" name="rating" value="4"><i class="star-rating__star"></i>
							<input class="star-rating__input" type="radio" name="rating" value="5"><i class="star-rating__star"></i>
							<div class="current-rating current-rating--0-0 js-current-rating"><i class="star-rating__star"></i></div>
<!-- 
							<div class="current-rating current-rating--0-0 js-current-rating"><i class="star-rating__star"></i></div>
 -->
						</div>
					</div>
					<p class="review-count goods_detail">( 0 ) 개의 후기</p>
					
					<p class="m-0 discount_price product-price"><span class="present_price">46,000원</span></p>
					
					
				</div>
				<div class="card-footer p-0">
				</div>
			</div>			
		</div>
		
		<div class="col-md-4 mb-4">
			<div class="card">
						
				
				
				<a href="/mainboardView.do?memberNo=0&productNo=266"><img class="card-img-top" src="/resources/img/common/choice/choice_img03.jpg" alt="" /></a>
				
<!--  
		<img class="card-img-top" src=Penguins_4.jpg alt="" />
-->		
				<div class="card-body">
					
					
					<a href="/mainboardView.do?memberNo=0&productNo=266"><p class="h6 goods_name product-name"><small class="text-muted">테스트</small></br>펭귄</p></a>
					
					<div class="m-0">
						<div class="star-rating js-star-rating">
							<input class="star-rating__input" type="radio" name="rating" value="1"><i class="star-rating__star"></i>
							<input class="star-rating__input" type="radio" name="rating" value="2"><i class="star-rating__star"></i>
							<input class="star-rating__input" type="radio" name="rating" value="3"><i class="star-rating__star"></i>
							<input class="star-rating__input" type="radio" name="rating" value="4"><i class="star-rating__star"></i>
							<input class="star-rating__input" type="radio" name="rating" value="5"><i class="star-rating__star"></i>
							<div class="current-rating current-rating--0-0 js-current-rating"><i class="star-rating__star"></i></div>
<!-- 
							<div class="current-rating current-rating--0-0 js-current-rating"><i class="star-rating__star"></i></div>
 -->
						</div>
					</div>
					<p class="review-count goods_detail">( 0 ) 개의 후기</p>
					
					<p class="m-0 discount_price product-price"><span class="present_price">350,000원</span></p>
					
					
				</div>
				<div class="card-footer p-0">
				</div>
			</div>			
		</div>
		
		<div class="col-md-4 mb-4">
			<div class="card">
						
				
				
				<a href="/mainboardView.do?memberNo=0&productNo=210"><img class="card-img-top" src="/resources/img/common/choice/choice_img03.jpg" alt="" /></a>
				
<!--  
		<img class="card-img-top" src=이부분_3.JPG alt="" />
-->		
				<div class="card-body">
					
					
					<a href="/mainboardView.do?memberNo=0&productNo=210"><p class="h6 goods_name product-name"><small class="text-muted">테스트</small></br>test</p></a>
					
					<div class="m-0">
						<div class="star-rating js-star-rating">
							<input class="star-rating__input" type="radio" name="rating" value="1"><i class="star-rating__star"></i>
							<input class="star-rating__input" type="radio" name="rating" value="2"><i class="star-rating__star"></i>
							<input class="star-rating__input" type="radio" name="rating" value="3"><i class="star-rating__star"></i>
							<input class="star-rating__input" type="radio" name="rating" value="4"><i class="star-rating__star"></i>
							<input class="star-rating__input" type="radio" name="rating" value="5"><i class="star-rating__star"></i>
							<div class="current-rating current-rating--0-0 js-current-rating"><i class="star-rating__star"></i></div>
<!-- 
							<div class="current-rating current-rating--0-0 js-current-rating"><i class="star-rating__star"></i></div>
 -->
						</div>
					</div>
					<p class="review-count goods_detail">( 0 ) 개의 후기</p>
					
					<p class="m-0 discount_price product-price"><span class="present_price">35,000원</span></p>
					
					
				</div>
				<div class="card-footer p-0">
				</div>
			</div>			
		</div>
		
		<div class="col-md-4 mb-4">
			<div class="card">
						
				
				
				<a href="/mainboardView.do?memberNo=0&productNo=209"><img class="card-img-top" src="/resources/img/common/choice/choice_img03.jpg" alt="" /></a>
				
<!--  
		<img class="card-img-top" src=192_56.168.10.50_mypage_selectmenu=5&selectmenu=4.png alt="" />
-->		
				<div class="card-body">
					
					
					<a href="/mainboardView.do?memberNo=0&productNo=209"><p class="h6 goods_name product-name"><small class="text-muted">테스트</small></br>updatetest</p></a>
					
					<div class="m-0">
						<div class="star-rating js-star-rating">
							<input class="star-rating__input" type="radio" name="rating" value="1"><i class="star-rating__star"></i>
							<input class="star-rating__input" type="radio" name="rating" value="2"><i class="star-rating__star"></i>
							<input class="star-rating__input" type="radio" name="rating" value="3"><i class="star-rating__star"></i>
							<input class="star-rating__input" type="radio" name="rating" value="4"><i class="star-rating__star"></i>
							<input class="star-rating__input" type="radio" name="rating" value="5"><i class="star-rating__star"></i>
							<div class="current-rating current-rating--0-0 js-current-rating"><i class="star-rating__star"></i></div>
<!-- 
							<div class="current-rating current-rating--0-0 js-current-rating"><i class="star-rating__star"></i></div>
 -->
						</div>
					</div>
					<p class="review-count goods_detail">( 0 ) 개의 후기</p>
					
					<p class="m-0 discount_price product-price"><span class="present_price">35,000원</span></p>
					
					
				</div>
				<div class="card-footer p-0">
				</div>
			</div>			
		</div>
		
		<div class="col-md-4 mb-4">
			<div class="card">
						
				
				
				<a href="/mainboardView.do?memberNo=0&productNo=137"><img class="card-img-top" src="/resources/img/common/choice/choice_img03.jpg" alt="" /></a>
				
<!--  
		<img class="card-img-top" src= alt="" />
-->		
				<div class="card-body">
					
					
					<a href="/mainboardView.do?memberNo=0&productNo=137"><p class="h6 goods_name product-name"><small class="text-muted">이마트</small></br>진득한 포도197</p></a>
					
					<div class="m-0">
						<div class="star-rating js-star-rating">
							<input class="star-rating__input" type="radio" name="rating" value="1"><i class="star-rating__star"></i>
							<input class="star-rating__input" type="radio" name="rating" value="2"><i class="star-rating__star"></i>
							<input class="star-rating__input" type="radio" name="rating" value="3"><i class="star-rating__star"></i>
							<input class="star-rating__input" type="radio" name="rating" value="4"><i class="star-rating__star"></i>
							<input class="star-rating__input" type="radio" name="rating" value="5"><i class="star-rating__star"></i>
							<div class="current-rating current-rating--0-0 js-current-rating"><i class="star-rating__star"></i></div>
<!-- 
							<div class="current-rating current-rating--0-0 js-current-rating"><i class="star-rating__star"></i></div>
 -->
						</div>
					</div>
					<p class="review-count goods_detail">( 0 ) 개의 후기</p>
					
					<p class="m-0 discount_price product-price"><span class="present_price">5,000,197원</span></p>
					
					
				</div>
				<div class="card-footer p-0">
				</div>
			</div>			
		</div>
		
		<div class="col-md-4 mb-4">
			<div class="card">
						
				
				
				<a href="/mainboardView.do?memberNo=0&productNo=136"><img class="card-img-top" src="/resources/img/common/choice/choice_img03.jpg" alt="" /></a>
				
<!--  
		<img class="card-img-top" src= alt="" />
-->		
				<div class="card-body">
					
					
					<a href="/mainboardView.do?memberNo=0&productNo=136"><p class="h6 goods_name product-name"><small class="text-muted">이마트</small></br>진득한 포도196</p></a>
					
					<div class="m-0">
						<div class="star-rating js-star-rating">
							<input class="star-rating__input" type="radio" name="rating" value="1"><i class="star-rating__star"></i>
							<input class="star-rating__input" type="radio" name="rating" value="2"><i class="star-rating__star"></i>
							<input class="star-rating__input" type="radio" name="rating" value="3"><i class="star-rating__star"></i>
							<input class="star-rating__input" type="radio" name="rating" value="4"><i class="star-rating__star"></i>
							<input class="star-rating__input" type="radio" name="rating" value="5"><i class="star-rating__star"></i>
							<div class="current-rating current-rating--0-0 js-current-rating"><i class="star-rating__star"></i></div>
<!-- 
							<div class="current-rating current-rating--0-0 js-current-rating"><i class="star-rating__star"></i></div>
 -->
						</div>
					</div>
					<p class="review-count goods_detail">( 0 ) 개의 후기</p>
					
					<p class="m-0 discount_price product-price"><span class="present_price">5,000,196원</span></p>
					
					
				</div>
				<div class="card-footer p-0">
				</div>
			</div>			
		</div>
		
			

			
			
			
			
	</div>
				</div>
				<div class="card-footer p-3">
					<div class="row">
						<div class="col-md-6">
							<ul class="pagination m-0"><li class='page-item active'><a class='page-link' href='mainboard.do?b=전체 상품&c=전체&p=1&k=&by=상품&order=최신순&star=모든 별점&show=6&min0&max9999999'>1</a></li><li class='page-item'><a class='page-link' href='mainboard.do?b=전체 상품&c=전체&p=2&k=&by=상품&order=최신순&star=모든 별점&show=6&min0&max9999999'>2</a></li><li class='page-item'><a class='page-link' href='mainboard.do?b=전체 상품&c=전체&p=3&k=&by=상품&order=최신순&star=모든 별점&show=6&min0&max9999999'>3</a></li><li class='page-item'><a class='page-link' href='mainboard.do?b=전체 상품&c=전체&p=4&k=&by=상품&order=최신순&star=모든 별점&show=6&min0&max9999999'>4</a></li><li class='page-item'><a class='page-link' href='mainboard.do?b=전체 상품&c=전체&p=5&k=&by=상품&order=최신순&star=모든 별점&show=6&min0&max9999999'>5</a></li><li class='page-item'><a class='page-link' href='mainboard.do?b=전체 상품&c=전체&p=6&k=&by=상품&order=최신순&star=모든 별점&show=6&min0&max9999999'>6</a></li><li class='page-item'><a class='page-link' href='mainboard.do?b=전체 상품&c=전체&p=7&k=&by=상품&order=최신순&star=모든 별점&show=6&min0&max9999999'>7</a></li><li class='page-item'><a class='page-link' href='mainboard.do?b=전체 상품&c=전체&p=8&k=&by=상품&order=최신순&star=모든 별점&show=6&min0&max9999999'>8</a></li><li class='page-item'><a class='page-link' href='mainboard.do?b=전체 상품&c=전체&p=9&k=&by=상품&order=최신순&star=모든 별점&show=6&min0&max9999999'>9</a></li><li class='page-item'><a class='page-link' href='mainboard.do?b=전체 상품&c=전체&p=10&k=&by=상품&order=최신순&star=모든 별점&show=6&min0&max9999999'>10</a></li><li class='page-item'><a class='page-link' href='mainboard.do?b=전체 상품&c=전체&p=11&k=&by=상품&order=최신순&star=모든 별점&show=6&min0&max9999999'>Next</a></li></ul>
						</div>
						<div class="col-md-6">
							<p class="text-right mb-0 mt-1">총 116개 상품중 116개 상품이 검색되었습니다. 1 of 20</p>
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
	</div>



















</div>
	
    
<style>
.footer_top>a
{
	display: flex;
	margin-right: 20px;
	
	font-size: 12px;
	font-weight: bold;
	
	color: gray;
}
.footer_top>a>img
{
	margin-top: 15px;
	
	width: 28px;
	max-height: 19px; 
}
.footer_top>a>div
{
	line-height: 50px;
	color: gray;
}
.coperinfo
{
	flex-basis: 530px;
	display: flex;
	justify-content: flex-start;	
}
.coperinfo>div
{
	margin-right: 15px;
	color: gray;
}

.bank_info
{
	flex-basis: 250px;
    display: flex;
    flex-flow: column;
}
.bank_title
{
	font-size: 13px;
    line-height: 18px;
    letter-spacing: -0.5px;
    font-weight: bolder;
    color: rgb(51, 51, 51);
}
.bank_content
{
	color: rgb(136, 136, 136);
}
.bank_link
{
	margin-top: 10px;
	font-size: 13px;
    line-height: 18px;
    letter-spacing: -0.5px;
    font-weight: bolder;
     color: gray;
}
.coper_name
{
	margin-top: 25px;
	font-size: 13px;
	font-weight: bold;
}

.call_title
{
	font-size: 12px;
	font-weight: bolder;
}

.call_number
{
	font-size: 20px;
	font-weight: bolder;
}

.call_time
{
	font-size: 12px;
	color: gray;
}

.call_text
{
	font-size: 10px;
	color: gray;
}

</style>
        <footer class = "footer">
        	<div class = "footer_topline"></div>
        	<div class = "footer_top">
        		<a href = "/">집쿠욱 이용약관</a>
        		<a href = "/">전자 금융거래 이용약관 </a>
        		<a href = "/">개인정보처리방침 </a>
        		<a href = "/">
        		<img src="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAACIAAAAWCAYAAAClrE55AAAAAXNSR0IArs4c6QAABNdJREFUSA29ll9s01UUx23X1s4VGGkL2SLQbiCM7AGzrnVdN2Zkmk0aHCaAvvhgWJwPGl+MGMAHDDNL1KBTUGCJ0wdxUzfCKEQ0M6t0o5sxRCCImrpE/oQ0Q2jG2LrWz/nR3y/t1tURE25ye/59z7nnnnvu7U/3wByjsrKyJJFIbMHcqNPpnMlk0g5/DT4CHYB2hMPhP+G1UVVVtQafddPT06XYCzHE8RvLy8sbNRqNZ4LBYAZec4TRpQvCV1RU2AiyB3Y7QeLwP0DPI1+HXwItRd4AfYjZazAYXkL2svjbyGuZMXC/o7sEjSMXw1dALcyz6N4YHh4OwGeMjERcLlc5Tn2AF0P3ssjHQ0NDNzM8EKqrqxdMTk4+x+5lceC62+Cv6/X6NofD0d3V1TWd7tPQ0PBgNBqtJ9md6D3gO+12e3MgELij4rREPB7PWoAhAv6FcePIyMioCpqL4rM0Ho93ErgWzAZ2+tNcWFXPkW9nA+34hDmu+lAodFtsevkh4EIC9sCOUgXffJIQP6p1raSkxC8ss5dKFYs+16CvDlK5J9mwa2pqqkPFKomQxA4URWTYlO0oVHA2yjFMms3mJgKfoKKmbJiZOpL5kYo047ONCm0Vu66mpsY+Pj4egX+XSuwW5f0a9OQpknGwXplhYmKiCcaYn5//fnoCXq93BQ25B+BjZH+H2cNOdtXV1RXGYrFdYKW8ZvRheuN58XW73Rs5/zdhl2E7x7VtQ26Bd4OLom8Hqx0H8lvMoMlkqtUDehphgDs+BlWG9AxJDGDbQoBj0K8IaIbqSKIH+hrAn5mH4RPixO5WczTfwEoSHfhJ838PX4/uM6YJ/jBHIVdfGWzsNMxleqXRgLEMofuu6e4vi25FvwyphR0cUG0EcaNfzyIH0LeoeqHoarEZmR9xxO+QWAx1G/ovwe7G91dsR4j9BPpTKZ8k71YQvlyatYh5RQzqAPxIiu9XdUIJquihGfoUZlEKExHKolkpvvLiagP5b4Qi5dZo2hSDMZJi16TbSFDVr07X/wefFDsxFZoFK6+vwcCPVEOqog3ekj6u9F521U5JLdAogazov6Z3LpHQ65T0Bu/BefgyjuJDzfneGVn7qp4FLsB40v0HBwcjyJuw3WChz0nkOLRZXkF0fmYY+z5038HLM/9/hhvn3ySRPpgan8+3OD0aDdbPLOdqWdEX+/3+OrGju8h8fAGDCskNsYm+oKDgENhVFovlmMiYAyLzLHwqss1mO5uStbdK/lbwl74LaA8aZX5P3glxul+D4/2CtZ6yWq0OZU0UrcxbfE+snG8SXM9P6J9188XPxOG7njUTzFfEptwaStwKf4WH5Vt5zGY6ZZMpqYseOQl+VTZ7Lh2Ll+LbTVuEwO0XrJKI/NGRzDPIy7ktQYDLxZhrgG/EflNeT3ZXmwubbiO2D/k0M0bPNHHjpsSufY+IQLnn9WHE/42Fp/5lXF6kMhJIvsz2s8MPpJnhZw3+h5xUQT6MXmCeAbuZnryqAjMSESUZ5/pUfDjV5XLlCgl2lAq+yp/bNvgd2BZCw9BfoPKBJY+YfKN40T0KHUPf6nQ698nnA7I2ZiWiWij3zI/nJQS5hf0PZj98Jzs6p+Jp9HyS2syun0W3EvsKqMS/zBRcL8n0chT/wM8a/wKlFH23+Tv5SgAAAABJRU5ErkJggg==" srcset="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAACIAAAAWCAYAAAClrE55AAAAAXNSR0IArs4c6QAABNdJREFUSA29ll9s01UUx23X1s4VGGkL2SLQbiCM7AGzrnVdN2Zkmk0aHCaAvvhgWJwPGl+MGMAHDDNL1KBTUGCJ0wdxUzfCKEQ0M6t0o5sxRCCImrpE/oQ0Q2jG2LrWz/nR3y/t1tURE25ye/59z7nnnnvu7U/3wByjsrKyJJFIbMHcqNPpnMlk0g5/DT4CHYB2hMPhP+G1UVVVtQafddPT06XYCzHE8RvLy8sbNRqNZ4LBYAZec4TRpQvCV1RU2AiyB3Y7QeLwP0DPI1+HXwItRd4AfYjZazAYXkL2svjbyGuZMXC/o7sEjSMXw1dALcyz6N4YHh4OwGeMjERcLlc5Tn2AF0P3ssjHQ0NDNzM8EKqrqxdMTk4+x+5lceC62+Cv6/X6NofD0d3V1TWd7tPQ0PBgNBqtJ9md6D3gO+12e3MgELij4rREPB7PWoAhAv6FcePIyMioCpqL4rM0Ho93ErgWzAZ2+tNcWFXPkW9nA+34hDmu+lAodFtsevkh4EIC9sCOUgXffJIQP6p1raSkxC8ss5dKFYs+16CvDlK5J9mwa2pqqkPFKomQxA4URWTYlO0oVHA2yjFMms3mJgKfoKKmbJiZOpL5kYo047ONCm0Vu66mpsY+Pj4egX+XSuwW5f0a9OQpknGwXplhYmKiCcaYn5//fnoCXq93BQ25B+BjZH+H2cNOdtXV1RXGYrFdYKW8ZvRheuN58XW73Rs5/zdhl2E7x7VtQ26Bd4OLom8Hqx0H8lvMoMlkqtUDehphgDs+BlWG9AxJDGDbQoBj0K8IaIbqSKIH+hrAn5mH4RPixO5WczTfwEoSHfhJ838PX4/uM6YJ/jBHIVdfGWzsNMxleqXRgLEMofuu6e4vi25FvwyphR0cUG0EcaNfzyIH0LeoeqHoarEZmR9xxO+QWAx1G/ovwe7G91dsR4j9BPpTKZ8k71YQvlyatYh5RQzqAPxIiu9XdUIJquihGfoUZlEKExHKolkpvvLiagP5b4Qi5dZo2hSDMZJi16TbSFDVr07X/wefFDsxFZoFK6+vwcCPVEOqog3ekj6u9F521U5JLdAogazov6Z3LpHQ65T0Bu/BefgyjuJDzfneGVn7qp4FLsB40v0HBwcjyJuw3WChz0nkOLRZXkF0fmYY+z5038HLM/9/hhvn3ySRPpgan8+3OD0aDdbPLOdqWdEX+/3+OrGju8h8fAGDCskNsYm+oKDgENhVFovlmMiYAyLzLHwqss1mO5uStbdK/lbwl74LaA8aZX5P3glxul+D4/2CtZ6yWq0OZU0UrcxbfE+snG8SXM9P6J9188XPxOG7njUTzFfEptwaStwKf4WH5Vt5zGY6ZZMpqYseOQl+VTZ7Lh2Ll+LbTVuEwO0XrJKI/NGRzDPIy7ktQYDLxZhrgG/EflNeT3ZXmwubbiO2D/k0M0bPNHHjpsSufY+IQLnn9WHE/42Fp/5lXF6kMhJIvsz2s8MPpJnhZw3+h5xUQT6MXmCeAbuZnryqAjMSESUZ5/pUfDjV5XLlCgl2lAq+yp/bNvgd2BZCw9BfoPKBJY+YfKN40T0KHUPf6nQ698nnA7I2ZiWiWij3zI/nJQS5hf0PZj98Jzs6p+Jp9HyS2syun0W3EvsKqMS/zBRcL8n0chT/wM8a/wKlFH23+Tv5SgAAAABJRU5ErkJggg==" class="sc-eirqVv dSzotL">
        		<div>소비자 중심경영</div></a>
        	</div>
        	<div class = "footer_topline"></div>
        	<div class = "footer_maincontent">
        		<div class = "coper_info_box">
        			<div class = "coperinfo">
        				<div>대표이사 : 아무개</div>
        				<div>주소 : 서울특별시 송파구 위례성대로 3 장은빌딩 20층</div>        			
        			</div>    
        			<div class = "coperinfo">   
        				<div>사업자등록번호 : 121-81-12763</div>
        				<div>통신판매업신고번호 : 2011-서울당산-0545</div>     
        			</div>   
        			<div class = "coperinfo">   
        				<div>팩스 : 02-532-3211</div>
        				<div>이메일 : zipcoook@gmail.com</div>     
        			</div>    
        			<div class = "coper_name">
        				상호명 : (주)집에서 쿠-욱
        			</div>
        			
        			
        		</div>
        		<div class = "bank_info">
        			<div class = "bank_title">좋은은행 채무지급보증 안내</div>
        			<div class = "bank_content">당사는 고객님이 현금 결제한 금액에 대해 좋은은행과 채무지급보증 계약을 체결하여 안전거래를 보장하고 있습니다.</div>
        			<div class = "bank_link">서비스 가입사실 확인</div>
        		</div>
        		<div class = "call_info">
        			<div class = "call_title">집-쿡 고객센터</div>
        			<div class = "call_number">1600 - 4949</div>
        			<div class = "call_time">평 일</div>
        			<div class = "call_time">09:00~19:00</div>
        			<div class = "call_time">토요일</div>
        			<div class = "call_time">09:00~16:00</div>
        			<div class = "call_time">공휴일</div>
        			<div class = "call_time">09:00~18:00</div>
        			<div class = "call_text">일요일 및 설,추석은 휴무입니다.</div>
        		</div>
        	</div>        	
        </footer>
        




</body>
<script>
    var min = document.getElementById("min");
    min.addEventListener("input",function () {
        var min = Number($("#min").val()); 
        var max = Number($("#max").val()); 
        $("#max").attr("value",min>max?min:max);
    });
    
    function setMin(e) {
        var min = Number($("#min").val()); 
       var max = Number($("#max").val()); 
       min = min>9999999?9999999:min;
        $("#min").val(min);
       $("#max").val(min>max?min:max);
    }
    function setMax() {
        var min = Number($("#min").val());
        var max = Number($("#max").val()); 
        max = max>9999999?9999999:max;
        $("#max").val(max);
       $("#min").val(min>max?max:min);
    }

</script>
 <script>

	var basic,b,c,k,by,order,shart,show,min,max,url;
	
	function initVar() {
		 basic = "/mainboard.do?";
	    b = "&b=전체 상품";
	    c = "&c=전체";
	    k = "&k="+$("#keyword").val();
	    by = "&by="+$("#searchBy").val();
	    order = "&order="+$("#orderBy").val();
	    star = "&star="+$("#star").val();
	    show = "&show="+$("#show").val();
	    var minVal = $("#min").val()==""? $("#min").attr("placeholder"):$("#min").val();
	    var maxVal = $("#max").val()==""? $("#max").attr("placeholder"):$("#max").val();
	    min = "&min="+minVal;
	    max = "&max="+maxVal;
	    url = basic+b+c+k+by+order+star+show+min+max;
	    
	}
	
	function clickURL() {
	    initVar();
	    $("<a href='"+url+"'></a>")[0].click();
	};

	$(function() {
	    $("#price-btn").click(clickURL)
	    $(".selectBox").change(clickURL)
 		$("#link").on("click", function(event) {
 			initVar();
		    url = basic+b+c+k+by;
		    $("<a href='"+url+"'></a>")[0].click();
		 
	  });
	    $("#reset").on("click",function(){
	    	initVar();
		    url = basic;
		    $("<a href='"+url+"'></a>")[0].click();
	    	
	    })
	    

  })
</script>
<style>
.lowest-price {
	color: red;
	font-weight: 600;
}

.original_price {
	display: block;
}

.review-count {
	display: inline-block;
	vertical-align: middle;
	margin-bottom: 5px;
}


.product-price {
	border: 0px;
	padding: 0px;
	margin: 12px 0px 0px;
	font-size: 20px;
	font-weight: bold;
}


.product-img {
	width: 100%;
	height: 170px;
}

/* 상품 이미지 */
.product-img {
	background:
		url("https://static01.nyt.com/images/2021/09/14/science/07CAT-STRIPES/07CAT-STRIPES-mediumSquareAt3X-v2.jpg");
	background-repeat: no-repeat;
	background-size: cover;
}
/*상품명 2줄 이상 ... 처리*/
.product-name {
	overflow: hidden;
	text-overflow: ellipsis;
	display: -webkit-box;
	white-space: normal;
	-webkit-line-clamp: 2;
	-webkit-box-orient: vertical;
}

/* hover 그림자 처리
    .shadow:hover{
        box-shadow: 0px 0px 5px rgb(0, 0, 0, 15%);      
    }
    */
.product-name {
	text-decoration-line: none;
}

.shadow:hover .product-name {
	text-decoration-line: underline;
}

/* 이미지 확대*/
.img-container {
	overflow: hidden;
}

.shadow:hover>.img-container>.product-img {
	transform: scale(1.1);
}

.product-img:hover {
	-webkit-transition: all 0.5s ease;
	-moz-transition: all 0.5s ease;
	-o-transition: all 0.5s ease;
	transition: all 0.5s ease;
	-ms-transition: all 0.5s ease;
}

.product-img:not(:hover) {
	-webkit-transition: all 0.5s ease;
	-moz-transition: all 0.5s ease;
	-o-transition: all 0.5s ease;
	transition: all 0.5s ease;
	-ms-transition: all 0.5s ease;
}
</style>
<style>
.star-rating {
	margin-left:0px;
    box-sizing: border-box;
}

/*
.active{
   background: #9ac6e8 !important;
 }
 
 	.page-link {
  	 	color: #9ac6e8;
	   border:#c4ddf1 !important;
	}
	.page-link:hover{
  	 	color: #9ac6e8;
	   border:#c4ddf1 !important;
	}
	li.active > *{
		color:fff;
	   background-color: #c4ddf1 !important;
	   border:#c4ddf1 !important;
	}
	a{
  	 	color: #9ac6e8;
	}
	
	.btn-primary {
	   border:#c4ddf1 !important;
	   background-color: #c4ddf1 !important;
	}	
*/ 
</style>
</html>