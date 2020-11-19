<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ page import="java.util.ArrayList"%>
<%@ page import="com.DAO.cartDAO"%>
<%@ page import="com.DTO.cartDTO"%>
<!doctype html>
<html lang="en">

<head>
<!-- Required meta tags -->
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<title>방구석 인테리어-장바구니</title>
<link rel="icon" href="img/favicon.png">
<!-- Bootstrap CSS -->
<link rel="stylesheet" href="css/bootstrap.min.css">
<!-- animate CSS -->
<link rel="stylesheet" href="css/animate.css">
<!-- owl carousel CSS -->
<link rel="stylesheet" href="css/owl.carousel.min.css">
<!-- themify CSS -->
<link rel="stylesheet" href="css/themify-icons.css">
<!-- flaticon CSS -->
<link rel="stylesheet" href="css/flaticon.css">
<!-- fontawesome CSS -->
<link rel="stylesheet" href="fontawesome/css/all.min.css">
<!-- magnific CSS -->
<link rel="stylesheet" href="css/magnific-popup.css">
<link rel="stylesheet" href="css/gijgo.min.css">
<!-- niceselect CSS -->
<link rel="stylesheet" href="css/nice-select.css">
<!-- slick CSS -->
<link rel="stylesheet" href="css/slick.css">
<!-- style CSS -->
<link rel="stylesheet" href="css/style.css">

</head>

