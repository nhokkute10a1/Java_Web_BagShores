<%@page import="java.util.Map"%>
<%@page import="java.util.ArrayList"%>
<%@page import="Entities.Sanpham"%>
<%@page import="java.util.TreeMap"%>
<%@page import="Entities.GioHang"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Stylish - Giỏ Hàng</title>
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

<script src="js/myJavaScrip.js"></script>
</head>
<body>
	<%
		GioHang cart = (GioHang) session.getAttribute("cart");
		if (cart == null) {
			cart = new GioHang();
			session.setAttribute("cart", cart);
		}
		TreeMap<Sanpham, Integer> list = cart.getListSanPham();
		//TreeMap<SanPham, Integer> list = cart.getList();
		//NumberFormat nf = NumberFormat.getInstance();
		//nf.setMinimumIntegerDigits(0);
		ArrayList<Long> sum = new ArrayList();
		//ArrayList<Double> sum = new ArrayList();

		Long abc;
	%>

	<jsp:include page="header.jsp"></jsp:include>
	<section id="cart_items">
	<div class="container">
		<div class="breadcrumbs">
			<ol class="breadcrumb">
				<li><a href="Index">Trang Chủ</a></li>
				<li class="active">Shopping Cart</li>
			</ol>
		</div>
		<div class="table-responsive cart_info">
			<table class="table table-condensed">
				<thead>
					<tr class="cart_menu">
						<td class="image">Mục</td>
						<td class="description"></td>
						<td class="price">Giá bán</td>
						<td class="quantity">Số lượng</td>
						<td class="total">Thành Tiền</td>
						<td></td>
					</tr>
				</thead>
				<tbody>
					<%
						for (Map.Entry<Sanpham, Integer> ds : list.entrySet()) {
					%>
					<tr>
						<td class="cart_product"><a href=""><img
								src="<%=ds.getKey().getAnhBia()%>" alt="" width="100px"
								style="margin-right: 26px"></a></td>
						<td class="cart_description">
							<h4>
								<a href=""><%=ds.getKey().getTenSanPham()%></a>
							</h4>
							<p>
								Mã sản phẩm :
								<%=ds.getKey().getMaSanPham()%></p>
						</td>
						<td class="cart_price">
							<p><%=ds.getKey().getGiaBan()%>
								VNĐ
							</p>
						</td>
						<td class="cart_quantity">
							<div class="cart_quantity_button">
								 <a class="cart_quantity_up"
									href="GioHangController?command=plus&maSanPham=<%=ds.getKey().getMaSanPham()%>
										&maGioHang=<%=System.currentTimeMillis()%>">
									+ </a> <input class="cart_quantity_input" type="text"
									name="quantity" value="<%=ds.getValue()%>" autocomplete="off"
									size="2" disabled=""> <a class="cart_quantity_down"
									href="GioHangController?command=sub&maSanPham=<%=ds.getKey().getMaSanPham()%>&maGioHang=<%=System.currentTimeMillis()%>">
									- </a> 
									 <!-- <input id="Soluong" type="number"
									name="soluong" value="1" min="1" max="100" class="form-control"
									style="width: 75px" /> <input id="product_id_for_wishlist"
									name="id" type="hidden" value="92969"> 
									<input type="number" id="myNumber" value="1">
									<p id="demo"></p>-->
							</div>
						</td>
						<td class="cart_total">
							<p class="cart_total_price"><%=ds.getValue() * ds.getKey().getGiaBan()%>
								VNĐ
							</p>
						</td>
						<td class="cart_delete"><a class="cart_quantity_delete"
							href="GioHangController?command=remove&maSanPham=<%=ds.getKey().getMaSanPham()%>&maGioHang=<%=System.currentTimeMillis()%>">
								<i class="fa fa-times"></i>
						</a></td>
						
					</tr>

					<%
						//abc = ds.getValue() * ds.getKey().getDon_gia();
							abc = ds.getValue() * ds.getKey().getGiaBan();
					%>
					<%
						sum.add(abc);
					%>
					<%
						}
					%>

				</tbody>
			</table>
			<table class="table table-bordered">
				<tbody>
					<tr>
						<td class="col-xs-6" style="text-align: right;">
							<p>Thành tiền:</p>
						</td>
						<td class="col-xs-6" style="text-align: right;">
							<p class="cart_total_price"><%=cart.thanhTien()%>
								VNĐ
							</p>
						</td>
					</tr>
					<tr>
						<td colspan="2"><a class="btn btn-success" href="Index">Tiếp Tục Mua
								Hàng</a> <a class="btn btn-danger "
							href="GioHangController?command=cancel">Hủy Đơn Hàng</a></td>
						
					</tr>
				</tbody>
			</table>
		</div>
	</div>
	</section>
	<!--/#cart_items-->


	<jsp:include page="footer.jsp"></jsp:include>

	<!--smooth-scrolling-of-move-up-->
	<!-- Thanh cuộn -->


	<!-- Bootstrap core JavaScript
    ================================================== -->
	<!-- Placed at the end of the document so the pages load faster -->
	<script src="js/bootstrap.js"></script>
</body>
</html>