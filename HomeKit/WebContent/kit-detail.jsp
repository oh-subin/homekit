<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    <!doctype html>
    <html lang="en">
    
    <head>
        <!-- Required meta tags -->
        <meta charset="EUC-KR">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <title>방구석 인테리어-detail</title>
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
 <!-- Header part end-->
     <!-- about us css start-->
     <section class="about_us section_padding" style="margin-bottom: 100px;margin-top: 0px;padding-top: 0px;">
        <div class="container">
            <div class="row align-items-center" style="height: 200px;">
                <div class="col-lg-6">
                <form>
                        <div class="about_img">
                        <div><p style="color:rgb(122, 122, 122);">홈키트 상품 > 홈키트 구성</p></div><br><br>
                        <img src="img/homepage/119.jpg" name="pro_img" alt="#" style="height: 400px; width: 500px;"><br>
                    </div>
                </div>
                <div class="col-lg-6" style="display:auto;padding-left: 0px;padding-top: 50px;">
                    <div class="about_text" style="width:500px;margin-top: 0px;">
                        <h3 style="font-size:30px;" name="pro_name">오후의 빛과 색감이 어우러진 자매의 복층 오피스텔</h3>
                        <div class="col-lg-6" style="display:auto;">
                            <div class="about_text" style="padding-top: 10px;width: 600px;">
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
                                <span style="font-size: 15px;"><h3 style="font-size: 40px;" name="pro_price">100,500 <del>150,000</del><b style="color:red; font-size:25px"> 30% <span style="font-size: 15px;">최저가</span></b></h3></span>
                                <b style="color:red; font-size: 17px">500포인트</b><span style="font-size: 17px"> 적립</span><hr>
                                <p style="font-size: 15px;">조건부 무료배송 3000원 (5만원 이상 구매 시 무료)</p>
                            </div><br>
                            <!-- 수량 전체 표시 begin -->
                            <select id="mySelect" onchange="myFunction()" style="width: 500px; height: 50px; font-size: 17px">
                                <option value="선택하기">구매하실 상품을 선택해주세요</option>
                                <option value="홈키트 단일 제품 +100,500">홈키트 단일 제품 +100,500</option>
                                <option value="작은 소파">작은 소파</option>
                                <option value="책꽂이">책꽂이</option>
                                <option value="라탄바구니 식물">라탄바구니 식물</option>
                                <option value="4인용 소파">4인용 소파</option>
                                <option value="포스터">포스터</option>
                                <option value="작은 식탁&의자">작은 식탁&의자</option>
                                <option value="안전매트">안전매트</option>
                                <option value="주방 장난감">주방 장난감</option>
                            </select>

                            <p id="selected product" style="height: 50px;"></p>
                            <!-- 선택하면 종류 보여주기 begin -->
                            <script>
                                function myFunction() {// 선택한 상품내역과 가격 보여주기
                                    var x = document.getElementById("mySelect").value;
                                    document.getElementById("selected product").innerHTML = "selected product: " + x; 
                                }
                            // 선택하면 종류 보여주기 end
                            </script>
                                <div class="result_btn">
                                <!-- 선택된 상품 보내기  -->
                                <a href="basket.jsp" class="genric-btn info radius" style="style=;width: 181.99074000000002px;height: 51.99074px;margin-right: 30px; background-color: rgba(168, 167, 167, 0.5)"><span style="font-size:18px;">장바구니</span></a>
                                <a href="payment.jsp" class="genric-btn info radius" style="width: 181.99074000000002px;height: 51.99074px;padding-left: 30px;background-color: rgba(168, 167, 167, 0.5)"><span style="font-size:18px;">바로 구매</span></a>
                                </div>
                               </form>
                            </div>
                        </div>
                    </div>
                </div>
            </section>
            <!-- about us css end-->

            <!-- 상품상세사진 nav바 begin -->
            <div data-sticky-enabled="false" data-sticky-disabled="false" data-sticky-always="false" data-direction="top" data-offset="79.99431610107422" class="sticky-container production-selling-navigation-wrap" style="position: sticky;top: 79.9943px;padding-bottom: 10px;margin-top: 500px;">
                <div class="nav_product_detail" style="position: relative; background-color: #fdefed49; height: 50px">
                    <nav class="production-selling-navigation__content">
                        <ol class="production-selling-navigation__list" style="padding-top: 10px; margin-left: 100px">
                            <li style="display: inline-block; margin-left:200px">
                                <a class="class="production-selling-navigation__item production-selling-navigation__item--active"" href="" style="font-size:20px;"><b style="color: rgba(168, 167, 167, 0.753);">상품정보</b></a>
                            </li>
                            <li style="display: inline-block; margin-left:100px">
                                <a class="class="production-selling-navigation__item"" href="" style="font-size:20px;"><b style="color: rgba(168, 167, 167, 0.753);">리뷰</b></a>
                                <span class="production-selling-navigation__item__count" style="font-size:15px; color: rgba(168, 167, 167, 0.493);">1,100</span>
                            </li>
                            <li style="display: inline-block; margin-left:100px">
                                <a class="class="production-selling-navigation__item"" href="" style="font-size:20px;"><b style="color: rgba(168, 167, 167, 0.753);"">문의</b></a>
                                <span class="production-selling-navigation__item__count" style="font-size:15px; color:rgba(168, 167, 167, 0.493);">500</span>
                            </li>
                            <li style="display: inline-block; margin-left:100px">
                                <a class="class="production-selling-navigation__item"" href="" style="font-size:20px;"><b style="color: rgba(168, 167, 167, 0.753);">배송/환불</b></a>
                            </li>
                        </ol>
                    </nav>
                </div>
            </div>
            <!-- 상품상세사진 nav바 end -->

            <!-- 사이드바 -->
            <div class="sidenav" style="margin-top: 300px;margin-left: 1500px;">
                <a href="#about">About</a>
                <a href="#services">Services</a>
                <a href="#clients">Clients</a>
                <a href="#contact">Contact</a>
              </div>

