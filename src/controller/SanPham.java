package controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Dao.LoaiSanPham_Dao;
import Dao.NhaSanXuat_DAO;
import Dao.SanPham_DAO;
import Entities.Loaisanpham;
import Entities.Nhasanxuat;
import Entities.Sanpham;

@WebServlet("/SanPham")
public class SanPham extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public SanPham() {
		super();
		// TODO Auto-generated constructor stub
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		String maDanhMuc = request.getParameter("category");

		SanPham_DAO sp_Dao = new SanPham_DAO();
		ArrayList<Sanpham> arr = null;
		if (maDanhMuc == null) {

			arr = (ArrayList<Sanpham>) sp_Dao.ListSanPham();
		}
		else {
			arr = (ArrayList<Sanpham>) sp_Dao.ListSanPhamDanhMuc(Integer.parseInt(maDanhMuc));
			arr = (ArrayList<Sanpham>) sp_Dao.ListSanPhamNSX(Integer.parseInt(maDanhMuc));
		}

		request.setAttribute("listProduct", arr);

		// Loai san pham
		LoaiSanPham_Dao loaiDAO = new LoaiSanPham_Dao();
		ArrayList<Loaisanpham> arrloai = (ArrayList<Loaisanpham>) loaiDAO.findAll();
		request.setAttribute("listCategory", arrloai);

		// danh muc thuong hieu
		NhaSanXuat_DAO nhasanxuat_DAO = new NhaSanXuat_DAO();
		ArrayList<Nhasanxuat> arrNhaSanXuat = (ArrayList<Nhasanxuat>) nhasanxuat_DAO.findAll();
		request.setAttribute("listBrand", arrNhaSanXuat);

		// chuyen trang
		request.getRequestDispatcher("/index.jsp").forward(request, response);

	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
