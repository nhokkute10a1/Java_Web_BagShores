package Dao;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;

import Entities.Khachhang;
import Model.HibernateUtil;

public class KhachHang_DAO {
	// private static final Statement DbConnect = null;

	private SessionFactory sessionFatory = HibernateUtil.getSessionFactory();

	Session session = sessionFatory.getCurrentSession();

	public void ThemKhachHang(Khachhang kh) {
		// Connection conn = DbConnect.getConnection();
		// Khachhang kh = null;
		try {
			if (!session.getTransaction().isActive()) {
				session.getTransaction().begin();
			}
			session.save(kh);
			session.getTransaction().commit();
		}
		catch (Exception e) {
			System.out.println(e.getMessage());
		}
	}

	public List<Khachhang> ListTTKh() {
		try {
			// session hiện tại có active hay chưa
			if (!session.getTransaction().isActive()) {
				session.getTransaction().begin();
			}
			// viet Query là sử dụng HQL
			Query query = session.createQuery("From Khachhang");
			return query.list();
		}
		catch (Exception ex) {
			System.out.println(ex.getMessage());
			return null;
		}
	}

	// lay 1 kh

	public Khachhang getKhachHang(String maKH) {
		Khachhang kh = null;
		try {
			if (!session.getTransaction().isActive()) {
				session.getTransaction().begin();
			}
			kh = (Khachhang) session.createQuery("FROM Khachhang c WHERE maKhachHang='" + maKH + "'").uniqueResult();
			return kh;
		}
		catch (Exception e) {
			System.out.println(e.getMessage());
			return null;
		}

	}
	// lay 1 khach hang theo tai khoan
	public Khachhang getTaiKhoanKhachHang(String taikhoan) {
		Khachhang kh = null;
		try {
			if (!session.getTransaction().isActive()) {
				session.getTransaction().begin();
			}
			kh = (Khachhang) session.createQuery("FROM Khachhang c WHERE taiKhoan='" + taikhoan + "'").uniqueResult();
			return kh;
		}
		catch (Exception e) {
			System.out.println(e.getMessage());
			return null;
		}

	}

	// kt dang nhap
	public boolean ktLogin(String taiKhoan, String matKhau) {
		List<Khachhang> kh = null;
		try {
			if (!session.getTransaction().isActive()) {
				session.getTransaction().begin();
			}
			kh = (List<Khachhang>) session
					.createQuery("FROM Khachhang WHERE taiKhoan='" + taiKhoan + "' and matKhau='" + matKhau + "'  ")
					.list();
			if (kh.size() >= 1) {
				return true;
			}
		}
		catch (Exception e) {
			System.out.println(e.getMessage());
			e.printStackTrace();
		}
		return false;
	}

	// kt Tai khoan
	public boolean ktTaiKhoan(String taiKhoan) {
		List<Khachhang> kh = null;
		try {
			if (!session.getTransaction().isActive()) {
				session.getTransaction().begin();
			}
			kh = (List<Khachhang>) session.createQuery("FROM Khachhang WHERE taiKhoan='" + taiKhoan + "' ").list();
			if (kh.size() >= 1) {
				return true;
			}
		}
		catch (Exception e) {
			System.out.println(e.getMessage());
			e.printStackTrace();
		}
		return false;
	}

	// kt tai email
	public boolean ktEmail(String email) {
		List<Khachhang> kh = null;
		try {
			if (!session.getTransaction().isActive()) {
				session.getTransaction().begin();
			}
			kh = (List<Khachhang>) session.createQuery("FROM Khachhang WHERE email='" + email + "' ").list();
			if (kh.size() >= 1) {
				return true;
			}
		}
		catch (Exception e) {
			System.out.println(e.getMessage());
			e.printStackTrace();
		}
		return false;
	}

}