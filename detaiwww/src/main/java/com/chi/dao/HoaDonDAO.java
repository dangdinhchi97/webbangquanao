package com.chi.dao;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.context.annotation.ScopedProxyMode;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.chi.daoimp.HoaDonImp;
import com.chi.entity.DanhMucSanPham;
import com.chi.entity.HoaDon;

@Repository
@Scope(proxyMode = ScopedProxyMode.TARGET_CLASS)
public class HoaDonDAO implements HoaDonImp {

	@Autowired
	SessionFactory sessionFactory;
	
	
	@Transactional
	public int ThemHoaDon(HoaDon hoaDon) {
		Session session = sessionFactory.getCurrentSession();
		int id = (Integer) session.save(hoaDon);
		if(0 < id){
			return id;
		}else{
			return 0;
		}
		
	}

	@Transactional
	public List<HoaDon> LayDonHang() {
		// TODO Auto-generated method stub
		Session session = sessionFactory.getCurrentSession();
		String query = "from HOADON";
		List<HoaDon> dsdonhang =  session.createQuery(query).getResultList();
		System.out.println(dsdonhang.size());
		return dsdonhang;
	}
	@Transactional
	public boolean UpdateDonHang(HoaDon hoadon) {
		// TODO Auto-generated method stub
		Session session = sessionFactory.getCurrentSession();
		session.update(hoadon);
		return false;
	}
	
	

	


	

}
