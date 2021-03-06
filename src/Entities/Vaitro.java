package Entities;
// Generated Jan 17, 2017 11:52:41 AM by Hibernate Tools 5.2.0.CR1

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import static javax.persistence.GenerationType.IDENTITY;
import javax.persistence.Id;
import javax.persistence.Table;

/**
 * Vaitro generated by hbm2java
 */
@Entity
@Table(name = "vaitro", catalog = "qlbantuisach")
public class Vaitro implements java.io.Serializable {

	private Integer idrole;

	private String tenVaiTro;

	private String mieuTa;

	public Vaitro() {
	}

	public Vaitro(String tenVaiTro, String mieuTa) {
		this.tenVaiTro = tenVaiTro;
		this.mieuTa = mieuTa;
	}

	@Id
	@GeneratedValue(strategy = IDENTITY)

	@Column(name = "IDRole", unique = true, nullable = false)
	public Integer getIdrole() {
		return this.idrole;
	}

	public void setIdrole(Integer idrole) {
		this.idrole = idrole;
	}

	@Column(name = "TenVaiTro", nullable = false, length = 150)
	public String getTenVaiTro() {
		return this.tenVaiTro;
	}

	public void setTenVaiTro(String tenVaiTro) {
		this.tenVaiTro = tenVaiTro;
	}

	@Column(name = "MieuTa", nullable = false, length = 150)
	public String getMieuTa() {
		return this.mieuTa;
	}

	public void setMieuTa(String mieuTa) {
		this.mieuTa = mieuTa;
	}

}
