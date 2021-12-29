<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
	.content_div_question{
		padding: 20px;
	}
	span{
		margin-right:10px;
	}
	.no-answer {
		background-color: #c4ddf1;
		padding: 3px 5px;
		border-radius: 3px;
	}
	.complete-answer{
		background-color: #7e7266;
		padding: 3px 5px;
		border-radius: 3px;
		color: white !important; 
	}
	table{
		width: 100%;
		background-color: #eee;
		margin-top: 20px;
	}
	.a-seller-info{
		padding-top: 20px;
	}
	.acontent{
		padding-bottom: 20px;
	}
	.icon {
		width: 50px;
		text-align: center;
	}
</style>
</head>
<body>
	<%@include file="/WEB-INF/views/delivery/buyer/mypage/zcdMypageHeader.jsp"%>
	<div class = "content_div">
       	<div class = "content_title">문의 내역</div>
       	<div class = "content_div_area">
       		<div class = "content_div_content">
       			<div class = "content_div_question">
       				<div class="q-member-info">
       					<span id="text-emp">이름</span><span>2021.12.08</span><span id="text-emp" class="no-answer">미답변</span>
       				</div>
       				<div class="q-order-info">
       					<span>상호명</span><span>주문 내역</span>
       				</div>
       				<div class="qcontent">
       					내용내용내용
       				</div>
       			</div>
       			<div class = "content_div_content">
       			<div class = "content_div_question">
       				<div class="q-member-info">
       					<span id="text-emp">이름</span><span>2021.12.08</span><span id="text-emp" class="complete-answer">답변완료</span>
       				</div>
       				<div class="q-order-info">
       					<span>상호명</span><span>주문 내역</span>
       				</div>
       				<div class="qcontent">
       					내용내용내용
       				</div>
       				<table>
       					<tr>
       						<td rowspan="2" class="icon"><i class="far fa-hand-point-right"></i></td>
       						<td class="a-seller-info"><span id="text-emp">이름</span><span>2021.12.08</span></td>
       					</tr>
       					<tr>
       						<td class="acontent">내용내용내용</td>
       					</tr>
       				</table>
       			</div>
       		</div>	
       	</div>
    </div>
    </div> <!-- main content -->
	<%@include file="/WEB-INF/views/delivery/buyer/mypage/zcdMypageFooter.jsp"%>
</body>
</html>