<body>
	<%
		String email = (String) session.getAttribute("email");
	%>
	<!--::header part start::-->
        <header class="main_menu">
            <div class="main_menu_iner">
                <div class="container">
                    <div class="row align-items-center ">
                        <div class="col-lg-12">
                            <nav class="navbar navbar-expand-lg navbar-light justify-content-between">
                                <a class="navbar-brand" href="main.jsp"> <img src="img/homepage/Logo3.JPG" alt="logo" style="width: 205px;"> </a>
                                <button class="navbar-toggler" type="button" data-toggle="collapse"
                                    data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent"
                                    aria-expanded="false" aria-label="Toggle navigation">
                                    <span class="navbar-toggler-icon"></span>
                                </button>
    							<!-- 수정: 상위메뉴 이름 지정 begin -->
                                <div class="collapse navbar-collapse main-menu-item justify-content-center"
                                    id="navbarSupportedContent">
                                    <ul class="navbar-nav">
                                    	<li class="nav-item">
                                            <a class="nav-link" href="about.jsp">소개</a>
                                        </li>
                                        <li class="nav-item">
                                            <a class="nav-link" href="professional_mode.jsp">추천</a>
                                        </li>
                                        <li class="nav-item">
                                            <a class="nav-link" href="Used_Homekit_Sale.jsp">중고키트 판매</a>
                                        </li>
                                        <li class="nav-item dropdown">
                                            <a class="nav-link dropdown-toggle" id="navbarDropdown"
                                                role="button" data-toggle="dropdown" aria-haspopup="true"
                                                aria-expanded="false">
                                                커뮤니티
                                            </a>
                                            <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                                                <a class="dropdown-item" href="SNS.jsp">SNS</a>
                                                <a class="dropdown-item" href="#">체험형 키트</a>
                                            </div>
                                        </li>
                                        <li class="nav-item">
                                            <a class="nav-link" href="QA.jsp">Q&A</a>
                                        </li>
                                    </ul>
                                </div>
							<%
								if (email == null) {
							%>
							<a href="login.jsp" style="color:rgba(75, 75, 75, 0.89); font-size: 14px;">로그인</a>
	                        <a href="register.jsp" style="margin-left: 15px; color:rgba(75, 75, 75, 0.89); font-size: 14px;">회원가입</a>
							<%
								} else {
							%>
							<div class="nav-item dropdown">
								<a class="nav-link dropdown-toggle"
									id="navbarDropdown" role="button" data-toggle="dropdown"
									aria-haspopup="true" aria-expanded="false"><%=email %></a>
								<div class="dropdown-menu" aria-labelledby="navbarDropdown">
									<a class="dropdown-item" href="update.jsp">정보수정</a> <a
										class="dropdown-item" href="LogoutService">로그아웃</a> <a
										class="dropdown-item" href="delete.jsp">회원탈퇴</a>
								</div>
							</div>
							<a href="basket.jsp" 
								style="margin-left: 5px; color:rgba(75, 75, 75, 0.89); font-size: 14px;">장바구니</a>
							<%} %>
								
						</nav>
					</div>
				</div>
			</div>
		</div>
	</header>
	<!-- 수정: 상위메뉴 이름 지정 end -->
	<!-- Header part end-->

	<br>
	<br>
	<br>
	<br>
	<br>
	<br>

	<!-- 수정: 장바구니 테이블 begin -->
	<div class="whole-wrap">
		<div class="container box_1170">
			<div class="section-top-border">
				<h3 class="mb-30" style="font-size: 20px">주문하실 상품명 및 수량을 확인해주세요.</h3>
				<div class="progress-table-wrap">
					<div class="progress-table">
						<div class="table-head" style="font-size: 18px">
							<div class="country" style="margin-left: 50px;">상품사진</div>
							<div class="country" style="margin-left: 50px;">상품명</div>
							<div class="country">수량</div>
							<div class="country">상품금액</div>
							<div class="choice">삭제</div>
						</div>
						<form action="DeleteCart" method="get">
						<%
								cartDAO dao = new cartDAO();
								ArrayList<cartDTO> cartList = dao.showCart(email);
								int sum=0;

								for (int i = 0; i < cartList.size(); i++) {
									out.println("<div class='table-row' style='margin-top: 30px; margin-bottom: 30px;'>");
									out.println("<div class='country' ><img src='" + cartList.get(i).getCart_img() + "'width='50' height='50'></div>");
									out.println("<div class='country' >" + cartList.get(i).getCart_name() + "</div>");
									out.println("<div class='country' >" + cartList.get(i).getCart_cnt() + "</div>");
									out.println("<div class='country' >" + cartList.get(i).getCart_price() + "원</div>");
									out.println("<div class='choice'><a href='CartDelete?cart_name="+ cartList.get(i).getCart_name() +"'><i class='fas fa-backspace' style='color: gray;'></i></a></div>");
									out.println("</div>");
									
									sum = cartList.get(i).getCart_price() + sum;
								}
						%>
						</form>
						
					</div>
				</div>
			</div>
		</div>
	</div>
	</div>
	<!-- 수정: 장바구니 테이블 end -->

	<!-- 수정: 총 금액 부분 begin -->
	<div class="total_cost_text">
		<dl style="margin-top:10px; margin-left:240px">
			<strong><span style="margin-left: 550px; font-size: 20px;">총
					주문금액</span></strong>
			<span style="margin-left: 100px; font-size: 20px;"><%=sum %>원 + 배송비
				2500원 = <%=sum+2500%>원</span>
		</dl>
		<hr>
	</div>
	</div>
	<!-- 총 금액 부분 end -->

	<!-- 구매하기 버튼 begin -->
	<div class="purchase_btn">
		<a href="#" class="btn_1 d-none d-lg-block"
			style="width: 150px; height: 56px; float: left; margin-left: 550px; margin-top: 100px;">집들이
			가기</a>
		<a href="payment.jsp" class="btn_1 d-none d-lg-block"
			style="margin-left: 50px; width: 150px; height: 56px; float: left; padding-left: 40px; margin-top: 100px;">구매하기</a>
	</div>
	<!-- 구매하기 버튼 end -->

	<!-- 위 아래 공간 여백주기 -->
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>

	<!-- footer part start-->
	<footer class="footer-area">
            
             
                 <div class="row justify-content-center">
                     <div class="col-lg-12">
                         <div class="copyright_part_text text-center">
                             <p class="footer-text m-0"><!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
     Copyright &copy;<script>document.write(new Date().getFullYear());</script> All rights reserved | This template is made with <i class="ti-heart" aria-hidden="true"></i> by <a href="https://colorlib.com" target="_blank">Colorlib</a>
     <!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. --></p>
                         </div>
                     </div>
                 </div>
             
         </footer>
	<!-- footer part end-->

	<!-- jquery plugins here-->
	<script src="js/jquery-1.12.1.min.js"></script>
	<!-- popper js -->
	<script src="js/popper.min.js"></script>
	<!-- bootstrap js -->
	<script src="js/bootstrap.min.js"></script>
	<!-- magnific js -->
	<script src="js/jquery.magnific-popup.js"></script>
	<!-- swiper js -->
	<script src="js/owl.carousel.min.js"></script>
	<!-- masonry js -->
	<script src="js/masonry.pkgd.js"></script>
	<!-- masonry js -->
	<script src="js/jquery.nice-select.min.js"></script>
	<script src="js/gijgo.min.js"></script>
	<!-- contact js -->
	<script src="js/jquery.ajaxchimp.min.js"></script>
	<script src="js/jquery.form.js"></script>
	<script src="js/jquery.validate.min.js"></script>
	<script src="js/mail-script.js"></script>
	<script src="js/contact.js"></script>
	<!-- custom js -->
	<script src="js/custom.js"></script>
	<script src="https://kit.fontawesome.com/39b67ab396.js" crossorigin="anonymous"></script>
	
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
	<script type="text/javascript">
		function deleteCart() {
			var pro_name = document.getElementsByClassName("pro_name");
			alert(pro_name.value);
			
			$.ajax({
				type: "get",
				url: "CartDelete",
				data: {"deleteCart": pro_name.value},
				dataType: "text"
			}) 
		}
	</script>

</body>

</html>