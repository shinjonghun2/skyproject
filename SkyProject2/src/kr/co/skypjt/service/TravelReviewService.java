package kr.co.skypjt.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.co.skypjt.beans.TravelReviewBean;

import kr.co.skypjt.dao.TravelReviewDao;

@Service
public class TravelReviewService {
	@Autowired
	TravelReviewDao travelreviewdao;
	
	public List<TravelReviewBean> getTravelReviewList(){
		
		return travelreviewdao.getTravelReviewList();
		}
	
	public TravelReviewBean getTravelReviewDetail(int travel_content_idx) {
		return travelreviewdao.getTravelReviewDetail(travel_content_idx);
	}
	
	public void addTravelContentInfo(TravelReviewBean writeTravelContentBean) {
		
		System.out.println(writeTravelContentBean.getTravel_content_subject());
		
		travelreviewdao.addTravelContentInfo(writeTravelContentBean);
		
	}
	
	//update 备巩(咯青)
		public void travelReviewmodify(TravelReviewBean modifyTravelContentBean) {
			travelreviewdao.travelReviewmodify(modifyTravelContentBean);
		}
		
		//delete 备巩(咯青)
		public void deleteTravelReview(int travel_content_idx) {
		 travelreviewdao.deleteTravelReview(travel_content_idx);
		}
}
