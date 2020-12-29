package kr.co.skypjt.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.SelectKey;
import org.apache.ibatis.annotations.Update;

import kr.co.skypjt.beans.HotelReviewBean;
import kr.co.skypjt.beans.ReservationBean;


public interface HotelReviewMapper {

	@Select("select * from hotel_review_table order by hotel_content_date desc")
	public List<HotelReviewBean> getHotelReviewList();
	
	@Select("select * from hotel_review_table where hotel_content_idx=#{hotel_content_idx}")
	public HotelReviewBean getHotelReviewDetail(int hotel_content_idx);
	
	// 호텔 리뷰 읽기
			@Select("select * from hotel_review_table where hotel_content_writer_id=#{hotel_content_writer_id}")
			
			public HotelReviewBean getHotelReviewRead(String hotel_content_writer_id);
	
	@Select("select * from hoteldetail_table where user_id=#{user_id}")
	public List<ReservationBean> getReservationList(String user_id);
	
	
	@SelectKey(statement = "select HOTEL_CONTENT_SEQ.nextval from dual ", before = true, keyProperty = "hotel_content_idx", resultType = int.class)
	
	@Insert("insert into hotel_review_table(hotel_content_idx, hotel_content_subject, hotel_content_hotelname, hotel_content_text, hotel_content_writer_id, hotel_content_date, hotel_content_rating) " +
			"values (#{hotel_content_idx}, #{hotel_content_subject}, #{hotel_content_hotelname}, #{hotel_content_text}, #{hotel_content_writer_id}, sysdate, #{hotel_content_rating})")
	void addHotelContentInfo(HotelReviewBean writeHotelContentBean);
	
	@Update("update hotel_review_table set hotel_content_subject = #{hotel_content_subject}, hotel_content_text = #{hotel_content_text}, hotel_content_rating = #{hotel_content_rating} where hotel_content_idx = #{hotel_content_idx}")
	void getHotelModifyBean(HotelReviewBean modifyHotelContentBean);

	@Delete("delete from hotel_review_table where hotel_content_idx = #{hotel_content_idx}")
	void getHotelDeleteContent(int hotel_content_idx);
}
