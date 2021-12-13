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


                                    
                                        <div class="q-float qna-q-name">장변덕</div>
                                        
                                        
                                        <div class="qna-q-date text_sub_title">2021.11.24</div>
                                    </div> 
                                    <textarea  class="qna-q-content qna-q-textarea input">Lorem ipsum dolor sit amet consectetur adipisicing elit. Fuga eaque veniam commodi, nesciunt placeat unde nihil doloribus, soluta dolores similique, molestiae ducimus est optio ullam! Veniam repellat vel, velit adipisci, molestiae tempore dignissimos corporis laborum totam qui explicabo cumque cum consectetur et a quos iste aut voluptate accusantium. Recusandae, esse!.</textarea>
                              
                 <div class="review-view-btns">
	<button class="top_btn">수정하기</button> 
	<button class="top_btn">삭제하기</button>     
</div>                

                              
                              
                              
                              
                              
                              
                                </div>                            
                            </div>
                            <div class="qna-a">
                                <div class="qna-a-container" name="" id="" cols="30" rows="10">
                                    <div class="qna-a-info">
                                        <div class="answer-status q-float cart_btn">답변완료</div>
                                        <div class="qna-a-date text_sub_title">2021.11.24</div>
                                    </div>
                                    <div class="qna-a-content"> Lorem ipsum dolor sit amet, consectetur adipisicing elit. Nemo commodi corrupti fugiat vel placeat nisi sapiente pariatur sunt, libero illum inventore alias facilis error sit omnis, natus laborum minima cumque non? Sapiente voluptatum incidunt quos modi nihil consectetur a nemo. Nesciunt vitae placeat optio cumque corrupti aperiam tenetur eveniet quo!</div>
                                </div>
                            </div>


                            
                        </div>

</div>



<%@include file="/WEB-INF/views/zipcoock/mypage/common/footer.jsp"%>	
</body>
<link rel="stylesheet" href="/resources/css/mypage/receipt_table.css">
<link rel="stylesheet" href="/resources/css/mypage/qnabox.css">
<script>
	$("#mypage-title").html("Q&A 상세 페이지");
	$("#mypage-form").remove();
	$(".pagination").remove();
</script>
<style>
.tg{
width:670px;
margin-left:30px;
}
.reviewView-product-info{
padding-left:10px;
}
.product-img{
	width:150px;
}


.qna-q-name{
font-size:20px;
}
.qna-q-date{
font-size:15px;
}

.review-view-btns > button{
display:inline-block;
	width:110px;
	height:45px;
	margin-right:10px;
	
}
.review-view-btns{
/*
	margin-left:440px;
*/
	margin-left:390px;
}


    /*
.qna-a-container{
    background:#c9dff0;
	background-color:  #daeaf7;
}
.answer-status{
    background:#c9dff0;
    background:#8ec7f5;
        
}

    */
.qna-q-textarea{
	width:700px;
	overflow:visible;
}
</style>
<script>
$("textarea.autosize").on('keydown keyup', function () {
  $(this).height(1).height( $(this).prop('scrollHeight')+12 );	
});
</script>

</html>