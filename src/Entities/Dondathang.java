package Entities;
// Generated Jan 17, 2017 11:52:41 AM by Hibernate Tools 5.2.0.CR1

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

/**
 * Dondathang generated by hbm2java
 */
@Entity
@Table(name = "dondathang", catalog = "qlbantuisach")
public class Dondathang implements java.io.Serializable {

	private String maDonDatHang;

	private String ngayDatHang;

	private String ngayGiao;

	private boolean daThanhToan;

	private boolean tinhTrangGiao;

	private String taiKhoan;

	public Dondathang() {
	}

	public Dondathang(String maDonDatHang, String ngayDatHang, String ngayGiao, boolean daThanhToan,
			boolean tinhTrangGiao, String taiKhoan) {
		this.maDonDatHang = maDonDatHang;
		this.ngayDatHang = ngayDatHang;
		this.ngayGiao = ngayGiao;
		this.daThanhToan = daThanhToan;
		this.tinhTrangGiao = tinhTrangGiao;
		this.taiKhoan = taiKhoan;
	}

	@Id

	@Column(name = "MaDonDatHang", unique = true, nullable = false, length = 25)
	public String getMaDonDatHang() {
		return this.maDonDatHang;
	}

	public void setMaDonDatHang(String maDonDatHang) {
		this.maDonDatHang = maDonDatHang;
	}

	@Column(name = "NgayDatHang", nullable = false, length = 15)
	public String getNgayDatHang() {
		return this.ngayDatHang;
	}

	public void setNgayDatHang(String ngayDatHang) {
		this.ngayDatHang = ngayDatHang;
	}

	@Column(name = "NgayGiao", nullable = false, length = 15)
	public String getNgayGiao() {
		return this.ngayGiao;
	}

	public void setNgayGiao(String ngayGiao) {
		this.ngayGiao = ngayGiao;
	}

	@Column(name = "DaThanhToan", nullable = false)
	public boolean isDaThanhToan() {
		return this.daThanhToan;
	}

	public void setDaThanhToan(boolean daThanhToan) {
		this.daThanhToan = daThanhToan;
	}

	@Column(name = "TinhTrangGiao", nullable = false)
	public boolean isTinhTrangGiao() {
		return this.tinhTrangGiao;
	}

	public void setTinhTrangGiao(boolean tinhTrangGiao) {
		this.tinhTrangGiao = tinhTrangGiao;
	}

	@Column(name = "TaiKhoan", nullable = false, length = 25)
	public String getTaiKhoan() {
		return this.taiKhoan;
	}

	public void setTaiKhoan(String taiKhoan) {
		this.taiKhoan = taiKhoan;
	}

}
