package Entities;
// Generated Jan 17, 2017 12:48:47 AM by Hibernate Tools 5.2.0.CR1

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import static javax.persistence.GenerationType.IDENTITY;
import javax.persistence.Id;
import javax.persistence.Table;

/**
 * Khachhang generated by hbm2java
 */
@Entity
@Table(name = "khachhang", catalog = "qlbantuisach")
public class Khachhang implements java.io.Serializable {

	private Integer maKhachHang;

	private String hoKhachHang;

	private String tenKhachHang;

	private String ngaySinh;

	private String taiKhoan;

	private String matKhau;

	private String email;

	private String soDienThoai;

	private String diaChi;

	public Khachhang() {
	}

	public Khachhang(String hoKhachHang, String tenKhachHang, String ngaySinh, String taiKhoan, String matKhau,
			String email, String soDienThoai, String diaChi) {
		this.hoKhachHang = hoKhachHang;
		this.tenKhachHang = tenKhachHang;
		this.ngaySinh = ngaySinh;
		this.taiKhoan = taiKhoan;
		this.matKhau = matKhau;
		this.email = email;
		this.soDienThoai = soDienThoai;
		this.diaChi = diaChi;
	}

	@Id
	@GeneratedValue(strategy = IDENTITY)

	@Column(name = "MaKhachHang", unique = true, nullable = false)
	public Integer getMaKhachHang() {
		return this.maKhachHang;
	}

	public void setMaKhachHang(Integer maKhachHang) {
		this.maKhachHang = maKhachHang;
	}

	@Column(name = "HoKhachHang", nullable = false, length = 100)
	public String getHoKhachHang() {
		return this.hoKhachHang;
	}

	public void setHoKhachHang(String hoKhachHang) {
		this.hoKhachHang = hoKhachHang;
	}

	@Column(name = "TenKhachHang", nullable = false, length = 50)
	public String getTenKhachHang() {
		return this.tenKhachHang;
	}

	public void setTenKhachHang(String tenKhachHang) {
		this.tenKhachHang = tenKhachHang;
	}

	@Column(name = "NgaySinh", nullable = false, length = 15)
	public String getNgaySinh() {
		return this.ngaySinh;
	}

	public void setNgaySinh(String ngaySinh) {
		this.ngaySinh = ngaySinh;
	}

	@Column(name = "TaiKhoan", nullable = false, length = 50)
	public String getTaiKhoan() {
		return this.taiKhoan;
	}

	public void setTaiKhoan(String taiKhoan) {
		this.taiKhoan = taiKhoan;
	}

	@Column(name = "MatKhau", nullable = false, length = 50)
	public String getMatKhau() {
		return this.matKhau;
	}

	public void setMatKhau(String matKhau) {
		this.matKhau = matKhau;
	}

	@Column(name = "Email", nullable = false, length = 100)
	public String getEmail() {
		return this.email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	@Column(name = "SoDienThoai", nullable = false, length = 20)
	public String getSoDienThoai() {
		return this.soDienThoai;
	}

	public void setSoDienThoai(String soDienThoai) {
		this.soDienThoai = soDienThoai;
	}

	@Column(name = "DiaChi", nullable = false, length = 100)
	public String getDiaChi() {
		return this.diaChi;
	}

	public void setDiaChi(String diaChi) {
		this.diaChi = diaChi;
	}

}
