<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>qna</title>
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
                        </tr>
                        <tr>
                            <td class="tg-0pky img-container" rowspan="2"><div class="product-img"></div></td>
                            <td class="tg-73oq product-info" rowspan="3"><span class="product-name title">아이스컵 밀폐지(소/12cm)</span><span class="present_price product-price">2021. 11. 23 주문</span></td>
                            <td class="tg-0pky" colspan="2"><button class="buy_btn">수정하기</button></td>
                        </tr>
                        <tr>
                            <td class="tg-0pky"><button class="cart_btn">삭제하기</button> </td>
                        </tr>
                        <tr>
                            <td class="tg-0pky"></td>
                            <td class="tg-73oq present_price"></td>
                        </tr>
                        </tbody>
                    </table>
                </div>
</c:forEach>


<%@include file="/WEB-INF/views/zipcoock/mypage/common/footer.jsp" %>	
</body>
<script>
	$("#mypage-title").html("리뷰 관리");
	$("[value=cheapest]").remove();
	$("[value=highest]").remove();
</script>
<style>
.review-view-btns > button{
display:inline-block;
	width:110px;
	height:45px;
	margin-right:10px;
	
}
.review-view-btns{
	margin-left:390px;
}

</style>
</html>