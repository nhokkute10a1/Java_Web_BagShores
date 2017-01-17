package controller_severlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import Dao.Admin_DAO;
import Dao.KhachHang_DAO;
import Tool.MD5_mahoaPas;

/**
 * Servlet implementation class AdminServlet
 */
@WebServlet("/admin/AdminServlet")
public class AdminServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	private Admin_DAO admin_dao = new Admin_DAO();
	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public AdminServlet() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
//		
		doPost(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		request.setCharacterEncoding("utf-8");
		response.setCharacterEncoding("utf-8");

		String taikhoan = request.getParameter("taikhoan");

		//String maKhachHang=request.getParameter("maKhachHang");
		String matkhau = request.getParameter("matkhau");

		String err = "";
		if (taikhoan.equals("") || matkhau.equals("")) {
			err += "Vui lòng nhập đầy đủ thông tin!!";
		}
		else {
			if (admin_dao.ktLogin(taikhoan, matkhau) == false) {
				err += "Tài khoản hoặc mật khẩu không đúng!!";
			}
		}
		if (err.length() > 0) {
			request.setAttribute("taikhoan", taikhoan);
			request.setAttribute("err", err);
		}
		String url = "/admin/login.jsp";
		try {
			if (err.length() == 0) {
				HttpSession session = request.getSession();
				session.setAttribute("taikhoan", taikhoan);
				//session.setAttribute("maKhachHang", maKhachHang);
				

				url = "/admin/index.jsp";
				// response.sendRedirect("Index");
				System.out.println("Login Success");
			}
			else {
				url = "/admin/login.jsp";
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
