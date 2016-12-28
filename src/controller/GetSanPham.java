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

/**
 * Servlet implementation class GetSanPham
 */
@WebServlet("/GetSanPham")
public class GetSanPham extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public GetSanPham() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// Loai san pham
		LoaiSanPham_Dao loaiDAO = new LoaiSanPham_Dao();
		ArrayList<Loaisanpham> arr = (ArrayList<Loaisanpham>) loaiDAO.findAll();
		request.setAttribute("listCategory", arr);

		// danh muc thuong hieu
		NhaSanXuat_DAO nhasanxuat_DAO = new NhaSanXuat_DAO();
		ArrayList<Nhasanxuat> arrNhaSanXuat = (ArrayList<Nhasanxuat>) nhasanxuat_DAO.findAll();
		request.setAttribute("listBrand", arrNhaSanXuat);

		// Lay 1 san pham
		String maSp = request.getParameter("product");
		String maSP = maSp;
		SanPham_DAO sp1 = new SanPham_DAO();
		Sanpham a = sp1.getSanPham(maSP);
		request.setAttribute("getProduct1", a);

		// chuyen trang
		request.getRequestDispatcher("/Details.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
