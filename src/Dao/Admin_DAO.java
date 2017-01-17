package Dao;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;

import Entities.Khachhang;
import Entities.Taikhoanadmin;
import Model.HibernateUtil;

public class Admin_DAO {
	private SessionFactory sessionFatory = HibernateUtil.getSessionFactory();

	Session session = sessionFatory.getCurrentSession();

	public Taikhoanadmin getTaiKhoanAdmin(String taikhoan) {
		Taikhoanadmin admin = null;
		try {
			if (!session.getTransaction().isActive()) {
				session.getTransaction().begin();
			}
			admin = (Taikhoanadmin) session.createQuery("FROM Khachhang c WHERE taiKhoan='" + taikhoan + "'" ).uniqueResult();
			return admin;
		}
		catch (Exception e) {
			e.printStackTrace(System.out);
			return null;
		}

	}
	public boolean ktLogin(String taiKhoan, String matKhau) {
		List<Taikhoanadmin> tk = null;
		try {
			if (!session.getTransaction().isActive()) {
				session.getTransaction().begin();
			}
			tk = (List<Taikhoanadmin>) session
					.createQuery("FROM Taikhoanadmin WHERE tenTaiKhoan='" + taiKhoan + "' and matKhau='" + matKhau + "'  ")
					.list();
			if (tk.size() >= 1) {
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
