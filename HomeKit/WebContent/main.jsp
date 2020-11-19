<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    <!doctype html>
    <html lang="en">
    
    <head>
        <!-- Required meta tags -->
        <meta charset="EUC-KR">
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
 <!-- 슬라이드바 start -->
         <div id="carouselExampleCaptions" class="carousel slide" data-ride="carousel" style="height: 800px; width: 900px; margin-left: 200px; margin-top: 50px;">
            <ol class="carousel-indicators">
              <li data-target="#carouselExampleCaptions" data-slide-to="0" class="active"></li>
              <li data-target="#carouselExampleCaptions" data-slide-to="1"></li>
              <li data-target="#carouselExampleCaptions" data-slide-to="2"></li>
            </ol>
            <div class="carousel-inner">
              <div class="carousel-item active">
                <img src="img/homepage/picture4.jpg" class="d-block w-100" alt="..." style="height:600px; width:900px;">
                <div class="carousel-caption d-none d-md-block">
                  <h2 style="color:white; text-align: left;">첫 구매 할인</h2>
                  <p style="color:white; font-size:25px; text-align: left;">할인 쿠폰 받아가세요~</p>
                </div>
              </div>
              <div class="carousel-item">
                <img src="img/homepage/christmas1.jpeg" class="d-block w-100" alt="..." style="height:600px; width:900px;">
                <div class="carousel-caption d-none d-md-block">
                    <h2 style="color:white; text-align: right; margin-bottom:20px">크리스마스 할인</h2>
                    <p style="color:white; font-size:25px; text-align:right; margin-bottom:200px">크리스마스 홈키트 50% 할인전!</p>
                </div>
              </div>
              <div class="carousel-item">
                <img src="img/homepage/picture2.jpg" class="d-block w-100" alt="..." style="height:600px; width:900px;">
                <div class="carousel-caption d-none d-md-block">
                    <h2 style="color:white; text-align: left;">최저가 제품만 모았어요</h2>
                    <p style="color:white; font-size:25px; text-align: left;">이번주 최저가는?</p>
                </div>
              </div>
            </div>
            <a class="carousel-control-prev" href="#carouselExampleCaptions" role="button" data-slide="prev">
              <span class="carousel-control-prev-icon" aria-hidden="true"></span>
              <span class="sr-only">Previous</span>
            </a>
            <a class="carousel-control-next" href="#carouselExampleCaptions" role="button" data-slide="next">
              <span class="carousel-control-next-icon" aria-hidden="true"></span>
              <span class="sr-only">Next</span>
            </a>
          </div>
         <!-- 슬라이드바 end -->
 
        <!--top place start-->
         <section class="top_place section_padding">
             <div class="container">
                 <div class="row justify-content-center">
                     <div class="col-xl-6">
                         <div class="section_tittle text-center">
                             <h2>인기테마</h2>
                         </div>
                     </div>
                 </div>
                    <div class="row">
                        <div class="col-lg-4 col-sm-6">
                            <div class="single_ihotel_list">
                                <a href="#"><img src="img/homepage/1.jpg" alt=""></a>
                                <div class="hover_text">
                                    <br><br><br>
                                </div>
                                <div class="hotel_text_iner">
                                    <h3>시바견과 함께하는 모던 하우스</h3>
                                    <div class="place_review">
                                        <a href="#"><i class="fas fa-star"></i></a>
                                        <a href="#"><i class="fas fa-star"></i></a>
                                        <a href="#"><i class="fas fa-star"></i></a>
                                        <a href="#"><i class="fas fa-star"></i></a>
                                        <a href="#"><i class="fas fa-star"></i></a>
                                        <span>(210 review)</span>
                                    </div>
                                    <p>모던, 가족</p><br>
                                    <h5>홈키트 가격 = <span>20만원</span></h5>
                                </div>
                            </div>
                        </div>
                        <div class="col-lg-4 col-sm-6">
                            <div class="single_ihotel_list">
                                <a href="#"><img src="img/homepage/2.jpg" alt=""></a>
                                <div class="hover_text">
                                    <br><br>
                                </div>
                                <div class="hotel_text_iner">
                                    <h3>빈티지 가구와 독특한 구조, 맥시멀리스트의 아파트</h3>
                                    <div class="place_review">
                                        <a href="#"><i class="fas fa-star"></i></a>
                                        <a href="#"><i class="fas fa-star"></i></a>
                                        <a href="#"><i class="fas fa-star"></i></a>
                                        <a href="#"><i class="fas fa-star"></i></a>
                                        <a href="#"><i class="fas fa-star"></i></a>
                                        <span>(210 review)</span>
                                    </div>
                                    <p>빈티지, 신혼부부</p><br>
                                    <h5>홈키트 가격 = <span>30만원</span></h5>
                                </div>
                            </div>
                        </div>
                        <div class="col-lg-4 col-sm-6">
                            <div class="single_ihotel_list">
                                <a href="#"><img src="img/homepage/3.jpg" alt=""></a>
                                <div class="hover_text">
                                    <br><br>
                                </div>
                                <div class="hotel_text_iner">
                                    <h3>꼭 필요한 것들로만 채운 10평대의 나홀로 아파트 생활</h3>
                                    <div class="place_review">
                                        <a href="#"><i class="fas fa-star"></i></a>
                                        <a href="#"><i class="fas fa-star"></i></a>
                                        <a href="#"><i class="fas fa-star"></i></a>
                                        <a href="#"><i class="fas fa-star"></i></a>
                                        <a href="#"><i class="fas fa-star"></i></a>
                                        <span>(210 review)</span>
                                    </div>
                                    <p>모던, 자취생</p><br>
                                    <h5>홈키트 가격 = <span>10만원</span></h5>
                                </div>
                            </div>
                        </div>
                    </div>
             </div>
         </section>
         <!--top place end-->
         <hr>
         <!--::industries start::-->
         <section class="hotel_list section_padding">
             <div class="container">
                 <div class="row justify-content-center">
                     <div class="col-xl-6" style="padding-top: 140px;">
                         <div class="section_tittle text-center">
                             <h2>인기 키워드</h2>
                         </div>
                     </div>
                 </div>
                 <div class="section-top-border" style="padding-top: 0px;">
                    <div class="row gallery-item">
                        <div class="col-md-4">
                            <a href="#" class="img-pop-up">
                                <div class="single-gallery-image" style="background: url(img/homepage/12.jpg); background-size: contain; background-repeat: no-repeat;""></div></a>
                                <div style="padding-top: 20px;"><span style="padding-left: 120px;"><strong style="font-size:20px;">프로방스한 스타일</strong></span>
                                </div>
                            </div> 
                        <div class="col-md-4">
                            <a href="img/elements/g2.jpg" class="img-pop-up">
                                <div class="single-gallery-image" style="background: url(img/homepage/13.jpg);"></div></a>
                                <div style="padding-top: 20px;"><span style="padding-left: 120px;"><strong style="font-size:20px;">핫딜 중고키트</strong></span>
                                </div>
                        </div>
                        <div class="col-md-4">
                            <a href="img/elements/g3.jpg" class="img-pop-up">
                                <div class="single-gallery-image" style="background: url(img/homepage/14.jpg);"></div></a>
                                <div style="padding-top: 20px;"><span style="padding-left: 120px;"><strong style="font-size:20px;">미니멀한 스타일</strong></span>
                                </div>
                        </div>
                        <div class="col-md-6">
                            <a href="img/elements/g4.jpg" class="img-pop-up">
                                <div class="single-gallery-image" style="background: url(img/homepage/15.jpg);"></div></a>
                                <div style="padding-top: 20px;"><span style="padding-left: 200px;"><strong style="font-size:20px;">소소한 인테리어</strong></span>
                                </div>
                        </div>
                        <div class="col-md-6">
                            <a href="img/elements/g5.jpg" class="img-pop-up">
                                <div class="single-gallery-image" style="background: url(img/homepage/16.jpg);"></div></a>
                                <div style="padding-top: 20px;"><span style="padding-left: 200px;"><strong style="font-size:20px;">우드의 차분한 분위기</strong></span>
                                </div>
                        </div>
                        <div class="col-md-4">
                            <a href="img/elements/g6.jpg" class="img-pop-up">
                                <div class="single-gallery-image" style="background: url(img/homepage/17.jpg);"></div></a>
                                <div style="padding-top: 20px;"><span style="padding-left: 120px;"><strong style="font-size:20px;">따스한 분위기</strong></span>
                                </div>
                        </div>
                        <div class="col-md-4">
                            <a href="img/elements/g7.jpg" class="img-pop-up">
                                <div class="single-gallery-image" style="background: url(img/homepage/18.jpg);"></div></a>
                                <div style="padding-top: 20px;"><span style="padding-left: 120px;"><strong style="font-size:20px;">신혼집</strong></span>
                                </div>
                        </div>
                        <div class="col-md-4">
                            <a href="img/elements/g8.jpg" class="img-pop-up">
                                <div class="single-gallery-image" style="background: url(img/homepage/9.jpg);"></div></a>
                                <div style="padding-top: 20px;"><span style="padding-left: 120px;"><strong style="font-size:20px;">깔끔함</strong></span></div>
                            </div>
                        </div>
                    </div>
                </div>
             </div>
         </section>
         <!--::industries end::-->
         <hr>
     
         <section class="hotel_list section_padding">
            <div class="container">
                <div class="row justify-content-center">
                    <div class="col-xl-6">
                        <div class="section_tittle text-center">
                            <h2 style="padding-top: 100px;">중고키트 핫딜</h2>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-lg-4 col-sm-6">
                        <div class="single_ihotel_list">
                            <a href="#"><img src="img/homepage/4.jpg" alt=""></a>
                            <div class="hover_text">
                                <div class="share_icon">
                                    <i class="ti-share"></i>
                                </div>
                            </div>
                            <div class="hotel_text_iner">
                                <h3>인테리어 디자이너의 싱글라이프가 담긴 셀프 인테리어</h3>
                                <div class="place_review">
                                    <a href="#"><i class="fas fa-star"></i></a>
                                    <a href="#"><i class="fas fa-star"></i></a>
                                    <a href="#"><i class="fas fa-star"></i></a>
                                    <a href="#"><i class="fas fa-star"></i></a>
                                    <a href="#"><i class="fas fa-star"></i></a>
                                    <span>(댓글 5개)</span>
                                </div>
                                <p>모던, 젊은 남성</p>
                                <h5>홈키트 비용 = <span>기준가 20만원 → 할인가 10만원</span></h5>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-4 col-sm-6">
                        <div class="single_ihotel_list">
                            <a href="#"><img src="img/homepage/9.jpg" alt=""></a>
                            <div class="hover_text">
                                <div class="share_icon">
                                    <i class="ti-share"></i>
                                </div>
                            </div>
                            <div class="hotel_text_iner">
                                <h3>군더더기 없는 깔끔한 인테리어에 풍경 한 스푼</h3>
                                <div class="place_review">
                                    <a href="#"><i class="fas fa-star"></i></a>
                                    <a href="#"><i class="fas fa-star"></i></a>
                                    <a href="#"><i class="fas fa-star"></i></a>
                                    <a href="#"><i class="fas fa-star"></i></a>
                                    <a href="#"><i class="fas fa-star"></i></a>
                                    <span>(댓글 9개)</span>
                                </div>
                                <p>테마명, 거주하는 사람</p>
                                <h5>홈키트 비용 = <span>기준가 20만원 → 할인가 10만원</span></h5>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-4 col-sm-6">
                        <div class="single_ihotel_list">
                            <a href="#"><img src="img/homepage/10.jpg" alt=""></a>
                            <div class="hover_text">
                                <div class="hover_text">
                                    <div class="share_icon">
                                        <i class="ti-share"></i>
                                    </div>
                                </div>
                            </div>
                            <div class="hotel_text_iner">
                                <h3>부암동 주택살이┃일상과 비일상의 경계에 있는 집</a></h3>
                                <div class="place_review">
                                    <a href="#"><i class="fas fa-star"></i></a>
                                    <a href="#"><i class="fas fa-star"></i></a>
                                    <a href="#"><i class="fas fa-star"></i></a>
                                    <a href="#"><i class="fas fa-star"></i></a>
                                    <a href="#"><i class="fas fa-star"></i></a>
                                    <span>(댓글 10개)</span>
                                </div>
                                <p>테마명, 거주하는 사람</p>
                                <h5>홈키트 비용 = <span>기준가 20만원 → 할인가 10만원</span></h5>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
<br><br><br><br>
          
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