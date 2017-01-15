<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Stylish - Liên hệ</title>
<link rel="shortcut icon" href="images/logo.ico" type="image/x-icon" />

<meta name="keywords"
	content="Stylish Responsive web template, Bootstrap Web Templates, Flat Web Templates, Andriod Compatible web template, 
	Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyErricsson, Motorola web design" />
<script type="application/x-javascript">
	
	
	 addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } 


</script>
<!-- //Custom Theme files -->
<link href="css/bootstrap.css" type="text/css" rel="stylesheet"
	media="all">
<link href="css/style.css" type="text/css" rel="stylesheet" media="all">
<!-- js -->
<script src="js/jquery-1.11.1.min.js"></script>
<!-- //js -->
<!-- start-smoth-scrolling-->
<script type="text/javascript" src="js/move-top.js"></script>
<script type="text/javascript" src="js/easing.js"></script>
<script type="text/javascript">
	jQuery(document).ready(function($) {
		$(".scroll").click(function(event) {
			event.preventDefault();
			$('html,body').animate({
				scrollTop : $(this.hash).offset().top
			}, 1000);
		});
	});
</script>
<!--//end-smoth-scrolling-->
<!--pop-up-->
<script src="js/menu_jquery.js"></script>
<!--//pop-up-->
</head>
<body>
	<!--header-->
	<jsp:include page="header.jsp"></jsp:include>
	<!--//header-->

	<!--contact-->
	<div class="contact">
		<div class="container">
			<div class="contact-grids">
				<div class="col-md-8 map">
					<h1 class="hdng">Làm sao để tìm chúng tôi</h1>
					<div id="map"></div>
					<iframe
						src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3919.589152738793!2d106.64215961439925!3d10.766113092328542!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x31752e96dca0348d%3A0x3693b4a1a0000fe3!2zNzMgw5RuZyDDjWNoIEtoacOqbSwgUXXhuq1uIDExLCBI4buTIENow60gTWluaCwgVmnhu4d0IE5hbQ!5e0!3m2!1svi!2s!4v1484406359027"
						width="600" height="450" frameborder="0" style="border: 0"
						allowfullscreen></iframe>
					<!-- <iframe
						src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d158858.182370726!2d-0.10159865000000001!3d51.52864165!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x47d8a00baf21de75%3A0x52963a5addd52a99!2sLondon%2C+UK!5e0!3m2!1sen!2sin!4v1433744055746"></iframe> -->
				</div>
				<div class="col-md-4 address">
					<h2>Thông tin liên lạc</h2>
					<label> <label><i class="fa fa-map-marker"
							aria-hidden="true"></i> Địa chỉ:</label><span> 73 Ông Ích
							Khiêm,Phường 10,Quận 11,TP HCM</span>
					</label> <label> <label><i class="fa fa-phone-square"
							aria-hidden="true"></i> Số điện thoại:</label><span> 0933.733.504</span>
					</label> <label> <label><i class="fa fa-envelope"
							aria-hidden="true"></i> Mail:</label><span>
							blackangelofdeath944@gmail.com</span>
					</label> <label> <label><i class="fa fa-map-marker"
							aria-hidden="true"></i></i> Số tài khoản ngân hàng:</label><span>7708324312</span>
					</label> <label> <label><i class="fa fa-university"
							aria-hidden="true"></i> Chi nhánh ngân hàng:</label><span>Agribank
							Kiên Lương</span>
					</label>
				</div>
				<div class="clearfix"></div>
			</div>
			<div class=" contact-form">
				<h3 class="title">Mẫu liên hệ</h3>
				<form action="SendMailServlet" method="post">
					<div class="col-md-6 form-grids">
						<input type="text" value="Họ và Tên" name="name" onfocus="this.value = '';"
							onblur="if (this.value == '') {this.value = 'Name';}" required="">
						<input type="text" value="Email" name="email" onfocus="this.value = '';"
							onblur="if (this.value == '') {this.value = 'Email';}"
							required=""> 
						<input type="text" value="Vấn đề" name="subject"
							onfocus="this.value = '';"
							onblur="if (this.value == '') {this.value = 'subject';}"
							required="">
					</div>
					<div class="col-md-6 form-grids">
						<textarea onfocus="this.value = '';" name="text"
							onblur="if (this.value == '') {this.value = 'Message...';}"
							required="">Nội Dung...</textarea>
						<input type="submit" value="GỬI">
					</div>
					<div class="clearfix"></div>
				</form>
			</div>
		</div>
	</div>
	<!--//contact-->

	<!--footer-->
	<!--smooth-scrolling-of-move-up-->
	<jsp:include page="footer.jsp"></jsp:include>

	<!--smooth-scrolling-of-move-up-->
	<!-- Thanh cuộn -->
	<!--//footer-->

</body>
</html>