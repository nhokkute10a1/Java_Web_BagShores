<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>Stylish - Account</title>
<link rel="shortcut icon" href="images/logo.ico" type="image/x-icon"/>
<!-- Custom Theme files -->
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="Stylish Responsive web template, Bootstrap Web Templates, Flat Web Templates, Andriod Compatible web template, 
	Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyErricsson, Motorola web design" />
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
<!-- //Custom Theme files -->
<link href="css/bootstrap.css" type="text/css" rel="stylesheet" media="all">
<link href="css/style.css" type="text/css" rel="stylesheet" media="all">
<!-- js -->
<script src="js/jquery-1.11.1.min.js"></script> 
<!-- //js -->	
<!-- start-smoth-scrolling-->
<script type="text/javascript" src="js/move-top.js"></script>
<script type="text/javascript" src="js/easing.js"></script>	
<script type="text/javascript">
		jQuery(document).ready(function($) {
			$(".scroll").click(function(event){		
				event.preventDefault();
				$('html,body').animate({scrollTop:$(this.hash).offset().top},1000);
			});
		});
</script>
<!--//end-smoth-scrolling-->
<!--pop-up-->
<script src="js/menu_jquery.js"></script>
<!--//pop-up-->
</head>
<body>
	<jsp:include page="header.jsp"></jsp:include>
	<div class="banner1 about-bnr">
	</div>
	<%
		String err="";
		if(request.getAttribute("err")!=null)
		{
			err=(String)request.getAttribute("err");
		}
	%>
	<!--//banner-->
	<!-- reg-form -->
	<div class="account">
		<div class="container">		
			<div class="account-left">
				<h1>Người Dùng Mới? <span> Tạo Tài Khoản </span></h1>
				<!-- Form -->
				<div class="registration_form">
					<form id="registration_form" action="DangKyController" method="post">
						<div>
							<label>
								Họ khách hàng:
							</label>
							<input placeholder="Họ Khách Hàng" name="hoKhachHang" type="text" tabindex="1" validate-on="blur" required required-message="Vui lòng nhập họ">
							<%-- <p>${hoKH}</p> --%>
						</div>
						<div>
							<label>
								Tên khách hàng:
							</label>
							<input placeholder="Tên Khách Hàng" name="tenKhachHang" type="text" tabindex="2" validate-on="blur" required="">
						</div>
						<div>
							<label>Ngày Sinh:</label>	
							<input placeholder="Ngày Sinh" name="ngaysinh" type="date" tabindex="3" required required-message="'Vui lòng nhập ngày sinh !!!!'">
						</div>
						<div>
							<label>
								Tài khoản:
							</label>
							<br>
							<input placeholder="Tài khoản" name="taiKhoan" type="text" tabindex="4" validate-on="blur" required="">
							<p>${taikhoanerr}</p>
						</div>
						<div>
							<label>
								Mật khẩu:
							</label>
								<input placeholder="Mật Khẩu" name="matKhau" type="password" tabindex="5" validate-on="blur" required="">
							<p>${matkhauerr}</p>
						</div>						
						<div>
							<label>
								Mật khẩu nhập lại:
							</label>
								<input placeholder="Mật Khẩu Nhập Lại" name="matkhaunhaplai"  type="password" tabindex="6" validate-on="blur" required="">	
								<p>${matkhaunhaplaierr}</p>					
						</div>	
						<div>
							<label>
								Email:
							</label>
							<input placeholder="Địa Chỉ Mail" name="email" type="email" tabindex="7" validate-on="blur" required="">
							<p>${emailerr }</p>
						</div>
						<div>
							<label>
								Số điện thoại:
							</label>
							<input placeholder="Số Điện Thoại" name="soDienThoai" type="text" tabindex="8" validate-on="blur" required="">
						</div>		
						<div>
							<label>
								Địa chỉ:
							</label>
							<input placeholder="Địa chỉ" name="diaChi" type="text" tabindex="9" validate-on="blur" required="">
						</div>				
										
						
						<div>
							<input type="submit" value="ĐĂNG KÝ" id="register-submit">
						</div>
						<div class="sky-form">
							<label class="checkbox"><input type="checkbox" name="checkbox" ><i>Tôi đồng ý với các điều khoản trên &nbsp;<a class="terms" href="#"> terms of service</a></i> </label>
						</div>
					</form>
					<!-- /Form -->
				</div>
			</div>
			<div class="account-left">
				<h2>Đăng Nhập </h2>
				<div class="registration_form">
					<!-- Form -->
					<form id="registration_form" action="DangNhapServlet" method="post">
						<p style="color: red;"><%=err%></p>
						<div>
							<label>
								Tên đăng nhập:
							</label>
							<br>
							<input placeholder="Tên Đăng Nhập" type="text" name="taikhoan" tabindex="3">
						</div>
						<div>
							<label>
								Mật khẩu:
							</label>
							<input placeholder="Mật Khẩu" type="password" name="matkhau" tabindex="4">
						</div>						
						<div>
							<input type="submit" value="đăng nhập" id="register-submit">
							
						</div>
						<div class="forget">
							<a href="#">Quên mật khẩu</a>
						</div>
					</form>
					<!-- /Form -->
				</div>
			</div>
			<div class="clearfix"> </div>
		</div>
	</div>
	<!--footer-->
	<jsp:include page="footer.jsp"></jsp:include>
	
	<!--smooth-scrolling-of-move-up-->
	<!-- Thanh cuộn -->
	
	
	<!-- Bootstrap core JavaScript
    ================================================== -->
    <!-- Placed at the end of the document so the pages load faster -->
    <script src="js/bootstrap.js"></script>
</body>
</html>