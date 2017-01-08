package Dao;

import java.util.List;

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

	public Khachhang getKhachHang(String maKH) {
		Khachhang kh = null;
		try {
			if (!session.getTransaction().isActive()) {
				session.getTransaction().begin();
			}
			kh = (Khachhang) session.createQuery("FROM Khachhang c WHERE maKhachHang='" + maKH + "'").uniqueResult();
		}
		catch (Exception e) {
			System.out.println(e.getMessage());
			return null;
		}
		return kh;

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
