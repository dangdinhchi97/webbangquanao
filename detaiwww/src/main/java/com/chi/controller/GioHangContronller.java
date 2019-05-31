package com.chi.controller;


import java.time.LocalDate;
import java.util.Date;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;

import com.chi.entity.ChiTietHoaDon;
import com.chi.entity.ChiTietHoaDonId;
import com.chi.entity.DanhMucSanPham;
import com.chi.entity.GioHang;
import com.chi.entity.HoaDon;

import com.chi.service.ChiTietHoaDonService;
import com.chi.service.DanhMucService;
import com.chi.service.HoaDonService;

@Controller

@SessionAttributes("sanpham")
@RequestMapping("giohang/")
public class GioHangContronller {
	
	@Autowired
	HoaDonService hoaDonService;
	
	@Autowired
	ChiTietHoaDonService chiTietHoaDonService;
	@Autowired
	DanhMucService danhMucService;
	@GetMapping
	public String Default(HttpSession httpSession, ModelMap modelMap){
		List<DanhMucSanPham> danhMucSanPhams = danhMucService.LayDanhMuc();
		modelMap.addAttribute("danhmuc",danhMucSanPhams);
		if(null != httpSession.getAttribute("giohang")){
			List<GioHang> gioHangs = (List<GioHang>) httpSession.getAttribute("giohang");
			modelMap.addAttribute("soluongsanphamgiohang",gioHangs.size());
			modelMap.addAttribute("giohangs",gioHangs);
		}
		return "giohang";
	}
	
	@PostMapping
	public String ThemHoaDon(HttpSession httpSession, @RequestParam String tenkhachhang,@RequestParam String sodt,@RequestParam String diachigiaohang,@RequestParam String hinhthucgiaohang,@RequestParam String ghichu){
		
		if(null != httpSession.getAttribute("giohang")){
			List<GioHang> gioHangs = (List<GioHang>) httpSession.getAttribute("giohang");
			
			HoaDon hoaDon = new HoaDon();
			hoaDon.setTenkhachhang(tenkhachhang);
			hoaDon.setSodt(sodt);
			hoaDon.setDiachigiaohang(diachigiaohang);
			hoaDon.setHinhthucgiaohang(hinhthucgiaohang);
			hoaDon.setGhichu(ghichu);
			
			hoaDon.setTinhtrang("chờ duyệt");
			hoaDon.setNgaylap(LocalDate.now()+"");
			
			
			int idHoaDon = hoaDonService.ThemHoaDon(hoaDon);
			if(idHoaDon > 0){
				Set<ChiTietHoaDon> listChiTietHoaDons = new HashSet<ChiTietHoaDon>();
				for (GioHang gioHang : gioHangs) {
					ChiTietHoaDonId chiTietHoaDonId = new ChiTietHoaDonId();
					chiTietHoaDonId.setMachitietsanpham(gioHang.getMachitietsanpham());
					chiTietHoaDonId.setMahoadon(hoaDon.getMahoadon());
					
					ChiTietHoaDon chiTietHoaDon = new ChiTietHoaDon();
					chiTietHoaDon.setChitiethoadonid(chiTietHoaDonId);
					chiTietHoaDon.setGiatien(gioHang.getGiatien().toString());
					chiTietHoaDon.setSoluong(gioHang.getSoluong());
					
					chiTietHoaDonService.ThemChiTietHoaDon(chiTietHoaDon);
				}
			}else{
				System.out.println("Them tb");
			};	
			
		}
		
		return "giohang";
	}
	private String Kiemtradulieunhap() {
		return null;
		
	}
}
