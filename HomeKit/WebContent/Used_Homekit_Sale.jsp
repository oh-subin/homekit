<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!doctype html>
<html lang="en">

<head>
        <!-- Required meta tags -->
        <meta charset="EUC-KR">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <title>방구석 인테리어-중고키트판매</title>
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
 
    <!-- breadcrumb start-->
    <section class="breadcrumb breadcrumb_bg" style="height: 324px;">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <div class="breadcrumb_iner">
                        <div class="breadcrumb_iner_item text-center">
                            <h2 style="margin-bottom: 50px;">Used Homekit Sale</h2>
                            <p style="padding-bottom: 80px;">구매했던 키트를 자유롭게 거래하세요!</p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- breadcrumb start-->
<br><br><br>
    <!--================Blog Area =================-->
    <!-- 수정: 중고키트 판매하는 칸 begin -->
    <section class="blog_area section_padding">
        <div class="container">
            <div class="row">
                <div class="col-lg-8 mb-5 mb-lg-0">
                    <div class="blog_left_sidebar">
                        <article class="blog_item">
                            <div class="blog_item_img">
                                <h1>첫번째 집들이</h1><hr>
                                <img class="card-img rounded-0" src="img/homepage/23.jpg" alt="">
                                <a href="#" class="blog_item_date">
                                    <h3>15</h3>
                                    <p>Jan</p>
                                </a>
                            </div>
                            
                            <div class="blog_details">
                                <a class="d-inline-block" href="SNS.jsp">
                                    <h2>모던한 분위기가 가득한 인테리어</h2>
                                </a>
                                <p>사용기간: 5개월</p>
                                <p>가격: ~~원</p>
                                <ul class="blog-info-link">
                                    <li><a href="#"><i class="far fa-user"></i> 판매자명</a></li>
                                    <li><a href="#"><i class="far fa-comments"></i> 03 Comments</a></li>
                                </ul>
                                
                                <!-- 홈키트 구성 코드 begin -->
                                <aside class="single_sidebar_widget instagram_feeds"><br><br><br>
                                    <h3 class="widget_title">홈키트 구성</h3><br>
                                    <ul class="instagram_row flex-wrap" >
                                        <li style="float:left; margin-right:5px;">
                                            <a href="#">
                                                <img class="img-fluid" src="img/post/post_5.png" alt="" >
                                            </a>
                                        </li >
                                        <li style="float:left; margin-right:5px;" >
                                            <a href="#">
                                                <img class="img-fluid" src="img/post/post_6.png" alt="">
                                            </a>
                                        </li>
                                        <li style="float:left; margin-right:5px;">
                                            <a href="#">
                                                <img class="img-fluid" src="img/post/post_7.png" alt="">
                                            </a>
                                        </li>
                                        <li style="float:left; margin-right:5px;">
                                            <a href="#">
                                                <img class="img-fluid" src="img/post/post_8.png" alt="">
                                            </a>
                                        </li>
                                        <li style="float:left; margin-right:5px;">
                                            <a href="#">
                                                <img class="img-fluid" src="img/post/post_9.png" alt="">
                                            </a>
                                        </li>
                                        <li style="float:left; margin-right:5px; margin-top:5px;">
                                            <a href="#">
                                                <img class="img-fluid" src="img/post/post_10.png" alt="">
                                            </a>
                                        </li>
                                        <li style="float:left; margin-right:5px; margin-top:5px;">
                                            <a href="#">
                                                <img class="img-fluid" src="img/post/post_10.png" alt="">
                                            </a>
                                        </li>
                                    </ul><br>
                                </aside>
                                <!-- 홈키트 구성 코드 end -->
                                
                                </div>
                            </div>
                            <br><div class="result_btn">
                            
                            <!-- 찜하기 페이지를 없애고 그냥 보이기식으로 버튼 글자 바뀌게 함 -->
                                <button id="btn" class="genric-btn warning-border circle arrow1" style="margin-right: 30px;">찜하기</button>

				                <script src="//code.jquery.com/jquery.min.js"></script>
								<script>
								$(function() {
								  $('#btn').click( function() {
								    if( $(this).html() == '찜하기') {
								      $(this).html('찜한 상품\n찜하기 취소');
								    }else {
								      $(this).html('찜하기');
								    }
								  });
								});
								</script>
									
                                <a href="basket.jsp" class="genric-btn warning-border circle arrow" style="margin-right: 30px; float:right;">장바구니<span
                                    class="lnr lnr-arrow-right"></span></a><br><br>
                        </article>
