package Dao;

import org.hibernate.Session;
import org.hibernate.SessionFactory;

import Entities.Dondathang;
import Model.HibernateUtil;

public class DonDatHang_DAO {
	private SessionFactory sessionFatory = HibernateUtil.getSessionFactory();

	Session session = sessionFatory.getCurrentSession();

	public void themHoaDon(Dondathang ddh) {
		try {
			if (!session.getTransaction().isActive()) {
				session.getTransaction().begin();
			}
			session.save(ddh);
			session.getTransaction().commit();
		}
		catch (Exception e) {
			System.out.println(e.getMessage());
		}
	}
}
