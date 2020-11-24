<%@page import="com.DAO.homekitDAO"%>
<%@ page import="java.util.ArrayList"%>
<%@ page import="com.DTO.homekitDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta charset="UTF-8">
	<title>방구석 인테리어-홈키트 전체 상품</title>
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <title>Martine</title>
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
    <link href="https://fonts.googleapis.com/css2?family=Nanum+Gothic+Coding:wght@700&display=swap" rel="stylesheet">
    <!-- rating js코드 Add icon library -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
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
                                            <a class="nav-link" href="about.jsp" style="font-size:20px">소개</a>
                                        </li>
                                        <li class="nav-item">
                                            <a class="nav-link" href="recommendation.jsp" style="font-size:20px">추천</a>
                                        </li>
                                        <li class="nav-item">
                                            <a class="nav-link" href="Used_Homekit_Sale.jsp" style="font-size:20px">중고키트 판매</a>
                                        </li>
                                        <li class="nav-item">
                                           <a class="nav-link" href="products.jsp" style="font-size:20px">쇼핑몰</a>
                                        </li>
                                    </ul>
                                </div>
                                <%if(email == null){ %>
	                                <a href="login.jsp" style="color:#756595; font-size: 15px;">로그인</a>
	                                <a href="register.jsp" style="margin-left: 15px; color:#756595; font-size: 15px;">회원가입</a>
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
								style="margin-left: 5px; color:#756595; font-size: 15px;">장바구니</a>
							<%} %>
                            </nav>
                        </div>
                    </div>
                </div>
            </div>
        </header>
 <!-- 수정: 상위메뉴 이름 지정 end -->
 <!-- Header part end-->

	<!-- banner part start-->
	<section class="breadcrumb breadcrumb_bg" style="height: 324px; background-color:#f2f0f594;">
		<div class="container">
			<div class="row">
				<div class="col-lg-12">
					<div class="breadcrumb_iner">
						<div class="breadcrumb_iner_item text-center">
                             <h2 style="font-family:'S-CoreDream-2ExtraLight'; color:#808080; margin-bottom: 100px">Homekit Products</h2>
                         </div>
                     </div>
                 </div>
             </div>
         </div>
     </section>
     <!-- banner part end-->
     
 <!-- 상품 나열 페이지 begin -->
    <!--::industries start::-->
    <section class="hotel_list section_padding">
        <div class="container">
            <hr><p style="color:#6c757d; font-size:25px; font-family:'S-CoreDream-2ExtraLight'">BEST OFFER</p><hr>          
               <div class="row gallery-item">
               
               <!-- 홈키트 가져오는 반복문 사용 12개 -->
               <% 
               		homekitDAO dao = new homekitDAO();
               		ArrayList<homekitDTO> imgList = dao.showHomeKit();
               		
               		
               %>
                   <div class="col-md-4">
                          <a href="img/homepage/13.jpg" class="img-pop-up" href="kit-detail.jsp">
                          <div class="single-gallery-image" style="background: url(img/homepage/13.jpg); background-size: contain; background-repeat: no-repeat;"></div></a>
                          <div style="padding-top: 20px;"><span><strong style="font-size:20px;">평범하고 서툴지만 취향을 담아 완성한 세 식구의 집</strong></span>
                            <div>
                                <p style="color:#808080">모던&미니멀</p>
                                <p style="font-size:18px">[48H POP UP][12%쿠폰][~11/19까지]</p><br>
                                <p><strong style="font-size:22px">180,000원</strong><del style="padding-right: 20px;padding-left: 10px;color: #adb5bd">200,000원</del><b style="color:red; text-align: right; font-size:18px;">12%</b></p>
                                <span class="fa fa-star checked"></span>
                                <span class="fa fa-star checked"></span>
                                <span class="fa fa-star checked"></span>
                                <span class="fa fa-star checked"></span>
           
							</div>
                           </div>
                       </div> 
                   <div class="col-md-4">
                       <a href="img/homepage/19.jpg" class="img-pop-up" href="kit-detail.jsp">
                           <div class="single-gallery-image" style="background: url(img/homepage/19.jpg);"></div></a>
                           <div style="padding-top: 20px;"><span><strong style="font-size:20px;">흔하지 않게, 우리 둘의 감성을 담아</strong></span>
                            <div>
                                <p style="color:#808080">내추럴</p>
                                <p style="font-size:18px">[48H POP UP][12%쿠폰][~11/19까지]</p><br>
                                <p><strong style="font-size:22px">150,000원</strong><del style="padding-right: 20px;padding-left: 10px;color: #adb5bd">250,000원</del><b style="color:red; text-align: right; font-size:18px;">12%</b></p>
                                <span class="fa fa-star checked"></span>
                                <span class="fa fa-star checked"></span>
                                <span class="fa fa-star checked"></span>
                                <span class="fa fa-star checked"></span>
                               
							</div>
                           </div>
                   </div>
                   <div class="col-md-4">
                       <a href="img/homepage/23.jpg" class="img-pop-up" href="kit-detail.jsp">
                           <div class="single-gallery-image" style="background: url(img/homepage/23.jpg);"></div></a>
                           <div style="padding-top: 20px;"><span ><strong style="font-size:20px;">점점 더 우리를 닮아가는 첫 신혼집</strong></span>
                            <div>
                                <p style="color:#808080">모던&미니멀</p>
                                <p style="font-size:18px">[48H POP UP][12%쿠폰][~11/19까지]</p><br>
                                <p><strong style="font-size:22px">120,000원</strong><del style="padding-right: 20px;padding-left: 10px;color: #adb5bd">180,000원</del><b style="color:red; text-align: right; font-size:18px;">12%</b></p>
                                <span class="fa fa-star checked"></span>
                                <span class="fa fa-star checked"></span>
                                <span class="fa fa-star checked"></span>
                              
						   </div>
                           </div>
                   </div>
                   <div class="col-md-4">
                    <a href="img/homepage/25.jpg" class="img-pop-up" href="kit-detail.jsp">
                        <div class="single-gallery-image" style="background: url(img/homepage/25.jpg);"></div></a>
                        <div style="padding-top: 20px;"><span ><strong style="font-size:20px;">나를 치유하고, 내일을 기대할 수 있도록 해주는 공간</strong></span>
                            <div>
                             <p style="color:#808080">내추럴&유니크</p>
                             <p style="font-size:18px">[48H POP UP][12%쿠폰][~11/19까지]</p><br>
                             <p><strong style="font-size:22px">70,000원</strong><del style="padding-right: 20px;padding-left: 10px;color: #adb5bd">100,000원</del><b style="color:red; text-align: right; font-size:18px;">12%</b></p>
                             <span class="fa fa-star checked"></span>
                             <span class="fa fa-star checked"></span>
                             <span class="fa fa-star checked"></span>
                             <span class="fa fa-star checked"></span>
                             <span class="fa fa-star checked"></span>
                             
                           
                        </div>
                        </div>
                </div>
                   <div class="col-md-4">
                    <a href="img/homepage/28.jpg" class="img-pop-up" href="kit-detail.jsp">
                        <div class="single-gallery-image" style="background: url(img/homepage/28.jpg);"></div></a>
                        <div style="padding-top: 20px;"><span ><strong style="font-size:20px;">호텔리조트 풍으로 원없이 꾸민 드림하우스</strong></span>
                            <div>
                             <p style="color:#808080">프렌치&프로방스</p>
                             <p style="font-size:18px">[48H POP UP][12%쿠폰][~11/19까지]</p><br>
                             <p><strong style="font-size:22px">130,000원</strong><del style="padding-right: 20px;padding-left: 10px;color: #adb5bd">200,000원</del><b style="color:red; text-align: right; font-size:18px;">12%</b></p>
                             <span class="fa fa-star checked"></span>
                             <span class="fa fa-star checked"></span>
                             <span class="fa fa-star checked"></span>
                             <span class="fa fa-star checked"></span>
                            
                        </div>
                        </div>
                </div>
                   <div class="col-md-4">
                       <a href="img/homepage/31.jpg" class="img-pop-up" href="kit-detail.jsp">
                           <div class="single-gallery-image" style="background: url(img/homepage/31.jpg);"></div></a>
                           <div style="padding-top: 20px;"><span ><strong style="font-size:20px;">애정이 볕이 되는 집 </strong></span>
                            <div>
								<p style="color:#808080">내추럴&북유럽</p>
                                <p style="font-size:18px">[48H POP UP][12%쿠폰][~11/19까지]</p><br>
                                <p><strong style="font-size:22px">160,000원</strong><del style="padding-right: 20px;padding-left: 10px;color: #adb5bd">180,000원</del><b style="color:red; text-align: right; font-size:18px;">12%</b></p>
                                <span class="fa fa-star checked"></span>
                                <span class="fa fa-star checked"></span>
                                <span class="fa fa-star checked"></span>
                                <span class="fa fa-star checked"></span>
                            
						   </div>
                           </div>
                   </div>
                   <div class="col-md-4">
                       <a href="img/homepage/36.jpg" class="img-pop-up" href="kit-detail.jsp">
                           <div class="single-gallery-image" style="background: url(img/homepage/36.jpg);"></div></a>
                           <div style="padding-top: 20px;"><span ><strong style="font-size:20px;">스튜디오처럼 꾸민, 25평 아파트의 대변신</strong></span>
                            <div>
                                <p style="color:#808080">미니멀&심플</p>
                                <p style="font-size:18px">[48H POP UP][12%쿠폰][~11/19까지]</p><br>
                                <p><strong style="font-size:22px">80,000원</strong><del style="padding-right: 20px;padding-left: 10px;color: #adb5bd">100,000원</del><b style="color:red; text-align: right; font-size:18px;">12%</b></p>
                                <span class="fa fa-star checked"></span>
                                <span class="fa fa-star checked"></span>
                                <span class="fa fa-star checked"></span>
                                <span class="fa fa-star checked"></span>
                                <span class="fa fa-star checked"></span>
                              
						   </div>
                           </div>
                   </div>
                   <div class="col-md-4">
                    <a href="img/homepage/38.jpg" class="img-pop-up" href="kit-detail.jsp">
                        <div class="single-gallery-image" style="background: url(img/homepage/38.jpg);"></div></a>
                        <div style="padding-top: 20px;"><span ><strong style="font-size:20px;">아이의 생기처럼, 컬러도 패턴도 생동감 넘치는 집</strong></span>
                            <div>
                             <p style="color:#808080">모던&내추럴</p>
                             <p style="font-size:18px">[48H POP UP][12%쿠폰][~11/19까지]</p><br>
                             <p><strong style="font-size:22px">110,000원</strong><del style="padding-right: 20px;padding-left: 10px;color: #adb5bd">170,000원</del><b style="color:red; text-align: right; font-size:18px;">12%</b></p>
                             <span class="fa fa-star checked"></span>
                             <span class="fa fa-star checked"></span>
                          	 <span class="fa fa-star checked"></span>
                          	 <span class="fa fa-star checked"></span>
                          	 <span class="fa fa-star checked"></span>
                         
                        </div>
                        </div>
                </div>
                <div class="col-md-4">
                    <a href="img/homepage/42.jpg" class="img-pop-up" href="kit-detail.jsp">
                        <div class="single-gallery-image" style="background: url(img/homepage/42.jpg);"></div></a>
                        <div style="padding-top: 20px;"><span ><strong style="font-size:20px;">오래된 주택이 우리의 취향을 담기까지</strong></span>
                            <div>
                             <p style="color:#808080">미니멀&심플</p>
                             <p style="font-size:18px">[48H POP UP][12%쿠폰][~11/19까지]</p><br>
                             <p><strong style="font-size:22px">150,000원</strong><del style="padding-right: 20px;padding-left: 10px;color: #adb5bd">200,000원</del><b style="color:red; text-align: right; font-size:18px;">12%</b></p>
                             <span class="fa fa-star checked"></span>
                             <span class="fa fa-star checked"></span>
                             <span class="fa fa-star checked"></span>
                         
                        </div>
                        </div>
                </div>
                <div class="col-md-4">
                    <a href="img/homepage/43.jpg" class="img-pop-up" href="kit-detail.jsp">
                        <div class="single-gallery-image" style="background: url(img/homepage/43.jpg);"></div></a>
                        <div style="padding-top: 20px;"><span ><strong style="font-size:20px;">'마이너스옵션'으로 나에게 딱 맞는 인테리어하기</strong></span>
                            <div>
                             <p style="color:#808080">내추럴</p>
                             <p style="font-size:18px">[48H POP UP][12%쿠폰][~11/19까지]</p><br>
                             <p><strong style="font-size:22px">180,000원</strong><del style="padding-right: 20px;padding-left: 10px;color: #adb5bd">200,000원</del><b style="color:red; text-align: right; font-size:18px;">12%</b></p>
                             <span class="fa fa-star checked"></span>
                             <span class="fa fa-star checked"></span>
                             <span class="fa fa-star checked"></span>
                             <span class="fa fa-star checked"></span>
                          
                        </div>
                        </div>
                </div>
                <div class="col-md-4">
                    <a href="img/homepage/46.jpg" class="img-pop-up" href="kit-detail.jsp">
                        <div class="single-gallery-image" style="background: url(img/homepage/46.jpg);"></div></a>
                        <div style="padding-top: 20px;"><span ><strong style="font-size:20px;">한남동 재개발이 예정된 단독주택의 Last Dance</strong></span>
                            <div>
                             <p style="color:#808080">미니멀&심플</p>
                             <p style="font-size:18px">[48H POP UP][12%쿠폰][~11/19까지]</p><br>
                             <p><strong style="font-size:22px">170,000원</strong><del style="padding-right: 20px;padding-left: 10px;color: #adb5bd">200,000원</del><b style="color:red; text-align: right; font-size:18px;">12%</b></p>
                             <span class="fa fa-star checked"></span>
                             <span class="fa fa-star checked"></span>
                             <span class="fa fa-star checked"></span>
                             <span class="fa fa-star checked"></span>
                          
                        </div>
                        </div>
                </div>
                <div class="col-md-4">
                    <a href="img/homepage/47.jpg" class="img-pop-up" href="kit-detail.jsp">
                        <div class="single-gallery-image" style="background: url(img/homepage/47.jpg);"></div></a>
                        <div style="padding-top: 20px;"><span ><strong style="font-size:20px;">사부작사부작 단점을 장점으로 극복해가는 우리집</strong></span>
                            <div>
                             <p style="color:#808080">미니멀&심플</p>
                             <p style="font-size:18px">[48H POP UP][12%쿠폰][~11/19까지]</p><br>
                             <p><strong style="font-size:22px">180,000원</strong><del style="padding-right: 20px;padding-left: 10px;color: #adb5bd">200,000원</del><b style="color:red; text-align: right; font-size:18px;">12%</b></p>
                             <span class="fa fa-star checked"></span>
                             <span class="fa fa-star checked"></span>
                             <span class="fa fa-star checked"></span>
                             <span class="fa fa-star checked"></span>
                           	 <span class="fa fa-star checked"></span>
                        </div>
                        </div>
                </div>
                   </div>              
           </div>
        </div>
    </section>
    <!--::industries end::-->
    
    <br><br><br><br><br>

      <!-- footer part start-->
         <footer class="footer-area">
            
             
                 <div class="row justify-content-center">
                     <div class="col-lg-12">
                         <div class="copyright_part_text text-center" style="background-color:#f2f0f594;">
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