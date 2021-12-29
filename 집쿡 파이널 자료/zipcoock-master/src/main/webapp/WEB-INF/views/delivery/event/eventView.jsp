<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript" src="http://code.jquery.com/jquery-latest.js"></script>
</head>
<style>
	a.go-to-top{
		position:absolute;
        bottom:100px;
        right:100px;
        z-index:99;

        display: inline-block;
        width:50px;
        height:50px;
        border-radius: 15px;

        line-height:50px;
        text-align:center;
        text-decoration:none;

        background: #9ac6e8;
        opacity: 0.7;
        color:#fff;
	}
	.eventContent img{
		margin: 0 auto;
	}
	.btnWrapper{
		display: flex;
	}
</style>
<script>
        $(document).ready(function(){   
            var oldPosition;    
            var easingStyle;
            var floatTarget = $("a.go-to-top");
            var floatSpeed = 1000;

            $(window).load(function(){
                oldPosition = floatTarget.position().top;
                floating();
            });

            $(window).scroll(function(){
                floating();
            });

            function floating(){
                var newPosition = oldPosition+$(document).scrollTop();
                floatTarget.stop().animate({top:newPosition},floatSpeed);
            }

            floatTarget.click(function(){
                $("html, body").animate({scrollTop:0},1000);
                return false;
            });

        });
</script>


<body>
	<%@include file="/WEB-INF/views/common/deliveryHeader.jsp"%>
	<div class="container" style="width: 1080px;">
	<link rel="stylesheet" href="/css/noev.css">
	<script src="/summernote/jquery-3.3.1.js"></script>
	<script src="/summernote/summernote-lite.js"></script>
	<script src="/summernote/lang/summernote-ko-KR.js"></script>
	<link rel="stylesheet" href="/summernote/summernote-lite.css">
		<div class="eventContent">
			<img src="/resources/img/event/이벤트상세보기테스트.jpg">
		</div>
		<div class="btnWrapper">
			<a href="javascript:void(0)" class="buy_btn" style="margin-top: 16px;" onclick="list();">목록</a>
			<a href="javascript:void(0)" class="buy_btn" style="margin-top: 16px;" onclick="updateEvent(this,'${e.eventNo}');">수정(관리자만 보이게)</a>
			<a href="javascript:void(0)" class="buy_btn" style="margin-top: 16px;" onclick="deletEvent(this,'${e.eventNo}');">삭제(관리자만 보이게)</a>
		</div>
		<!--<a style="display:scroll;position:fixed;bottom:100px;right:30px;" href="#" title="top">TOP</a>  -->
		<!-- <a id="topBtn" href="#">TOP</a> -->
	 <a href="#" class="go-to-top">TOP</a>
	</div>
	<script>
	function deleteEvent(obj,eventNo){
		if(confirm("글을 삭제하시겠습니까?")){
			location.href="/eventDelete?eventNo="+eventNo;
		}
	}
	function updateEvent(obj,eventNo){
		if(confirm("글을 수정하시겠습니까?")){
			location.href="/eventUpdateFrm.do?eventNo="+eventNo;
		}
	}
	function list(){
		location.href="/eventList.do";
	}	
	</script>
	<%@include file="/WEB-INF/views/common/footer.jsp" %>
</body>
</html>