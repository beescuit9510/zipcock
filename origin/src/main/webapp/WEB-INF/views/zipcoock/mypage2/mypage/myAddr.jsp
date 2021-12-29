<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet"
	href="/resources/css/deliveryBuyer/buyerDefault.css">
<link rel='stylesheet'
	href='https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css'>
<link rel='stylesheet'
	href='https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.11.2/css/all.css'>
<link rel="stylesheet" href="/resources/css/deliveryBuyer/zcdCart.css">
<script	src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<style>
.content_div_info:first-child {
	margin-bottom: 0;
	border-bottom: 0;
}

.btn-area {
	text-align: center;
	display: flex;
}

.btn-area>button:first-child {
	margin-right: 10px;
}

.content_div_info img {
	width: 300px;
}

.side_nav_div:hover {
	background: rgba(51, 51, 51, 0.05);
	cursor: pointer;
	font-weight: 700;
}

.side_nav_div:hover span {
	font-weight: 700;
}

.side_nav_content a {
	text-decoration: none;
}
</style>
</head>
<body>
	<%@include file="/WEB-INF/views/common/deliveryHeader.jsp"%>
	<div class="main_field">
		<div class="main_content2">
			<div class="side_nav">
				<div class="my_info">
					<div class="my_info_div">
						<span class="my_info_span">환영합니다</span>
					</div>
					<div class="user_div">
						<div class="user_div_div">
							<div class="user_div_content">
								<span class="user_div_name">${sessionScope.m.memberName }<span
									class="user_div_nim">님</span></span>
							</div>
						</div>
					</div>
				</div>
				<div class="side_nav_content">
					<a href="zcdMypage.do" class="side_nav_div side_nav_div_selected"><span
						class="side_nav_span side_nav_span_selected">정보 확인/수정</span></a> <a
						href="zcdMyCoupon.do" class="side_nav_div"><span
						class="side_nav_span">쿠폰함</span></a> <a href="zcdMyReview.do"
						class="side_nav_div"><span class="side_nav_span">리뷰내역</span></a> <a
						href="zcdMyQnA.do" class="side_nav_div"><span
						class="side_nav_span">문의내역</span></a>
				</div>
			</div>
			<div class="content_div">
				<div class="content_title">배송지 목록</div>
				<div class="content_div_area">
					<div class="content_div_content">
						<div class="content_div_info">
							<div class="content_div_opt1">배송지명</div>
							<div class="content_div_opt2">주소</div>
							<div class="content_div_opt3">수정/삭제</div>
						</div>
						<c:forEach items="${addr }" var="a" varStatus="status">
							<div class="content_div_info">
								<input type="hidden" value="${a.addrNo }" id="addrNo">
								<div class="content_div_opt1" id="text-emp">${a.title}</div>
								<div class="content_div_opt2">
									<a href="#" id="text-emp">${a.addr }</a>
								</div>
								<div class="content_div_opt3">
									<a href="updateAddr.do?addrNo=${a.addrNo }" class="default_Btn">수정</a>
									<button class="default_Btn" id="deleteAddr">삭제</button>
								</div>
							</div>
						</c:forEach>
						<div class="btn-area">
							<a class="add_market_btn" id="addAddr">+ 배송지 등록하기</a>
						</div>
						<div id="addAddrFrm">
							<form action="/addAddr.do" method="post" name="insertAddrFrm">
								<div>배송지 추가</div>
								<table style="width: 100%;">
									<tr>
										<td>배송지 이름</td>
										<td><input type="text" id="title"></td>
									</tr>
									<tr>
										<td>주소 입력</td>
										<td><input type="text" name="postcode" id="postcode"
											class="add_addr" readonly placeholder="우편번호">
											<button type="button" id="findpostcode" style="width: 70px;">찾기</button>
										</td>
									</tr>
									<tr>
										<td></td>
										<td><input type="text" name="address1" id="address1"
											class="add_addr" readonly placeholder="주소"></td>
									</tr>
									<tr>
										<td></td>
										<td><input type="text" name="address2" id="address2"
											class="add_addr" placeholder="상세주소" maxlength="40"></td>
									</tr>
									<tr>
										<td></td>
										<td id="addrBtn" style="text-align: center;"><button class="addAddrBtn">추가</button></td>
									</tr>
								</table>
							</form>
						</div>
					</div>
				</div>
			</div>
		</div>
		<!-- main field -->
		<%@include file="/WEB-INF/views/common/footer.jsp"%>
	</div>
	<style>
.input {
	height: 24px;
}
</style>
	<script>
		$(function() {
			$("#addAddrFrm").css("display","none");
			
			$("#deleteAddr").click(function() {
				var del_cf = confirm("해당 배송지 정보를 삭제하시겠습니까?");
				var addrNo = $("#addrNo").val();
				if (del_cf == true) {
					location.href = "/deleteOneAddr.do?addrNo=" + addrNo;
				}
			});

			$("#addAddr").click(function(){
				$("#addAddrFrm").css("display","block");
			});
			
			$("#findpostcode").on("click", function() {
				return findAddr();
			});
			
			function findAddr() {
				new daum.Postcode({
					oncomplete : function(data) {
						$("#postcode").val(data.zonecode);
						if (data.userSelectedType === 'R') {
							$("#address1").val(data.roadAddress);
						} else {
							$("#address1").val(data.jibunAddress);
						}
						$("#address2").focus();
					}
				}).open();
			}
		});
	</script>
	
	<script>
var memberNo = $("#memberNo").val()==""? 0:Number($("#memberNo").val());
	$("#insertQna").click(function() {
		if($("#qnaTitle").val() == "" || $("#qnaContent").val() == "" || $("#productRefNo").val() == ""){
			alert("제목 및 내용을 작성해주셔야 합니다.");
			return;
		}
		var url = "/myQnaList.do";
		var newForm = $('<form></form>'); 
		newForm.attr("name","newForm"); 
		newForm.attr("method","post"); 
		newForm.attr("action","/insert.do");
		newForm.append($('<input/>', {type: 'hidden', name: 'q.memberNo', value:memberNo})); 
		newForm.append($('<input/>', {type: 'hidden', name: 'q.qnaTitle', value:$("#qnaTitle").val() })); 
		newForm.append($('<input/>', {type: 'hidden', name: 'q.qnaContent', value:$("#qnaContent").val() })); 
		newForm.append($('<input/>', {type: 'hidden', name: 'q.productRefNo', value:$("#productRefNo").val() })); 
		newForm.append($('<input/>', {type: 'hidden', name: 'url', value:url })); 
		newForm.appendTo('body');
		newForm.submit();
	});
	$("#resetQna").click(function() {
		$("#qnaTitle").val("");
		$("#qnaContent").val("");
	});
	
</script>
<script>
 $("a[href='myQnaList.do']").toggleClass("side_nav_div_selected");
 $("a[href='myQnaList.do']").find("span").toggleClass("side_nav_span_selected");

</script>
