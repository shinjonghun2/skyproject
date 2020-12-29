package kr.co.skypjt.dao;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kr.co.skypjt.beans.HotelReviewBean;
import kr.co.skypjt.beans.ReservationBean;
import kr.co.skypjt.beans.TravelInfoBean;

import kr.co.skypjt.mapper.HotelReviewMapper;

@Repository
public class HotelReviewDao {

	@Autowired
	HotelReviewMapper hotelreviewmapper;
	
	public List<HotelReviewBean> getHotelReviewList(){
		
		return hotelreviewmapper.getHotelReviewList();
	}
	
	public HotelReviewBean getHotelReviewDetail(int hotel_content_idx) {
		return hotelreviewmapper.getHotelReviewDetail(hotel_content_idx);
	}
	
public List<ReservationBean> getReservationList(String user_id){
		
		return hotelreviewmapper.getReservationList(user_id);
}

public void addHotelContentInfo(HotelReviewBean writeHotelContentBean) {
	hotelreviewmapper.addHotelContentInfo(writeHotelContentBean);
}

public void getHotelModifyBean(HotelReviewBean modifyHotelContentBean) {
	hotelreviewmapper.getHotelModifyBean(modifyHotelContentBean);
}

public void  getHotelDeleteContent(int hotel_content_idx) {
	hotelreviewmapper.getHotelDeleteContent(hotel_content_idx);
}


}
