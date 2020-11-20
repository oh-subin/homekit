<%@ page language="java" contentType="text/html; charset=utf-8"
   pageEncoding="utf-8"%>
<%@ page import="java.util.ArrayList"%>
<%@ page import="com.DAO.RecommendationDAO"%>
<%@ page import="com.DTO.RecommendationDTO"%>
   

<!doctype html>
<html lang="en">

<head>

<!-- Required meta tags -->
<meta charset="UTF-8">
<meta name="viewport"
   content="width=device-width, initial-scale=1, shrink-to-fit=no">
<title>방구석 인테리어-추전</title>
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
<% request.setCharacterEncoding("utf-8"); %>
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
                                            <a class="nav-link" href="recommendation.jsp">추천</a>
                                        </li>
                                        <li class="nav-item">
                                            <a class="nav-link" href="Used_Homekit_Sale.jsp">중고키트 판매</a>
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
                              <a class="dropdown-item" href="product_registration.jsp">상품관리</a>
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
      </div>
   </header>
   <!-- 수정: 상위메뉴 이름 지정 end -->
   <!-- Header part end-->
   

   <!-- 태그추천부분 begin -->
   <!-- booking part start-->
   <section class="booking_part" style="margin-top: 70px;height: 400px;">
      <div class="container">
         <div class="row">
            <div class="col-lg-12" >
               <div class="booking_menu">
                  <h2 style="color:#012a4a; font-size:40px;">1. 태그 선택</h2><br>
                  <p style="color:#01497c; font-size:20px;background-color:#e2eafc;">인테리어 추천을 위해 아래의 태그를 선택해주세요.</p>
                  
                  
               </div>
            </div>
           <div class="col-lg-12">
                <div class="booking_content" style="height: 180px;margin-top: 20px;">
                  <div class="tab-content" id="myTabContent">
                    <div class="tab-pane fade show active" id="hotel" role="tabpanel"
                        aria-labelledby="hotel-tab" style="margin-bottom: 500px;">
                        <div class="booking_form">
                           <form action="http://192.168.219.129:5000/firstrec" name ="rec1" id="recommend1" method="post">
                           
                       <script type="text/javascript">

	$(document).ready(function() 

	{

		$("#rec_btn").click(function()

		{

			var formData = $("#recommend1").serialize();

			$.ajax({
	 					type : "POST",
	 					url : "http://192.168.219.129:5000/firstrec",
	 					cache : false,
	 					data : formData,
	 					success : onSuccess,
	 					error : onError
			});
			$.ajax({
	 					type : "POST",
	 					url : "FirstRecommendation",
	 					cache : false,
	 					data : formData,
	 					success : onSuccess,
	 					error : onError
			});
		});
	});
	function onSuccess(json, status){alert($.trim(json));}
	function onError(data, status){alert("error");}

</script>
                                                      
                              <div class="form-row">
                                 <div class="form_colum">
                                    <select class="nc_select" name="select_space">
                                       <option selected>공간</option>
                                       <option value="oneroom">원룸&오피스텔</option>
                                       <option value="apartment">아파트</option>
                                       <option value="villa">빌라&연립</option>
                                       <option value="detachedhouse">단독주택</option>
                                    </select>
                                 </div>
                                 <div class="form_colum">
                                    <select class="nc_select" name="select_size">
                                       <option selected>평수</option>
                                       <option value="10under">10평미만</option>
                                       <option value="10pyeong">10평대</option>
                                       <option value="20pyeong">20평대</option>
                                       <option value="30pyeong">30평대</option>
                                       <option value="40pyeong">40평대</option>
                                       <option value="50over">50평대 이상</option>
                                    </select>
                                 </div>
                                 <div class="form_colum"  style="margin-right: 290px" >
                                    <select class="nc_select" name="select_familyShape">
                                       <option selected>가족형태</option>
                                       <option value="single">싱글라이프</option>
                                       <option value="parent">부모님과 함께 사는 집</option>
                                       <option value="couple">신혼부부</option>
                                       <option value="baby">아기가 있는 집</option>
                                       <option value="child">취학 자녀가 있는 집</option>
                                       <option value="baby,child">아기가 있는 집, 취학 자녀가 있는 집</option>
                                                                                                     
                                    </select>
                                 </div>

                                 <div class="form_btn">
                                   <input type="submit" value="추천" id = "rec_btn" onClick='twosend()' sclass="btn_1">
                                 </div>
                              </div>
                           </form>
                        </div>
                     </div>
                  </div>
               </div>
           </div>
       </div>
     </div>                       
   </section>
   <!-- Header part end-->
   <!-- 태그추천부분 end -->

   <!-- footer part start-->
   <footer class="footer-area">
      <div class="row justify-content-center">
         <div class="col-lg-12">
            <div class="copyright_part_text text-center" style="margin-top: 0px;">
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
   
</body>

</html>
   
   
