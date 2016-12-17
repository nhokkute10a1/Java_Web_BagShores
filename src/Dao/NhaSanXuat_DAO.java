package Dao;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;

import Entities.Nhasanxuat;
import Model.HibernateUtil;

public class NhaSanXuat_DAO {
	private SessionFactory sessionFatory = HibernateUtil.getSessionFactory();

	Session session = sessionFatory.getCurrentSession();

	public List<Nhasanxuat> findAll() {
		try {
			// session hiện tại có active hay chưa
			if (!session.getTransaction().isActive()) {
				session.getTransaction().begin();
			}
			// viet Query là sử dụng HQL
			Query query = session.createQuery("select c " + "from Nhasanxuat c");
			return query.list();
		}
		catch (Exception ex) {
			System.out.println(ex.getMessage());
			return null;
		}
	}
}
