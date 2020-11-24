<%@page import="java.util.ArrayList"%>
<%@page import="com.DAO.MemberDAO"%>
<%@page import="com.DTO.MemberDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>

  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <meta name="description" content="">
  <meta name="author" content="">

 <title>방구석 인테리어 - 회원정보수정</title>
    <link rel="icon" href="img/favicon.png">

  <!-- Custom fonts for this template-->
  <link href="vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
  <link href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i" rel="stylesheet">

  <!-- Custom styles for this template-->
  <link href="css/sb-admin-2.min.css" rel="stylesheet">
  
  

</head>

<body class="bg-gradient-primary">
	<%
		String email = (String)session.getAttribute("email");
		MemberDAO dao = new MemberDAO();
		MemberDTO member = dao.getUserInfo(email);
	%>

  <div class="container">

    <!-- Outer Row -->
    <div class="row justify-content-center">

      <div class="col-xl-10 col-lg-12 col-md-9">

        <div class="card o-hidden border-0 shadow-lg my-5">
          <div class="card-body p-0">
            <!-- Nested Row within Card Body -->
            <div class="row">
              <div class="col-lg-6 d-none d-lg-block bg-password-image"></div>
              <div class="col-lg-6">
                <div class="p-5">
                  <div class="text-center">
                    <h1 class="h4 text-gray-900 mb-2">회원정보수정</h1>
                    <p class="mb-4"><%=email %><br>수정할 정보를 입력하세요.</p>
                  </div>
                  <form class="user" action="UpdateService" method="post">
                    <div class="form-group">
                      <input type="text" name="name" class="form-control form-control-user" id="exampleInputEmail" aria-describedby="emailHelp" placeholder="Name : <%=member.getName() %>">
                    </div>
                    <div class="form-group">
                      <input type="text" name="address" class="form-control form-control-user" id="exampleInputEmail" aria-describedby="emailHelp" placeholder="Address : <%=member.getAddress() %>">
                    </div>
                    <div class="form-group">
                      <input type="password" name="pw" class="form-control form-control-user" id="exampleInputEmail" aria-describedby="emailHelp" placeholder="PassWord : <%=member.getPw() %>">
                    </div>
                    <div class="form-group">
                      <input type="text" name ="tel" class="form-control form-control-user" id="exampleInputEmail" aria-describedby="emailHelp" placeholder="Tel : <%=member.getTel() %>">
                    </div>
                    <input type="submit" value="수정" class="btn btn-primary btn-user btn-block" style="background-color: #B2A59F; border-color: #B2A59F">
                    
                  </form>
                  <hr>
                  <div class="text-center">
                    <a class="small" href="main.jsp">메인 페이지로 돌아가기</a>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>

      </div>

    </div>

  </div>
<!-- footer part start-->
	<footer class="footer-area">
		<div class="row justify-content-center">
			<div class="col-lg-12">
				<div class="copyright_part_text text-center" style="margin-top: 180px;">
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
  <!-- Bootstrap core JavaScript-->
  <script src="vendor/jquery/jquery.min.js"></script>
  <script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

  <!-- Core plugin JavaScript-->
  <script src="vendor/jquery-easing/jquery.easing.min.js"></script>

  <!-- Custom scripts for all pages-->
  <script src="js/sb-admin-2.min.js"></script>

</body>

</html>
