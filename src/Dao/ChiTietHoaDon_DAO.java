package Dao;

import org.hibernate.Session;
import org.hibernate.SessionFactory;

import Entities.Chitietdondathang;
import Model.HibernateUtil;

public class ChiTietHoaDon_DAO {
	private SessionFactory sessionFatory = HibernateUtil.getSessionFactory();

	Session session = sessionFatory.getCurrentSession();

	public void themHoaDon(Chitietdondathang ctdh) {
		try {
			if (!session.getTransaction().isActive()) {
				session.getTransaction().begin();
			}
			session.save(ctdh);
			session.getTransaction().commit();
		}
		catch (Exception e) {
			System.out.println(e.getMessage());
		}
	}
}
