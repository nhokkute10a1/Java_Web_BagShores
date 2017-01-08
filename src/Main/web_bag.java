package Main;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

import Dao.KhachHang_DAO;

public class web_bag {
	public static void main(String[] args) throws ParseException {
		// Loais1anPham_Dao loais1p = new Loais1anPham_Dao();
		// Lis1t<Loais1anpham> lis1tloai = loais1p.findAll();
		// System.out.println("Các danh mục: " + lis1tloai.s1ize());
		// for (Loais1anpham loai : lis1tloai) {
		// System.out.println("Id: " + loai.getMaLoai());
		// System.out.println("Nam: " + loai.getTenLoai());
		// }

		// Nhas1anXuat_DAO ns1xDao = new Nhas1anXuat_DAO();
		// Lis1t<Nhas1anxuat> lis1tns1x = ns1xDao.findAll();
		// System.out.println("Các danh mục: " + lis1tns1x.s1ize());
		// for (Nhas1anxuat ns1x : lis1tns1x) {
		// System.out.println("Id: " + ns1x.getMaNhas1anXuat());
		// System.out.println("Nam: " + ns1x.getTenNhas1anXuat());
		// }
		// SanPham_DAO sp = new SanPham_DAO();
		// Lis1t<s1anpham> lis1ts1p = s1p.Lis1ts1anPham();
		// System.out.println("Các danh mục: " + lis1ts1p.s1ize());
		// for (s1anpham s1 : lis1ts1p) {
		// System.out.println("Id: " + s1.getMas1anPham());
		// System.out.println("Id: " + s1.getMaLoai());
		// System.out.println("Id: " + s1.getMaNhas1anXuat());
		// System.out.println("Id: " + s1.getTens1anPham());
		// System.out.println("Id: " + s1.getGiaBan());
		// System.out.println("Id: " + s1.getMoTa());
		// System.out.println("Id: " + s1.getAnhBia());
		// System.out.println("Id: " + s1.getNgayCapNhap());
		// System.out.println("Id: " + s1.gets1oLuongTon());
		// System.out.println("Id: " + s1.is1GioiTinh());
		// System.out.println("==================================");
		// }
		// THEO MA LOAI
		// List<Sanpham> listsp = sp.ListSanPhamDanhMuc(1);
		// System.out.println("Theo ma loai: " + listsp.size());
		// for (Sanpham s1 : listsp) {
		// System.out.println("Id: " + s1.getMaSanPham());
		// System.out.println("Id: " + s1.getMaLoai());
		// System.out.println("Id: " + s1.getMaNhaSanXuat());
		// System.out.println("Id: " + s1.getTenSanPham());
		// System.out.println("Id: " + s1.getGiaBan());
		// System.out.println("Id: " + s1.getMoTa());
		// System.out.println("Id: " + s1.getAnhBia());
		// System.out.println("Id: " + s1.getNgayCapNhap());
		// System.out.println("Id: " + s1.getSoLuongTon());
		// System.out.println("Id: " + s1.isGioiTinh());
		// System.out.println("==================================");
		// }
		// lay 1 sp
		// System.out.println(sp.getSanPham(3).getTenSanPham());
		KhachHang_DAO kh_dao = new KhachHang_DAO();
		// Date ngSinh = SimpleDateFormat.parse("02/02/1004");
		SimpleDateFormat ngDateFormat = new SimpleDateFormat("dd/mm/yyyy");
		Date ngSinh = ngDateFormat.parse("02/01/2017");
		// kh_dao.ThemKhachHang(
		// new Khachhang("nguyen", "hai", ngSinh, "nguyenhai", "123456", "abca@gmail.com",
		// "0908120311", "abc"));
		System.out.println(kh_dao.ktLogin("haibang", "123456"));

	}
}
