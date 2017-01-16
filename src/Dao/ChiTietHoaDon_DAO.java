package Dao;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;

import Entities.Chitietdondathang;
import Entities.Khachhang;
import Model.HibernateUtil;

public class ChiTietHoaDon_DAO {
	// private SessionFactory sessionFatory = HibernateUtil.getSessionFactory();
	//
	// Session session = sessionFatory.getCurrentSession();

	public void ThemChiTietDonDatHang(Chitietdondathang ctddh) {

		// try {
		// if (!session.getTransaction().isActive()) {
		// session.getTransaction().begin();
		// }
		// session.save(ctddh);
		// session.getTransaction().commit();
		// }
		// catch (Exception e) {
		// e.printStackTrace(System.out);
		// //System.out.println(e.getMessage());
		// }
		Session session = null;
		Transaction tx = null;
		SessionFactory sessionFactory = null;
		try {
			sessionFactory = new Configuration().configure().buildSessionFactory();
			session = sessionFactory.openSession();
			tx = session.beginTransaction();
			session.save(ctddh);
			tx.commit();

		}
		catch (Exception e) {
			if (tx != null && tx.isActive()) {
				tx.rollback();// rolebacks the currect active transaction
			}

		}
		finally {
			if (session != null && session.isOpen()) {
				session.close();
			}
			if (tx != null) {
				tx = null;
			}
		}
	}
}
