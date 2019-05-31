package com.chi.daoimp;

import java.util.List;

import com.chi.entity.HoaDon;

public interface HoaDonImp {
	int ThemHoaDon(HoaDon hoaDon);
	List<HoaDon>LayDonHang();
	boolean UpdateDonHang(HoaDon hoadon);
}
