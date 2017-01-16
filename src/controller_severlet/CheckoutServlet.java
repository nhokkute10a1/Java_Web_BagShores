package controller_severlet;

import java.io.IOException;
import java.sql.Timestamp;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Map;
import java.util.TreeMap;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import Dao.ChiTietHoaDon_DAO;
import Dao.DonDatHang_DAO;
import Dao.KhachHang_DAO;
import Entities.Chitietdondathang;
import Entities.Dondathang;
import Entities.GioHang;
import Entities.Khachhang;
import Entities.Sanpham;
import Tool.SendMail;

/**
 * Servlet implementation class CheckoutServlet
 */
@WebServlet("/CheckoutServlet")
public class CheckoutServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	private KhachHang_DAO kh_dao = new KhachHang_DAO();

	private DonDatHang_DAO ddh_dao = new DonDatHang_DAO();

	private ChiTietHoaDon_DAO ctddh_dao = new ChiTietHoaDon_DAO();

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public CheckoutServlet() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		// lay 1 khach hang
		HttpSession session = request.getSession();
		String taikhoan = (String) session.getAttribute("taikhoan");
		Khachhang layKh = kh_dao.getTaiKhoanKhachHang(taikhoan);
		request.setAttribute("khachhang", layKh);

		// chuyen trang
		request.getRequestDispatcher("/checkout.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setCharacterEncoding("utf-8");
		HttpSession session = request.getSession();

		// // don dat hang
		String ngayDatHang = request.getParameter("ngayDatHang");
		String ngayGiao = request.getParameter("ngayGiao");

		// HttpSession session = request.getSession();
		GioHang cart = (GioHang) session.getAttribute("cart");

		// don dat hang
		String taikhoan = (String) session.getAttribute("taikhoan");
		// request.setAttribute("maKhachHang", maKhachHang);

		String tongTien = Long.toString((long) cart.thanhTien());
		// bat loi

		try {
			Date thoiGian = new Date();
			SimpleDateFormat dinhDangThoiGian = new SimpleDateFormat("dd/MM/yyyy ");
			
			String maDonDatHang = dinhDangThoiGian.format(thoiGian.getTime());

			//String maDonDatHang = "" + date.getTime();
			Khachhang kh = new Khachhang();
			// ma tai khoan bi null
			kh.setTaiKhoan(kh_dao.getTaiKhoanKhachHang(taikhoan).getTaiKhoan());

			// kh.setMaKhachHang(kh_dao.getKhachHang(taikhoan).getMaKhachHang());
			Dondathang ddh = new Dondathang(maDonDatHang, ngayDatHang, ngayGiao, false, false, taikhoan);

			// mail k gui dc
			// SendMail sm = new SendMail();
			// sm.sendMail((String) session.getAttribute("tenKhachHang"), "Thong tin mua
			// hang", tongTien);

			// them ddh
			ddh.setMaDonDatHang(maDonDatHang);

			ddh_dao.themHoaDon(ddh);

			TreeMap<Sanpham, Integer> list = cart.getListSanPham();
			for (Map.Entry<Sanpham, Integer> ds : list.entrySet()) {
				Sanpham sp = new Sanpham();
				sp.setMaSanPham(ds.getKey().getMaSanPham());
				// them ctddh
				// long thanhtien = ;
				Chitietdondathang ctddh = new Chitietdondathang(ddh, sp, ds.getValue(), ds.getKey().getGiaBan(),
						ds.getValue() * ds.getKey().getGiaBan());
				ctddh_dao.themCTHoaDon(ctddh);
			}
			
//			session.removeAttribute("cart");
//			session.setAttribute("cart", new GioHang());

			RequestDispatcher rd = getServletContext().getRequestDispatcher("/Index");
			rd.forward(request, response);
		}
		catch (Exception e) {
			// TODO: handle exception
			log("error", e);
		}

	}

}
