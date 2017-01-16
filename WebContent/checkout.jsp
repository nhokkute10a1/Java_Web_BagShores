<%@page import="Entities.Khachhang"%>
<%@page import="java.util.Map"%>
<%@page import="Entities.Sanpham"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.TreeMap"%>
<%@page import="Entities.GioHang"%>
<%@ page language="java" contentType="text/html;charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Xác nhận thanh toán</title>

<link rel="shortcut icon" href="images/logo.ico" type="image/x-icon" />
</head>
<body>
	<%
		if (session.getAttribute("taikhoan") == null) {
			response.sendRedirect("/Web_Bag_Demo/account.jsp");
		} else {
			GioHang cart = (GioHang) session.getAttribute("cart");
			if (cart == null) {
				cart = new GioHang();
				session.setAttribute("cart", cart);
			}
			TreeMap<Sanpham, Integer> list = cart.getListSanPham();
			//TreeMap<SanPham, Integer> list = cart.getList();
			//NumberFormat nf = NumberFormat.getInstance();
			//nf.setMinimumIntegerDigits(0);
			//ArrayList<Long> sum = new ArrayList();
			//ArrayList<Double> sum = new ArrayList();
			//Long abc;
			Khachhang kh = (Khachhang) session.getAttribute("kh");
			session.setAttribute("kh", kh);
	%>

	<!--header-->
	<jsp:include page="header.jsp"></jsp:include>
	<!--header-->

	<section id="cart_items" style="margin-top: 70px;">
	<div class="container">
		<div class="breadcrumbs">
			<ol class="breadcrumb">
				<li><a href="#">Home</a></li>
				<li class="active">Check out</li>
			</ol>
		</div>
		<!--/breadcrums-->

		<div class="shopper-informations">
			<div class="row">
				<h2 style="color: blue; text-align: center;">THÔNG TIN GIAO
					HÀNG</h2>
				<form class="form-horizontal" role="form" action="CheckoutServlet"
					method="post">
					<table class="table table-bordered">
						<tr>
							<td class="field-label col-xs-3 active"><label
								class="control-label">Mã khách hàng:</label></td>
							<td class="col-xs-6">
								<p>${khachhang.maKhachHang}</p>
							</td>
						</tr>

						<tr>
							<td class="field-label col-xs-3 active"><label
								class="control-label">Tên khách hàng:</label></td>
							<td class="col-xs-6">
								<p>${khachhang.tenKhachHang}</p>
							</td>
						</tr>
						<tr>
							<td class="field-label col-xs-3 active"><label
								class="control-label">Ngày đặt hàng:</label></td>
							<td class="col-xs-6">
								<!-- <input type="date" style="width: 22%"
								class="form-control" name="ngaydathang" validate-on="blur"
								required required-message="'Chọn ngày sinh'" /> --> <input
								type="date" id="theDate" name="ngayDatHang">
							</td>
						</tr>
						<tr>
							<td class="field-label col-xs-3 active"><label
								class="control-label">Ngày giao hàng:</label></td>
							<td class="col-xs-6"><input type="date" style="width: 22%"
								class="form-control" name="ngayGiao" validate-on="blur" required
								required-message="'Chọn ngày sinh'" /></td>
						</tr>
						<tr>
							<td class="field-label col-xs-3 active"><label
								class="control-label">Điện thoại:</label></td>
							<td class="col-xs-6">
								<!-- <input type="text" style="width: 60%"
								class="form-control" name="soDienThoai" validate-on="blur"
								required required-message="'nhập điện thoại'" /> -->
								<p>${khachhang.soDienThoai}</p>
							</td>
						</tr>
						<tr>
							<td class="field-label col-xs-3 active"><label
								class="control-label">Địa chỉ:</label></td>
							<td class="col-xs-6">
								<!-- < input type="text" style="width: 60%"
								class="form-control" name="diaChi" validate-on="blur" required
								required-message="'Nhập địa chỉ'" /> -->
								<p>${khachhang.diaChi}
								<p>
							</td>
						</tr>
					</table>
					<div class="row">
						<div class="col-sm-4"></div>
						<div class="col-sm-4">
							<input type="hidden"
								value="<%=session.getAttribute("taikhoan")%>" />
							<!-- <a
								class="btn btn-success" href="#" style="margin-left: 13px">XÁC
								NHẬN THANH TOÁN</a>  -->
							<input type="submit" class="btn btn-success"
								style="margin-left: 13px" value="XÁC
								NHẬN THANH TOÁN"
								onclick="xacNhanDonDatHang()" /> <a class="btn btn-info "
								href="cart.jsp" style="margin-left: 24px">TRỞ VỀ GIỎ HÀNG</a>
						</div>
						<div class="col-sm-4"></div>
					</div>

				</form>
			</div>
		</div>
		<div class="review-payment">
			<h2>Đánh Giá Và Thanh Toán</h2>
		</div>
		<!--Checkout-->
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
								<input class="cart_quantity_input" type="text" name="quantity"
									value="<%=ds.getValue()%>" autocomplete="off" size="2"
									disabled="">

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
						}
					%>


					<tr>
						<td colspan="4">&nbsp;</td>
						<td colspan="2">
							<table class="table table-condensed total-result">
								<tr>
									<td>Tổng sản phẩm:</td>
									<td><%=cart.countItem()%></td>
								</tr>
								<tr>
									<td>Giá trị gia tăng(VAT):</td>
									<td>0 Đ</td>
								</tr>
								<tr class="shipping-cost">
									<td>Phí vận chuyển:</td>
									<td>Miễn phí</td>
								</tr>
								<tr>
									<td>Tổng tiền</td>
									<td><span><%=cart.thanhTien()%> VNĐ</span></td>
								</tr>
							</table>
						</td>
					</tr>
				</tbody>
			</table>
		</div>
		<!--Checkout-->
		
	</div>
	</section>
	<!--/#cart_items-->
	<%
		}
	%>
	<!--/Footer-->
	<jsp:include page="footer.jsp"></jsp:include>

	<!--smooth-scrolling-of-move-up-->
	<!-- Thanh cuộn -->


	<!-- Bootstrap core JavaScript
    ================================================== -->
	<!-- Placed at the end of the document so the pages load faster -->
	<script src="js/bootstrap.js"></script>
	<!--/Footer-->

	<script src="js/jquery.js"></script>
	<script src="js/bootstrap.min.js"></script>
	<script src="js/jquery.scrollUp.min.js"></script>
	<script src="js/jquery.prettyPhoto.js"></script>
	<!-- 	script input date -->
	<script>
		var date = new Date();

		var day = date.getDate();
		var month = date.getMonth() + 1;
		var year = date.getFullYear();

		if (month < 10)
			month = "0" + month;
		if (day < 10)
			day = "0" + day;

		var today = year + "-" + month + "-" + day;

		document.getElementById('theDate').value = today;
	</script>
	<!-- 	script input date -->
	<!-- scrip thong bao -->
	<script type="text/javascript">
		function xacNhanDonDatHang() {
			alert("	CẢM ƠN ĐÃ ĐẶT HÀNG TẠI TRANG WEBSITE CỦA CHÚNG TÔI,"
					+ "ĐƠN ĐẶT HÀNG CỦA BẠN ĐÃ ĐƯỢC XÁC NHẬN CHÚNG TÔI SẼ"
					+ " GỬI HÀNG ĐẾN CHO BẠN SỚM NHẤT!");
		}
	</script>
</body>
</html>