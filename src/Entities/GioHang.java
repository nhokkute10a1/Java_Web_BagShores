package Entities;

import java.util.Map;
import java.util.TreeMap;

public class GioHang {
	private TreeMap<Sanpham, Integer> listSanPham;

	private long maGioHang;

	public GioHang() {
		listSanPham = new TreeMap<>();
		maGioHang = System.currentTimeMillis();
	}

	public GioHang(TreeMap<Sanpham, Integer> listSanPham, long maGioHang) {
		super();
		this.listSanPham = listSanPham;
		this.maGioHang = maGioHang;
	}

	public TreeMap<Sanpham, Integer> getListSanPham() {
		return listSanPham;
	}

	public void setListSanPham(TreeMap<Sanpham, Integer> listSanPham) {
		this.listSanPham = listSanPham;
	}

	public long getMaGioHang() {
		return maGioHang;
	}

	public void setMaGioHang(long maGioHang) {
		this.maGioHang = maGioHang;
	}

	public void themGioHang(Sanpham sp, int soluong) {
		boolean check = listSanPham.containsKey(sp);
		if (check) {
			int sl = listSanPham.get(sp);
			soluong += sl;
			listSanPham.put(sp, soluong);
		}
		else {
			listSanPham.put(sp, soluong);
		}
	}

	public void capNhapGioHang(Sanpham sp, int quantity) {
		boolean check = listSanPham.containsKey(sp);
		if (check == true) {
			if (quantity <= 0) {
				listSanPham.remove(sp);
			}
			else {
				listSanPham.remove(sp);
				listSanPham.put(sp, quantity);
			}
		}
	}

	public void xoaMotSanPham(Sanpham sp, int soluong) {
		boolean check = listSanPham.containsKey(sp);
		if (check == true) {
			int slCu = listSanPham.get(sp);
			soluong = slCu - soluong;
			if (soluong <= 0) {
				listSanPham.remove(sp);
			}
			else {
				listSanPham.remove(sp);
				listSanPham.put(sp, soluong);
			}
		}
	}

	public void xoaGioHang(Sanpham sp) {
		boolean check = listSanPham.containsKey(sp);
		if (check == true) {
			listSanPham.remove(sp);
		}
	}

	public int countItem() {
		int count = 0;
		for (Map.Entry<Sanpham, Integer> list : listSanPham.entrySet()) {
			count += list.getValue();
		}
		return count;
	}

	public double thanhTien() {
		int count = 0;
		for (Map.Entry<Sanpham, Integer> list : listSanPham.entrySet()) {
			count += list.getValue() * list.getKey().getGiaBan();
		}
		return count;
	}

}
