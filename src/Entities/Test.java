package Entities;

import java.util.ArrayList;

import Dao.SanPham_DAO;

public class Test {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		SanPham_DAO dao = new SanPham_DAO();
		// Sanpham sp = dao.getSanPham("6");
		// System.out.println(sp.getMaLoai());
		ArrayList<Sanpham> arr = (ArrayList<Sanpham>) dao.ListSanPham();
		for (Sanpham sp : arr) {
			System.out.println(sp.getTenSanPham());
		}

	}

}
