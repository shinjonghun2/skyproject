package kr.co.skypjt.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Select;

import kr.co.skypjt.beans.ReservationBean;

public interface AdminMapper {

	
	@Select("select * from hoteldetail_table")
	List<ReservationBean> getReservationList();
	
	@Delete("delete hoteldetail_table where room_price=#{room_price}")
	void deleteReservation(int room_price);
	
}
