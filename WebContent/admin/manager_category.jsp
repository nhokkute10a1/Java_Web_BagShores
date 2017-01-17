<%@page import="Entities.Sanpham"%>
<%@page import="Entities.Loaisanpham"%>
<%@page import="java.util.ArrayList"%>
<%@page import="Dao.LoaiSanPham_Dao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
		LoaiSanPham_Dao loaiDAO = new LoaiSanPham_Dao();
		ArrayList<Loaisanpham> arrloai = (ArrayList<Loaisanpham>) loaiDAO.findAll();
	%>
	<jsp:include page="header.jsp"></jsp:include>
	<jsp:include page="sidebar.jsp"></jsp:include>
	<div class="col-sm-9 col-sm-offset-3 col-lg-10 col-lg-offset-2 main">
		<div class="row">
			<div class="col-lg-12">
				<div class="panel panel-default">
					<div class="panel-heading">Advanced Table</div>
					<div class="panel-body">
						<table data-toggle="table" data-show-refresh="true"
							data-show-toggle="true" data-show-columns="true"
							data-search="true" data-select-item-name="toolbar1"
							data-pagination="true" data-sort-name="name"
							data-sort-order="desc">
							<thead>
								<tr>
									<th data-field="state" data-checkbox="true">Mã loại</th>
									<th>Mã loại</th>
									<th >Tên loại</th>
									<th >Tùy chọn</th>
								</tr>
							</thead>
							<%
								for (Loaisanpham loaisp : arrloai) {
							%>
							<tr>
								<td></td>
								<td><%=loaisp.getMaLoai()%></td>
								<td><%=loaisp.getTenLoai()%></td>
								<td>
									<a href="#"> Sửa |</a>
									<a href="#"> Xóa</a>
								</td>
							</tr>
							<%
								}
							%>
						</table>
					</div>
				</div>
			</div>
		</div>
		<!--/.row-->
	</div>
</body>
</html>