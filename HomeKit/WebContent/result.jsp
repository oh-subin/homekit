<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ page import="java.util.ArrayList"%>
<%@ page import="com.DAO.productDAO"%>
<%@ page import="com.DTO.productDTO"%>
<!doctype html>
<html lang="en">
<head>
<!-- Required meta tags -->
<meta charset="EUC-KR">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<title>방구석 인테리어-추천결과</title>
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
<!-- selfmade.css -->
<link rel="stylesheet" href="css/selfmade.css">

</head>

<body>
	<%
      String email = (String)session.getAttribute("email");   
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
                                          <a class="nav-link" href="products.jsp">쇼핑몰</a>
                                        </li>
                                    </ul>
                                </div>
							<%if(email == null){ %>
							<a href="login.jsp"
								style="color: rgba(75, 75, 75, 0.89); font-size: 14px;">로그인</a>
							<a href="register.jsp"
								style="margin-left: 15px; color: rgba(75, 75, 75, 0.89); font-size: 14px;">회원가입</a>
							<%}else{ %>
							<div class="nav-item dropdown">
								<a class="nav-link dropdown-toggle"
									id="navbarDropdown" role="button" data-toggle="dropdown"
									aria-haspopup="true" aria-expanded="false"><%=email %></a>
								<div class="dropdown-menu" aria-labelledby="navbarDropdown">
									<%if(email.equals("admin@admin")){ //관리자가 로그인하면 %>
										<a class="dropdown-item" href="product_registration.jsp">상품등록</a>
										<a class="dropdown-item" href="LogoutService">로그아웃</a> 
									<%}else{ %>
										<a class="dropdown-item" href="update.jsp">정보수정</a> 
										<a class="dropdown-item" href="LogoutService">로그아웃</a> 
										<a class="dropdown-item" href="delete.jsp">회원탈퇴</a>
									<%} %>
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

	<!-- 수정: 전문가 추천모드에서 이동할 추천결과 페이지 begin -->
	<!-- breadcrumb start-->
	<section class="breadcrumb breadcrumb_bg" style="height: 324px;">
		<div class="container">
			<div class="row">
				<div class="col-lg-12">
					<div class="breadcrumb_iner">
						<div class="breadcrumb_iner_item text-center">
							<h2 style="margin-bottom: 50px;">Recommanded Result</h2>
							<p style="padding-bottom: 80px;">추천된 인테리어 결과를 확인하세요</p>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>
	<!-- breadcrumb start-->

	<!-- about us css start-->
	<section class="about_us section_padding"
		style="margin-bottom: 100px; margin-top: 0px;">
		
		<div class="container">
			<div class="row align-items-center" style="height: 200px;">
				<div class="col-lg-6">
				<h4>테마 추천 결과</h4><br>
					<div class="about_img">
						<img src="img/homepage/514.jpg" alt="#"
							style="height: 400px; width: 500px;"><br>
						<hr>
					</div>
				</div>

				<div class="col-lg-6" style="display: auto; padding-left: 0px;">
					<div class="about_text" style="width: 500px; margin-top: 50px;">
						
						<h3 style="font-size: 30px;">오후의 빛과 색감이 어우러진 자매의 복층 오피스텔</h3>
						<br>
						<div class="rating">
							<span>별점</span>
							<div class="place_review">
								<a href="#"><i class="fas fa-star"></i></a> <a href="#"><i
									class="fas fa-star"></i></a> <a href="#"><i class="fas fa-star"></i></a>
								<a href="#"><i class="fas fa-star"></i></a> <a href="#"><i
									class="fas fa-star"></i></a> <span>(개수)</span>
							</div>

							<p style="color: black;">추천 사용자: 모던한 스타일, 1~2인 가구</p>

							<p style="color: black;">
								가격 <b style="color: red;">30만원</b>
							</p>
						</div>
						<br> <br>
						<div class="result_btn">
							<a href="professional_mode.jsp" class="genric-btn info radius"
								style="margin-right: 30px; width: 181.99074000000002px; height: 51.99074px; margin-right: 30px; font-size: 18px; padding-top: 5px;">재추천
								받기</a> <a href="payment.jsp" class="genric-btn info radius"
								style="width: 181.99074000000002px; height: 51.99074px; margin-right: 30px; font-size: 18px; padding-top: 5px;">구매하기</a>

						</div>
					</div>
				</div>
			</div>
	</section>
	<!-- about us css end-->

	<!-- 홈키트 구성 보여주는 begin -->
	<section class="about_us section_padding"
		style="margin-bottom: 300px; margin-top: 100px; height: 70px;">
		<div class="container">

			<section
				style="margin-top: 200px; padding-top: 50px; padding-left: 130px; width: 1130px;">
				<p style="width: 300px; color: black;">홈키트 구성소품</p>
				<hr>
				<br>
				<table>
					<tr>
						<%
						String pro_style="모던";
						productDAO dao = new productDAO();
						ArrayList<productDTO> productsLists = dao.showProducts(pro_style);
						
						for (int i=0; i < productsLists.size(); i++) {%>
						<td class="products">
							<button type="button" class="btn"
								data-toggle="popover"
								title="<%=productsLists.get(i).getPro_name() %>"
								data-content="<%=productsLists.get(i).getPro_price() %>원">
								<a href="Detail_page.jsp?pro_name=<%=productsLists.get(i).getPro_name() %>"><img
									src="<%=productsLists.get(i).getPro_img() %>" alt=""
									style="height: 120px; width: 130px;"></a>
							</button>
						</td>
						<% } %>


						<!-- <td><img src="img/homepage/514_1.JPG" alt=""
							style="height: 120px; width: 130px;"></td>
						<td><img src="img/homepage/514_2.JPG" alt=""
							style="height: 120px; width: 130px;"></td>
						<td><img src="img/homepage/514_3.JPG" alt=""
							style="height: 120px; width: 130px;"></td>
						<td><img src="img/homepage/514_4.JPG" alt=""
							style="height: 120px; width: 130px;"></td>
						<td><img src="img/homepage/514_5.JPG" alt=""
							style="height: 120px; width: 130px;"></td>
						<td><img src="img/homepage/514_6.JPG" alt=""
							style="height: 120px; width: 130px;"></td>
						<td><img src="img/homepage/514_7.JPG" alt=""
							style="height: 120px; width: 130px;"></td>
						<td><img src="img/homepage/514_8.JPG" alt=""
							style="height: 120px; width: 130px;"></td> -->
					</tr>
				</table>
			</section>


		</div>

	</section>
	<!-- 홈키트 구성 보여주는 end -->

	 <!--::industries start::-->
    <section class="best_services section_padding">
        <div class="container">
            <div class="row justify-content-center">
                <div class="col-xl-6">
                    <div class="section_tittle text-center">
                        <h2>연관된 테마</h2>
                        <p>선호하는 테마와 비슷한 테마 더보기</p><hr>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-lg-3 col-sm-6">
                    <div class="single_ihotel_list">
                        <a href="#" ><img src="img/homepage/27.jpg" alt=""></a>
                        <h3>온전히 취향대로 꾸몄더니 머무는 내내 마음에 드는 집</h3>
                        <p>미니멀&심플</p><br>
                        <span>홈키트 가격 = 5만원</span><br><hr>
                        <a href="#" class="genric-btn info circle">홈키트 구경하기</a>
                    </div>
                </div>
                <div class="col-lg-3 col-sm-6">
                    <div class="single_ihotel_list">
                        <a href="#" ><img src="img/homepage/28.jpg" alt=""></a>
                        <h3>호텔리조트 풍으로 원없이 꾸민 드림하우스</h3>
                        <p>프렌츠&프로방스</p><br>
                        <span>홈키트 가격 = 5만원</span><br><hr>
                        <a href="#" class="genric-btn info circle">홈키트 구경하기</a>
                    </div>
                </div>
                <div class="col-lg-3 col-sm-6">
                    <div class="single_ihotel_list">
                        <a href="#" ><img src="img/homepage/30.jpg" alt=""></a>
                        <h3>글씨를 쓰는 나, 고양이 둘 그리고 11평 우리 집</h3>
                        <p>빈티지&레트로</p><br>
                        <span>홈키트 가격 = 5만원</span><br><hr>
                        <a href="#" class="genric-btn info circle">홈키트 구경하기</a>
                    </div>
                </div>
                <div class="col-lg-3 col-sm-6">
                    <div class="single_ihotel_list">
                        <a href="#" ><img src="img/homepage/27.jpg" alt=""></a>
                        <h3>온전히 취향대로 꾸몄더니 머무는 내내 마음에 드는 집</h3>
                        <p>미니멀&심플</p><br>
                        <span>홈키트 가격 = 5만원</span><br><hr>
                        <a href="#" class="genric-btn info circle">홈키트 구경하기</a>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!--::industries end::-->
	<!-- 수정: 전문가 추천모드에서 이동할 추천결과 페이지 end -->

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
					<p class="footer-text m-0">
						<!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
						Copyright &copy;
						<script>document.write(new Date().getFullYear());</script>
						All rights reserved | This template is made with <i
							class="ti-heart" aria-hidden="true"></i> by <a
							href="https://colorlib.com" target="_blank">Colorlib</a>
						<!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
					</p>
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
	<script>
	$(function () {
		  $('[data-toggle="popover"]').popover({trigger: "hover"})
		})
	</script>
</body>

</html>