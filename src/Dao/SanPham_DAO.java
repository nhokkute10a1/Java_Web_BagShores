package Dao;

import java.util.ArrayList;
import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;

import Entities.Sanpham;
import Model.HibernateUtil;

public class SanPham_DAO {
	private SessionFactory sessionFatory = HibernateUtil.getSessionFactory();

	Session session = sessionFatory.getCurrentSession();

	public ArrayList<Sanpham> ListSanPham() {
		try {
			if (!session.getTransaction().isActive()) {
				session.getTransaction().begin();
			}
			Query query = session.createQuery("FROM Sanpham c ORDER BY c.maSanPham DESC");
			return (ArrayList<Sanpham>) query.list();
		}
		catch (Exception e) {
			System.out.println(e.getMessage());
			return null;
		}
	}

	// lay theo danh muc
	public ArrayList<Sanpham> ListSanPhamDanhMuc(int maloai) {
		try {
			if (!session.getTransaction().isActive()) {
				session.getTransaction().begin();
			}
			Query query = session.createQuery("FROM Sanpham c WHERE maLoai='" + maloai + "'");
			return (ArrayList<Sanpham>) query.list();
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

	// lay 1 san pham
	public Sanpham getSanPham(String maSanPham) {
		Sanpham sp = null;
		try {
			if (!session.getTransaction().isActive()) {
				session.getTransaction().begin();
			}
			sp = (Sanpham) session.createQuery("FROM Sanpham c WHERE maSanPham='" + maSanPham + "'").uniqueResult();
		}
		catch (Exception e) {
			System.out.println(e.getMessage());
			return null;
		}
		return sp;

	}

	// phan trang
	public List<Sanpham> getListByPage(List<Sanpham> arr, int start, int end) {
		List<Sanpham> list = new ArrayList<Sanpham>();
		for (int i = start; i < end; i++) {
			list.add(arr.get(i));
		}
		return list;
	}
}
