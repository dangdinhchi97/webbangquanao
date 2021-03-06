package com.chi.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.chi.dao.SanPhamDAO;
import com.chi.daoimp.SanPhamImp;
import com.chi.entity.SanPham;

@Service
public class SanPhamService implements SanPhamImp{

	@Autowired
	SanPhamDAO sanPhamDAO;
	
	public List<SanPham> LayDanhSachSanPhamLimit(int spbatdau) {
		
		return sanPhamDAO.LayDanhSachSanPhamLimit(spbatdau);
	}

	public SanPham LayDanhSachChiTietSanPhamTheoMa(int masanpham) {
		return sanPhamDAO.LayDanhSachChiTietSanPhamTheoMa(masanpham);
		
	}

	public List<SanPham> LayDanhSachSanPhamTheoMaDanhMuc(int madanhmuc) {
		return sanPhamDAO.LayDanhSachSanPhamTheoMaDanhMuc(madanhmuc);
	}

	public boolean XoaSanPhamTheoMaSanPham(int masanpham) {
		
		return sanPhamDAO.XoaSanPhamTheoMaSanPham(masanpham);
	}


	public boolean ThemSanPham(SanPham sanPham) {
		// TODO Auto-generated method stub
		return sanPhamDAO.ThemSanPham(sanPham);
	}


	public boolean CatNhatSanPham(SanPham sanPham) {
		// TODO Auto-generated method stub
		return sanPhamDAO.CatNhatSanPham(sanPham);
	}

}
