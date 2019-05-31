package com.chi.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;


import com.chi.dao.NhanVienDAO;
import com.chi.daoimp.NhanVienImp;
import com.chi.entity.NhanVien;

@Service
public class NhanVienService implements NhanVienImp {
	
	@Autowired
	NhanVienDAO nhanVienDAO;

	public boolean KiemTraDangNhap(String email, String matkhau) {
		boolean kiemtra = nhanVienDAO.KiemTraDangNhap(email, matkhau);
		return kiemtra;
	}


	public boolean ThemNhanVien(NhanVien nhanVien) {
		boolean ktThem = nhanVienDAO.ThemNhanVien(nhanVien);
		return ktThem;
	}
	
	
}
