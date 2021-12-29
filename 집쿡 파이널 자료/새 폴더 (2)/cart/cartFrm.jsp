<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="/resources/css/common/default2.css">
<link rel="stylesheet" href="/resources/css/mypage/default.css">
<link rel="stylesheet" href="/resources/css/cart/default.css">
<script type="text/javascript" src="http://code.jquery.com/jquery-3.3.1.js"></script>
<script
	src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
  <link rel='stylesheet' href='https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css'>
<link rel='stylesheet' href='https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.11.2/css/all.css'>
<script src='https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js'></script>
<script src='https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js'></script>


<title>Insert title here</title>
</head>
<body>
	<%@include file="/WEB-INF/views/common/header.jsp"%>
	<div class="main_field">
		<div class="main_content">
			<div class="main_content_field">

				<table class="cartFrm-info-table">
					<tr>
						<td>
						
						
						
							<!-- 집쿠욱  -->


							<c:forEach items="${map }" var="m">
							<table class="tg cartFrm-table">
								<thead>
									<tr>
										<th colspan="2"><h2 class="seller-brand">${m.key }</h2></th>
										<th></th>
										<th></th>
										<th>개당 가격</th>
										<th>배송비</th>
									</tr>
								</thead>
								<tbody>
							
							<!-- forEach -->
							<c:forEach items="${m.value }" var="v">

										<tr class="cartFrm-img-tr" id="${v.productNo }-tr">
											<td class="cartFrm-check">
												<div>
										
													<input type="checkbox" onchange="totalPrice(${v.productNo })" name="selected-product" value="상품번호" id="${v.productNo }-checkbox" class="product-checkbox"
														<c:if test="${v.stock > 0 }">checked="checked"</c:if> <c:if test="${v.stock <= 0 }"> onclick="return false;"</c:if>>
										
												</div>
												<div>
													<button class="top_btn" onclick="xBtn(${v.productNo})">x</button>
												</div>

											</td>
											<td class="cartFrm-img-td img-container"><div
													class="product-img"></div></td>
											<td class="product-info">

												<div class="cartFrm-product-div">
													<span class="title">${v.productName }</span>
													<c:if test="${v.stock <= 0 }">
													<p>재고량 부족으로 현재는 구매할 수 없는 제품입니다.</p>
													</c:if>
													
													<!-- 
													<span class="present_price product-price">내일 (금) 도착 예정</span>
													 -->
												</div>

											</td>
											<td>
												<div class="cartFrm-quantity">
										<c:if test="${v.stock > 0 }">	
													<button onclick="up(${v.productNo })" class="top_btn" type="button" >+</button>
													<c:if test="${v.limit >= v.stock }">
													<input type="text" readonly value="${v.quantity }" id="${v.productNo }" min="1" max="${v.stock }"/>
													</c:if>
													
													<c:if test="${v.stock > v.limit}">
													<input type="text" readonly value="${v.quantity }"  id="${v.productNo }" min="1" max="${v.limit}"/>													
													</c:if>
													
													<button onclick="down(${v.productNo })" class="top_btn" type="button" >-</button>
										</c:if>
									
												</div>
											</td>
											<td>
												<div class="carFrm-price-div">
												<c:if test="${v.price eq v.discountedPrice }">
													<p class="present_price" id="${v.productNo }-price">${v.price }</p>
												</c:if>
												<c:if test="${v.price ne v.discountedPrice }">
													<p class="present_price" id="${v.productNo }-price">${v.discountedPrice }</p>
												</c:if>
												</div>
											</td>
											<td>
												<div class="carFrm-price-div">
													<p class="present_price" id="${v.productNo }-shipping-fee">${v.shippingFee }</p>
												</div>
											</td>
										</tr>
									<!-- --------------------------------- -->									
									<input type="hidden" value="${v.tradeName }" id="${v.productNo }-tradeName"/>
									</c:forEach>
									<!-- forEach end-->

								</tbody>
							</table>
							<!-- 집쿠욱  end-->
							</c:forEach>
							



					<p class="mt-4 mb-0 h3">배송지 선택</p>
					<p></p>
