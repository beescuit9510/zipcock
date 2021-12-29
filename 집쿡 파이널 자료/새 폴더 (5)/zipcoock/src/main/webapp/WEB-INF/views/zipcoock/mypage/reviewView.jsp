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

      <div id="receipt-view-wrapper">

                <div class="container">        
                    <table class="tg" >
                        <thead>
                            <tr>
                            <th class="tg-0pky"></th>
                        </tr>
                        </thead>
                        <tbody>
                            <tr>
                            <td class="tg-c3ow"><span class="title reviewView-product-info">상품정보</span>
                            <!-- 
                            <span class="top_btn top_btn-none delivery-status">배송완료</span></td>
                            <td class="tg-0pky top_btn top_btn-none payment_no" colspan="3">주문번호 123213312</td>
                             -->
                        </tr>
                        <tr>
                        
                            <td class="tg-0pky img-container" rowspan="2"><div class="product-img"></div></td>
                            <td class="tg-73oq product-info" rowspan="3"><span class="product-name title">아이스컵 밀폐지(소/12cm)</span><span class="present_price product-price">53,220원 1-0개</span></td>
                            <td class="tg-0pky"><button class="buy_btn">장바구니 담기</button></td>
                        </tr>
                        <tr>
                            <td class="tg-0pky"><button class="cart_btn">상품 보러가기</button> </td>
                        </tr>
                        <tr>
                            <td class="tg-0pky"></td>
                            <td class="tg-73oq present_price"></td>
                        </tr>
                        </tbody>
                    </table>
                </div>
                
                



                        <div class="qna-container">
                            <div class="qna-q">
                                <div class="qna-q-container" name="" id="" cols="30" rows="10">
                                    <div class="qna-q-info">
                                    <!-- 
                                     -->
                                        
<div class="review-view-title">
                                        <div class="q-float qna-q-name">장변덕</div>
                                        <div class="qna-q-date text_sub_title">2021.11.24</div>
</div>
                                        
                                        <div class="star-rating js-star-rating">
  <input class="star-rating__input" type="radio" name="rating" value="1"><i class="star-rating__star"></i>
  <input class="star-rating__input" type="radio" name="rating" value="2"><i class="star-rating__star"></i>
  <input class="star-rating__input" type="radio" name="rating" value="3"><i class="star-rating__star"></i>
  <input class="star-rating__input" type="radio" name="rating" value="4"><i class="star-rating__star"></i>
  <input class="star-rating__input" type="radio" name="rating" value="5"><i class="star-rating__star"></i>
  <div class="current-rating current-rating--5 js-current-rating"><i class="star-rating__star">AAA</i>
  </div>
</div>
                                        
                                        
                                        
                                    </div> 
                                    <div class="qna-q-content">Lorem ipsum dolor sit amet consectetur adipisicing elit. Fuga eaque veniam commodi, nesciunt placeat unde nihil doloribus, soluta dolores similique, molestiae ducimus est optio ullam! Veniam repellat vel, velit adipisci, molestiae tempore dignissimos corporis laborum totam qui explicabo cumque cum consectetur et a quos iste aut voluptate accusantium. Recusandae, esse!.</div>
                                </div>        
                   <div class="review-view-btns">
                    <button class="top_btn">수정하기</button> 
                    <button class="top_btn">삭제하기</button>     
                   </div>                
                            </div>

</div>



<%@include file="/WEB-INF/views/zipcoock/mypage/common/footer.jsp"%>	
</body>
<link rel="stylesheet" href="/resources/css/mainboard/star.css">
<link rel="stylesheet" href="/resources/css/mypage/receipt_table.css">
<link rel="stylesheet" href="/resources/css/mypage/qnabox.css">
<script>
	$("#mypage-title").html("리뷰 상세 페이지");
	$("#mypage-form").remove();
	$(".pagination").remove();
</script>
<style>
.tg{
width:670px;
margin-left:30px;
}
.reviewView-product-info{
padding-left:13px;
}
.product-img{
	width:150px;
}
.star-rating{
	margin-right:37px;
	margin-bottom:5px;
}
.qna-q-name{
font-size:20px;
}
.qna-q-date{
font-size:15px;
}
.review-view-title{
	margin-bottom:-17px;
}
.review-view-btns > button{
display:inline-block;
	width:110px;
	height:45px;
	margin-right:15px;
	
}
.review-view-btns{
	margin-left:390px;
}
</style>
</html>