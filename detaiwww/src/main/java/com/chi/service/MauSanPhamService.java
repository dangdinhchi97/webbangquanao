package com.chi.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.chi.dao.MauSanPhamDAO;
import com.chi.daoimp.MauSanPhamImp;
import com.chi.entity.MauSanPham;

@Service
public class MauSanPhamService implements MauSanPhamImp{
	
	@Autowired
	MauSanPhamDAO mauSanPhamDAO;
	
	public List<MauSanPham> LayDanhSachMau() {
		// TODO Auto-generated method stub
		return mauSanPhamDAO.LayDanhSachMau();
	}

}