<!-- 
					<p>Choose if you have a discount code or reward points you want to use or would like to estimate your delivery cost.</p>
 -->
					<div class="accordion" id="accordionExample">
						<div class="card">
							<div class="card-header bg-white" id="headingTwo" data-toggle="collapse" data-target="#collapse-0" aria-expanded="false">새로운 주소지 입력
							<input type="radio" id="new" name="chosenAddr" value="new" checked>							
							</div>
							<div id="collapse-0" class="collapse">
								<div class="card-body">
									<div class="form-group row">
										<label for="new-postCode" class="col-sm-12 col-form-label">받는이</label>
										<div class="col-sm-12">
											<input type="text" class="form-control" id="new-receiver-name" />
										</div>
									</div>
									<div class="form-group row">
										<label for="new-postCode" class="col-sm-12 col-form-label">전화번호 ('-'없이 입력)</label>
										<div class="col-sm-12">
											<input type="text" class="form-control" id="new-phone" />
										</div>
									</div>								
									<div class="form-group row">
										<label for="" class="col-sm-12 col-form-label">주소</label>
										<p onclick="addrSearch();"  class="col-sm-12" class="addrBtn">주소 찾기</p>
										<div class="col-sm-12">
											<input type="text" class="form-control" name="addressRoad1" id="new-addressRoad" placeholder="" />
										</div>
									</div>
									<div class="form-group row">
										<label for="" class="col-sm-12 col-form-label">우편번호</label>
										<div class="col-sm-12">
											<input type="text" class="form-control" name="postCode1" id="new-postCode" />
										</div>
									</div>
									<div class="form-group row">
										<label for="" class="col-sm-12 col-form-label">상세주소</label>
										<div class="col-sm-12">
											<input type="text" class="form-control" id="new-specificAddr" name="" />
										</div>
									</div>
								<!--카카오톡api값으로 받아온 id값으로 join   -->
								<!-- 
								<input type="hidden" class="joinInput" name="memberId" id="memberId" placeholder="지번번호" value="${requestScope.id }">							
								<input type="hidden" class="joinInput" name="memberPw" placeholder="주소" value="${requestScope.id }">
								<input type="hidden" name="memberPhone" id="memberPhone">
								 -->
								<!--카카오톡api값으로 받아온 id값으로 join   -->
								
								</div>
							</div>
						</div>
						<c:forEach items="${addr }" var="v">
						<div class="card">
							<div class="card-header bg-white" id="headingTwo" data-toggle="collapse" data-target="#collapse-${v.addrNo }" aria-expanded="false">${v.title }
							<input type="radio" name="chosenAddr" value="${v.addrNo }" >							
							</div>
							<div id="collapse-${v.addrNo }" class="collapse">
								<div class="card-body">
									<div class="form-group row">
										<label for="" class="col-sm-12 col-form-label">받는이</label>
										<div class="col-sm-12">
											<input type="text" readonly class="form-control" name="postCode" id="${v.addrNo }-name" value="${v.receiverName }"/>
										</div>
									</div>
									<div class="form-group row">
										<label for="" class="col-sm-12 col-form-label">전화번호 </label>
										<div class="col-sm-12">
											<input type="text" readonly maxlength="12" class="form-control" name="postCode" id="${v.addrNo }-phone" value="${v.receiverPhone }"/>
										</div>
									</div>								
									<div class="form-group row">
										<label for="" class="col-sm-12 col-form-label">주소</label>
										<div class="col-sm-12">
											<input type="text" readonly class="form-control" name="addressRoad" id="${v.addrNo }-addr" placeholder="" value="${v.addr }"/>
										</div>
									</div>
								</div>
							</div>
						</div>
						</c:forEach>
						
						
						
						
						
						
					</div>













						</td>
					</tr>
					<tr>
						<td>
							<div class="carFrm-total-price">
								<p class="title"><span id="t-price"></span> + <span id="t-shipping-fee"></span> = <span class="total-price" id="total-price"></span></p>
								<p class="sub_title">총 가격 + 총 배송비 = 총 결제액</p>
								<button class="buy_btn cartFrm-buy-btn margin" id="gogogo" onclick="buy()">결재하기</button>
							</div>
						</td>
					</tr>
				</table>


			</div>
			<!-- main_content_field -->
		</div>
		<!-- main content -->
	</div>
	<!-- main field -->
	<%@include file="/WEB-INF/views/common/footer.jsp"%>
</body>
<script>
function addrSearch() {
	new daum.Postcode({
		oncomplete : function(data) {
			$("#new-postCode").val(data.zonecode);
			$("#new-addressRoad").val(data.roadAddress);
			$("#new-specificAddr").focus();
		}
	}).open();
}
</script>
<style>
.total-price{
	font-size:30px;
}
.aaa{
	width:500px;
}

.margin{
	margin:auto auto;
}
.A{
	clear:both;
	
}
</style>
<script>
totalPrice();



