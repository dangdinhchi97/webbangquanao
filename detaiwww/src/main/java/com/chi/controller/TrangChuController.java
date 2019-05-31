package com.chi.controller;
import java.util.List;
import javax.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.chi.entity.DanhMucSanPham;
import com.chi.entity.SanPham;
import com.chi.service.DanhMucService;
import com.chi.service.SanPhamService;


@Controller
@RequestMapping("/")
public class TrangChuController {
	
	@Autowired
	SanPhamService sanPhamService;
	
//	
	@Autowired
	DanhMucService danhMucService;
	
	@GetMapping
	@Transactional
	public String Default(ModelMap modelMap,HttpSession httpSession){
//		
		List<DanhMucSanPham> danhMucSanPhams = danhMucService.LayDanhMuc();
//		
		if(httpSession.getAttribute("user") != null){
			String email = (String) httpSession.getAttribute("user");
//			
			modelMap.addAttribute("email", email);
		}
//		
		List<SanPham> listSanPhams = sanPhamService.LayDanhSachSanPhamLimit(0);
		modelMap.addAttribute("listSanPham", listSanPhams);
		modelMap.addAttribute("danhmuc",danhMucSanPhams);
		return "trangchu";
}

	
	
}
