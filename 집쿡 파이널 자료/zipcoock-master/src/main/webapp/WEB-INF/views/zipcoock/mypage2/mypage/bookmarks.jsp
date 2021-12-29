<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%@include file="/WEB-INF/views/delivery/buyer/mypage/zcdMypageHeader.jsp"%>
		<div class = "content_div">
       	<div class = "content_title">북마크 목록</div>
       	<div class = "content_div_area">
       		<div class = "content_div_content">
       			<div class = "content_div_info">
       				<div class = "content_div_opt1">상호명</div>
       				<div class = "content_div_opt2">북마크 일시</div>
       				<div class = "content_div_opt3">주문하러가기</div>
       			</div>

       			
       			<c:forEach begin="1" end="3">
       			<div class ="content_div_info coupon-tbl" style="height: 110px;">
        				<div class = "content_div_opt1"><div>쿠폰 이미지</div></div>
        				<div class = "content_div_opt2" id="text-emp">2021-12-06 09:00 ~ 2021-12-28 00:00
        				<p>10,000원</p>
        				</div>
        				<div class = "content_div_opt3" id="text-emp">
        				<button class="btn buy_btn">수정하기</button>
        				</div>
        		</div>
       			</c:forEach>

       			
       		</div>	
       	</div>
    </div>
    </div> <!-- main content -->
	<%@include file="/WEB-INF/views/delivery/buyer/mypage/zcdMypageFooter.jsp"%>
</body>
<script>
$(document).ready(function () {
	var like = ${pp.isLiked};
 	Number(like)==1	&& $(".likeButton").toggleClass("liked");
 	
	qEnd>=qTotal && $("#qna-btn").hide();
	rEnd>=rTotal && $("#review-btn").hide();	
	
	qEnd<qTotal && $("#qna-btn").click();
	rEnd<rTotal && $("#review-btn").click();	
	
	$(".likeButton").click(function() {
		if(memberNo==0){
			alert("로그인해주세요.")
			return;
		};
		var isLiked = $(".likeButton").hasClass("liked");
		var url = isLiked? "/deleteLike.do":"/insertLike.do";
		$.ajax({
			type:"GET",
			url:url,		
			data:{memberNo:memberNo,productNo:productNo},
			contentType : "application/json;charset=UTF-8",
			success:function(){			
				$(".likeButton").toggleClass("liked");
				}
			})

	});


	
});

</script>
<style>
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
		background-repeat: no-repeat;
		background-size: cover;

	}

</style>
</html>