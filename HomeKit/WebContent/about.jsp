<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!doctype html>
<html lang="en">

<head>
        <!-- Required meta tags -->
        <meta charset="EUC-KR">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <title>방구석 인테리어-소개</title>
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
	                                <a href="login.jsp" style="color:rgba(75, 75, 75, 0.89); font-size: 14px;">로그인</a>
	                                <a href="register.jsp" style="margin-left: 15px; color:rgba(75, 75, 75, 0.89); font-size: 14px;">회원가입</a>
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
                        
<br><br>
    <!-- about us css start-->
    <section class="about_us section_padding">
        <div class="container">
            <div class="row align-items-center">
                <div class="col-lg-6">
                    <div class="about_img">
                        <img src="img/homepage/31.jpg" alt="#" style="height:400px; width:550px;">
                    </div>
                </div>
                <div class="col-lg-6">
                    <div class="about_text">
                        <h5>홈키트란?</h5>
                        <h2>셀프 인테리어를 어려워하는 당신을 위한 키트</h2>
                        <p>코로나19, 사회적 거리두기 시행으로 집에 머무는 시간이 증가하는 시대, 인테리어의 관심은 점점 더 증가하고 있습니다.</p>
                        <p>하지만 오늘도 당신은 인테리어 플랫폼에서 장바구니에 물건만 담으셨나요? 인테리어 소품은 이쁜데 막상 인테리어를 하는 건 어려우셨죠?</p>
                        <p>그런 당신을 위해 준비했습니다. 우리 사이트에서 제공하는 홈키트로 당신의 방을 쉽고 빠르게 꾸며보세요. 오늘부터 당신도 인테리어 전문가가 될 수 있습니다!</p>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- about us css end-->

	<img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSv3sS4he7onv0omSZNBR26vDxthKU5oj9Xzw&usqp=CAU"
	style="margin-top: 400px;margin-left: 700px;">

    <!--top place start-->
    <div><h1 style="margin-top: 40px;margin-left: 740px;">메뉴 구성</h1></div>
    <section class="event_part section_padding" style="margin-top: 50px;height: 570px;padding-top: 10px;">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <div class="event_slider owl-carousel" style="margin-top: 110px;">
                        <div class="single_event_slider">
                            <div class="row justify-content-end">
                                <div class="col-lg-6 col-md-6">
                                    <div class="event_slider_content">
                                        <h2>추천</h2>
                                        <h5>추천받는 과정</h5>
                                        <p><strong>1. 태그 선택하기:</strong> 인테리어에 필요한 사항을 태그로 입력합니다.<br></p>
                                        <p><strong>2. 평점 등록하기:</strong> 인테리어 스타일을 보고 선호하는 인테리어 순으로 평점을 등록합니다</p>
                                        <a href="professional_mode.jsp" class="btn_1">추천받으러 이동하기</a> 
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="single_event_slider">
                            <div class="row justify-content-end">
                                <div class="ol-lg-6 col-md-6">
                                    <div class="event_slider_content">
                                        <h2>중고키트 판매</h2>
                                        <p>새로운 홈키트로 인테리어를 바꾸고 싶은 사용자를 위한 페이지입니다. 사용하지 않는 홈키트를 되팔고 새로운 홈키트를 구매할 수 있습니다.
                                        	<br>구매자는 홈키트를 값싼 가격에 구매할 수 있어 인테리어 비용의 부담을 덜어드립니다.</p>
                                        <!-- "javascript:void(0)" : 클릭 안 되게  -> 페이지 이동할 게 없기 때문에 -->
                                        <a href="Used_Homekit_Sale.jsp" class="btn_1">중고키트 판매하러 이동하기</a>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="single_event_slider">
                            <div class="row justify-content-end">
                                <div class="ol-lg-6 col-md-6">
                                    <div class="event_slider_content">
                                        <h2>쇼핑몰</h2>
                                        <p>다양한 홈키트를 한번에 만나볼 수 있는 홈키트 쇼핑몰입니다. 
                                        <br>여러 상품을 비교해보며 원하는 홈키트를 골라보세요!</p>
                                        <a href="products.jsp" class="btn_1">쇼핑몰 구경하러 이동하기</a>
                                    </div>
                                        
                                </div>
                            </div>
                         </div>
                     </div>
                 </div>
             </div>
         </div>
 </section>
    <!-- 수정: 사이트 소개 end -->
    <!--top place end-->

    <br><br><br><br><br><br><br><br><br>
    
    <!-- footer part start-->
    <footer class="footer-area">
            
             
                 <div class="row justify-content-center">
                     <div class="col-lg-12">
                         <div class="copyright_part_text text-center" style="margin-top: 0px;">
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
