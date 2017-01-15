package controller_severlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import Dao.KhachHang_DAO;
import Tool.MD5_mahoaPas;

/**
 * Servlet implementation class DangNhapServlet
 */
@WebServlet("/DangNhapServlet")
public class DangNhapServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	private KhachHang_DAO kh_dao = new KhachHang_DAO();

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public DangNhapServlet() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setCharacterEncoding("utf-8");

		String taikhoan = request.getParameter("taikhoan");
		
		String maKhachHang=request.getParameter("maKhachHang");
		
		String command = request.getParameter("command");

		String url = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
				+ request.getContextPath();

		if (command.equals("dangxuat")) {
			HttpSession session = request.getSession();
			session.invalidate();
			response.sendRedirect(url + "/Index");
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setCharacterEncoding("utf-8");

		String taikhoan = request.getParameter("taikhoan");

		String maKhachHang=request.getParameter("maKhachHang");
		String matkhau = request.getParameter("matkhau");

		String err = "";
		if (taikhoan.equals("") || matkhau.equals("")) {
			err += "Vui lòng nhập đầy đủ thông tin!!";
		}
		else {
			if (kh_dao.ktLogin(taikhoan, MD5_mahoaPas.maHoaDuLieu(matkhau)) == false) {
				err += "Tài khoản hoặc mật khẩu không đúng!!";
			}
		}
		if (err.length() > 0) {
			request.setAttribute("taikhoan", taikhoan);
			request.setAttribute("err", err);
		}
		String url = "/account.jsp";
		try {
			if (err.length() == 0) {
				HttpSession session = request.getSession();
				session.setAttribute("taikhoan", taikhoan);
				//session.setAttribute("maKhachHang", maKhachHang);
				

				url = "/Index";
				// response.sendRedirect("Index");
				System.out.println("Login Success");
			}
			else {
				url = "/account.jsp";
				System.out.println("Login Fails");
			}
			// request.getRequestDispatcher("/account.jsp").forward(request, response);
			RequestDispatcher rd = getServletContext().getRequestDispatcher(url);
			rd.forward(request, response);
		}
		catch (Exception e) {
			// TODO: handle exception

			log("erro", e);
		}
	}

}
