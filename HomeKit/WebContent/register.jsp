<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<% request.setCharacterEncoding("utf-8"); %>
<!DOCTYPE html>
<html lang="en">
<head>

  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <meta name="description" content="">
  <meta name="author" content="">

  <title>방구석 인테리어 - 회원가입</title>
    <link rel="icon" href="img/favicon.png">

  <!-- Custom fonts for this template-->
  <link href="vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
  <link href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i" rel="stylesheet">

  <!-- Custom styles for this template-->
  <link href="css/sb-admin-2.min.css" rel="stylesheet">
  
  

</head>

<body class="bg-gradient-primary">

  <div class="container">

    <div class="card o-hidden border-0 shadow-lg my-5">
      <div class="card-body p-0">
        <!-- Nested Row within Card Body -->
        <div class="row">
          
          <div class="col-lg-7" style="margin-left:40px">
            <div class="p-5">
              <div class="text-center" style="width:400px">
                <h1 class="h4 text-gray-900 mb-4">회원가입</h1>
              </div>
              <form class="user" action="JoinService" method="post" style="width:400px">
                <div class="form-group row">
                  <div class="col-sm-6 mb-3 mb-sm-0">
                    <input type="text" name= "name" class="form-control form-control-user" id="exampleFirstName" placeholder="Name">
                  </div>
                  <div class="col-sm-6">
                    <input type="text" name= "address" class="form-control form-control-user" id="exampleLastName" placeholder="Address">
                  </div>
                </div>
                <div class="form-group">
                	<input type="email" id="txt1" onblur="ajaxCall()" name= "email" class="form-control form-control-user" id="exampleInputEmail" placeholder="Email">
                	<p id="p1"></p>
                </div>
                
                <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
				<script type="text/javascript">
				   function ajaxCall() {
					  var txt1 = document.getElementById("txt1");
					  
				      $.ajax({
				         type :"get" ,
				         url : "AjaxCall",
				         data : {"email": txt1.value},
				         dataType : "text",
				         success : function(data) {
				        	 
				        	var p1 = document.getElementById("p1");
				        	
				        	if(data == "true"){
				        		p1.style.cssText ="color : red;"
				        		p1.innerHTML ="사용할 수 없는 아이디입니다."
				        	}else{
				        		p1.style.cssText ="color : blue;"
				        		p1.innerHTML ="사용할 수 있는 아이디입니다."
				        	}
				        	 
				         },
				         error : function() {
				
				         }
				      });
				      
				   }
				
				</script>
                
                <div class="form-group row">
                  <div class="col-sm-6 mb-3 mb-sm-0">
                    <input type="password" name= "pw" class="form-control form-control-user" id="exampleInputPassword" placeholder="Password">
                  </div>
                  <div class="col-sm-6">
                    <input type=text" name= "tel" class="form-control form-control-user" id="exampleRepeatPassword" placeholder="Tel">
                  </div>
                </div>
                <div class="form-group">
                      <div class="custom-control custom-checkbox small">
                        <input type="checkbox" class="custom-control-input" id="customCheck" required>
                        <label class="custom-control-label" for="customCheck">이용약관에 동의합니다.</label>
                      </div>
                </div>
                <input type="submit" value ="가입"  class="btn btn-primary btn-user btn-block" style="background-color: rgb(199, 199, 199); border-color: rgb(199, 199, 199)">
              </form>
              <hr style="width: 400px">
              <div class="text-center" style="width: 400px">
                <a class="small" href="javascript:void(0)">비밀번호를 잊으셨나요?</a>
              </div>
              <div class="text-center" style="width: 400px">
                <a class="small" href="login.jsp">이미 계정이 있습니다. 로그인</a>
              </div>
              <div class="text-center" style="width: 400px">
                    <a class="small" href="main.jsp">메인 페이지로 돌아가기</a>
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
				<div class="copyright_part_text text-center">
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
