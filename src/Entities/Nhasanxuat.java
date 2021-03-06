package Entities;
// Generated Jan 17, 2017 11:52:41 AM by Hibernate Tools 5.2.0.CR1

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import static javax.persistence.GenerationType.IDENTITY;
import javax.persistence.Id;
import javax.persistence.Table;

/**
 * Nhasanxuat generated by hbm2java
 */
@Entity
@Table(name = "nhasanxuat", catalog = "qlbantuisach")
public class Nhasanxuat implements java.io.Serializable {

	private Integer maNhaSanXuat;

	private String tenNhaSanXuat;

	private String diaChi;

	private String sdt;

	public Nhasanxuat() {
	}

	public Nhasanxuat(String tenNhaSanXuat, String diaChi, String sdt) {
		this.tenNhaSanXuat = tenNhaSanXuat;
		this.diaChi = diaChi;
		this.sdt = sdt;
	}

	@Id
	@GeneratedValue(strategy = IDENTITY)

	@Column(name = "MaNhaSanXuat", unique = true, nullable = false)
	public Integer getMaNhaSanXuat() {
		return this.maNhaSanXuat;
	}

	public void setMaNhaSanXuat(Integer maNhaSanXuat) {
		this.maNhaSanXuat = maNhaSanXuat;
	}

	@Column(name = "TenNhaSanXuat", nullable = false, length = 100)
	public String getTenNhaSanXuat() {
		return this.tenNhaSanXuat;
	}

	public void setTenNhaSanXuat(String tenNhaSanXuat) {
		this.tenNhaSanXuat = tenNhaSanXuat;
	}

	@Column(name = "DiaChi", nullable = false, length = 150)
	public String getDiaChi() {
		return this.diaChi;
	}

	public void setDiaChi(String diaChi) {
		this.diaChi = diaChi;
	}

	@Column(name = "SDT", nullable = false, length = 20)
	public String getSdt() {
		return this.sdt;
	}

	public void setSdt(String sdt) {
		this.sdt = sdt;
	}

}
