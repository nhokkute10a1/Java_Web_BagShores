package Dao;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;

import Entities.Sanpham;
import Model.HibernateUtil;

public class SanPham_DAO {
	private SessionFactory sessionFatory = HibernateUtil.getSessionFactory();

	Session session = sessionFatory.getCurrentSession();

	public List<Sanpham> ListSanPham() {
		try {
			if (!session.getTransaction().isActive()) {
				session.getTransaction().begin();
			}
			Query query = session.createQuery("FROM Sanpham c ORDER BY c.maSanPham DESC");
			return query.list();
		}
		catch (Exception e) {
			System.out.println(e.getMessage());
			return null;
		}
	}

	// lay theo danh muc
	public List<Sanpham> ListSanPhamDanhMuc(int maloai) {
		try {
			if (!session.getTransaction().isActive()) {
				session.getTransaction().begin();
			}
			Query query = session.createQuery("FROM Sanpham c WHERE maLoai='" + maloai + "'");
			return query.list();
		}
		catch (Exception e) {
			System.out.println(e.getMessage());
			return null;
		}
	}

	public List<Sanpham> ListSanPhamNSX(int maNSX) {
		try {
			if (!session.getTransaction().isActive()) {
				session.getTransaction().begin();
			}
			Query query = session.createQuery("FROM Sanpham c WHERE maNhaSanXuat='" + maNSX + "'");
			return query.list();
		}
		catch (Exception e) {
			System.out.println(e.getMessage());
			return null;
		}
	}

	public Sanpham getSanPham(int masanpham) {
		Sanpham sp = null;
		try {
			if (!session.getTransaction().isActive()) {
				session.getTransaction().begin();
			}
			sp = (Sanpham) session.createQuery("FROM Sanpham c WHERE maSanPham='" + masanpham + "'").uniqueResult();

		}
		catch (Exception e) {
			System.out.println(e.getMessage());
			return null;
		}
		return sp;

	}
}
