package kr.co.skypjt.mapper;


import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Select;

import kr.co.skypjt.beans.ReservationBean;

public interface ReservationMapper {

	@Select("select * from hoteldetail_table where user_id=#{user_id}")
	public ReservationBean getReservationDetail(String user_id);
	
	@Select("select * from hoteldetail_table where user_id=#{user_id}")
	   public ReservationBean getReserveid_table(String user_id);
	
	@Insert("insert into hoteldetail_table(user_id, hotel_name, room_name, room_price, room_num, reserve_name, reserve_phone, check_in, check_out) "
	         + "values(#{user_id},#{hotel_name},#{room_name},#{room_price},#{room_num},#{reserve_name}, #{reserve_phone}, #{check_in}, #{check_out})")
	   void addReservationInfo(ReservationBean resBean);
	
	@Select("select * from hoteldetail_table where room_price=#{room_price}")
	   public ReservationBean getResvationPrice(int room_price);
}
