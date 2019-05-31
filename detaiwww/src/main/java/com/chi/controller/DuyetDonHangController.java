package com.chi.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.chi.entity.HoaDon;
import com.chi.service.HoaDonService;

@Controller
@RequestMapping("/duyetdonhang")///duyetdonhang
public class DuyetDonHangController {
	@Autowired 
	HoaDonService hoadonService;
	
	@GetMapping
	public String Default(ModelMap modelMap){
		List<HoaDon>listhoadon=hoadonService.LayDonHang();
		modelMap.addAttribute("donhang", listhoadon);
		//System.out.println(listhoadon.get(1));
		//
		
		//
		return "duyetdonhang";
	}
	
}
