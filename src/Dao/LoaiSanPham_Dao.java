package Dao;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;

import Entities.Loaisanpham;
import Model.HibernateUtil;

public class LoaiSanPham_Dao {

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