<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
    <link rel="stylesheet" href="/resources/css/common/default2.css">
<link rel="stylesheet" href="/resources/css/common/default.css">
<link rel="stylesheet" href="/resources/css/common/font.css">
<link rel="stylesheet" href="/resources/css/sellerMyPage/leftmenu.css">
<link rel="stylesheet" href="/resources/css/sellerMyPage/sellermypage.css">
</head>
<body>

<div class="container">
    <div class="row">
       
             <div class="menu-left">
				<h4>
					MY PAGE<br>
				</h4>
				<ul class="left-menu" style="float: left;">
					<li><a class="leftmenu" href="sellerMypage.do">주문/배송</a></li>
					<li><a class="leftmenu" href="productMgr.do">상품 관리</a></li>
					<li><a class="leftmenu" href="sellerQNA.do">고객 관리</a></li>
					<li><a class="leftmenu" href="statistics.do">판매 통계</a></li>
					<li><a class="leftmenu" href="sellerInfo.do">판매자정보</a></li>
				</ul>
			</div>

      
    <div class="col-sm-8 col-md-9">
      <h1 style="border-left:2px solid #5f755a;">회원정보수정</h1>  
      <br>   
      <div class="content">
          <div>
              <form action="/updateSeller" method="post">
                <div class="form-group">
                    <fieldset>
                        <label class="control-label" for="memberId">아이디</label>
                        <input type="text" id="memberId" name="memberId" class="form-control" value="${sessionScope.m.memberId }" readonly>
                    </fieldset>
                </div>
                <div class="form-group">
                    <fieldset>
                        <label class="control-label" for="memberPW">비밀번호</label>
                        <input type="password" id="memberPw" name="memberPw" class="form-control" value="${sessionScope.m.memberPassword }">
                    </fieldset>
                </div>
                <div class="form-group">
                    <fieldset>
                        <label class="control-label" for="memberName">이름</label>
                        <input type="text" id="memberName" name="memberName" class="form-control" value="${sessionScope.m.memberName }" readonly>
                    </fieldset>
                </div>
                <div class="form-group">
                    <fieldset>
                        <label class="control-label" for="memberEmail">이메일</label>
                        <input type="text" id="memberEmail" name="memberEmail" class="form-control" value="${sessionScope.m.memberEmail }" readonly>
                    </fieldset>
                </div>
                <div class="form-group">
                    <fieldset>
                        <label class="control-label" for="phone">전화번호</label>
                        <input type="text" id="phone" name="phone" class="form-control" value="${sessionScope.m.memberPhone }">
                    </fieldset>
                </div>
                <div class="form-group">
                    <fieldset>
                        <label class="control-label" for="address">주소</label>
                        <input type="text" id="address" name="postcode1" class="form-control" value="${sessionScope.m.postcode1 }">
                        <input type="text" id="address" name="addressRoad1" class="form-control" value="${sessionScope.m.addressRoad1 }">
                        <input type="text" id="address" name="addressDetail1" class="form-control" value="${sessionScope.m.addressDetail1 }">
                    </fieldset>
                </div>
               
                <div class="form-group">
                    <fieldset>
                        <label class="control-label" for="enrollDate">가입일</label>
                        <input type="text" id="enrollDate" name="enrollDate" class="form-control" placeholder="${sessionScope.m.enrollDate }" value="${sessionScope.m.enrollDate }" readonly>
                    </fieldset>
                </div>
                <div class="form-group">
                    <fieldset style="text-align:center;">
                        <button type="submit" class="btn">정보수정</button>
                        <a href="/deleteSellerFrm?" class="btn btn-danger">회원탈퇴</a>
                    </fieldset>
                </div>
            </form>
          </div>
      </div>
    </div>
  </div>
</div>
</body>
</html>