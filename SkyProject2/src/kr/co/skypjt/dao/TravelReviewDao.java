package kr.co.skypjt.dao;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kr.co.skypjt.beans.TravelReviewBean;
import kr.co.skypjt.mapper.TravelReviewMapper;

@Repository
public class TravelReviewDao {

	@Autowired
	TravelReviewMapper travelreviewmapper;
	
	public List<TravelReviewBean> getTravelReviewList(){
		
		return travelreviewmapper.getTravelReviewList();
	}
	
	public TravelReviewBean getTravelReviewDetail(int travel_content_idx) {
		return travelreviewmapper.getTravelReviewDetail(travel_content_idx);
	}
	
	public void addTravelContentInfo(TravelReviewBean writeTravelContentBean) {
		travelreviewmapper.addTravelContentInfo(writeTravelContentBean);
	}
	
	//update 구문
		public void travelReviewmodify(TravelReviewBean modifyTravelContentBean) {
			travelreviewmapper.travelReviewmodify(modifyTravelContentBean);
		}
		
		
		//delete 구문
		public void deleteTravelReview(int travel_content_idx) {
			travelreviewmapper.deleteTravelReview(travel_content_idx);
		}
}
