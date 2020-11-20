<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!doctype html>
    <html lang="en">
    
        <head>
            <!-- Required meta tags -->
            <meta charset="utf-8">
            <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
            <title>방구석 인테리어-간단등록</title>
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
            <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
        </head>
        <body style="height: 1300px;">
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
                                            <a class="nav-link" href="about.jsp" style="font-size:20px; font-family: 'S-CoreDream-2ExtraLight'">소개</a>
                                        </li>
                                        <li class="nav-item">
                                            <a class="nav-link" href="recommendation.jsp" style="font-size:20px; font-family: 'S-CoreDream-2ExtraLight'">추천</a>
                                        </li>
                                        <li class="nav-item">
                                            <a class="nav-link" href="Used_Homekit_Sale.jsp" style="font-size:20px; font-family: 'S-CoreDream-2ExtraLight'">중고키트 판매</a>
                                        </li>
                                        <li class="nav-item">
                                           <a class="nav-link" href="products.jsp" style="font-size:20px; font-family: 'S-CoreDream-2ExtraLight'">쇼핑몰</a>
                                        </li>
                                    </ul>
                                </div>
                                <%if(email == null){ %>
	                                <a href="login.jsp" style="color:#756595; font-size: 15px; font-family: 'S-CoreDream-2ExtraLight'">로그인</a>
	                                <a href="register.jsp" style="margin-left: 15px; color:#756595; font-size: 15px; font-family: 'S-CoreDream-2ExtraLight'">회원가입</a>
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
								style="margin-left: 5px; color:rgba(75, 75, 75, 0.89); font-size: 15px; font-family: 'S-CoreDream-2ExtraLight'">장바구니</a>
							<%} %>
                            </nav>
                        </div>
                    </div>
                </div>
            </div>
        </header>
    <!-- 수정: 상위메뉴 이름 지정 end -->
    <!-- Header part end-->
           
    
            <!-- Sidebar -->
            <div class="w3-sidebar w3-light-grey w3-bar-block"style="width: 250px;">
                <h3 class="w3-bar-item">상품관리</h3>
                <a href="#" class="w3-bar-item w3-button">상품분류관리 ▼</a>
                <a href="#" class="w3-bar-item w3-button">상품옵션관리 ▼</a>
                <!-- 메뉴바 생성 -->
                <script>
                    function slide(Id, interval, to)
                    {
                        var obj = document.getElementById(Id);
                        var H, step = 5;
                    
                        if (obj == null) return;
                        if (to == undefined) { // user clicking
                            if (obj._slideStart == true) return;
                            if (obj._expand == true) {
                                to = 0;
                                obj.style.overflow = "hidden";
                            } else {
                                slide.addId(Id);
                                for(var i=0; i < slide.objects.length; i++) {
                                    if (slide.objects[i].id != Id && slide.objects[i]._expand == true) {
                                        slide(slide.objects[i].id);
                                    }
                                }
                    
                                obj.style.height = "";
                                obj.style.overflow = "";
                                obj.style.display = "block";
                                to = obj.offsetHeight;
                                obj.style.overflow = "hidden";
                                obj.style.height = "1px";
                            }
                            obj._slideStart = true;
                        }
                       
                        step            = ((to > 0) ? 1:-1) * step;
                        interval        = ((interval==undefined)?1:interval);
                        obj.style.height = (H=((H=(isNaN(H=parseInt(obj.style.height))?0:H))+step<0)?0:H+step)+"px";
                       
                        if (H <= 0) {
                            obj.style.display = "none";
                            obj.style.overflow = "hidden";
                            obj._expand = false;
                            obj._slideStart = false;
                        } else if (to > 0 && H >= to) {
                            obj.style.display = "block";
                            obj.style.overflow = "visible";
                            obj.style.height = H + "px";
                            obj._expand = true;
                            obj._slideStart = false;
                        } else {
                            setTimeout("slide('"+Id+"' , "+interval+", "+to+");", interval);
                        }
                    }
                    slide.objects = new Array();
                    slide.addId = function(Id)
                    {
                        for (var i=0; i < slide.objects.length; i++) {
                            if (slide.objects[i].id == Id) return true;
                        }
                        slide.objects[slide.objects.length] = document.getElementById(Id);
                    }
                    </script>
                    <style>
                    BODY { font-size:13pt; }
                    .w3-bar-item w3-button {
                        background-color:#f1f1f1;
                        padding:3px 1px 1px 5px;
                    
                        width:150px;
                    }
                    .submenu {
                        width:150px;
                        padding-left:10px;
                        display:none;
                    }
                    </style>
                    <a href="#" class="w3-bar-item w3-button" onClick="slide('sub1');" style="padding-left: 15px;">상품등록 ▼</a>
                    <div id="sub1" class="submenu">
                        <a href="#" style="padding-left:30px;">간단 등록</a>
                        <div style="padding-left:30px;">상품 등록</div>
                        <div style="padding-left:30px;">세트상품 등록</div>
                        <div style="padding-left:30px;">엑셀 등록</div>
                    </div>
                <!-- 메뉴바 생성 -->
                <a href="#" class="w3-bar-item w3-button">상품관리 ▼</a>
                <a href="#" class="w3-bar-item w3-button">상품표시관리 ▼</a>
                <a href="#" class="w3-bar-item w3-button">판매분류관리 ▼</a>
                <a href="#" class="w3-bar-item w3-button">재고관리 ▼</a>
                <a href="#" class="w3-bar-item w3-button" style="margin-bottom:30px;">기획전 관리 ▼</a>
                <b style="margin-top:30px; margin-left: 18px; ">메뉴얼 검색</b> 
                <input type="text" placeholder="메뉴얼을 검색하세요." style="margin-top:10px; margin-left: 16px; width:220px;">
                <b style="margin-top:30px; margin-left: 18px;">즐겨찾는 메뉴 </b><button style="margin-top:30px;">설정</button>
            </div>
            <!-- Sidebar -->
    
    
            <br>
            <p style="text-align: right; margin-right:150px;">홈 > 상품관리 > 상품등록 > 간단등록</p>
            <h2 style="margin-left: 350px;">간단등록</h2><hr>
            <p style="margin-left: 350px;">쇼핑몰에 상품을 진열하는데 필요한 기본정보를 입력합니다.</p>
            <p style="margin-left: 350px;">상세한 상품정보 관리가 필요하시면, 상품등록으로 이동하세요.</p>
            <button onclick="registration()" style="margin-left:1300px; margin-bottom: 10px;">상품 등록하기</button>
            <script>
            function registration() {
            	alert("상품 등록이 완료되었습니다.");
            }
            </script>
            
            <!-- 상품등록 메뉴 테이블 -->
            <table border="2px" style="margin-left: 350px; float:left;">
                <tr>
                    <th width="300" style="text-align: center;">상품명</th>
                    <th width="800" height="70">
                        <input type="text" placeholder="예시) 홈키트명" style="margin-left:10px;">
                    </th>
                </tr>
                <tr>
                    <th width="300" style="text-align: center;">판매가</th>
                    <th width="800" height="50" ><input type="text" style="margin-left:10px;">원</th>
                </tr>
                <tr>
                    <th width="300" style="text-align: center;">상품옵션설정</th>
                    <th width="800" height="70" > 
                       <input type="radio" name="chk_info" value="옵션사용" style="margin-left:10px;">옵션사용
                       <input type="radio" name="chk_info" value="옵션미사용">옵션미사용
                       <p style="margin-left:10px; margin-top:10px;">상품옵션이란, 상품의 색상, 사이즈 등 선택값을 뜻합니다.</p>
                </th>
                </tr>
                <tr>
                    <th width="300" style="text-align: center;">상품이미지등록</th>
                    <th width="800" height="300">
                        <img src="https://e7.pngegg.com/pngimages/982/97/png-clipart-computer-icons-camera-iphone-graphy-camera-photography-camera-icon.png" alt="" style="height: 200px;width: 200px; margin-left:10px;">
                        <button style="margin-left:10px; margin-bottom: 30px; margin-top:30px;">사진 등록</button><br>
                    </th>
                </tr>
                <tr>
                    <th width="300" style="text-align: center;">상품요약설명</th>
                    <th width="800" height="150">
                        <input type="text" style="margin-left:10px; width: 600px;">
                        <p style="margin-left:10px; margin-top:30px;">등록하는 상품에 대한 설명을 짧게 요약하여 등록합니다.</p>
                    </th>
                </tr>
                <tr>
                    <th width="300" style="text-align: center;">상품상세설명</th>
                    <th width="800" height="150">
                        <textarea type="text" style="height: 300px; width: 600px; margin-left:10px;" 
                        placeholder="상품에 대한 상세한 설명을 적어주세요."> </textarea>
                    </th>
                </tr>
            </table>

           <!-- footer part start-->
        <footer class="footer-area" style="margin-top:1000px;"> 
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