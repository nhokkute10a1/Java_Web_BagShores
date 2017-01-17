<%@page import="java.util.List"%>
<%@page import="Dao.SanPham_DAO"%>
<%@page import="Entities.Sanpham"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link href="css/bootstrap.min.css" rel="stylesheet">
<link href="css/datepicker3.css" rel="stylesheet">
<link href="css/styles.css" rel="stylesheet">

<!--Icons-->
<script src="js/lumino.glyphs.js"></script>
</head>
<body>
	<%
		SanPham_DAO spDAO = new SanPham_DAO();
		List<Sanpham> arr = spDAO.ListSanPham();
	%>
	<jsp:include page="header.jsp"></jsp:include>
	<jsp:include page="sidebar.jsp"></jsp:include>

	<div class="col-sm-9 col-sm-offset-3 col-lg-10 col-lg-offset-2 main">
		<div class="row">
			<ol class="breadcrumb">
				<li><a href="#"><svg class="glyph stroked home">
						<use xlink:href="#stroked-home"></use></svg></a></li>
				<li class="active">Icons</li>
			</ol>
		</div>
		<!--/.row-->

		<div class="row">
			<div class="col-lg-12">
				<h1 class="page-header">Tables</h1>
			</div>
		</div>
		<!--/.row-->


		<div class="row">
			<div class="col-lg-12">
				<div class="panel panel-default">
					<div class="panel-heading">Advanced Table</div>
					<div class="panel-body">
						<table>
							<thead>
								<tr>
									<th>Ma San Pham</th>
									<th>Ma Loai</th>
									<td>Ma Nha San Xuat
									</th>
									<td>Ten San Pham
									</th>
									<td>Gia Ban
									</th>
									<td>Mo Ta
									</th>
									<td>Anh bia
									</th>
									<td>Ngay Cap Nhat
									</th>
									<td>So Luong Ton
									</th>
									<td>Gioi Tinh
									</th>
								</tr>
								<%
									for (Sanpham sp : arr) {
								%>
								<tr>
									<td><%=sp.getMaSanPham()%></td>
									<td><%=sp.getMaLoai()%></td>
									<td><%=sp.getMaNhaSanXuat()%></td>
									<td><%=sp.getTenSanPham()%></td>
									<td><%=sp.getGiaBan()%></td>
									<td><%=sp.getMoTa()%></td>
									<td><img src="<%=sp.getAnhBia()%>"
										alt="<%=sp.getTenSanPham()%>" width="50px" height="50px" /></td>
									<td><%=sp.getNgayCapNhap()%></td>
									<td><%=sp.getSoLuongTon()%></td>
									<td><%=sp.isGioiTinh()%></td>
								</tr>
								<%
									}
								%>
							</thead>
						</table>
						<script>
							$(function() {
								$('#hover, #striped, #condensed')
										.click(
												function() {
													var classes = 'table';

													if ($('#hover').prop(
															'checked')) {
														classes += ' table-hover';
													}
													if ($('#condensed').prop(
															'checked')) {
														classes += ' table-condensed';
													}
													$('#table-style')
															.bootstrapTable(
																	'destroy')
															.bootstrapTable(
																	{
																		classes : classes,
																		striped : $(
																				'#striped')
																				.prop(
																						'checked')
																	});
												});
							});

							function rowStyle(row, index) {
								var classes = [ 'active', 'success', 'info',
										'warning', 'danger' ];

								if (index % 2 === 0
										&& index / 2 < classes.length) {
									return {
										classes : classes[index / 2]
									};
								}
								return {};
							}
						</script>

					</div>
				</div>
			</div>
		</div>
		<!--/.row-->

	</div>
	<!--/.main-->



	<script src="js/jquery-1.11.1.min.js"></script>
	<script src="js/bootstrap.min.js"></script>
	<script src="js/chart.min.js"></script>
	<script src="js/chart-data.js"></script>
	<script src="js/easypiechart.js"></script>
	<script src="js/easypiechart-data.js"></script>
	<script src="js/bootstrap-datepicker.js"></script>
	<script src="js/bootstrap-table.js"></script>
	<script>
		!function($) {
			$(document)
					.on(
							"click",
							"ul.nav li.parent > a > span.icon",
							function() {
								$(this).find('em:first').toggleClass(
										"glyphicon-minus");
							});
			$(".sidebar span.icon").find('em:first').addClass("glyphicon-plus");
		}(window.jQuery);

		$(window).on('resize', function() {
			if ($(window).width() > 768)
				$('#sidebar-collapse').collapse('show')
		})
		$(window).on('resize', function() {
			if ($(window).width() <= 767)
				$('#sidebar-collapse').collapse('hide')
		})
	</script>
</body>
</html>