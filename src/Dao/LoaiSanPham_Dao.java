package Dao;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;

import Entities.Loaisanpham;
import Model.HibernateUtil;

public class LoaiSanPham_Dao {
	// public static List<Entities.Loaisanpham> getAll() {
	// List<Loaisanpham> data = new ArrayList<Loaisanpham>();
	// try {
	// Session sess = HibernateUtil.getSessionFactory().openSession();
	// //Lay du lieu bang dung hibernate
	// sess.getTransaction().begin();
	// //lay danh sach loai sp
	// data = sess.createCriteria(Loaisanpham.class).list();
	// }
	// catch (Exception ex) {
	// ex.printStackTrace();
	// }
	// return data;
	// }
	private SessionFactory sessionFatory = HibernateUtil.getSessionFactory();

	Session session = sessionFatory.getCurrentSession();

	public List<Loaisanpham> findAll() {
		try {
			// session hiện tại có active hay chưa
			if (!session.getTransaction().isActive()) {
				session.getTransaction().begin();
			}
			// viet Query là sử dụng HQL
			Query query = session.createQuery("From Loaisanpham");
			return query.list();
		}
		catch (Exception ex) {
			System.out.println(ex.getMessage());
			return null;
		}
	}
}
