<%@page import="Entities.Nhasanxuat"%>
<%@page import="Dao.NhaSanXuat_DAO"%>
<%@ page import="Entities.Loaisanpham"%>
<%@ page import="Dao.LoaiSanPham_Dao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

</head>
<body>

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
								</c:forEach>
								<li><a href="SanPham.jsp?category=${danhmuc.maLoai}">${danhmuc.tenLoai}</a></li>
							</ul>
						</div>
					</div>
				</div>
<%-- 	<div class="panel panel-default">
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
								<%for (Loaisanpham loai : loaiDAO.findAll()) {%>
								<li><a href="product.jsp?category=<%=loai.getMaLoai()%>"><%=loai.getTenLoai()%>
								</a></li>
								<%}%>

							</ul>
						</div>
					</div>
				</div>

				<div class="panel panel-default">
					<div class="panel-heading">
						<h4 class="panel-title">
							<a data-toggle="collapse" data-parent="#accordian" href="#womens">
								<span class="badge pull-right"><i class="fa fa-plus"></i></span>
								NỮ
							</a>
						</h4>
					</div>
					<div id="womens" class="panel-collapse collapse">
						<div class="panel-body">
							<ul>
								<%for (Loaisanpham loai : loaiDAO.findAll()) {%>
								<li><a href="product.jsp?category=<%=loai.getMaLoai()%>"><%=loai.getTenLoai()%>
								</a></li>
								<%}%>
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
- --%>
			</div>
			<!--/category-products-->
			<div class="brands_products">
				<!--brands_products-->
				<h2>THƯƠNG HIỆU</h2>
				<div class="brands-name">
					<ul class="nav nav-pills nav-stacked">
						<c:forEach var="nhasanxuat" items="${listBrand}">
						<li><a href="product.jsp?category=${nhasanxuat.maNhaSanXuat}">${nhasanxuat.tenNhaSanXuat}</a></li>
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

</body>
</html>