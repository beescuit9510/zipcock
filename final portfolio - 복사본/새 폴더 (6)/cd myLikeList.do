
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
	.content_div_info img{
		width: 300px;
	}
	#text-emp{
		color:#333; 
		font-weight:600;
	}
</style>
</head>
<link rel="stylesheet" href="/resources/css/mypage/smallLike.css">
<script src="https://code.jquery.com/jquery-3.4.1.js"></script>
<body>

	
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="/resources/css/deliveryBuyer/buyerDefault.css">
<link rel='stylesheet' href='https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css'>
<link rel='stylesheet' href='https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.11.2/css/all.css'>
<style>
	.side_nav_div:hover{
		background: rgba(51, 51, 51, 0.05);
		cursor: pointer;
		font-weight: 700;
	}
	.side_nav_div:hover span{
		font-weight: 700;
	}
	.side_nav_content a{
		text-decoration: none;
	}
	
</style>
</head>
<body>
	

<script src="https://use.fontawesome.com/releases/v5.2.0/js/all.js"></script>
<link rel="stylesheet" href="/resources/css/common/default2.css">
<link rel="stylesheet" href="/resources/css/common/default.css">
<link rel="stylesheet" href="/resources/css/common/font.css">
        <header class="header">
         <div class="header-top">  
         	<div class = "header-top-content">
         		<ul>
         			<li><a href = "/">집쿠욱 메인</a></li>    
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
         			
         		</ul>
         		<div>
         			<div>
         				<img src="/resources/img/common/logo_01.png" class="sc-eWnToP fEDxD">			
         			</div>
         		</div>
         		
					
					
						<ul class = "header-last">		
		         			<li><a href = "/zcdMypage.do"><i class="fas fa-bookmark"></i>  마이 페이지</a></li>
		         			<li><a href = "/zcdCart.do"><i class="fas fa-shopping-cart"></i> 장바구니</a></li>
		         			<li><a href = "/logout.do"><i class="fas fa-sign-in-alt"></i> 로그아웃</a></li>
		         		</ul>
					
				
         	</div>
         </div>         
        </header>

	<div class = "main_field">        	
        	<div class = "main_content2">
        		<div class = "side_nav">
	        		<div class = "my_info">
	        			<div class = "my_info_div">
	        				<span class = "my_info_span">환영합니다</span>
	        			</div>
	        			<div class = "user_div">
	        				<div class = "user_div_div">
	        					<div class= "user_div_content">
	        						<span class = "user_div_name">user6_fix<span class = "user_div_nim">님</span></span>
	        					</div>
	        				</div>
	        			</div>
	        		</div>
        			<div class = "side_nav_content">
	        			<a href="mypageGoGo.do" class = "side_nav_div"><span class = "side_nav_span">정보 확인/수정</span></a>
	        			<a href="myPaymentInfoList.do" class = "side_nav_div"><span class = "side_nav_span">주문목록</span></a>
	        			<a href="myLikeList.do" class = "side_nav_div"><span class = "side_nav_span">즐겨찾기 목록</span></a>
	        			<a href="myReviewList.do" class = "side_nav_div"><span class = "side_nav_span">리뷰내역</span></a>
	        			<a href="myQnaList.do" class = "side_nav_div"><span class = "side_nav_span">Q&A 내역</span></a>
	        			<a href="myHQnaList.do" class = "side_nav_div"><span class = "side_nav_span">문의내역</span></a>
	        			<a href="zcdMyQnA1.do" class = "side_nav_div"><span class = "side_nav_span">배송지 관리</span></a>
        			</div>
        		</div>
		<div class = "content_div">
       	<div class = "content_title">즐겨찾기
					<button id="reset" class="btn btn-outline-secondary btn-block btn" type="button">
						<i class="fas fa-sync-alt"></i>
					</button>
       	</div>

		
		<div class="mt input-group">
			<input type="text" id="keyword" class="form-control" placeholder="검색"/>
			<select id="searchBy" class="form-control rounded-0">								
				<option value="productName" >상품명</option>
			<option value="tradeName" >상호</option>
				</select>							
				<div class="input-group-append">
					<button id="link" class="btn btn-outline-secondary" type="button">
						<i class="fas fa-search"></i>
					</button>
				</div>
			</div>
	



		<div class="mt row">		
			<div class="col-md-4">
				<div class="input-group">
					<div class="input-group-prepend">
						<span class="input-group-text">정렬:</span>
					</div>
					<select class="selectBox form-control" id="order" name="">
					
						<option value="최신순" selected = "selected">최신순</option>
					
						<option value="가나다순" >가나다순</option>
					
						<option value="가나다역순" >가나다역순</option>
					
						<option value="높은가격순" >높은가격순</option>
					
						<option value="낮은가격순" >낮은가격순</option>
					
						<option value="오래된 순" >오래된 순</option>
					
					</select>
				</div>
			</div>			
			<div class="col-md-4">
				<div class="input-group">
				<div class="input-group-prepend">
					<span class="input-group-text">보기:</span>
				</div>
					<select class="selectBox form-control" id="show" name="">
					
						<option value="5" selected = "selected">5</option>
					
						<option value="10" >10</option>
					
						<option value="15" >15</option>
					
						<option value="20" >20</option>
					
						<option value="25" >25</option>
					
				</select>
				</div>
			</div>
		</div>


       	<div class = "content_div_area">
       		<div class = "content_div_content">
       		<!-- 
       			<div class = "content_div_info">
       				<div class = "content_div_opt1">쿠폰 정보</div>
       				<div class = "content_div_opt2">사용기한</div>
       				<div class = "content_div_opt3">사용여부</div>
       			</div>
       		 -->
       		 
       		
   			<div class ="content_div_info coupon-tbl" style="height: 110px;">
   			<!-- 
 				<div class = "content_div_opt1"><div style="background:url(Penguins_4.jpg);"></div></div>
   			 -->
 				<div class = "content_div_opt1"><div class="card-img-top" style="background:url(/resources/upload/product/Penguins_4.jpg);"></div></div>
   				<div class = "content_div_opt2" id="text-emp">
   					<span class="goods_detail">테스트</span>
   					<p>펭귄</p>
   					
   					<p>350,000원</p>
   					
   					
   				</div>
   				<div class = "content_div_opt3" id="text-emp">
	   				<div class="like-wrap"><span class="likeButton" id="266">♥</span></div>
   					<a href="/mainboardView.do?memberNo=4&productNo=266" class="top_btn go_btn">상품 보러가기</a>	   				
   				</div>
       		</div>
       		 
   			<div class ="content_div_info coupon-tbl" style="height: 110px;">
   			<!-- 
 				<div class = "content_div_opt1"><div style="background:url();"></div></div>
   			 -->
 				<div class = "content_div_opt1"><div class="card-img-top" style="background:url(/resources/upload/product/);"></div></div>
   				<div class = "content_div_opt2" id="text-emp">
   					<span class="goods_detail">이마트</span>
   					<p>새콤달콤 사과114</p>
   					
   					<p>5,000,114원</p>
   					
   					
   				</div>
   				<div class = "content_div_opt3" id="text-emp">
	   				<div class="like-wrap"><span class="likeButton" id="54">♥</span></div>
   					<a href="/mainboardView.do?memberNo=4&productNo=54" class="top_btn go_btn">상품 보러가기</a>	   				
   				</div>
       		</div>
       		 
   			<div class ="content_div_info coupon-tbl" style="height: 110px;">
   			<!-- 
 				<div class = "content_div_opt1"><div style="background:url();"></div></div>
   			 -->
 				<div class = "content_div_opt1"><div class="card-img-top" style="background:url(/resources/upload/product/);"></div></div>
   				<div class = "content_div_opt2" id="text-emp">
   					<span class="goods_detail">이마트</span>
   					<p>새콤달콤 사과99</p>
   					
   					<p>500,099원</p>
   					
   					
   				</div>
   				<div class = "content_div_opt3" id="text-emp">
	   				<div class="like-wrap"><span class="likeButton" id="39">♥</span></div>
   					<a href="/mainboardView.do?memberNo=4&productNo=39" class="top_btn go_btn">상품 보러가기</a>	   				
   				</div>
       		</div>
       		 
   			<div class ="content_div_info coupon-tbl" style="height: 110px;">
   			<!-- 
 				<div class = "content_div_opt1"><div style="background:url();"></div></div>
   			 -->
 				<div class = "content_div_opt1"><div class="card-img-top" style="background:url(/resources/upload/product/);"></div></div>
   				<div class = "content_div_opt2" id="text-emp">
   					<span class="goods_detail">이마트</span>
   					<p>새콤달콤 사과98</p>
   					
   					<p>500,098원</p>
   					
   					
   				</div>
   				<div class = "content_div_opt3" id="text-emp">
	   				<div class="like-wrap"><span class="likeButton" id="38">♥</span></div>
   					<a href="/mainboardView.do?memberNo=4&productNo=38" class="top_btn go_btn">상품 보러가기</a>	   				
   				</div>
       		</div>
       		 
   			<div class ="content_div_info coupon-tbl" style="height: 110px;">
   			<!-- 
 				<div class = "content_div_opt1"><div style="background:url();"></div></div>
   			 -->
 				<div class = "content_div_opt1"><div class="card-img-top" style="background:url(/resources/upload/product/);"></div></div>
   				<div class = "content_div_opt2" id="text-emp">
   					<span class="goods_detail">이마트</span>
   					<p>새콤달콤 사과97</p>
   					
   					<p>500,097원</p>
   					
   					
   				</div>
   				<div class = "content_div_opt3" id="text-emp">
	   				<div class="like-wrap"><span class="likeButton" id="37">♥</span></div>
   					<a href="/mainboardView.do?memberNo=4&productNo=37" class="top_btn go_btn">상품 보러가기</a>	   				
   				</div>
       		</div>
       		 
       		 
       		 
       		 
	<div class="row">
		<div class="col-md-6">
			<ul class="pagination m-0"><li class='page-item active'><a class='page-link' href='/myLikeList.do?memberNo=4&isAnswered=0&productName=&tradeName=&title=&order=최신순&content=&period=모두&p=1'>1</a></li><li class='page-item'><a class='page-link' href='/myLikeList.do?memberNo=4&isAnswered=0&productName=&tradeName=&title=&order=최신순&content=&period=모두&p=2'>2</a></li><li class='page-item'><a class='page-link' href='/myLikeList.do?memberNo=4&isAnswered=0&productName=&tradeName=&title=&order=최신순&content=&period=모두&p=3'>3</a></li><li class='page-item'><a class='page-link' href='/myLikeList.do?memberNo=4&isAnswered=0&productName=&tradeName=&title=&order=최신순&content=&period=모두&p=4'>4</a></li><li class='page-item'><a class='page-link' href='/myLikeList.do?memberNo=4&isAnswered=0&productName=&tradeName=&title=&order=최신순&content=&period=모두&p=5'>5</a></li><li class='page-item'><a class='page-link' href='/myLikeList.do?memberNo=4&isAnswered=0&productName=&tradeName=&title=&order=최신순&content=&period=모두&p=6'>6</a></li><li class='page-item'><a class='page-link' href='/myLikeList.do?memberNo=4&isAnswered=0&productName=&tradeName=&title=&order=최신순&content=&period=모두&p=7'>7</a></li><li class='page-item'><a class='page-link' href='/myLikeList.do?memberNo=4&isAnswered=0&productName=&tradeName=&title=&order=최신순&content=&period=모두&p=8'>8</a></li><li class='page-item'><a class='page-link' href='/myLikeList.do?memberNo=4&isAnswered=0&productName=&tradeName=&title=&order=최신순&content=&period=모두&p=9'>9</a></li><li class='page-item'><a class='page-link' href='/myLikeList.do?memberNo=4&isAnswered=0&productName=&tradeName=&title=&order=최신순&content=&period=모두&p=10'>10</a></li></ul>
		</div>
		<div class="col-md-6"><p class="text-right mb-0 mt-1">총 49개 상품중 49개 상품이 검색되었습니다. 1 of 10</p>
		</div>
	</div>

   		 
       		 
       		 
       		</div>	
       	</div>
    </div>
    </div> <!-- main content -->
	
  </div> <!-- main field -->
	
    
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
        
