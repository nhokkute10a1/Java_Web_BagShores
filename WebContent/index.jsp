<%@page import="java.util.ArrayList"%>
<%@page import="Entities.Sanpham"%>
<%@page import="java.util.List"%>
<%@page import="Dao.SanPham_DAO"%>
<%@page import="Entities.GioHang"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<jsp:include page="header.jsp"></jsp:include>
</head>
<body>
	<%
		SanPham_DAO sp_dao = new SanPham_DAO();
		List<Sanpham> arr = sp_dao.ListSanPham();

		String page1 = "", page2 = "";
		int start = 0;
		int end = 4;
		if (arr.size() < 16) {
			end = 4;
		}
		else {
			end = arr.size();
		}
		if (request.getParameter("start") != null) {
			page1 = request.getParameter("start");
			start = Integer.parseInt(page1);
		}
		if (request.getParameter("end") != null) {
			page2 = request.getParameter("end");
			end = Integer.parseInt(page2);
		}
		List<Sanpham> list = sp_dao.getListByPage(arr, start, end);

		GioHang cart = (GioHang) session.getAttribute("cart");
		if (cart == null) {
			cart = new GioHang();
			session.setAttribute("cart", cart);
		}
	%>
	<jsp:include page="banner.jsp"></jsp:include>
	<section style="margin-top: 50px;">
	<div class="container">
		<div class="row">
			<!-- Danh Mục -->
			<div class="col-sm-3">
				<div class="left-sidebar">
					<h2>DANH MỤC</h2>
					<div class="panel-group category-products" id="accordian">
						<!--category-productsr-->
						<div class="panel panel-default">
							<div class="panel-heading">
								<h4 class="panel-title">
									<a data-toggle="collapse" data-parent="#accordian"
										href="#sportswear"> <span class="badge pull-right"><i
											class="fa fa-plus"></i></span> UNISEX
									</a>
								</h4>
							</div>
							<div id="sportswear" class="panel-collapse collapse">
								<div class="panel-body">
									<ul>
										<c:forEach var="danhmuc" items="${listCategory}">
											<li><a href="SanPham?category=${danhmuc.maLoai}">${danhmuc.tenLoai}</a></li>
										</c:forEach>
									</ul>
								</div>
							</div>
						</div>

						<div class="panel panel-default">
							<div class="panel-heading">
								<h4 class="panel-title">
									<a data-toggle="collapse" data-parent="#accordian" href="#mens">
										<span class="badge pull-right"><i class="fa fa-plus"></i></span>
										NAM
									</a>
								</h4>
							</div>
							<div id="mens" class="panel-collapse collapse">
								<div class="panel-body">
									<ul>
										<c:forEach var="danhmuc" items="${listCategory}">
											<li><a href="SanPham?category=${danhmuc.maLoai}">${danhmuc.tenLoai}</a></li>
										</c:forEach>
									</ul>
								</div>
							</div>
						</div>

						<div class="panel panel-default">
							<div class="panel-heading">
								<h4 class="panel-title">
									<a data-toggle="collapse" data-parent="#accordian"
										href="#womens"> <span class="badge pull-right"><i
											class="fa fa-plus"></i></span> NỮ
									</a>
								</h4>
							</div>
							<div id="womens" class="panel-collapse collapse">
								<div class="panel-body">
									<ul>
										<c:forEach var="danhmuc" items="${listCategory}">
											<li><a href="SanPham?category=${danhmuc.maLoai}">${danhmuc.tenLoai}</a></li>
										</c:forEach>
									</ul>
								</div>
							</div>
						</div>
						<div class="panel panel-default">
							<div class="panel-heading">
								<h4 class="panel-title">
									<a href="#">KHUYẾN MÃI</a>
								</h4>
							</div>
						</div>
					</div>
					<!--/category-products-->
					<div class="brands_products">
						<!--brands_products-->
						<h2>THƯƠNG HIỆU</h2>
						<div class="brands-name">
							<ul class="nav nav-pills nav-stacked">
								<c:forEach var="nhasanxuat" items="${listBrand}">
									<li><a href="SanPham?category=${nhasanxuat.maNhaSanXuat}">${nhasanxuat.tenNhaSanXuat}</a></li>
								</c:forEach>


							</ul>
						</div>
					</div>
					<!--/brands_products-->
					<div class="shipping text-center">
						<!--shipping-->
						<img src="images/home/shipping.jpg" alt="" />
					</div>
					<!--/shipping-->

				</div>
			</div>
			<!-- Danh Mục -->
			<!-- Sản phẩm -->
			<div class="col-sm-9 padding-right">
				<div class="features_items">
					<!--features_items-->

					<h2 class="title text-center">SẢN PHẨM</h2>
					<c:forEach var="sanpham" items="${listProduct}">
						<div class="col-sm-4">
							<div class="product-image-wrapper">
								<div class="single-products">
									<div class="productinfo text-center">
										<a href="GetSanPham?product=${sanpham.maSanPham}"><img
											src="${sanpham.anhBia}" alt="${sanpham.tenSanPham}"
											width="255px" height="270px" /></a>

										<h2>${sanpham.giaBan}VNĐ</h2>
										<!-- SanPham?category=${nhasanxuat.maNhaSanXuat} -->
										<a href="GetSanPham?product=${sanpham.maSanPham}"> <span>${sanpham.tenSanPham}</span></a>
										<a
											href="GioHangController?command=insert&maSanPham=${sanpham.maSanPham}&maGioHang=${System.currentTimeMillis()}"
											class="btn btn-default adFd-to-cart"><i
											class="fa fa-shopping-cart"></i>Thêm Vào Giỏ</a>
									</div>
								</div>
							</div>
						</div>
					</c:forEach>


				</div>
				<!--features_items-->

				<!-- Phân trang -->
				<div class="grid_3 grid_5">
					<div class="col-md-12" style="text-align: center;">
						<nav>
						<ul class="pagination">
							<%
								int a, b;
								int limit = arr.size() / 4;
								if (limit * 4 < arr.size()) {
									limit += 1;
								}
								for (int i = 1; i < limit; i++) {
									a = (i - 1) * 4;
									b = i * 4;
									if (b > arr.size()) {
										b = arr.size();
									}
							%>
							<!-- <li><a href="#" aria-label="Previous"><span
									aria-hidden="true">«</span></a>
							</li> -->
							<li class="active"><a href="index.jsp/start=<%=a%>&end=<%=b%>">1</a></li>
							<%
								if (i > 3) {
							%>
							<li><a
								href="index.jsp?start=<%=arr.size() - 9%>&end=<%=arr.size()%>">&raquo;</a></li>

							<%
								break;
									}
								}
							%>
							<!-- <li><a href="#" aria-label="Next"><span
									aria-hidden="true">»</span></a></li> -->

						</ul>
						</nav>
					</div>

				</div>

				<!-- Phân trang -->
				<!-- Sản phẩm -->
			</div>
		</div>
	</section>

	<jsp:include page="footer.jsp"></jsp:include>

	<!--smooth-scrolling-of-move-up-->
	<!-- Thanh cuộn -->


	<!-- Bootstrap core JavaScript
    ================================================== -->
	<!-- Placed at the end of the document so the pages load faster -->
	<script src="js/bootstrap.js"></script>
</body>
</html>