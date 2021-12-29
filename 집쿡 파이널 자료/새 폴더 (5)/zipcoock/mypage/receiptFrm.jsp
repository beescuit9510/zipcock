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


<c:forEach begin="1" end="3">


                <div class="container">        
                    <table class="tg" >
                        <thead>
                            <tr>
                            <th class="tg-0pky"></th>
                        </tr>
                        </thead>
                        <tbody>
                            <tr>
                            <td class="tg-c3ow"><span class="top_btn top_btn-none order-date">2021. 11. 23 주문</span><span class="top_btn top_btn-none delivery-status">배송완료</span></td>
                            <td class="tg-0pky top_btn top_btn-none payment_no" colspan="3">주문번호 123213312</td>
                        </tr>
                        <tr>
                            <td class="tg-0pky img-container" rowspan="2"><div class="product-img"></div></td>
                            <td class="tg-73oq product-info" rowspan="3"><span class="product-name title">아이스컵 밀폐지(소/12cm)</span>
                            <span class="present_price payment-quantity">그외 3개 상품</span>
                            <span class="present_price product-price">53,220원 1-0개</span>
                            
                            </td>
                            <td class="tg-0pky"><button class="buy_btn">상세보기</button></td>
                        </tr>
                        <tr>
                            <td class="tg-0pky"><button class="cart_btn">환불 신청하기</button> </td>
                        </tr>
                        <tr>
                            <td class="tg-0pky"></td>
                            <td class="tg-73oq present_price"></td>
                        </tr>
                        </tbody>
                    </table>
                </div>
                
                
</c:forEach>



<%@include file="/WEB-INF/views/zipcoock/mypage/common/footer.jsp"%>	

</body>
<script>
	$("#mypage-title").html("주문목록");
</script>
<style>
.payment-quantity{
	display:inline-block;	
	line-height:40px;
}

</style>
</html>