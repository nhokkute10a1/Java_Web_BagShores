package controller_severlet;

import java.io.IOException;
import java.util.ArrayList;
import java.util.TreeMap;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import Dao.SanPham_DAO;
import Entities.GioHang;
import Entities.Sanpham;

/**
 * Servlet implementation class GioHangController
 */
@WebServlet("/GioHangController")
public class GioHangController extends HttpServlet {

	private SanPham_DAO sp_dao = new SanPham_DAO();

	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public GioHangController() {
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

		HttpSession session = request.getSession();

		GioHang cart = (GioHang) session.getAttribute("cart");
		if (cart == null) {
			cart = new GioHang();
			session.setAttribute("cart", cart);
		}

		request.setCharacterEncoding("utf-8");
		response.setCharacterEncoding("utf-8");

		String maSanPham = request.getParameter("maSanPham");
		String command = request.getParameter("command");
		ArrayList<Long> listMua = null;
		String url = "/cart.jsp";
		TreeMap<Sanpham, Integer> list = (TreeMap<Sanpham, Integer>) cart.getListSanPham();
		// cart.getListSanPham();
		// for (Entry<Sanpham, Integer> ds : list.entrySet()) {
		// sl += sl + ds.getValue();
		//
		// }
		request.setAttribute("GetValues", list);
		try {
			listMua = (ArrayList<Long>) session.getAttribute("maGioHang");
			long idBuy = 0;
			if (request.getParameter("maGioHang") != null) {
				idBuy = Long.parseLong(request.getParameter("maGioHang"));
			}

			Sanpham sp = sp_dao.getSanPham(maSanPham);

			switch (command) {
			case "insert":
				if (listMua == null) {
					listMua = new ArrayList<>();
					session.setAttribute("maGioHang", listMua);
				}
				if (listMua.indexOf(idBuy) == -1) {
					cart.themGioHang(sp, 1);
					listMua.add(idBuy);
				}
				// url = "/cart.jsp";
				// response.sendRedirect("Index");//ngay dong nay, sendRediret rui thi ko
				// redriẻct dc nua
				url = "/Index";
				break;
			case "plus":
				if (listMua == null) {
					listMua = new ArrayList<>();
					session.setAttribute("cart", listMua);
				}
				if (listMua.indexOf(idBuy) == -1) {
					cart.themGioHang(sp, 1);
					listMua.add(idBuy);
				}
				url = "/cart.jsp";
				break;

			case "sub":
				if (listMua == null) {
					listMua = new ArrayList<>();
					session.setAttribute("cart", listMua);
				}
				if (listMua.indexOf(idBuy) == -1) {
					cart.xoaMotSanPham(sp, 1);
					listMua.add(idBuy);
				}
				url = "/cart.jsp";
				break;
			case "remove":
				cart.xoaGioHang(sp);
				url = "/cart.jsp";
				break;

			case "cancel":
				session.removeAttribute("cart");
				session.setAttribute("cart", new GioHang());
				listMua.add(idBuy);
				// cart.xoaGioHang(sp);
				url = "/cart.jsp";
				break;
			default:
				url = "/cart.jsp";
				break;
			}

			RequestDispatcher rd = getServletContext().getRequestDispatcher(url);
			rd.forward(request, response);// day forw
		}
		catch (Exception e) {
			// TODO: handle exception
			log("Error", e);
		}

	}
}