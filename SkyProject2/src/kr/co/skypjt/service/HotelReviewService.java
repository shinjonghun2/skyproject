package kr.co.skypjt.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.co.skypjt.beans.HotelReviewBean;
import kr.co.skypjt.beans.ReservationBean;
import kr.co.skypjt.beans.TravelInfoBean;
import kr.co.skypjt.dao.HotelReviewDao;

@Service
public class HotelReviewService {
	@Autowired
	HotelReviewDao hotelreviewdao;
	
	public List<HotelReviewBean> getHotelReviewList(){
		
		return hotelreviewdao.getHotelReviewList();
		}
	
	public HotelReviewBean getHotelReviewDetail(int hotel_content_idx) {
		return hotelreviewdao.getHotelReviewDetail(hotel_content_idx);
	}
	public List<ReservationBean> getReservationList(String user_id) {

		return hotelreviewdao.getReservationList(user_id);
	}
	public void addHotelContentInfo(HotelReviewBean writeHotelContentBean) {

		hotelreviewdao.addHotelContentInfo(writeHotelContentBean);

	}
	
	public void getHotelModifyBean(HotelReviewBean modifyHotelContentBean) {
		hotelreviewdao.getHotelModifyBean(modifyHotelContentBean);
	}
	
	public void  getHotelDeleteContent(int hotel_content_idx) {
		hotelreviewdao.getHotelDeleteContent(hotel_content_idx);
	}
}
