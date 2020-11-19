<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!doctype html>
    <html lang="en">
    
        <head>
            <!-- Required meta tags -->
            <meta charset="utf-8">
            <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
            <title>방구석 인테리어-결제</title>
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
        </head>
        <body style="height: 1000px;">
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
            <p style="margin-left: 250px;">01. 장바구니 > <b style="color:red;">02. 주문/결제</b> > 03. 결제완료</p><br><br>
          <div>
            <h2 style="margin-left: 250px;">고객님 배송지</h2>
            <br>
            <!-- 개인정보 및 배송지 등록 테이블 -->
            <table border="2px" style="margin-left: 250px; margin-right:100px; float:left;">
                <tr>
                    <th width="300" style="text-align: center;">배송지 선택</th>
                    <th width="600" height="70">
                        <select name="" id="" style="width:400px; height:50px; margin-left:10px;">
                            <option value="" >배송지를 선택해주세요.</option>
                        </select>
                        <button>새로운 주소 추가</button>
                    </th>
                </tr>
                <tr>
                    <th width="300" style="text-align: center;">받는 사람</th>
                    <th width="600" height="50"><input type="text" style="margin-left:10px;"></th>
                </tr>
                <tr>
                    <th width="300" style="text-align: center;">휴대폰 번호</th>
                    <th width="600" height="50" > 
                        <select name="" id="" style="margin-left:10px;">
                            <option value="" >010</option>
                        </select>
                    <input type="text"> <input type="text">
                </th>
                </tr>
                <tr>
                    <th width="300" style="text-align: center;">배송지 주소</th>
                    <th width="600" height="300">
                        <button style="margin-left:10px; margin-bottom: 30px;">우편번호 검색</button><br>
                        <input type="text" style="margin-left:10px; width:400px; height:50px;">
                        <input type="text" placeholder="상세주소를 입력해주세요" style="width:400px; height:50px; margin-top:30px; margin-left:10px;"><br>
                        <input type="checkbox" style="margin-left:10px; margin-top: 30px;"> 기본 배송지로 저장
                    </th>
                </tr>
                <tr>
                    <th width="300" style="text-align: center;">배송 요청사항</th>
                    <th width="600" height="150">
                        <select name="" id="" style="width:500px; height:50px; margin-left:10px;">
                            <option value="" >배송 요청사항을 선택해주세요.</option>
                        </select>
                    </th>
                </tr>
            </table>
          </div>

            <!-- 결제내역 테이블 -->
          	<div>
            <table border="2px" style="margin-top:30px;">
                <h3 style="margin-top:50px;">고객님의 거래 내역</h3>
                    <tr width="400" height="80">
                        <td>총 상품금액</td>
                        <td>100,500원</td>
                    </tr>
                    <tr width="400" height="100">
                        <td>총 할인금액 *<br><p>쿠폰할인</p></td>
                       
                        <td>-10,000원<p>5,000원</p></td>
                    </tr>
                    <tr width="400" height="80">
                        <td>배송비</td>
                        <td>2,500원</td>
                    </tr>
                    <tr width="400" height="80">
                        <td>적립 예정 금액</td>
                        <td>29원 적립</td>
                    </tr>
                    <tr width="400" height="80">
                        <td>결제 예정 금액</td>
                        <td>42,500원</td>
                    </tr>
                
            </table>
            <button style="margin-left:70px; margin-top:10px; height: 50px; width: 100px;"  onclick="location.href='Order_Completed.jsp'";>결제하기</button>
          	</div>

           <!-- footer part start-->
        <footer class="footer-area" style="clear:left;"> 
            <div class="container-fluid">
                <div class="row justify-content-center">
                    <div class="col-lg-12">
                        <div class="copyright_part_text text-center">
                            <p class="footer-text m-0"><!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
        Copyright &copy;<script>document.write(new Date().getFullYear());</script> All rights reserved | This template is made with <i class="ti-heart" aria-hidden="true"></i> by <a href="https://colorlib.com" target="_blank">Colorlib</a>
        <!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. --></p>
                        </div>
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