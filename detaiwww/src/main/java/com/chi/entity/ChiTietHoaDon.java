package com.chi.entity;

import java.io.Serializable;

import javax.persistence.EmbeddedId;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.IdClass;

@Entity (name = "CHITIETHOADON")

public class ChiTietHoaDon implements Serializable {
@EmbeddedId
ChiTietHoaDonId chitiethoadonid;
int soluong;
String giatien;
public ChiTietHoaDonId getChitiethoadonid() {
	return chitiethoadonid;
}
public void setChitiethoadonid(ChiTietHoaDonId chitiethoadonid) {
	this.chitiethoadonid = chitiethoadonid;
}
public int getSoluong() {
	return soluong;
}
public void setSoluong(int soluong) {
	this.soluong = soluong;
}
public String getGiatien() {
	return giatien;
}
public void setGiatien(String giatien) {
	this.giatien = giatien;
}
	
}
