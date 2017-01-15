package controller_severlet;

import java.io.IOException;

import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Dao.KhachHang_DAO;
import Entities.Khachhang;

/**
 * Servlet implementation class DangKyController
 */
@WebServlet("/DangKyController")
public class DangKyController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	private KhachHang_DAO kh_DAO = new KhachHang_DAO();

	private SimpleDateFormat ngDateFormat = new SimpleDateFormat("dd/mm/yyyy");

	Date ngaysinh;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public DangKyController() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doPost(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		request.setCharacterEncoding("utf-8");
		response.setCharacterEncoding("utf-8");
		// lay gia tri da nhap
		String hoKH = request.getParameter("hoKhachHang");
		String tenKH = request.getParameter("tenKhachHang");
		String date = request.getParameter("ngaysinh");

		String taikhoan = request.getParameter("taiKhoan");
		String matkhau = request.getParameter("matKhau");
		String matkhaunhaplai = request.getParameter("matkhaunhaplai");
		String email = request.getParameter("email");
		String sdt = request.getParameter("soDienThoai");
		String diachi = request.getParameter("diaChi");

		// kiem tra khi ng dung nhap k du du lieu
		// String hoKHerr = "";
		// String tenKHerr = "";
		//
		String taikhoanerr = "";
		String matkhauerr = "";
		String matkhaunhaplaierr = "";
		String emailerr = "";
		// String sdterr = "";
		// String diachierr = "";
		// if (hoKH.equals("")) {
		// hoKHerr = "Vui lòng nhập họ !!!";
		// request.setAttribute("hoKH", hoKH);
		// response.sendRedirect("/account.jsp");
		// }
		// // truyen du lieu sang trang khac ( 1 qua 2)
		// if (hoKHerr.length() > 0) {
		// request.setAttribute("hoKHerr", hoKHerr);
		// response.sendRedirect("/account.jsp");
		// }
		//
		// if (tenKH.equals("")) {
		// tenKHerr = "Vui lòng nhập tên !!!";
		// request.setAttribute("tenKH", tenKH);
		// response.sendRedirect("/account.jsp");
		// }
		// if (tenKHerr.length() > 0) {
		// request.setAttribute("tenKHerr", tenKHerr);
		// }
		//
		// if (taikhoan.equals("")) {
		// taikhoanerr = "Vui lòng nhập tên tài khoản !!!";
		// request.setAttribute("taikhoan", taikhoan);
		// response.sendRedirect("/account.jsp");
		// }
		// if (taikhoanerr.length() > 0) {
		// request.setAttribute("taikhoanerr", taikhoanerr);
		// }
		// else {
		if (kh_DAO.ktTaiKhoan(taikhoan) == true) {
			taikhoanerr = "Tài khoản đã tồn tại !!!";
			request.setAttribute("taikhoanerr", taikhoanerr);
		}
		// }
		//
		// if (matkhau.equals("")) {
		// matkhauerr = "Vui lòng nhập mật khẩu !!!";
		// request.setAttribute("matkhau", matkhau);
		// response.sendRedirect("/account.jsp");
		// }
		// else {
		if (matkhau.length() > 6 || matkhau.length() < 12) {
			matkhauerr = "Mật khẩu phải từ 6 đến 12 kí tự !!!";
			request.setAttribute("matkhauerr", matkhauerr);
		}
		// if (matkhaunhaplai.length() > 6 || matkhaunhaplai.length() < 12) {
		// matkhaunhaplai = "Mật khẩu phải từ 6 đến 12 kí tự !!!";
		// }
		// }
		// if (matkhauerr.length() > 0) {
		// request.setAttribute("matkhauerr", matkhauerr);
		// }
		//
		if (matkhaunhaplai.equals(matkhau)) {
			matkhaunhaplaierr = "Mật khẩu nhập lại không khớp với mật khẩu !!!!";
			request.setAttribute("matkhaunhaplaierr", matkhaunhaplaierr);
		}
		// if (matkhaunhaplaierr.length() > 0) {
		// request.setAttribute("matkhaunhaplaierr", matkhaunhaplaierr);
		// }
		//
		// if (email.equals("")) {
		// emailerr = "Vui lòng nhập địa chỉ email !!!";
		// request.setAttribute("email", email);
		// response.sendRedirect("/account.jsp");
		// }
		// if (diachierr.length() > 0) {
		// request.setAttribute("diachierr", diachierr);
		// }
		// else {
		if (kh_DAO.ktEmail(email) == true) {
			emailerr = "Địa chỉ email đã tồn tại !!!";
			request.setAttribute("emailerr", emailerr);
		}
		// }

		// if (sdt.equals("")) {
		// sdterr = "Vui lòng nhập số điện thoại !!!";
		// request.setAttribute("sdt", sdt);
		// response.sendRedirect("/account.jsp");
		// }
		// if (sdterr.length() > 0) {
		// request.setAttribute("sdterr", sdterr);
		// }
		//
		// if (diachi.equals("")) {
		// diachierr = "Vui lòng nhập địa chỉ !!!";
		// request.setAttribute("diachi", diachi);
		// response.sendRedirect("/account.jsp");
		// }
		// if (diachierr.length() > 0) {
		// request.setAttribute("diachierr", diachierr);
		// }

		// String url = "/account.jsp";
		try {

			// Date ngSinh = ngDateFormat.parse("02/01/2017");
			// Date ngaysinh = ngDateFormat.parse("ngaySinh");

			if (hoKH.length() != 0 && tenKH.length() != 0 && taikhoan.length() != 0 && matkhau.length() != 0
					&& email.length() != 0 && sdt.length() != 0 && diachi.length() != 0) {
				kh_DAO.ThemKhachHang(new Khachhang(hoKH, tenKH, date, taikhoan, matkhau, email, sdt, diachi));
				response.sendRedirect("Index");
			}
			else {
				response.sendRedirect("account.jsp");
			}
			request.getRequestDispatcher("/account.jsp").forward(request, response);
			// RequestDispatcher rd = getServletContext().getRequestDispatcher(url);
			// rd.forward(request, response);
		}
		catch (Exception e) {
			e.printStackTrace();
		}

	}

}