<!-- 홈키트 상품 설명 부분 -->
<br><br><br><br><br>
    <section style="margin-top:50px;padding-left: 250px;width: 1130px;">
        <table>
            <tr> 
                <td><img src="img/homepage/homekit.JPG" alt="" style="height: 100px; width: 800px;"></td>
            </tr>
            <tr>
                <td><img src="img/homepage/homekit_2.JPG" alt="" style="height: 500px; width: 800px;"></td>
            </tr>
            <tr> 
                <td><img src="img/homepage/homekit_1.JPG" alt="" style="height: 500px; width: 800px;"></td>
            </tr>
            <tr> 
                <td><img src="img/homepage/homekit_3.JPG" alt="" style="height: 500px; width: 800px;"></td>
            </tr>
        </table>
        <hr>
    </section>

    <!-- 홈키트 구성 보여주는 begin -->
    <!-- <section class="about_us section_padding" style="margin-bottom: 300px;margin-top: 100px;">
        <div class="container">
            <div class="row align-items-center" style="height: 320px;">
                <div class="col-lg-6">
                    <p >테마 추천결과 > 홈키트 소품구성</p><br>
                    <div class="about_img">
                        <a href="#"><img src="img/homepage/541_9.JPG" alt="#" style="float:left;"></a>
                            <div class="about_text" style="width:1000px;padding-left: 350px; padding-top: 10px;">
                                <h5>휴지케이스</h5><hr>
                                
                                <div class="rating" style="float:left;">
                                    <span>별점</span>
                                    <div class="place_review">
                                    <a href="#"><i class="fas fa-star"></i></a>
                                    <a href="#"><i class="fas fa-star"></i></a>
                                    <a href="#"><i class="fas fa-star"></i></a>
                                    <a href="#"><i class="fas fa-star"></i></a>
                                    <a href="#"><i class="fas fa-star"></i></a>
                                    <span>(개수)</span>
                                </div>
                                    
                                <p>소품설명</p>
                                
                                <p>가격</p>
                            </div><br>
                            </div>
                    </div>
                </div>
            </div>
                
                <div class="row align-items-center" style="height: 100px;">
                <div class="col-lg-6">
                    <br><div class="about_img">
                        <a href="#"><img src="img/homepage/514_2.JPG" alt="#" style=" float:left;"></a>
                            <div class="about_text" style="width:1000px;padding-left: 350px; padding-top: 10px;">
                                <h5>조명</h5><hr>
                                
                                <div class="rating" style="float:left;">
                                    <span>별점</span>
                                    <div class="place_review">
                                    <a href="#"><i class="fas fa-star"></i></a>
                                    <a href="#"><i class="fas fa-star"></i></a>
                                    <a href="#"><i class="fas fa-star"></i></a>
                                    <a href="#"><i class="fas fa-star"></i></a>
                                    <a href="#"><i class="fas fa-star"></i></a>
                                    <span>(개수)</span>
                                </div>
                                    
                                <p>소품설명</p>
                                
                                <p>가격</p>
                            </div><br>
                            </div>
                    </div>
                </div>
            </div>
                <div class="row align-items-center" style="height: 320px;">
                <div class="col-lg-6">
                    <div class="about_img">
                        <a href="#"><img src="img/homepage/514_3.JPG" alt="#" style="float:left;"></a>
                            <div class="about_text" style="width:1000px;padding-left: 350px; padding-top: 10px;">
                                <h5>탁자</h5><hr>
                                
                                <div class="rating" style="float:left;">
                                    <span>별점</span>
                                    <div class="place_review">
                                    <a href="#"><i class="fas fa-star"></i></a>
                                    <a href="#"><i class="fas fa-star"></i></a>
                                    <a href="#"><i class="fas fa-star"></i></a>
                                    <a href="#"><i class="fas fa-star"></i></a>
                                    <a href="#"><i class="fas fa-star"></i></a>
                                    <span>(개수)</span>
                                </div>
                                    
                                <p>소품설명</p>
                                
                                <p>가격</p>
                            </div><br>
                            </div>
                    </div>
                </div>
            </div>
            <div class="row align-items-center" style="height: 100px;">
                <div class="col-lg-6">
                    <div class="about_img">
                        <a href="#"><img src="img/homepage/514_4.JPG" alt="#" style="float:left;"></a>
                            <div class="about_text" style="width:1000px;padding-left: 350px; padding-top: 10px;">
                                <h5>러그</h5><hr>
                                
                                <div class="rating" style="float:left;">
                                    <span>별점</span>
                                    <div class="place_review">
                                    <a href="#"><i class="fas fa-star"></i></a>
                                    <a href="#"><i class="fas fa-star"></i></a>
                                    <a href="#"><i class="fas fa-star"></i></a>
                                    <a href="#"><i class="fas fa-star"></i></a>
                                    <a href="#"><i class="fas fa-star"></i></a>
                                    <span>(개수)</span>
                                </div>
                                    
                                <p>소품설명</p>
                                
                                <p>가격</p>
                            </div><br>
                            </div>
                    </div>
                </div>
            </div>
            <div class="row align-items-center" style="height: 320px;">
                <div class="col-lg-6">
                    <div class="about_img">
                        <a href="#"><img src="img/homepage/514_5.JPG" alt="#" style="float:left;"></a>
                            <div class="about_text" style="width:1000px;padding-left: 350px; padding-top: 10px;">
                                <h5>1인 소파</h5><hr>
                                
                                <div class="rating" style="float:left;">
                                    <span>별점</span>
                                    <div class="place_review">
                                    <a href="#"><i class="fas fa-star"></i></a>
                                    <a href="#"><i class="fas fa-star"></i></a>
                                    <a href="#"><i class="fas fa-star"></i></a>
                                    <a href="#"><i class="fas fa-star"></i></a>
                                    <a href="#"><i class="fas fa-star"></i></a>
                                    <span>(개수)</span>
                                </div>
                                    
                                <p>소품설명</p>
                                
                                <p>가격</p>
                            </div><br>
                            </div>
                    </div>
                </div>
            </div>
            <div class="row align-items-center" style="height: 100px;">
                <div class="col-lg-6">
                    <div class="about_img">
                        <a href="#"><img src="img/homepage/514_6.JPG" alt="#" style="float:left;">
                            <div class="about_text" style="width:1000px;padding-left: 350px; padding-top: 10px;" >
                                <h5>원형 탁상거울</h5><hr>
                                
                                <div class="rating" style="float:left;">
                                    <span>별점</span>
                                    <div class="place_review">
                                    <a href="#"><i class="fas fa-star"></i></a>
                                    <a href="#"><i class="fas fa-star"></i></a>
                                    <a href="#"><i class="fas fa-star"></i></a>
                                    <a href="#"><i class="fas fa-star"></i></a>
                                    <a href="#"><i class="fas fa-star"></i></a>
                                    <span>(개수)</span>
                                </div>
                                    
                                <p>소품설명</p>
                                
                                <p>가격</p>
                            </div><br>
                            </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
        </div>
    </section> -->
     <!-- 홈키트 구성 보여주는 end -->
