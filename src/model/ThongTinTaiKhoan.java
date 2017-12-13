package model;

import java.sql.Date;

public class ThongTinTaiKhoan {
	private String userId;
	private String ten;
	private Date ngaysinh;
	private int GioiTinh;
	public ThongTinTaiKhoan() {
		super();
	}
	public ThongTinTaiKhoan(String userId, String ten, Date ngaysinh, int gioiTinh) {
		super();
		this.userId = userId;
		this.ten = ten;
		this.ngaysinh = ngaysinh;
		GioiTinh = gioiTinh;
	}
	public String getUserId() {
		return userId;
	}
	public void setUserId(String userId) {
		this.userId = userId;
	}
	public String getTen() {
		return ten;
	}
	public void setTen(String ten) {
		this.ten = ten;
	}
	public Date getNgaysinh() {
		return ngaysinh;
	}
	public void setNgaysinh(Date ngaysinh) {
		this.ngaysinh = ngaysinh;
	}
	public int getGioiTinh() {
		return GioiTinh;
	}
	public void setGioiTinh(int gioiTinh) {
		GioiTinh = gioiTinh;
	} 
}
