package kr.co.skypjt.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.co.skypjt.beans.HotelReviewBean;
import kr.co.skypjt.beans.HotelRoomBean;
import kr.co.skypjt.beans.HotelTotalBean;
import kr.co.skypjt.beans.TravelReviewBean;
import kr.co.skypjt.dao.HotelDao;

@Service
public class HotelService {

	@Autowired
	HotelDao hoteldao;
	
	
public List<HotelTotalBean> getHotelSearchList(String city){
		
		return hoteldao.getHotelSearchList(city);
	}
public HotelRoomBean getHoteldetailNum(int hotel_num) {
	return hoteldao.getHoteldetailNum(hotel_num);
}


public List<HotelTotalBean> getHotelSearchList1(String hotel_search1){
	return hoteldao.getHotelSearchList1(hotel_search1);
}




}
