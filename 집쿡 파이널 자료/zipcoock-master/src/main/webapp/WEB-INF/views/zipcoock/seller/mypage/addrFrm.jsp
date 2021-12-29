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
                            <td class="tg-73oq product-info" rowspan="3"><span class="product-name sub-title receiver-name">장변덕</span>
	                           <span class="present_price product-price"></span>
	                           <span class="present_price product-price"></span>
	                            
	                          <p class="product-price spec-addr">서울시 곤지암 곤지암 곤지암곤지암 곤지암 곤지암 곤지암곤지암  곤지암 곤지 곤지암 곤지암 곤지암 곤지암</p>
	                          <p class="product-price spec-addr">010-1111-1111</p>
	                          <p class="product-price spec-addr"></p>
	                          
                           </td>
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
	$("#mypage-title").html("배송지 관리");
    $("#mypage-form").remove();
    $("#insert-addr-td").append("<button class='top_btn'>추가하기</button>");
    $(".tg-0pky ").css("width","10px");
</script>
<style>
#insert-addr-td{
	text-align:right;
}
.spec-addr{
	width:550px;
	padding:10px;
	padding-top:5px;
	padding-bottom:0px;
	display:inline-block;
}
.receiver-name{
	padding:10px;
	font-weight:600;
	padding-bttom:5px;
}
</style>
</html>