</div>
</body>
<style>
	.like-wrap{
		width:50px;
		height:50px;
		margin-left:-20px;
		margin-bottom:30px;
	}
	.temp {
		background:
			url("https://static01.nyt.com/images/2021/09/14/science/07CAT-STRIPES/07CAT-STRIPES-mediumSquareAt3X-v2.jpg");
	}

	.coupon-tbl{
		text-align: center;
	}
	.content_div_opt1>div{
		  width: 300px;
		  height: 100px;
		  line-height: 100px;
		  background-color: #eee;
		  margin: 5px;
		  background-repeat: no-repeat !important;
		  background-size: contain !important;
		  background-position: center !important;
		  /*
		  max-height: 100%;
		background-size: cover !important;
	  	max-width: 100%;		
		background-size: cover;
		*/
		  }
	#reset{
		float:right;
		width:50px;
	}
	.mt{
		margin-top:15px;
	}
	.page-link {
  	 	color: #9ac6e8;
	}
	.page-link:hover{
  	 	color: #9ac6e8;
	}
	li.active > *{
		color:fff;
	   background-color: #c4ddf1 !important;
	   border:#c4ddf1 ;
	}

</style>
</html>

	<input type="hidden" id="memberNo" value="4">
	
</body>
<style>
</style>
<script>
 $("a[href='myLikeList.do']").toggleClass("side_nav_div_selected");
 $("a[href='myLikeList.do']").find("span").toggleClass("side_nav_span_selected");

