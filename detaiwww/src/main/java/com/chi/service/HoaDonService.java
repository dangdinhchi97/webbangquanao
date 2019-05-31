package com.chi.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.chi.dao.HoaDonDAO;
import com.chi.daoimp.HoaDonImp;
import com.chi.entity.HoaDon;

@Service
public class HoaDonService implements HoaDonImp {
	
	@Autowired
	HoaDonDAO hoaDonDAO;


	public int ThemHoaDon(HoaDon hoaDon) {
		return hoaDonDAO.ThemHoaDon(hoaDon);
	}


	public List<HoaDon> LayDonHang() {
		// TODO Auto-generated method stub
		return hoaDonDAO.LayDonHang();
	}


	public boolean UpdateDonHang(HoaDon hoadon) {
		// TODO Auto-generated method stub
		return hoaDonDAO.UpdateDonHang(hoadon);
	}
	
	
}
