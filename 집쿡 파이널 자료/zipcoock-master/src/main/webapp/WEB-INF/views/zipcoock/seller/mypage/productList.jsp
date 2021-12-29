<%@page import="org.springframework.web.context.annotation.RequestScope"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<script type="text/javascript" src="http://code.jquery.com/jquery-3.3.1.js"></script>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="/resources/css/deliveryBuyer/buyerDefault.css">
<link rel='stylesheet' href='https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css'>
<link rel='stylesheet' href='https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.11.2/css/all.css'>
<script type="text/javascript" src="http://code.jquery.com/jquery-3.3.1.js"></script>
<style>
	.content_div_info:first-child{
		margin-bottom: 0;
		border-bottom: 0;
	}
	.btn-area{
		text-align: center;
		display: flex;
	}
	.btn-area>button:first-child {
		margin-right: 10px;
	}
	#text-emp{
		color:#333; 
		font-weight:600;
	}
	.side_nav_div:hover{
		background: rgba(51, 51, 51, 0.05);
		cursor: pointer;
		font-weight: 700;
	}
	.side_nav_div:hover span{
		font-weight: 700;
	}
	.side_nav_content a{
		text-decoration: none;
	}
</style>
</head>
<body>
<div class="s-wrapper">
<%@include file="/WEB-INF/views/common/header.jsp"%>
<div class = "main_field"> 
		<div class="main_content2" >
			<div class="side_nav" style="padding-top: 50px; margin-left: 30px;">
				<div class="my_info">
					<div class="my_info_div">
						<span class="my_info_span">환영합니다</span>
						
					</div>
					<div class="user_div">
					
						<div class="user_div_div">
						
							<div class="user_div_content">
								<span class="user_div_name">${sessionScope.m.memberId}<span class="user_div_nim">님</span></span>
							</div>
							
						</div>
						
					</div>
				</div>
				
				<div class="side_nav_content">
					<a href="/zipsellerMypage.do" class="side_nav_div"><span
						class="side_nav_span side_nav_span">정보 확인/수정</span></a> <a
						href="productList.do?reqPage=1" class="side_nav_div side_nav_div_selected">
						<span class="side_nav_span_selected">상품 관리</span></a> 
						<a href="productList.do" class="side_nav_div">
						<span class="side_nav_span">즐겨찾기
							목록</span></a> <a href="zcdMyReview.do" class="side_nav_div"><span
						class="side_nav_span">리뷰내역</span></a> <a href="zcdMyQnA.do"
						class="side_nav_div"><span class="side_nav_span">문의내역</span></a>
				</div>
			</div>


        <div class = "content_div">
        	<div class = "content_div_area">
        		
        		<div class = "content_div_content" style="background: white; padding: 20px 20px; border: 1px solid rgb(221, 221, 221);">
        				<div id="title">
						<h2>상품 조회</h2>
						<div class="productTotal">
							<span>판매중인 상품 </span><button onclick="location.href='insertProductFrm.do'" style="float:right; margin-top:20px; margin-bottom:20px;">상품등록</button>
						</div>
						<div>
						<table class="table total-table" style="text-align: center;">
		     		<tr style="text-align:center">
		     		<th id="check"><input type="checkbox" id="checkAll"></th><th>상품이미지</th><th>상품명</th><th>가격</th><th>관리</th>
		     		</tr>
		     		<%--판매자 상품 리스트 띄우는 for문 --%>
		     	 	<c:forEach items="${pList }" var="p">
		     			<tr class="totalInfo">
		     				<td><input type="checkbox" class="checkProduct" name="checkId" value=${p.productNo }></td>
		     				<td><a href="/productView?memberNo=${p.memberNo }&productNo=${p.productNo }&reqPage=1"><img src="resources/upload/product/${p.filepath }" width="100px" height="100px"></a></td>
		     				<td style="vertical-align: middle;"><a href="/productView?memberNo=${p.memberNo }&productNo=${p.productNo }&reqPage=1" style="color:black; ">${p.productName }</a></td>
		     				<td class="priceTd" style="vertical-align: middle;">${p.price }</td>
		     				
		     				<td>
			     					<form action="/updateProductFrm.do">
			     					<button class="btn updateBtn">상품수정 </button>
			     					<input type="hidden" name="productNo" value=${p.productNo }>
			     					<input type="hidden" name="memberNo" value=${p.memberNo }>
			     					</form>
			     					<br>
			     					<button class="btn inventory" value=${p.productNo } data-toggle="modal" data-target="#myModal">재고확인</button>
		     				</td>
		     			</tr>
		     		</c:forEach> 
		     	</table>
							


						<c:forEach items="${plist }" var="p" varStatus="i">
								<tr class="totalInfo" style="text-align: center;">
									<td><input type="checkbox" class="checkProduct"
										name="checkId" value=${p.productNo }></td>
									<td><a
										href="/productView?id=${p.productNo }&seller=${p.matufacturer }&reqPage=1"><img
											src="/resources/upload/product/${p.filepath }" width="100px"
											height="100px"></a></td>
									<td style="vertical-align: middle;"><a
										href="/productView?id=${p.productNo }&seller=${p.matufacturer }&reqPage=1"
										style="color: black">상품명</a></td>
									<td class="priceTd" style="vertical-align: middle;">${p.productNo }</td>
									
									<td>

										<button class="btn" style="border : 1px solid black">상품수정</button> <br>
									<br>
										<button class="btn" style="border : 1px solid black" value=${p.productName }
											data-toggle="modal" data-target="#myModal">재고확인</button>
									</td>
								</tr>
						</c:forEach>
							</table>



							<button class="btn selectDelBtn" onclick=func();>선택삭제</button>
							<div id="pageNavi" style="text-align: center;">${sppd.pageNavi}</div>

						</div>
					</div>
        		</div>	
        	</div>
        </div>
        	</div>
        </div>
    </div> <!-- main content -->
	<%@include file="/WEB-INF/views/common/footer.jsp"%>
	<script>
	function func(){
		console.log(${list }+"test");
	}
	</script>
<style>
	.input{
			height: 30px;
		}
	.content_div_info {
	margin: 0px;
	height : 80px;
	border : unset;
		}
</style>
      </body>
      </html>
      