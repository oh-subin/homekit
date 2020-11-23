<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.util.ArrayList"%>
<%@ page import="com.DAO.RecommendationDAO"%>
<%@ page import="com.DTO.RecommendationDTO"%>

<script src="js/jquery-1.12.1.min.js"></script>
<!doctype html>
<html lang="en">

<head>

<!-- Required meta tags -->
<meta charset="UTF-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<title>방구석 인테리어-재추전</title>
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
 <!-- 
 <script type="text/javascript">
		$(document).ready(function()

		{

			$("#select").click(function()

			{

				var formData = $("#email").value();

				$.ajax({
					type : "POST",
					//url : "http://192.168.50.26:5000/secondrec",//호남
					url : "http://192.168.50.26:5000/secondrec",//집
					cache : false,
					data : formData,
					success : onSuccess,
					error : onError
				});
				
			});
		});
		function onSuccess(json, status) {
			alert($.trim(json));
		}
		function onError(data, status) {
			alert("error");
		}
	</script> 
	-->

	<%
	String get_email = (String) session.getAttribute("email");

	String email = "";

	if (get_email != null) {
		email = get_email.substring(0, get_email.lastIndexOf("@"));
		System.out.println("************");
		System.out.println(email);
		System.out.println("************");
	} else {
	}

	String rec_imgurl = request.getParameter("rec_imgurl");
	%>
	<script>
		function loadtag() {
			localStorage.getItem("select_space");
			localStorage.getItem("select_size");
			localStorage.getItem("select_familyShape");
		}
	</script>
	<!--::header part start::-->
	<header class="main_menu">
		<div class="main_menu_iner">
			<div class="container">
				<div class="row align-items-center ">
					<div class="col-lg-12">
						<nav
							class="navbar navbar-expand-lg navbar-light justify-content-between">
							<a class="navbar-brand" href="main.jsp"> <img
								src="img/homepage/Logo3.JPG" alt="logo" style="width: 205px;">
							</a>
							<button class="navbar-toggler" type="button"
								data-toggle="collapse" data-target="#navbarSupportedContent"
								aria-controls="navbarSupportedContent" aria-expanded="false"
								aria-label="Toggle navigation">
								<span class="navbar-toggler-icon"></span>
							</button>
							<!-- 수정: 상위메뉴 이름 지정 begin -->
							<div
								class="collapse navbar-collapse main-menu-item justify-content-center"
								id="navbarSupportedContent">
								<ul class="navbar-nav">
									<li class="nav-item"><a class="nav-link" href="about.jsp"
										style="font-size: 20px">소개</a></li>
									<li class="nav-item"><a class="nav-link"
										href="recommendation.jsp" style="font-size: 20px">추천</a></li>
									<li class="nav-item"><a class="nav-link"
										href="Used_Homekit_Sale.jsp" style="font-size: 20px">중고키트
											판매</a></li>
									<li class="nav-item"><a class="nav-link"
										href="products.jsp" style="font-size: 20px">쇼핑몰</a></li>
								</ul>
							</div>
							<%
								if (get_email == null) {
							%>
							<a href="login.jsp" style="color: #756595; font-size: 15px;">로그인</a>
							<a href="register.jsp"
								style="margin-left: 15px; color: #756595; font-size: 15px;">회원가입</a>
							<%
								} else {
							%>
							<div class="nav-item dropdown">
								<a class="nav-link dropdown-toggle" id="navbarDropdown"
									role="button" data-toggle="dropdown" aria-haspopup="true"
									aria-expanded="false"><%=get_email%></a>
								<div class="dropdown-menu" aria-labelledby="navbarDropdown">
									<%
										if (get_email.equals("admin@admin")) { //관리자가 로그인하면
									%>
									<a class="dropdown-item" href="product_registration.jsp">상품등록</a>
									<a class="dropdown-item" href="LogoutService">로그아웃</a>
									<%
										} else {
									%>
									<a class="dropdown-item" href="update.jsp">정보수정</a> <a
										class="dropdown-item" href="LogoutService">로그아웃</a> <a
										class="dropdown-item" href="delete.jsp">회원탈퇴</a>
									<%
										}
									%>
								</div>
							</div>
							<a href="basket.jsp"
								style="margin-left: 5px; color: #756595; font-size: 15px;">장바구니</a>
							<%
								}
							%>
						</nav>
					</div>
				</div>
			</div>
		</div>
	</header>
	<!-- 수정: 상위메뉴 이름 지정 end -->
	<!-- Header part end-->

	<!--::industries start::-->
	<section class="hotel_list section_padding" style="margin-top: 100px">
		<form action="SecondRecommendation" method="post" id="recom2">
			<div class="container" style="margin-left: 0px; margin-right: 0px;">
				<div class="row justify-content-center" style="margin-right: 340px;">
					<div class="col-xl-6">
						<div class="section_tittle text-center">
							<h2>2. 평점 매기기</h2>
							<br>
							<p
								style="color: #756595; font-size: 20px; background-color: #f2f0f594; margin-left: 40px; width: 1100px; text-align: left;">사진을
								클릭하여 평점을 1~5까지 입력해주세요.</p>
						</div>
					</div>
				</div>
				<div class="row gallery-item" style="margin-left: 350.; margin-left: 250px; width: 1200px;">
		

               <script>
              
               $(document).ready(function(){
                             
                  let rec_space = sessionStorage.getItem("select_space");
                  let rec_size = sessionStorage.getItem("select_size");
                  let rec_familyShape = sessionStorage.getItem("select_familyShape");
                 
                  let rec_obj = {
                	space: rec_space,
                	size: rec_size,
                	familyShape: rec_familyShape
                  }
                  
                  $.ajax({
                	  url:'FirstRecommendation2',
                	  data:rec_obj,
                	  dataType:'json',
                	  success:function(jsonArr){
                		  console.log(jsonArr);
                		  
                		  let html = '';
                		  
                		  for(let i=0; i<jsonArr.length; i++){
                			let title = jsonArr[i].rec_title;
                			let img_path = jsonArr[i].rec_img;
                			let style= jsonArr[i].rec_style;
                			html += rec_productList(i+1, title, img_path, style);
                    		  }

                		  $('div.row.gallery-item').html(html);
                	  }
                  })
              
                 
                  
                  
                  //재추천 상품 리스트
                  function rec_productList(index, title, img_path, style){
                	  console.log(index, img_path, style);
                	  
                	  let html='<div class="col-md-6" style="float: right;">';
                	  html += '<a href='+img_path+' class="img-pop-up">';
                	  html += '<div class="single-gallery-image" style="background: url('+img_path+'); width: 400px; height: 300px;"></div>';
                	  html += '</a>';
                	  html += '<div class="switch-wrap d-flex justify-content-between">';
                	  html += '<div class="ratingVal'+index+'">';
                	  html += '<input type="hidden" id="email" name="email" value="<%=email%>">';
                	  html += '<label><input type="radio" name="rating'+index+'" value="1">1</label>';
                	  html += '<label><input type="radio" name="rating'+index+'" value="2">2</label>';
                	  html += '<label><input type="radio" name="rating'+index+'" value="3">3</label>';
                	  html += '<label><input type="radio" name="rating'+index+'" value="4">4</label>';
                	  html += '<label><input type="radio" name="rating'+index+'" value="5">5</label>';
                	  html += '<input type="hidden" value="'+style+'" name="style'+index+'" />';
                	  html += '<p>'+title+'</p>';
                	//html += '<p>'+style+'</p>';
                	  html += '</div></div></div>';
                            	  
                	  return html;
                  }
                	 /*  for(let i=0; i<result.length; i++){
                          let style= result[i].rec_style;
                          let check_count = document.getElementsByName("rating").length;
                          
                          for (let j=0; j<check_count; j++) {
                             if (document.getElementsByName("rating")[j].checked == true) {
                                  let ratings = document.getElementsByName("rating")[j].value
                                  
                            
                                                   }
                             
                       }
                          consol.log(style+"의 평점은 : "+ratings);
                  } */
           
               	});
               
               
               </script>
 

	<%-- 				<div class="col-md-6" style="float: right;">
						<img src="<%= rec_imgurl %>"></img>	
						<a href=<%=imgList.get(i).getRec_img()%> class="img-pop-up">
							<div class="single-gallery-image"
								style="background: url(<%=imgList.get(i).getRec_img()%>); width: 400px; height: 300px;"></div>
						</a>
						<div class="switch-wrap d-flex justify-content-between">
							<div class="ratingVal<%=i + 1%>">
								<input type="hidden" name="email" value=<%=email %>> 
								<% System.out.print(email);%>
								<label><input type="radio" name="rating<%=i + 1%>" value="1">1</label> 
								<label><input type="radio" name="rating<%=i + 1%>" value="2">2</label>
								 <label><input type="radio" name="rating<%=i + 1%>" value="3">3</label> 
								 <label><input type="radio" name="rating<%=i + 1%>" value="4">4</label> 
								 <label><input type="radio" name="rating<%=i + 1%>" value="5">5</label> 
								 <input type="hidden" value=<%=imgList.get(i).getRec_style()%> name="style<%=i + 1%>" />
								 <p><%=imgList.get(i).getRec_title()%></p>
								<p><%=imgList.get(i).getRec_style()%></p>
							</div>
						</div>
					</div> --%>
		

				</div>
			</div>
			<input type="submit" id="select" value="2차 추천" class="btn_1"
				style="margin-left: 715px; margin-top: 70px;
						background-color:#5a4b7657; border-color:#f2f0f594; color:white">
		</form>
		<script type="text/javascript">

         $(document).ready(function() 
      
         {
      
            $("#select").click(function()
      
            {
             var formData = $("#recom2").serialize();
      
               $.ajax({
                   type : "POST",
                   url : "http://192.168.50.26:5000/secondrec",//호남
                   //      url : "http://192.168.50.26:5000/firstrec",//집
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
	</section>
	<br>
	<br>
	<div
		style="background: url(img/homepage/text_img3.JPG); width: 1200px; height: 150px; margin-left: 200px; background-repeat: no-repeat;"></div>
	<br>
	<br>

	






	<!-- footer part start-->
	<footer class="footer-area">


		<div class="row justify-content-center">
			<div class="col-lg-12">
				<div class="copyright_part_text text-center"
					style="margin-top: 0px;">
					<p class="footer-text m-0">
						<!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
						Copyright &copy;
						<script>
							document.write(new Date().getFullYear());
						</script>
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