<br>
<hr>
<br><br><br><br><br><br><br>
                        <h1>두번째 집들이</h1><hr>
                        <article class="blog_item">
                            <div class="blog_item_img">
                                <img class="card-img rounded-0" src="img/homepage/21.jpg" alt="">
                                <a href="#" class="blog_item_date">
                                    <h3>15</h3>
                                    <p>Jan</p>
                                </a>
                            </div>
                            
                            <div class="blog_details">
                                <a class="d-inline-block" href="SNS.jsp">
                                    <h2>모던한 분위기가 가득한 인테리어</h2>
                                </a>
                                <p>사용기간: 5개월</p>
                                <p>가격: ~~원</p>
                                <ul class="blog-info-link">
                                    <li><a href="#"><i class="far fa-user"></i> 판매자명</a></li>
                                    <li><a href="#"><i class="far fa-comments"></i> 03 Comments</a></li>
                                </ul>
                              
                                <!-- 홈키트 구성 코드 begin -->
                                <aside class="single_sidebar_widget instagram_feeds"><br><br><br>
                                    <h3 class="widget_title">홈키트 구성</h3><br>
                                    <ul class="instagram_row flex-wrap" >
                                        <li style="float:left; margin-right:5px;">
                                            <a href="#">
                                                <img class="img-fluid" src="img/post/post_5.png" alt="" >
                                            </a>
                                        </li >
                                        <li style="float:left; margin-right:5px;" >
                                            <a href="#">
                                                <img class="img-fluid" src="img/post/post_6.png" alt="">
                                            </a>
                                        </li>
                                        <li style="float:left; margin-right:5px;">
                                            <a href="#">
                                                <img class="img-fluid" src="img/post/post_7.png" alt="">
                                            </a>
                                        </li>
                                        <li style="float:left; margin-right:5px;">
                                            <a href="#">
                                                <img class="img-fluid" src="img/post/post_8.png" alt="">
                                            </a>
                                        </li>
                                        <li style="float:left; margin-right:5px;">
                                            <a href="#">
                                                <img class="img-fluid" src="img/post/post_9.png" alt="">
                                            </a>
                                        </li>
                                        <li style="float:left; margin-right:5px; margin-top:5px;">
                                            <a href="#">
                                                <img class="img-fluid" src="img/post/post_10.png" alt="">
                                            </a>
                                        </li>
                                        <li style="float:left; margin-right:5px; margin-top:5px;">
                                            <a href="#">
                                                <img class="img-fluid" src="img/post/post_10.png" alt="">
                                            </a>
                                        </li>
                                    </ul><br>
                                </aside>
                                <!-- 홈키트 구성 코드 end -->

                                </div>
                            </div>
                            <br><div class="result_btn">
                                <button id="btn" class="genric-btn warning-border circle arrow1" style="margin-right: 30px;">찜하기</button>

				                <script src="//code.jquery.com/jquery.min.js"></script>
								<script>
								$(function() {
								  $('#btn').click( function() {
								    if( $(this).html() == '찜하기') {
								      $(this).html('찜한 상품\n찜하기 취소');
								    }else {
								      $(this).html('찜하기');
								    }
								  });
								});
								</script>
								
                                <a href="basket.jsp" class="genric-btn warning-border circle arrow" style="margin-right: 30px; float:right;">장바구니<span
                                    class="lnr lnr-arrow-right"></span></a><br><br>
                        </article>
