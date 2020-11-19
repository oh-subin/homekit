<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ page import="com.DAO.productDAO"%>
<%@ page import="com.DTO.productDTO"%>
    <!doctype html>
    <html lang="en">
    
       <head>
        <!-- Required meta tags -->
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <title>방구석 인테리어-메인</title>
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
		String email = (String)session.getAttribute("email");	
        String pro_name = request.getParameter("pro_name");
		productDAO dao = new productDAO();
		System.out.println(pro_name);
		productDTO product = dao.moreInfo(pro_name);
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
	                                <a href="login.jsp" class="btn_1 d-none d-lg-block" >로그인</a>
	                                <a href="register.jsp" class="btn_1 d-none d-lg-block" style="margin-left: 5px;">회원가입</a>
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
                                <h2>Detail Page</h2>
                                <p style="padding-bottom: 80px;">홈키트의 상세정보를 확인하세요</p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <!-- breadcrumb start-->
    
     <!-- about us css start-->
     <section class="about_us section_padding"  style="margin-bottom: 500px;margin-top: 50px;">
        <div class="container">
            <div class="row align-items-center">
                <div class="col-lg-6">
                    <div><p style="color:rgb(122, 122, 122);">홈키트 구성 > 가구 > <%=product.getPro_name() %></p></div><br>
                    <div class="about_img">
                        <img src="<%= product.getPro_img() %>" alt="가구상품사진" style="height:500px; width:500px;">
                    </div>
                </div><hr>

                <div class="col-lg-6" style="display:auto;">
                    <div class="about_text" style="padding-top: 50px;">
                        <h5>인테리어 소품</h5>
                        <h3 style="font-size: 40px;"><%=product.getPro_name() %></h3><br>
                        <div class="rating">
                            <div class="place_review">
                            <a href="#"><i class="fas fa-star"></i></a>
                            <a href="#"><i class="fas fa-star"></i></a>
                            <a href="#"><i class="fas fa-star"></i></a>
                            <a href="#"><i class="fas fa-star"></i></a>
                            <a href="#"><i class="fas fa-star"></i></a>
                            <span>(100개의 리뷰)</span>
                        </div>
                        <br><br>
                        <span style="font-size: 15px;">가격<h3 style="font-size: 45px;"><%=product.getPro_price() %>원<b style="color:red;">  30% <span style="font-size: 20px;">최저가</span></b></h3></span>
                        <b style="color:red;">500포인트</b><span> 적립</span><hr>
                        <p style="font-size: 15px;">조건부 무료배송 3000원 (5만원 이상 구매 시 무료)</p>
                    </div><br>
                    <div class="order_part" >
                        <br><br><div class="default-select" id="default-select">
                            <select style="height: 51.99074px;width: 401.99074px;">
                                <option value="1">상품을 선택하세요</option>
                                <option value="1">원목 서랍 1단 (30000원)</option>
                                <option value="1">원목 서랍 2단 세트 (50000원)</option>
                            </select>
                        </div><br><br>
                        <div style="font-size: 20px;">주문금액<b style="padding-left: 290px;"><%=product.getPro_price() %>원</b></div><br><br>
                        <div class="result_btn">
	                   	<form action="CartInsert" method="get">
	                   		<input type="hidden" name="pro_name" value="<%=product.getPro_name() %>">  
	                   		<input type="hidden" name="pro_img" value="<%=product.getPro_img() %>">  
	                   		<input type="hidden" name="pro_price" value="<%=product.getPro_price() %>"> 
	                        <input type="submit" value="장바구니 담기"
	                        class="genric-btn info radius" 
	                        style="style=;width: 181.99074000000002px;
	                        height: 51.99074px;margin-right: 30px;">
	                        
	             
	                      
	                        <a href="#" class="genric-btn info radius" style="width: 181.99074000000002px;height: 51.99074px;padding-left: 30px;"><span style="font-size:18px;">바로 구매</span></a>
	                   </form>
	                   </div>
                    </div>
                </div>
            </div>
        </div>
        </div>
    </section>
    <!-- about us css end-->
    <br><br><br><br><br><br><br>
    
<!-- 상품상세사진 nav바 begin -->
<hr><div data-sticky-enabled="false" data-sticky-disabled="false" data-sticky-always="false" data-direction="top" data-offset="79.99431610107422" class="sticky-container production-selling-navigation-wrap" style="position: sticky; top: 79.9943px; padding-bottom: 10px;">
    <div class="nav_product_detail" style="position: relative;">
        <nav class="production-selling-navigation__content">
            <!-- <ol class="production-selling-navigation__list" style="padding-top: 20px;">
                <li>
                    <a class="class="production-selling-navigation__item production-selling-navigation__item--active"" href="" style="font-size:20px;"><b style="color: snow;""></b></a>
                </li>
                <li>
                    <a class="class="production-selling-navigation__item"" href="" style="font-size:20px;"><b style="color: snow;"></b></a>
                    <span class="production-selling-navigation__item__count" style="font-size:15px;"></span>
                </li>
                <li>
                    <a class="class="production-selling-navigation__item"" href="" style="font-size:20px;"><b style="color: snow;""></b></a>
                    <span class="production-selling-navigation__item__count" style="font-size:15px;"></span>
                </li>
                <li>
                    <a class="class="production-selling-navigation__item"" href="" style="font-size:20px;"><b style="color: snow;"></b></a>
                </li>
            </ol> -->
        </nav>
    </div>
</div>
<!-- 상품상세사진 nav바 end -->

<!-- 상품 상세사진 이미지 -->
<div><img src="img/homepage/info.jpg" alt=""></div>

    <!--::industries start::-->
    <section class="best_services section_padding" style="padding-top: 300px; padding-bottom: 100px;">
        <div class="container">
            <div class="row justify-content-center">
                <div class="col-xl-6">
                    <div class="section_tittle text-center">
                        <h3>연관 상품</h3>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-lg-3 col-sm-6">
                    <div class="single_ihotel_list">
                        <img src="img/homepage/50.jpg" alt="">
                        <h3> <a href="#"> 테마명</a></h3>
                        <p>홈키트 구성</p>
                    </div>
                </div>
                <div class="col-lg-3 col-sm-6">
                    <div class="single_ihotel_list">
                        <img src="img/homepage/49.jpg" alt="">
                        <h3> <a href="#"> 테마명</a></h3>
                        <p>홈키트 구성</p>
                    </div>
                </div>
                <div class="col-lg-3 col-sm-6">
                    <div class="single_ihotel_list">
                        <img src="img/homepage/47.jpg" alt="">
                        <h3> <a href="#"> 테마명</a></h3>
                        <p>홈키트 구성</p>
                    </div>
                </div>
                <div class="col-lg-3 col-sm-6">
                    <div class="single_ihotel_list">
                        <img src="img/homepage/46.jpg" alt="">
                        <h3> <a href="#"> 테마명</a></h3>
                        <p>홈키트 구성</p>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!--::industries end::-->
    <!-- 수정: 전문가 추천모드에서 이동할 추천결과 페이지 end -->
    
    <!-- 리뷰 -->

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
    </body>
    
    </html>