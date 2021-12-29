<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
<body>
	<%@include file="/WEB-INF/views/delivery/buyer/mypage/zcdMypageHeader.jsp"%>
		<div class = "content_div">
      		<div class="search">
			<input type="text" id="keyword" placeholder="검색" value="aa"/>
		<button>검색</button>							
		<select id="searchBy" >								
			<option value="aaaaaa" >선택자1</option>
			<option value="aaaaaa" >선택자1</option>
			<option value="aaaaaa" >선택자1</option>
			<option value="aaaaaa" >선택자1</option>
		</select>
      		</div>
      		
       	<div class = "content_title">쿠폰함</div>
       	<div class = "content_div_area">
       		<div class = "content_div_content">
       	<!-- 
       			<div class = "content_div_info">
       				<div class = "content_div_opt1">쿠폰 정보</div>
       				<div class = "content_div_opt2">사용기한</div>
       				<div class = "content_div_opt3">사용여부</div>
       			</div>
       	 -->
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
<style>
	.coupon-tbl{
		text-align: center;
	}
	.content_div_opt1>div{
		width: 300px; 
		height: 100px;
		line-height: 100px;
		background-color: #eee;
		margin: 5px;
	}
	.search{
		margin-top:10px;
		margin-bottom:10px;
		float:right;
	}
	.search+*{
		clear:right;
	}
</style>
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