</script>

<script>
var memberNo = $("#memberNo").val()==""? 0:Number($("#memberNo").val());
var basic,show,productName,tradeName,title,content,period,order;

function initVar() {
    keyword = "&"+$("#searchBy").val()+"="+$("#keyword").val();   	
	basic = "/myLikeList.do?";
    order = "&order="+$("#order").val();
    show = "&show="+$("#show").val();
    url = basic+order+show+keyword;    
}

$(".likeButton").toggleClass("liked");
$(document).ready(function () {
	$(".likeButton").click(function() {
		var id = $(this).attr("id")
		$("#"+id).toggleClass("liked");		
		initVar();
	    p = "&p="+1;
	    url += p;
	    
		var newForm = $('<form></form>'); 
		newForm.attr("name","newForm"); 
		newForm.attr("method","post"); 
		newForm.attr("action","/delete.do");
		newForm.append($('<input/>', {type: 'hidden', name: 'like.memberNo', value:memberNo})); 
		newForm.append($('<input/>', {type: 'hidden', name: 'like.productNo', value:id })); 
		newForm.append($('<input/>', {type: 'hidden', name: 'url', value:url })); 
		newForm.appendTo('body');
		newForm.submit();
	});


	
});


function clickURL() {
    initVar();
    
    $("<a href='"+url+"'></a>")[0].click();
};



$(function() {
    $(".selectBox").change(clickURL)
	$("#link").on("click", function(event) {
		initVar();
	url = basic+keyword;
    $("<a href='"+url+"'></a>")[0].click();
	 
  });
    
    $("#reset").on("click",function(){
    	initVar();
	    url = basic;
	    $("<a href='"+url+"'></a>")[0].click();
    	
    })
    

})


</script>	
</html>