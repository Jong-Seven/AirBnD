package com.seven.jong.service.hosting;


import org.springframework.ui.Model;


public interface HouseService {
	
	//숙소 리스트
	public void houseList(int pageNum, Model model);

}