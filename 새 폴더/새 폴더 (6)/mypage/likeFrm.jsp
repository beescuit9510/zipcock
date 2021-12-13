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
                            <td class="tg-73oq product-info" rowspan="3"><span class="product-name title">아이스컵 밀폐지(소/12cm)</span><span class="present_price product-price">53,220원 1-0개</span>
                            
			     <span class="likeButton">♥</span>


             
                            
                            </td>
                            <td class="tg-0pky" colspan="2"><button class="buy_btn">장바구니 담기</button></td>
                        </tr>
                        <tr>
                            <td class="tg-0pky"></td>
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
	$(document).ready(function () {
		$(".likeButton").click(function() {
			$(this).toggleClass("liked");
		});
	});
</script>
<script>
	$("#mypage-title").html("즐겨찾기");
    $('.likeButton').addClass('liked');
    
</script>
</html>