<br>
<hr>
<br><br><br><br><br><br><br>
                        <article class="blog_item">
                            <div class="blog_item_img">
                                <h1>세번째 집들이</h1><hr>
                                <img class="card-img rounded-0" src="img/homepage/23.jpg" alt="">
                                <a href="#" class="blog_item_date">
                                    <h3>15</h3>
                                    <p>Jan</p>
                                </a>
                            </div>
                            
                            <div class="blog_details">
                                <a class="d-inline-block" href="SNS.jsp">
                                    <h2>모던한 분위기가 가득한 인테리어</h2>
                                </a>
                                <p>사용기간: 5개월</p>
                                <p>가격: ~~원</p>
                                <ul class="blog-info-link">
                                    <li><a href="#"><i class="far fa-user"></i> 판매자명</a></li>
                                    <li><a href="#"><i class="far fa-comments"></i> 03 Comments</a></li>
                                </ul>
                              
                                <!-- 홈키트 구성 코드 begin -->
                                <aside class="single_sidebar_widget instagram_feeds"><br><br><br>
                                    <h3 class="widget_title">홈키트 구성</h3><br>
                                    <ul class="instagram_row flex-wrap" >
                                        <li style="float:left; margin-right:5px;">
                                            <a href="#">
                                                <img class="img-fluid" src="img/post/post_5.png" alt="" >
                                            </a>
                                        </li >
                                        <li style="float:left; margin-right:5px;" >
                                            <a href="#">
                                                <img class="img-fluid" src="img/post/post_6.png" alt="">
                                            </a>
                                        </li>
                                        <li style="float:left; margin-right:5px;">
                                            <a href="#">
                                                <img class="img-fluid" src="img/post/post_7.png" alt="">
                                            </a>
                                        </li>
                                        <li style="float:left; margin-right:5px;">
                                            <a href="#">
                                                <img class="img-fluid" src="img/post/post_8.png" alt="">
                                            </a>
                                        </li>
                                        <li style="float:left; margin-right:5px;">
                                            <a href="#">
                                                <img class="img-fluid" src="img/post/post_9.png" alt="">
                                            </a>
                                        </li>
                                        <li style="float:left; margin-right:5px; margin-top:5px;">
                                            <a href="#">
                                                <img class="img-fluid" src="img/post/post_10.png" alt="">
                                            </a>
                                        </li>
                                        <li style="float:left; margin-right:5px; margin-top:5px;">
                                            <a href="#">
                                                <img class="img-fluid" src="img/post/post_10.png" alt="">
                                            </a>
                                        </li>
                                    </ul><br>
                                </aside>
                                <!-- 홈키트 구성 코드 end -->

                                </div>
                            </div>
                            <br><div class="result_btn">
                                <button id="btn" class="genric-btn warning-border circle arrow1" style="margin-right: 30px;">찜하기</button>

				                <script src="//code.jquery.com/jquery.min.js"></script>
								<script>
								$(function() {
								  $('#btn').click( function() {
								    if( $(this).html() == '찜하기') {
								      $(this).html('찜한 상품\n찜하기 취소');
								    }else {
								      $(this).html('찜하기');
								    }
								  });
								});
								</script>
				
                                <a href="basket.jsp" class="genric-btn warning-border circle arrow" style="margin-right: 30px; float:right;">장바구니<span
                                    class="lnr lnr-arrow-right"></span></a><br><br>
                        </article>
<br>
<hr>
<br><br>
    <!-- 수정: 중고키트 판매하는 칸 end -->

                        <nav class="blog-pagination justify-content-center d-flex">
                            <ul class="pagination">
                                <li class="page-item">
                                    <a href="#" class="page-link" aria-label="Previous">
                                        <i class="ti-angle-left"></i>
                                    </a>
                                </li>
                                <li class="page-item">
                                    <a href="#" class="page-link">1</a>
                                </li>
                                <li class="page-item active">
                                    <a href="#" class="page-link">2</a>
                                </li>
                                <li class="page-item">
                                    <a href="#" class="page-link" aria-label="Next">
                                        <i class="ti-angle-right"></i>
                                    </a>
                                </li>
                            </ul>
                        </nav>
                    </div>
                </div>
                
                <!-- 옆에 카테고리 화면 begin -->
                <div class="col-lg-4">
                    <div class="blog_right_sidebar">
                        <aside class="single_sidebar_widget post_category_widget">
                            <h4 class="widget_title">Category</h4>
                            <ul class="list cat-list">
                                <li>
                                    <a href="#" class="d-flex">
                                        <p>모던</p>
                                        <p>(개수)</p>
                                    </a>
                                </li>
                                <li>
                                    <a href="#" class="d-flex">
                                        <p>유니크</p>
                                        <p>(개수)</p>
                                    </a>
                                </li>
                                <li>
                                    <a href="#" class="d-flex">
                                        <p>북유럽</p>
                                        <p>(개수)</p>
                                    </a>
                                </li>
                                <li>
                                    <a href="#" class="d-flex">
                                        <p>빈티지</p>
                                        <p>(개수)</p>
                                    </a>
                                </li>
                                <li>
                                    <a href="#" class="d-flex">
                                        <p>네추럴</p>
                                        <p>(개수)</p>
                                    </a>
                                </li>
                                <li>
                                    <a href="#" class="d-flex">
                                        <p>엘레강스</p>
                                        <p>(개수)</p>
                                    </a>
                                </li>
                            </ul>
                        </aside>

                        <aside class="single_sidebar_widget tag_cloud_widget">
                            <h4 class="widget_title">Related tags </h4>
                            <ul class="list">
                                <li>
                                    <a href="#">화이트</a>
                                </li>
                                <li>
                                    <a href="#">우드</a>
                                </li>
                                <li>
                                    <a href="#">그레이</a>
                                </li>
                                <li>
                                    <a href="#">모던</a>
                                </li>
                                <li>
                                    <a href="#">북유럽</a>
                                </li>
                                <li>
                                    <a href="#">주방</a>
                                </li>
                                <li>
                                    <a href="#">거실</a>
                                </li>
                                <li>
                                    <a href="#">댕냥이</a>
                                </li>
                            </ul>
                        </aside>
                    </div>
                </div>
            </div>
        </div>
    </section>
     <!-- 옆에 카테고리 화면 end -->
    <!--================Blog Area =================-->

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