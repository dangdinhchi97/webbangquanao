package com.chi.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/duyetdonhang")
public class DuyetController {
	@GetMapping("/{mahoadon}")
	public String Default(@PathVariable int mahoadon) {
		System.out.println(mahoadon);
		return "chitiethoadon";
	}
}
