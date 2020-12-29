package kr.co.skypjt.dao;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kr.co.skypjt.beans.HotelReviewBean;
import kr.co.skypjt.beans.HotelRoomBean;
import kr.co.skypjt.beans.HotelTotalBean;
import kr.co.skypjt.beans.TravelReviewBean;
import kr.co.skypjt.mapper.HotelMapper;

@Repository
public class HotelDao {


	@Autowired
	HotelMapper hotelMapper;


	public List<HotelTotalBean> getHotelSearchList(String city){

		return hotelMapper.getHotelSearchList(city);
	}
	public HotelRoomBean getHoteldetailNum(int hotel_num) {
		return hotelMapper.getHoteldetailNum(hotel_num);
	}
	
	
	
	public List<HotelTotalBean> getHotelSearchList1(String hotel_search1){
		return hotelMapper.getHotelSearchList1(hotel_search1);
}
	
	
	
}
