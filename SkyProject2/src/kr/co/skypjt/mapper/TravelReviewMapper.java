package kr.co.skypjt.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.SelectKey;
import org.apache.ibatis.annotations.Update;

import kr.co.skypjt.beans.TravelReviewBean;


public interface TravelReviewMapper {

	@Select("select * from travel_review_table ¤·¤¡")
	public List<TravelReviewBean> getTravelReviewList();
	
	@Select("select * from travel_review_table where travel_content_idx=#{travel_content_idx}")
	public TravelReviewBean getTravelReviewDetail(int travel_content_idx);
	

	
@SelectKey(statement = "select TRAVEL_CONTENT_SEQ.nextval from dual ", before = true, keyProperty = "travel_content_idx", resultType = int.class)
	
	@Insert("insert into travel_review_table(travel_content_idx, travel_content_subject, travel_content_city, travel_content_place, travel_content_text, travel_content_writer, travel_content_date) " +
			"values (#{travel_content_idx}, #{travel_content_subject}, #{travel_content_city}, #{travel_content_place}, #{travel_content_text}, #{travel_content_writer}, sysdate)")
	void addTravelContentInfo(TravelReviewBean writeTravelContentBean);

	@Update("update travel_review_table " + 
			"set travel_content_subject = #{travel_content_subject}, " + 
			"travel_content_text= #{travel_content_text} " + 
			"WHERE travel_content_idx=#{travel_content_idx}")
	void travelReviewmodify(TravelReviewBean modifyContentBean);
	


	@Delete("delete from travel_review_table where travel_content_idx=#{travel_content_idx}")
	public void deleteTravelReview(int travel_content_idx);
}