function up(productNo){
	var input = $("#"+productNo);
	var quantity = input.val();
	min = Number(input.attr('min'));
    max = Number(input.attr('max'));
	input.val(Number(quantity)+1);	
        if (input.val() < min){
        	input.val(min);
        } else if (input.val() > max){
        	input.val(max);
        }

        $.ajax({
			type:"GET",
			url:"/up.do",		
			data:{quantity:input.val(),productNo:productNo}
			})

	totalPrice()	
};

function down(productNo){
	var input = $("#"+productNo);
	var quantity = input.val();
	min = Number(input.attr('min'));
    max = Number(input.attr('max'));
	input.val(Number(quantity)-1);	
        if (input.val() < min){
        	input.val(min);
        } else if (input.val() > max){
        	input.val(max);
        }
        $.ajax({
			type:"GET",
			url:"/down.do",		
			data:{quantity:input.val(),productNo:productNo}
			})
	totalPrice()
};

function xBtn(productNo){
	$("#"+productNo+"-tr").hide();
        $.ajax({
			type:"GET",
			url:"/deleteProduct.do",		
			data:{productNo:productNo}
			})	
}



function totalPrice(){
 	var total = 0;
 	var totalShippingFee = 0;
 	
 	[...document.getElementsByClassName("product-checkbox")].forEach(e => {
    if($(e).prop("checked")){
        var i = $(e).attr("id").indexOf("-");
        var productNo = $(e).attr("id").substring(0,i);
        
        var quantity = $("#"+productNo).val();
        var price = $("#"+productNo+"-price").html();
        var shippingFee = $("#"+productNo+"-shipping-fee").html();

        total += Number(quantity)*Number(price);
        totalShippingFee += Number(shippingFee);
    }
    $("#t-price").html(total);
    $("#t-shipping-fee").html(totalShippingFee);
    $("#total-price").html(total+totalShippingFee);
});

}

function buy(){
	var items = []
	var productNos = []
	var quantities = []
	var tradeNames = []
	var total;
	var name, phone, addr;
	
 	var addrVal = $("input[name=chosenAddr]:checked").val();
	if(addrVal == 'new'){
		var addr1 = $("#new-postCode").val();
		var addr2 = $("#new-addressRoad").val();
		var addr3 = $("#new-specificAddr").val();
		addr = addr2+" "+addr1+" "+addr3;
		name = $("#new-receiver-name").val();
		phone = $("#new-phone").val();
		var phoneReg = /^01([0|1|6|7|8|9])([0-9]{4})([0-9]{4})$/

		if(addr1=="" || addr2=="" || addr3=="" ){
			alert("주소를 빠짐없이 입력해주세요.");
			return;
		}
		if(name == ""){
			alert("받는이 이름을 입력해주세요.");
			return;			
		}				
		if(!phoneReg.test(phone)){
			$("#new-phone").val("");
		    alert("잔화번호는 숫자로만 12자리로 입력해주세요. ex) 01012341234");
		    return;
	    }
	}else{
		addr = $("#"+addrVal+"-addr").val();
		name = $("#"+addrVal+"-name").val();
		phone = $("#"+addrVal+"-phone").val();
	}
	

	
	[...document.getElementsByClassName("product-checkbox")].forEach(e => {
	    if($(e).prop("checked")){
	        var i = $(e).attr("id").indexOf("-");
	        var productNo = $(e).attr("id").substring(0,i);	        
	        var quantity = $("#"+productNo).val();
	        var tradeName = $("#"+productNo+"-tradeName").val();
	        tradeNames.push(tradeName);
	        if(tradeName!=tradeNames[0]){
	        	alert("같은 브랜드 제품만 한번에 결재가 가능합니다.");
	        	return;
	        }
	        var item = {productNo: productNo, quantity:quantity};
	        productNos.push(productNo); 
	        quantities.push(quantity);
	        items.push(item);
	    }
	total = $("#total-price").html();
	});
	
	var newForm = $('<form></form>'); 
	newForm.attr("name","newForm"); 
	newForm.attr("method","post"); 
	newForm.attr("action","/EXAMPLE.do");
	newForm.append($('<input/>', {type: 'hidden', name: 'addr.receiverPhone', value:phone})); 
	newForm.append($('<input/>', {type: 'hidden', name: 'addr.receiverName', value:name })); 
	newForm.append($('<input/>', {type: 'hidden', name: 'addr.addr', value:addr })); 
	newForm.append($('<input/>', {type: 'hidden', name: 'total', value:total })); 
	newForm.append($('<input/>', {type: 'hidden', name: 'productNos', value:productNos})); 
	newForm.append($('<input/>', {type: 'hidden', name: 'quantities', value:quantities})); 
	newForm.appendTo('body');
	newForm.submit();

		
	
}


</script>
</html>