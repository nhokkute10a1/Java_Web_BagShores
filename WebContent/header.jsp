<%@page import="java.util.Map"%>
<%@page import="java.util.TreeMap"%>
<%@page import="Entities.Sanpham"%>
<%@page import="Entities.GioHang"%>
<%@page import="Dao.LoaiSanPham_Dao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Stylish - Trang Chủ</title>
<link rel="shortcut icon" href="images/logo.ico" type="image/x-icon" />
<!-- Custom Theme files -->
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
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
<link rel="stylesheet" href="css/flexslider.css" type="text/css"
	media="screen" />
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
<!-- body -->
<link href="css/bootstrap.min.css" rel="stylesheet">
<link href="css/font-awesome.min.css" rel="stylesheet">
<link href="css/prettyPhoto.css" rel="stylesheet">
<link href="css/price-range.css" rel="stylesheet">
<link href="css/animate.css" rel="stylesheet">
<link href="css/main.css" rel="stylesheet">
<link href="css/responsive.css" rel="stylesheet">
<script src="js/jquery.js"></script>
<script src="js/bootstrap.min.js"></script>
<script src="js/jquery.scrollUp.min.js"></script>
<script src="js/price-range.js"></script>
<script src="js/jquery.prettyPhoto.js"></script>
<script src="js/main.js"></script>
<!-- Details -->
<script src="js/imagezoom.js"></script>

</head>
<body>
	<%
		GioHang cart = (GioHang) session.getAttribute("cart");
		if (cart == null) {
			cart = new GioHang();
			session.setAttribute("cart", cart);
		}
		TreeMap<Sanpham, Integer> list = cart.getListSanPham();
		
		String err="";
		if(request.getAttribute("err")!=null)
		{
			err=(String)request.getAttribute("err");
		}
	%>
	<!--header-->
	<div class="header">
		<div class="container">
			<div class="header-left">
				<ul>
					<%
						if (session.getAttribute("taikhoan") != null) {
					%>
					<li><a style="color: blue;">Chào: <%=session.getAttribute("taikhoan")%></a></li>
					<li><a href="DangNhapServlet?command=dangxuat">ĐĂNG XUẤT</a></li>
					<%
						} else {
					%>
					<li><a href="account.jsp">ĐĂNG KÝ</a></li>
					<li class="login">
						<div id="loginContainer">
							<a href="account.jsp" id="loginButton"><span>ĐĂNG NHẬP</span></a>
							<div id="loginBox">
								<form id="loginForm" action="DangNhapServlet" method="post">
									<fieldset id="body">
									<p style="color: red;"><%=err%></p>
										<fieldset>
											<label for="taiKhoan">Tài Khoản</label> <input type="text"
												name="taikhoan" id="email">
										</fieldset>
										<fieldset>
											<label for="matKhau">Mật Khẩu</label> <input type="password"
												name="matkhau" id="password">
										</fieldset>
										<input type="submit" id="login" value="ĐĂNG NHẬP"> <label
											for="checkbox"><input type="checkbox" id="checkbox">
											<i>Ghi nhớ tài khoản</i></label>
									</fieldset>
									<span><a href="#">Forgot your password?</a></span>
								</form>
							</div>
						</div>
					</li>
					<%
						}
					%>
				</ul>
			</div>
			<div class="logo">
				<a href="index.html"> <img src="images/logo.png" alt="" /></a>
			</div>
			<div class="top-nav">
				<span class="menu"><img src="images/menu.png" alt="" /></span>
				<ul>
					<li><a class="active" href="Index">Trang Chủ</a></li>
					<li><a href="about.html">About</a></li>
					<li><a href="gallery.html">Gallery</a></li>
					<li><a href="news.html">News</a></li>
					<li><a href="codes.html">Codes</a></li>
					<li><a href="contact.jsp">Liên Hệ</a></li>

				</ul>
				<!-- script-for-menu -->
				<script>
					$("span.menu").click(function() {
						$(".top-nav ul").slideToggle("slow", function() {
						});
					});
				</script>
				<!-- script-for-menu -->
			</div>
			<div class="gio-hang">
				<a href="cart.jsp" class="cart-in"><span
					class="glyphicon glyphicon-shopping-cart"></span>Giỏ Hàng</a><span>(<%=cart.countItem()%>)
				</span>

			</div>
			<div class="search-box">
				<div id="sb-search" class="sb-search">
					<form>
						<input class="sb-search-input" placeholder="search term..."
							type="search" name="search" id="search"> <input
							class="sb-search-submit" type="submit" value=""> <span
							class="sb-icon-search"> </span>
					</form>
				</div>
			</div>
			<div class="clearfix"></div>
			<!-- search-scripts -->
			<script src="js/classie.js"></script>
			<script src="js/uisearch.js"></script>
			<script>
				new UISearch(document.getElementById('sb-search'));
			</script>
			<!-- //search-scripts -->

		</div>
	</div>
	<!--//header-->
</body>
</html>