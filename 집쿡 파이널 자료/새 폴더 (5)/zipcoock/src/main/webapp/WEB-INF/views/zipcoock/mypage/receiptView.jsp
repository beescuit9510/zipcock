<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="/resources/css/mypage/receipt_table.css">
</head>
<body>
<%@include file="/WEB-INF/views/zipcoock/mypage/common/header.jsp"%>	


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
                        <c:forEach begin="1" end="2" var="v">
                        <tr>
                        
                            <td class="tg-0pky img-container" rowspan="2"><div class="product-img"></div></td>
                            <td class="tg-73oq product-info" rowspan="3"><span class="product-name title">아이스컵 밀폐지(소/12cm)</span><span class="present_price product-price">53,220원 1-0개</span></td>
                            <td class="tg-0pky"><button class="buy_btn">장바구니</button></td>
                        </tr>
                        <tr>
                            <td class="tg-0pky"><button class="cart_btn">주문 취소</button> </td>
                        </tr>
                        <tr>
                            <td class="tg-0pky"></td>
                            <td class="tg-73oq present_price"></td>
                        </tr>
                        </c:forEach>
                        </tbody>
                    </table>
                </div>
                
                
                
      <div id="receipt-view-wrapper">
  <table id="receipt-view-table-keywords" cellspacing="0" cellpadding="0">
    <thead>
        <tr>
            <th colspan="2"><span>받는 사람 정보</span></th>
 
        </tr>
        </thead>
    <tbody>
      <tr>
        <td class="lalign">수령인</td>
        <td>장변덕</td>
      </tr>
      <tr>
        <td class="lalign">연락처</td>
        <td>010-7777-8767</td>
      </tr>
      <tr>
        <td class="lalign">주소</td>
        <td>경기도 광주시 곤지암읍 곤지암로 15, 311호(미도)</td>
      </tr>
    </tbody>
  </table>
 </div>



      <div id="receipt-view-wrapper">
  <table id="receipt-view-table-keywords" cellspacing="0" cellpadding="0">
    <thead>
        <tr>
            <th colspan="2"><span>결제 정보</span></th>
 
        </tr>
        </thead>
    <tbody>
      <tr>
        <td class="lalign">결제 수단</td>
        <td class="receipt-view-price-td">하나 카드 일시불</td>
      </tr>
      <tr>
        <td class="lalign">총 상품 가격</td>
        <td>69,299원</td>
      </tr>
      <tr>
        <td class="lalign">할인 금액</td>
        <td>3,200원</td>
      </tr>
      <tr>
        <td class="lalign">배송비</td>
        <td>3,000원</td>
      </tr>
      <tr>
        <td class="lalign">총 결제 금액</td>
        <td class="receipt-view-total-price">65,232원</td>
      </tr>
    </tbody>
  </table>
 </div> 






<%@include file="/WEB-INF/views/zipcoock/mypage/common/footer.jsp"%>	

</body>
<script>
	$("#mypage-title").html("영수증");
	$("#mypage-form").remove();
	$(".pagination").remove();

</script>
</html>