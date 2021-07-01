package com.seven.jong.service;


import org.springframework.ui.Model;


public interface HouseService {
	
	//숙소 리스트
	public void houseList(int pageNum, Model model);

	//숙소 검색
	public void houseSearch(int pageNum, String c, String search, Model model);

}