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
	<!--//banner-->
	<!-- reg-form -->
	<div class="account">
		<div class="container">		
			<div class="account-left">
				<h1>new user ? <span> create an account </span></h1>
				<!-- Form -->
				<div class="registration_form">
					<form id="registration_form">
						<div>
							<label>
								<input placeholder="first name" type="text" tabindex="1">
							</label>
						</div>
						<div>
							<label>
								<input placeholder="last name" type="text" tabindex="2">
							</label>
						</div>
						<div>
							<label>
								<input placeholder="email address" type="email" tabindex="3">
							</label>
						</div>
						<div>
							<label>
								<input placeholder="Mobile" type="text" tabindex="3">
							</label>
						</div>					
							<div class="sky_form1">
								<ul>
									<li><label class="radio left"><input type="radio" name="radio" checked=""><i></i>Male</label></li>
									<li><label class="radio"><input type="radio" name="radio"><i></i>Female</label></li>
									<div class="clearfix"> </div>
								</ul>
							</div>					
						<div>
							<label>
								<input placeholder="password" type="password" tabindex="4">
							</label>
						</div>						
						<div>
							<label>
								<input placeholder="retype password" type="password" tabindex="4">
							</label>
						</div>	
						<div>
							<input type="submit" value="create an account" id="register-submit">
						</div>
						<div class="sky-form">
							<label class="checkbox"><input type="checkbox" name="checkbox" ><i>i agree to example.com &nbsp;<a class="terms" href="#"> terms of service</a></i> </label>
						</div>
					</form>
					<!-- /Form -->
				</div>
			</div>
			<div class="account-left">
				<h2>existing user</h2>
				<div class="registration_form">
					<!-- Form -->
					<form id="registration_form">
						<div>
							<label>
								<input placeholder="email" type="email" tabindex="3">
							</label>
						</div>
						<div>
							<label>
								<input placeholder="password" type="password" tabindex="4">
							</label>
						</div>						
						<div>
							<input type="submit" value="sign in" id="register-submit">
						</div>
						<div class="forget">
							<a href="#">forgot your password</a>
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