<br><br><br><br><br><br><br><br><br><br><br>
    <!-- 연관테마 부분 begin -->
    <!--::industries start::-->
    <section class="best_services section_padding">
        <div class="container">
            <div class="row justify-content-center">
                <div class="col-xl-6">
                    <div class="section_tittle text-center">
                        <h2 style="color: rgb(136, 136, 136)">연관테마</h2>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-lg-3 col-sm-6">
                    <div class="single_ihotel_list">
                        <a href="#"><img src="img/homepage/50 영화 속 다락방처럼 사랑스러워진 창고방의 대변신.jpg" alt="" style="height: 200px; width: 300px;"></a>
                        <h3>  영화 속 다락방처럼 사랑스러워진 창고방의 대변신</a></h3>
                        <p>가격</p>
                    </div>
                </div>
                <div class="col-lg-3 col-sm-6">
                    <div class="single_ihotel_list">
                        <a href="#"><img src="img/homepage/49 22년 된 아파트에 채워넣은 우리만의 색.jpg" alt="" style="height: 200px; width: 300px;"></a>
                        <h3>  22년 된 아파트에 채워넣은 우리만의 색</a></h3>
                        <p>가격</p>
                    </div>
                </div>
                <div class="col-lg-3 col-sm-6">
                    <div class="single_ihotel_list">
                        <a href="#"><img src="img/homepage/47 사부작사부작 단점을 장점으로 극복해가는 우리집.jpg" alt="" style="height: 200px; width: 300px;"></a>
                        <h3> 사부작사부작 단점을 장점으로 극복해가는 우리집</a></h3>
                        <p>가격</p>
                    </div>
                </div>
                <div class="col-lg-3 col-sm-6">
                    <div class="single_ihotel_list">
                        <a href="#"> <img src="img/homepage/46 한남동 재개발이 예정된 단독주택의 Last Dance.jpg" alt="" style="height: 200px; width: 300px;"></a>
                        <h3> 한남동 재개발이 예정된 단독주택의 Last Dance</h3>
                        <p>가격</p>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!--::industries end::-->
    <!-- 연관테마 부분 end -->
    <!-- 수정: 전문가 추천모드에서 이동할 추천결과 페이지 end -->

    <br><br><br><br><br>
  
      <!-- footer part start-->
         <footer class="footer-area">
            
             
                 <div class="row justify-content-center">
                     <div class="col-lg-12">
                         <div class="copyright_part_text text-center" style="background-color:#fdefed49;">
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